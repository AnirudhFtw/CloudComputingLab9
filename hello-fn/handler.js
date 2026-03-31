const http = require('http');

http.createServer((req, res) => {
    res.end("Hello from OpenFaaS 🚀");
}).listen(3000);