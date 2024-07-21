app_name ?= telelog

all: build test

test:
	@echo "Running tests... 🧪"
	./test.sh --message 'pepon gordo'
	@echo "--message test passed. ✅"
	@echo "pepino" > test.log
	./test.sh --file test.log
	@echo "--file test passed. ✅"
	rm test.log

build:
	@echo "Building..."
	chmod +x lib/$(app_name)
	if test -f /usr/local/bin/$(app_name); then sudo rm /usr/local/bin/$(app_name); fi
	sudo cp lib/$(app_name) /usr/local/bin/$(app_name)

pipeline:
	@echo "Skipping Building..."
	chmod +x lib/$(app_name)
	./lib/$(app_name) --message 'pepon gordo'
	@echo "--message test passed. ✅"
	@echo "pepino" > test.log
	./lib/$(app_name) --file test.log
	@echo "--file test passed. ✅"
	rm test.log
