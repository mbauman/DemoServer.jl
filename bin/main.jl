using Sockets, HTTP
const ROUTER = HTTP.router()
HTTP.@register(ROUTER, "GET", "/", req->HTTP.Response(200, "Hello World")))
port = parse(Int, get(ENV, "PORT", "8000"))
HTTP.serve(ROUTER, ip"0.0.0.0", port)
