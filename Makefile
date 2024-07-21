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

	@echo "Running pipeline... 🚀"
	@echo "Creating settings file..."

	if [ ! -f ~/.config/telelog/settings ]; then
		mkdir -p ~/.config/telelog
		touch ~/.config/telelog/settings
		echo "token=123" >> ~/.config/telelog/settings
		echo "chat_id=123" >> ~/.config/telelog/settings
	fi

	@echo "Skipping Building..."
	chmod +x lib/$(app_name)
	./lib/$(app_name) --help
	
	@echo "--help test passed. ✅"
	./lib/$(app_name) --set-token '123'; cat ~/.config/$(app_name)/settings.json | grep token
	@echo "--set-token test passed. ✅"

	./lib/$(app_name) --message 'pepon gordo'
	@echo "--message test passed. ✅"

	@echo "pepino" > test.log
	./lib/$(app_name) --file test.log
	@echo "--file test passed. ✅"
	rm test.log

	./lib/$(app_name) --message 'pepon gordo' --file test.log
	@echo "--message and file test passed. ✅"
	
