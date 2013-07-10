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
            response.write('<h1>404</h1>');
            response.write('<a href="/">go to root</a>');
            response.end();
            return;
        }

        if (fs.statSync(filepath).isDirectory()) {
            fs.readdir(filepath, function(err, files) {
                var html = '<h1>' + PATH.resolve(path) + '</h1>';

                html += '<a href="' + PATH.relative(path, filepath), '..' + '">..</a><br>';

                files.forEach(function(file) {
                    html += '<a href="' + PATH.relative(path, filepath) + '/' + file + '">' + file + '</a><br>';
                });
                response.writeHead(200, {'Content-Type': 'text/html'});
                response.write(html);
                response.end();
            });
            return;
        }
        fs.readFile(filepath, "binary", function(err, file) {
        if(err) {
            response.writeHead(500, {"Content-Type": "text/html"});
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
}).listen(parseInt(port, 10), null, null, function() {
    require('child_process').exec('open http://localhost:' + port + '/');
});

console.log('Static file server running at\n  http://localhost:' + port + '/');
