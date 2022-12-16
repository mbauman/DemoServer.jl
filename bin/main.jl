import Sockets, HTTP
const ROUTER = HTTP.Router()
sayhello(req) = HTTP.Response(200, "<html><body><h1>Hello World</h1></body></html>")
HTTP.register!(ROUTER, "GET", "/", sayhello)
HTTP.serve(ROUTER, Sockets.ip"0.0.0.0", 8000)
