# Makefile for Hugo website

HUGO := hugo
PUBLIC_DIR := public

.PHONY: all
all: build

.PHONY: serve
serve:
	@echo "Starting Hugo server with drafts enabled..."
	$(HUGO) server -D

.PHONY: dev
dev:
	@echo "Starting enhanced development server with drafts and future posts..."
	$(HUGO) server -D -F --disableFastRender --navigateToChanged

.PHONY: build
build:
	@echo "Building site for production..."
	$(HUGO)

.PHONY: clean
clean:
	@echo "Cleaning $(PUBLIC_DIR) directory..."
	rm -rf $(PUBLIC_DIR)
	@echo "$(PUBLIC_DIR) directory cleaned."
