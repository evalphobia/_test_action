
VERSION := $(shell git tag --points-at HEAD --sort=-v:refname | head -n 1)
REVISION := $(shell git rev-parse --short HEAD)
LDFLAGS := -X 'main.version=$(VERSION)' \
           -X 'main.revision=$(REVISION)'

echo:
	echo "==== show env ===="
	echo "$(VERSION)"
	echo "$(REVISION)"
	echo "$(LDFLAGS)"

