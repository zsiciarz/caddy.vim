" Vim syntax file
" Language: Caddyfile

if exists("b:current_syntax")
  finish
endif

syntax keyword caddyDirective basicauth bind browse cors errors ext fastcgi
syntax keyword caddyDirective git gzip header hugo import internal ipfilter
syntax keyword caddyDirective jsonp jwt log mailout markdown mime pprof prometheus
syntax keyword caddyDirective proxy realip redir rewrite root search shutdown
syntax keyword caddyDirective startup templates tls upload websocket

syntax keyword coreDirective cache chaos dnssec etcd file health kubernetes
syntax keyword coreDirective loadbalance secondary

syntax match caddyComment /\v *#.*$/

syntax match caddyPlaceholder /\v\{\w+\}/

syntax match caddyEnvVar /\v\{\$\w+\}/
syntax match caddyEnvVar /\v\{\%\w+\%\}/

syntax match caddyInt /\v\d+/

syntax keyword caddyBoolean true false on off

syntax match caddyAddr /\v(\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})|(localhost)(:\d+)?/

syntax match caddyPath /\v\s(\.|\.\.)?\/(([-\.\/]|\w)+)?/

syntax region caddyString start=/\v"/ skip=/\v\\./ end=/\v"/

highlight default link caddyDirective Keyword
highlight default link caddyComment Comment
highlight default link caddyPlaceholder Identifier
highlight default link caddyEnvVar PreProc
highlight default link caddyAddr Constant
highlight default link caddyInt Number
highlight default link caddyString String
highlight default link caddyBoolean Boolean
highlight default link caddyPath String

highlight default link coreDirective Keyword

let b:current_syntax = "caddy"
