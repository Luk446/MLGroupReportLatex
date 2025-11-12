# Latexmk configuration file
# This directs auxiliary files to build/ directory while keeping PDF in main directory

$aux_dir = 'build';
$out_dir = '.';

# Ensure build directory exists
if (!-d $aux_dir) {
    mkdir $aux_dir or die "Cannot create $aux_dir directory: $!";
}

# PDF generation method
$pdf_mode = 1;
$pdflatex = 'pdflatex -interaction=nonstopmode -file-line-error -synctex=1 %O %S';

# Bibtex configuration
$bibtex_use = 2;

# Clean up patterns
$clean_ext = 'synctex.gz synctex.gz(busy) run.xml tex.bak bbl bcf fdb_latexmk fls frm makefile nav snm vrb';