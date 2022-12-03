project_root:=$(CURDIR)

.PHONY: all
all:
	sh main.sh

.PHONY: install
install:
	sh install.sh

.PHONY: help
help:
	@echo "help"
	@echo "all         -- 执行"


