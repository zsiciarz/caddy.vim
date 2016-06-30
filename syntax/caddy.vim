" Vim syntax file
" Language: Caddyfile

if exists("b:current_syntax")
  finish
endif

syntax keyword caddyDirective basicauth bind browse cors errors ext fastcgi
syntax keyword caddyDirective git gzip header hugo import internal ipfilter
syntax keyword caddyDirective jsonp jwt log mailout markdown mime prometheus
syntax keyword caddyDirective proxy realip redir rewrite root search shutdown
syntax keyword caddyDirective startup templates tls websocket

syntax match caddyComment ' *#.*$'

syntax match caddyPlaceholder '{\w\+}'

syntax match caddyEnvVar '\({\$\w\+}\)\|\({%\w\+%}\)'

syntax match caddyAddr '\d\{1,3}\.\d\{1,3}\.\d\{1,3}\.\d\{1,3}\(:\d\+\)\='

syntax match caddyInt '\d\+'

highlight default link caddyDirective Keyword
highlight default link caddyComment Comment
highlight default link caddyPlaceholder Identifier
highlight default link caddyEnvVar PreProc
highlight default link caddyAddr Constant
highlight default link caddyInt Constant

let b:current_syntax = "caddy"
