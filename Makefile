all: files.txt node_modules/mithril/mithril.min.js miniweb

files.txt: $(wildcard images/)
	ls $< > $@

node_modules/mithril/mithril.min.js: package.json
	npm install
	touch $@

miniweb:
	wget https://sourceforge.net/projects/miniweb/files/latest/download -O miniweb.zip
	unzip miniweb.zip
	rm miniweb.zip
