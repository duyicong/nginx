
default:	build

clean:
	rm -rf Makefile objs

build:
	$(MAKE) -f objs/Makefile
	$(MAKE) -f objs/Makefile manpage

install:
	$(MAKE) -f objs/Makefile install

upgrade:
	/Users/duyicong/Documents/workspace/myproject/nginxconf/sbin/nginx -t

	kill -USR2 `cat /Users/duyicong/Documents/workspace/myproject/nginxconf/logs/nginx.pid`
	sleep 1
	test -f /Users/duyicong/Documents/workspace/myproject/nginxconf/logs/nginx.pid.oldbin

	kill -QUIT `cat /Users/duyicong/Documents/workspace/myproject/nginxconf/logs/nginx.pid.oldbin`
