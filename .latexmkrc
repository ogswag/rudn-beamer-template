# .latexmkrc - Configuration for latexmk

# Use lualatex as the LaTeX engine
$pdflatex = 'lualatex -interaction=nonstopmode %O %S';

# Put all auxiliary files (.aux, .log, .toc, etc.) in build/ directory
$aux_dir = 'build';

# Keep output PDF in current directory (comment out to put PDF in build/ too)
# $out_dir = '.';

# Ensure build directory exists (latexmk will create it automatically)
# This is handled by the Makefile, but good to have as fallback

# Enable quiet mode to reduce console noise (optional)
$silence_logfile_warnings = 1;

# Handle bibliography properly with biber/bibtex
$bibtex_use = 2;  # 2 = always run bibtex/biber if needed

# Maximum number of compilation runs (safety limit)
$max_repeat = 5;

# macOS-specific: Use open command for PDF preview
$pdf_previewer = 'open %S';
