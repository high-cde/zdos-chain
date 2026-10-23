all: build test

build:
	@echo "[*] Compilazione della blockchain sovrana ZDOS..."
	zlang-compiler build --manifest chain.toml --target sovereign-chain

test:
	@echo "[*] Esecuzione del nodo in ambiente ZLB2..."
	zlb2 execute --entry src/main.zl

clean:
	rm -rf build/ *.zbin
