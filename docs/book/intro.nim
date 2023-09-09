import nimib, nimibook
import enuib

nb_init(theme = use_enu)
nb_text: """

# Introduction

3D live coding, implemented in Nim.

![Enu Screenshot](assets/screenshot_3.webp)

Enu lets you build and explore worlds using a familiar block-building interface
and a Logo inspired API. It aspires to make 3D development more accessible, and
will eventually be usable to create standalone games.

***Note:*** *The docs for Enu 0.2 are a work in progress. Most of the core ideas are here, but a fair bit of revision is required. The 0.2 docs will be targeted
towards new programmers, with 'Note for Nimions` sections aimed at more
experienced folks to explain what's really going on. However, things are all
over the place right now, with the intended audience changing paragraph by
paragraph.*

***Notes for Nimions:*** *Enu tries to simplify some Nim concepts, mainly to defer
explaining unfamiliar terms. In particular, Enu tries to hide most things
related to types, calls procs 'actions', and avoids immutable variables. I
believe this is the right approach for new programmers, but I expect that more
sophisticated developers will use a style closer to traditional Nim.*

"""
nb_save
