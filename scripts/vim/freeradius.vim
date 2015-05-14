" Vim syntax file
" Language:	unlang (FreeRADIUS Processing un-language)
" Maintainer:	Jorge Pereira <jpereiran@gmail.com>

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn keyword freeradiusStatement	server break return continue EXECUTE_ERROR_BLOCK
syn match freeradiusStatement	"\<X_USER_BLOCK[0-4]\>"
syn keyword freeradiusLabel		case
syn keyword freeradiusConditional	!if if else switch
syn keyword freeradiusRepeat		if else while for _for loop do forever
syn keyword freeradiusDefinition	listen server
syn keyword freeradiusOperator	        or and andelse orelse shr shl xor not
syn keyword freeradiusBlock		EXIT_BLOCK ERROR_BLOCK
syn match freeradiusBlock		"\<USER_BLOCK[0-4]\>"
syn keyword freeradiusConstant	        NULL
syn keyword freeradiusType		Integer_Type Double_Type Complex_Type String_Type Struct_Type Ref_Type Null_Type Array_Type DataType_Type

syn match freeradiusOctal		"\<0\d\+\>" contains=freeradiusOctalError
syn match freeradiusOctalError	"[89]\+" contained
syn match freeradiusHex		"\<0[xX][0-9A-Fa-f]*\>"
syn match freeradiusDecimal		"\<[1-9]\d*\>"
syn match freeradiusFloat		"\<\d\+\."
syn match freeradiusFloat		"\<\d\+\.\d\+\([Ee][-+]\=\d\+\)\=\>"
syn match freeradiusFloat		"\<\d\+\.[Ee][-+]\=\d\+\>"
syn match freeradiusFloat		"\<\d\+[Ee][-+]\=\d\+\>"
syn match freeradiusFloat		"\.\d\+\([Ee][-+]\=\d\+\)\=\>"
syn match freeradiusImaginary	"\.\d\+\([Ee][-+]\=\d*\)\=[ij]\>"
syn match freeradiusImaginary	"\<\d\+\(\.\d*\)\=\([Ee][-+]\=\d\+\)\=[ij]\>"

syn region freeradiusString oneline start='"' end='"' skip='\\"'
syn match freeradiusCharacter	"'[^\\]'"
syn match freeradiusCharacter	"'\\.'"
syn match freeradiusCharacter	"'\\[0-7]\{1,3}'"
syn match freeradiusCharacter	"'\\d\d\{1,3}'"
syn match freeradiusCharacter	"'\\x[0-7a-fA-F]\{1,2}'"

syn match freeradiusDelim		"[][{};:,]"
syn match freeradiusOperator		"[-%+/&*=<>|!~^@]"

"catch errors caused by wrong parenthesis
syn region freeradiusParen	matchgroup=freeradiusDelim transparent start='(' end=')' contains=ALLBUT,freeradiusParenError
syn match freeradiusParenError	")"

syn match freeradiusComment		"%.*$"
syn keyword freeradiusOperator	sizeof

"syn region freeradiusPreCondit start="^\s*#\s*\(ifdef\>\|ifndef\>\|iftrue\>\|ifnfalse\>\|iffalse\>\|ifntrue\>\|if\$\|ifn\$\|\|elif\>\|else\>\|endif\>\)" skip="\\$" end="$" contains=cComment,freeradiusString,freeradiusCharacter,freeradiusNumber

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_freeradius_syntax_inits")
  if version < 508
    let did_freeradius_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink freeradiusDefinition	Type
  HiLink freeradiusBlock		freeradiusDefinition
  HiLink freeradiusLabel		Label
  HiLink freeradiusConditional	Conditional
  HiLink freeradiusRepeat		Repeat
  HiLink freeradiusCharacter	Character
  HiLink freeradiusFloat		server
  HiLink freeradiusImaginary	Float
  HiLink freeradiusDecimal		freeradiusNumber
  HiLink freeradiusOctal		freeradiusNumber
  HiLink freeradiusHex		freeradiusNumber
  HiLink freeradiusNumber		Number
  HiLink freeradiusParenError	Error
  HiLink freeradiusOctalError	Error
  HiLink freeradiusOperator		Operator
  HiLink freeradiusStructure	Structure
  HiLink freeradiusInclude		Include
  HiLink freeradiusPreCondit	PreCondit
  HiLink freeradiusError		Error
  HiLink freeradiusStatement	Statement
  HiLink freeradiusType		Type
  HiLink freeradiusString		String
  HiLink freeradiusConstant		Constant
  HiLink freeradiusRangeArray	freeradiusConstant
  HiLink freeradiusComment		Comment
  HiLink freeradiusSpecial		SpecialChar
  HiLink freeradiusTodo		Todo
  HiLink freeradiusDelim		Delimiter

  delcommand HiLink
endif

let b:current_syntax = "freeradius"

" vim: ts=8
