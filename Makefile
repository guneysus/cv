default: build

create-build-dir:
	@mkdir _build || true

build:

	@xelatex \
		-interaction=nonstopmode \
		-halt-on-error \
		-output-directory _build \
		resume.tex

open: build
	@mv _build/resume.pdf _build/ahmed-seref-guneysu-cv.pdf
	@xdg-open _build/ahmed-seref-guneysu-cv.pdf

.PHONY: default build open create-build-dir