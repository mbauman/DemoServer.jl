import Sockets, HTTP
const ROUTER = HTTP.Router()
HTTP.register!(ROUTER, "GET", "/", req->HTTP.Response(200, "Hello World"))
[@info("$k=$v") for (k,v) in ENV];
port = parse(Int, get(ENV, "port", "8000"))
HTTP.serve(ROUTER, Sockets.ip"0.0.0.0", port)
