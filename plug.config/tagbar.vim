" javascipr
" let g:tagbar_type_javascript = {
" 	\ 'ctagstype': 'javascript',
" 	\ 'kinds': [
" 		\ 'A:arrays',
" 		\ 'P:properties',
" 		\ 'T:tags',
" 		\ 'O:objects',
" 		\ 'G:generator functions',
" 		\ 'F:functions',
" 		\ 'C:constructors/classes',
" 		\ 'M:methods',
" 		\ 'V:variables',
" 		\ 'I:imports',
" 		\ 'E:exports',
" 		\ 'S:styled components'
" \ ]}

" json
let g:tagbar_type_json = {
	\ 'ctagstype': 'json',
	\ 'kinds': [
		\ 'o:objects',
		\ 'a:arrays',
		\ 'n:numbers',
		\ 's:strings',
		\ 'b:booleans',
		\ 'z:nulls'
	\ ],
	\ 'sro': '.',
	\ 'scope2kind': {
		\ 'object': 'o',
		\ 'array': 'a',
		\ 'number': 'n',
		\ 'string': 's',
		\ 'boolean': 'b',
		\ 'null': 'z'
	\ },
	\ 'kind2scope': {
		\ 'o': 'object',
		\ 'a': 'array',
		\ 'n': 'number',
		\ 's': 'string',
		\ 'b': 'boolean',
		\ 'z': 'null'
	\ },
	\ 'sort' : 0
\ }

" css
let g:tagbar_type_css = {
\ 'ctagstype': 'css',
	\ 'kinds': [
		\ 'c:classes',
		\ 's:selectors',
		\ 'i:identities'
	\ ]
\ }

" markdown
" let g:tagbar_type_markdown = {
" 	\ 'ctagstype': 'markdown',
" 	\ 'kinds' : [
" 		\ 'h:Heading_L1',
" 		\ 'i:Heading_L2',
" 		\ 'k:Heading_L3'
" 	\ ]
" \ }

" go
" let g:tagbar_type_go = {
" 	\ 'ctagstype': 'go',
" 	\ 'kinds' : [
" 		\'p:package',
" 		\'f:function',
" 		\'v:variables',
" 		\'t:type',
" 		\'c:const'
" 	\]
" \}

