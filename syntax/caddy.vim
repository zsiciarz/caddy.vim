syntax keyword caddyDirective basicauth bind browse cors errors ext fastcgi
syntax keyword caddyDirective git gzip header hugo import internal ipfilter
syntax keyword caddyDirective jsonp jwt log mailout markdown mime prometheus
syntax keyword caddyDirective proxy realip redir rewrite root search shutdown
syntax keyword caddyDirective startup templates tls websocket

syntax match caddyComment ' *#.*$'

highlight default link caddyDirective Keyword
highlight default link caddyComment Comment
