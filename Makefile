default: build

init:
	@mkdir _build || true

build: init
	@xelatex \
		-interaction=nonstopmode \
		-halt-on-error \
		-output-directory _build \
		resume.tex

post-build:
	@mv _build/resume.pdf _build/ahmed-seref-guneysu-cv.pdf

open: build
	@xdg-open _build/ahmed-seref-guneysu-cv.pdf

.PHONY: default build open init post-buil