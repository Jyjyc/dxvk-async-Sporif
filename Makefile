.PHONY: build
.ONESHELL:

dxvk/src/dxvk/dxvk_pipecompiler.cpp:
	cd dxvk
	cat ../dxvk-async.patch | patch -p1
	#patch < ../dxvk-async-*.patch

build: dxvk/src/dxvk/dxvk_pipecompiler.cpp
	cd dxvk
	./package-release.sh $(shell cd dxvk && git rev-parse HEAD) out

