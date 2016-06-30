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

syntax match caddyComment /\v *#.*$/

syntax match caddyPlaceholder /\v\{\w+\}/

syntax match caddyEnvVar /\v\{\$\w+\}/
syntax match caddyEnvVar /\v\{\%\w+\%\}/

syntax match caddyInt /\v\d+/

syntax match caddyAddr /\v\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}(:\d+)?/

syntax region caddyString start=/\v"/ skip=/\v\\./ end=/\v"/

highlight default link caddyDirective Keyword
highlight default link caddyComment Comment
highlight default link caddyPlaceholder Identifier
highlight default link caddyEnvVar PreProc
highlight default link caddyAddr Constant
highlight default link caddyInt Constant
highlight default link caddyString String

let b:current_syntax = "caddy"
