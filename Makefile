
default: build

build:
	@mkdir -p _build
	@xelatex \
		-interaction=nonstopmode \
		-output-directory _build \
		resume.tex
		# -halt-on-error \

.PHONY: default build