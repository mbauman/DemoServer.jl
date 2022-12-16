import Sockets, HTTP
const ROUTER = HTTP.Router()
sayhello(req) = HTTP.Response(200, "<h1>Hello World</h1>")
HTTP.register!(ROUTER, "GET", "/", sayhello)
HTTP.serve(ROUTER, Sockets.ip"0.0.0.0", 8000)
