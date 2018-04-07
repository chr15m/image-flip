files.txt: $(wildcard images/)
	ls $< > $@

node_modules/mithril/mithril.min.js: package.json
	npm install
