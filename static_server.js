var http = require("http"),
    url = require("url"),
    PATH = require("path"),
    fs = require("fs"),
    path = './',
    port = process.argv[3] || process.argv[2] || 8888;

http.createServer(function(request, response) {

    var uri = url.parse(request.url).pathname,
      filepath = PATH.resolve(path, uri.substring(1, uri.length));

    console.log(uri + '  >  ' + filepath);
    fs.exists(filepath, function(exists) {
        if (!exists) {
            response.writeHead(404, { 'Content-Type': 'text/html'});
            response.write('<!doctype html><meta charset="utf8">');
            response.write('<h1>404</h1>');
            response.write('<a href="/">go to root</a>');
            response.end();
            return;
        }

        if (fs.statSync(filepath).isDirectory()) {
            fs.readdir(filepath, function(err, files) {
                response.writeHead(200, {'Content-Type': 'text/html'});
                response.write('<!doctype html><meta charset="utf8">');
                response.write('<h1>' + PATH.resolve(filepath) + '</h1>');
                response.write('<a href="' + PATH.resolve(request.url, '..')  + '">..</a><br/>');
                files.forEach(function(file) {
                    response.write('<a href="' + PATH.join(request.url, file) + '">' + file + '</a><br>');
                });
                response.end();
            });
            return;
        }
        fs.readFile(filepath, "binary", function(err, file) {
            if(err) {
                response.writeHead(500, {"Content-Type": "text/html"});
                response.write('<!doctype html><meta charset="utf8">');
                response.write('<h1>500</h1>');
                response.write('<a href="/">go to root</a>');
                response.end();
                return;
            }

            response.writeHead(200);
            response.write(file, "binary");
            response.end();
        });
    });
}).listen(parseInt(port, 10));

console.log('Static file server running at\n  http://localhost:' + port + '/');
