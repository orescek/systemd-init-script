#!/usr/bin/python
#Downloaded from: https://github.com/tornadoweb/tornado
#Modified so taht port can be added as argument

import tornado.ioloop
import tornado.web
import sys

class MainHandler(tornado.web.RequestHandler):
    def get(self):
        self.write("Hello, world")

def make_app():
    return tornado.web.Application([
        (r"/", MainHandler),
    ])

port=0
print sys.argv[1]
if len(sys.argv) > 1:
    port = sys.argv[1]
else:
   port = 'null'


if __name__ == "__main__":
    app = make_app()
    app.listen(port)
    tornado.ioloop.IOLoop.current().start()



