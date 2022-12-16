using Sockets, HTTP
const router = HTTP.router()
HTTP.@register(router, "GET", "/", req->HTTP.Response(200, "Hello World")))
port = parse(Int, get(ENV, "PORT", "8000"))
HTTP.serve(router, ip"0.0.0.0", port)
