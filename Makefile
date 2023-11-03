all: clean
	git clone --recurse-submodules https://github.com/arighi/virtme-ng.git
	cp -af build-deb.sh debian virtme-ng
	cd virtme-ng && git add build-deb.sh debian
	cd virtme-ng && git commit -m "deb packaging" -s -a
	cd virtme-ng && ./build-deb.sh -S -sa --lintian-opts --no-lintian

clean:
	git clean -xdf
	rm -rf virtme-ng
