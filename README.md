# Formulas

## Building

Building project requires texlive. You can install texlive with:

```bash
apt install texlive-full
```

in Debian based distributions. Then you can build project with:

```
latexmk
```

results will be in `build` directory.

## Switching Language

You can switch language from english to turkish by giving:

```
sed -i 's/\\usepackage\[english\]{babel}/% \\usepackage\[english\]{babel}/g' Formulas.tex
sed -i 's/% \\usepackage\[turkish\]{babel}/\\usepackage\[turkish\]{babel}/g' Formulas.tex
```

If you decide to change it back to english you can use:

```
sed -i 's/% \\usepackage\[english\]{babel}/\\usepackage\[english\]{babel}/g' Formulas.tex
sed -i 's/\\usepackage\[turkish\]{babel}/% \\usepackage\[turkish\]{babel}/g' Formulas.tex
```
