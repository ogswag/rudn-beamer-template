# Makefile for LaTeX project using latexmk

# Name of your main .tex file (without extension)
FILE = main

# Build directory for auxiliary files
BUILD_DIR = build

# LaTeX engine and options
LATEXMK_OPTIONS = -lualatex -interaction=nonstopmode

# Default target: build the PDF
all: $(FILE).pdf

# Rule to build PDF
$(FILE).pdf: $(FILE).tex
	@echo "Creating build directory if needed..."
	@mkdir -p $(BUILD_DIR)
	@echo "Compiling $(FILE).tex with lualatex..."
	latexmk $(LATEXMK_OPTIONS) $(FILE).tex

# Clean auxiliary files (keeps PDF)
clean:
	latexmk -c $(FILE).tex
	@echo "Build directory remains. Run 'make distclean' to remove it."

# Clean everything including build directory
distclean:
	latexmk -c $(FILE).tex
	rm -rf $(BUILD_DIR)
	rm -f $(FILE).pdf

# Continuous preview mode
preview:
	latexmk $(LATEXMK_OPTIONS) -pvc $(FILE).tex

.PHONY: all clean distclean preview
