# from https://github.com/paulnorrie/Nim/blob/devel/tools/nimlldb.py
# based on https://www.reddit.com/r/nim/comments/lhaaa6/debugging_support_formatters_for_lldb_in_vscode/

import lldb
import os
import re

def NimNI8_SummaryFormatter(valobj, internal_dict):
    s = '?'
    try:
        val = valobj.GetValueAsSigned();
        s = str(val)  + " (" + hex(val & 0xFF) + ")"
    except:
        pass
    return s

def NimNI16_SummaryFormatter(valobj, internal_dict):
    s = '?'
    try:
        val = valobj.GetValueAsSigned();
        s = str(val)  + " (" + hex(val & 0xFFFF) + ")"
    except:
        pass
    return s

def NimNI32_SummaryFormatter(valobj, internal_dict):
    s = '?'
    try:
        val = valobj.GetValueAsSigned();
        s = str(val)  + " (" + hex(val & 0xFFFFFF) + ")"
    except:
        pass
    return s

def NimNU_SummaryFormatter(valobj, internal_dict):
    s = '?'
    try:
        val = valobj.GetValueAsUnsigned();
        s = str(val)  + " (" + hex(val) + ")"
    except:
        pass
    return s


def NimEnum_SummaryFormatter(valobj, internal_dict):
    s = '?'
    try:
        val = valobj.GetValueAsUnsigned()

        # each enum is a type so get the type name
        type_name = valobj.GetTypeName()
        # get the address of the TNimType data for this type_name
        # if the type name is tyEnum_MyEnum__OGi9bloluW89a39aqCEVLC1Xw
        # then TNimType will be NTI__OGi9bloluW89a39aqCEVLC1Xw_
        pattern = re.compile(r'^tyEnum_(.+?)_([A-Za-z0-9]+)$')
        matches = pattern.match(type_name)
        id = matches.group(2)
        t_nim_type = "NTI__" + id + "_"

        # lookup the address of t_nim_type and we have the TNimType*
        target = valobj.GetTarget()
        symbol_context_list = target.FindSymbols(t_nim_type)
        for symbol_context in symbol_context_list:
            symbol = symbol_context.GetSymbol()
            start_addr = symbol.GetStartAddress()
            file_addr = start_addr.GetFileAddress()

            # evaluate
            t_nim_type_ptr = hex(file_addr)
            expr = 'reprEnum(' + str(val) + ", (TNimType *)" + t_nim_type_ptr + ')'
            options = lldb.SBExpressionOptions()

            expr_value = valobj.GetFrame().EvaluateExpression(expr)
            if (expr_value.error.fail):
                s = str(val)
            else:
                m = re.search(r'.*"(.*)".*', str(expr_value))
                s = m.group(1)

    except:
        pass
    return s


def NimStringDesc_SummaryFormatter(valobj, internal_dict):
    s = '<error>'
    try:
        nonSynth = valobj.GetNonSyntheticValue()
        data = nonSynth.GetChildMemberWithName('data').AddressOf()
        data.SetFormat(lldb.eFormatCString)
        s = data.GetValue()
    except:
        pass
    return s

class NimSeqProvider:

    def __init__(self, valobj, dict):
        self.valobj = valobj

    def num_children(self):
        try:
            self.count = self.len.GetValueAsUnsigned(0)
            return self.count
        except:
            return None

    def get_child_at_index(self, index):
        try:
            offset = index * self.data_size
            return self.start.CreateChildAtOffset(
                '[' + str(index) + ']', offset, self.data_type)
        except:
            return None

    def get_child_index(self, name):
        try:
            return int(name.lstrip('[').rstrip(']'))
        except:
            return None

    def update(self):
        try:
            data = self.valobj.GetChildMemberWithName('data')
            self.start = data
            self.sup = self.valobj.GetChildMemberWithName('Sup')
            self.len = self.sup.GetChildMemberWithName('len')
            self.reserved = self.sup.GetChildMemberWithName('reserved')
            self.data_type = data.GetType().GetArrayElementType()
            self.data_size = self.data_type.GetByteSize()
        except:
            pass

    def has_children(self):
        return True

def NimSeq_SummaryFormatter(valobj, internal_dict):
    s = '<error>'
    try:
        nonSynth = valobj.GetNonSyntheticValue()
        sup = nonSynth.GetChildMemberWithName('Sup')
        len = sup.GetChildMemberWithName('len')
        reserved = sup.GetChildMemberWithName('reserved')
        s = "{ len=" + str(len.GetValueAsSigned()) + ", reserved=" + str(reserved.GetValueAsSigned()) + " }"
    except:
        pass
    return s

def NimArray_SummaryFormatter(valobj, internal_dict):
    s = '<error>'
    try:
        arrayType = valobj.GetType()
        elemType = arrayType.GetArrayElementType()
        size = int(arrayType.GetByteSize() / elemType.GetByteSize())
        s = "{ size=" + str(size) + " }"
    except:
        pass
    return s

class NimTableProvider:

    def __init__(self, valobj, dict):
        self.valobj = valobj

    def num_children(self):
        try:
            return len(self.ary)
        except:
            return None

    def get_child_at_index(self, index):
        try:
            return self.ary[index]
        except:
            return None

    def get_child_index(self, name):
        try:
            key = int(name.lstrip('[').rstrip(']'))
            return self.table.get(key)
        except:
            return None

    def num_elem_children(self):
        try:
            self.seqCount = self.len.GetValueAsUnsigned(0)
            if self.seqCount < 0 or self.seqCount > 1000000:
                self.seqCount = 0
            return self.seqCount
        except:
            return None

    def get_elem_at_index(self, index):
        try:
            offset = index * self.data_size
            return self.start.CreateChildAtOffset(
                '[' + str(index) + ']', offset, self.data_type)
        except:
            return None

    def update(self):
        try:
            self.seq = self.valobj.GetChildMemberWithName('data').GetNonSyntheticValue()
            data = self.seq.GetChildMemberWithName('data')
            self.start = data
            self.sup = self.seq.GetChildMemberWithName('Sup')
            self.len = self.sup.GetChildMemberWithName('len')
            self.reserved = self.sup.GetChildMemberWithName('reserved')
            self.data_type = data.GetType().GetArrayElementType()
            self.data_size = self.data_type.GetByteSize()
            self.table = {}
            self.ary = []
            count = self.num_elem_children()
            if count > 1000:
                count = 1000
            for i in range(self.num_elem_children()):
                elem = self.get_elem_at_index(i)
                field0 = elem.GetChildMemberWithName('Field0')
                hash = field0.GetValueAsUnsigned()
                if hash != 0:
                    field1 = elem.GetChildMemberWithName('Field1')
                    key = field1.GetSummary()
                    if key is None:
                        key = str(field1.GetValue())
                    field2 = elem.GetChildMemberWithName('Field2').GetNonSyntheticValue()
                    value = field2.CreateValueFromAddress(key, field2.GetLoadAddress(), field2.GetType())
                    self.table[key] = len(self.ary)
                    self.ary.append(value)
        except:
            pass

    def has_children(self):
        return True

def NimTable_SummaryFormatter(valobj, internal_dict):
    s = '<error>'
    try:
        nonSynth = valobj.GetNonSyntheticValue()
        counter = nonSynth.GetChildMemberWithName('counter')
        s = "{ counter=" + str(counter.GetValueAsSigned()) + " }"
    except:
        pass
    return s

def __lldb_init_module(debugger, internal_dict):

    lldb.formatters.Logger._lldb_formatters_debug_level = 2

    category = debugger.GetDefaultCategory()
    category.SetEnabled(True)


    category.AddTypeSummary(lldb.SBTypeNameSpecifier("NI8"), \
                            lldb.SBTypeSummary.CreateWithFunctionName('lldbnim.NimNI8_SummaryFormatter'))
    category.AddTypeSummary(lldb.SBTypeNameSpecifier("NU8"), \
                            lldb.SBTypeSummary.CreateWithFunctionName('lldbnim.NimNU_SummaryFormatter'))
    category.AddTypeSummary(lldb.SBTypeNameSpecifier("NU16"), \
                            lldb.SBTypeSummary.CreateWithFunctionName('lldbnim.NimNU_SummaryFormatter'))
    category.AddTypeSummary(lldb.SBTypeNameSpecifier("NU32"), \
                            lldb.SBTypeSummary.CreateWithFunctionName('lldbnim.NimNU_SummaryFormatter'))
    category.AddTypeSummary(lldb.SBTypeNameSpecifier("NU64"), \
                            lldb.SBTypeSummary.CreateWithFunctionName('lldbnim.NimNU_SummaryFormatter'))



    category.AddTypeSummary(lldb.SBTypeNameSpecifier("^tyEnum_.*$", True), \
                            lldb.SBTypeSummary.CreateWithFunctionName('lldbnim.NimEnum_SummaryFormatter'))

    category.AddTypeSynthetic( \
        lldb.SBTypeNameSpecifier("NimStringDesc"), \
        lldb.SBTypeSynthetic.CreateWithClassName("lldbnim.NimSeqProvider",
                                                 lldb.eTypeOptionCascade))

    category.AddTypeSummary(lldb.SBTypeNameSpecifier('NimStringDesc'), \
                            lldb.SBTypeSummary.CreateWithFunctionName('lldbnim.NimStringDesc_SummaryFormatter'))

    category.AddTypeSynthetic( \
        lldb.SBTypeNameSpecifier("^tySequence__.*$", True), \
        lldb.SBTypeSynthetic.CreateWithClassName("lldbnim.NimSeqProvider",
                                                 lldb.eTypeOptionCascade))

    category.AddTypeSummary( \
        lldb.SBTypeNameSpecifier("^tySequence__.*$", True), \
        lldb.SBTypeSummary.CreateWithFunctionName('lldbnim.NimSeq_SummaryFormatter'))

    category.AddTypeSummary( \
        lldb.SBTypeNameSpecifier("^tyArray__.*$", True), \
        lldb.SBTypeSummary.CreateWithFunctionName('lldbnim.NimArray_SummaryFormatter'))

    category.AddTypeSynthetic( \
        lldb.SBTypeNameSpecifier("^tyObject_Table__.*$", True), \
        lldb.SBTypeSynthetic.CreateWithClassName("lldbnim.NimTableProvider",
                                                 lldb.eTypeOptionCascade))

    category.AddTypeSummary( \
        lldb.SBTypeNameSpecifier("^tyObject_Table__.*$", True), \
        lldb.SBTypeSummary.CreateWithFunctionName('lldbnim.NimTable_SummaryFormatter'))
