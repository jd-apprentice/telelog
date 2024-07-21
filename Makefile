app_name ?= telelog

all: build test

test:

	@echo "Running tests... 🧪"
	for file in test/*test.sh; do \
		echo "Running test $$file"; \
		chmod +x $$file; \
		./$$file;
	done
	@echo "All tests passed! 🎉"

build:
	@echo "Building..."
	chmod +x lib/$(app_name)
	if test -f /usr/local/bin/$(app_name); then sudo rm /usr/local/bin/$(app_name); fi
	sudo cp lib/$(app_name) /usr/local/bin/$(app_name)

