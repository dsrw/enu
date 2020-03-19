import unittest
export unittest.check

template tests*(checks: untyped) =
  when is_main_module:
    check:
      checks
