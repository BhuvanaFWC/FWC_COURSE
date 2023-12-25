

# Geometry Exploration with LaTeX and Neovim in Termux

This repository contains a LaTeX document edited using Neovim in the Termux environment. The document explores various geometric concepts, including angles, degrees, and mathematical expressions.

## Overview

The LaTeX document provides insights into geometry, covering fundamental concepts and mathematical expressions. It is designed to be edited using Neovim in the Termux app on an Android device.

## Editing with Neovim in Termux

1. **Open the LaTeX document for editing:**
   ```bash
   nvim geometry_document.tex
   ```

2. **Enter insert mode:**
   Press `i` to begin writing or editing your LaTeX code.

3. **Save changes and exit insert mode:**
   Press `Esc` and type `:wq`, then press `Enter`.

## Compiling LaTeX Code

1. **Open a Termux terminal and navigate to the directory containing `geometry_document.tex`.**

2. **Compile the LaTeX code:**
   ```bash
   pdflatex geometry_document.tex
   ```

## Viewing the PDF

After compilation, view the generated PDF using Termux:
```bash
termux-open geometry_document.pdf
```


## Installation Commands

To set up the required tools, use the following commands:

- **Install Neovim:**
  ```bash
  pkg install neovim
  ```

- **Install LaTeX:**
  ```bash
  pkg install texlive
  ```

## Geometry Symbols and Expressions

Explore various geometry symbols and expressions in the document, including angles, degrees, and mathematical symbols.

- \(\angle ABC\)
- \(\sin(\theta) = \frac{\text{opposite}}{\text{hypotenuse}}\)
- \(\sum_{i=1}^{n} x_i\)

