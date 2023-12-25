

# LaTeX Document with Neovim in Termux

This repository contains a LaTeX document edited using Neovim in the Termux environment. The document includes a gate question.

## Overview

The LaTeX document provides a structured approach to presenting gate questions and solutions. It is designed to be edited using Neovim in the Termux app on an Android device.

## Editing with Neovim in Termux

1. **Open the LaTeX document for editing:**  
   Run the following command in the Termux terminal:
   ```bash
   nvim gate_question.tex
   ```

2. **Enter insert mode:**  
   Press `i` to begin writing or editing your LaTeX code.

3. **Save changes and exit insert mode:**  
   Press `Esc` and type `:wq`, then press `Enter`.

## Compiling LaTeX Code

1. **Open a Termux terminal and navigate to the directory containing `gate_question.tex`.**

2. **Compile the LaTeX code:**  
   Run the following command:
   ```bash
   pdflatex gate_question.tex
   ```

## Viewing the PDF

After compilation, view the generated PDF using Termux:
```bash
termux-open gate_question.pdf
```



## Installation Commands

To set up the required tools, use the following commands:

- Install Neovim:
  ```bash
  pkg install neovim
  ```

- Install LaTeX:
  ```bash
  pkg install texlive
  ```
