
default: build

build:
	@mkdir -p _build
	@xelatex \
		-interaction=nonstopmode \
		-halt-on-error \
		-output-directory _build \
		resume.tex

.PHONY: default build