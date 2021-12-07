"**********************************************************
"*                                                        *
"* FORGE 'make' output syntax highlighting                *
"*                                                        *
"* By: Charlie Burgess                                    *
"* Created: 01/12/2021                                    *
"*                                                        *
"**********************************************************

syn match forgeMakeComp     "Compiling.*$"
syn match forgeMakeLink     "Linking.*$"
syn match forgeMakeError    "ERROR.*$"
syn match forgeMakeGen      "Generating.*$"
syn match forgeMakeCopy     "Copying.*$"
syn keyword forgeDebug       Debug
syn match forgeBanner       "█.*$"

let b:current_syntax = "forge_make"

hi def link forgeMakeComp      Statement
hi def link forgeMakeLink      String
hi def link forgeMakeError     Error
hi def link forgeMakeGen       Operator
hi def link forgeMakeCopy      Define
hi def link forgeDebug         StorageClass
hi def link forgeBanner        String
