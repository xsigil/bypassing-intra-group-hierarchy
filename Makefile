PROJECT = bypassing_intra_group_hierarchy
TEX = lualatex -interaction=nonstopmode -halt-on-error -file-line-error -synctex=1
OUT_DIR = build

.PHONY: all clean

all: $(OUT_DIR)/$(PROJECT).pdf

$(OUT_DIR)/$(PROJECT).pdf: src/$(PROJECT).tex
	@mkdir -p $(OUT_DIR)
	latexmk -pdf -pdflatex="$(TEX)" -outdir=$(OUT_DIR) $<

clean:
	latexmk -C -outdir=$(OUT_DIR)
	rm -rf $(OUT_DIR)
