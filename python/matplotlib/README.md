How to use a Matplotlib style file in Python
=====

## Motivation

Harmonize the style of your plots with a Matplotlib style file to reduce code duplication and increase readability.

## The way to go: `mplstyle` files

The basic usage is to create a style file with the extension `.mplstyle` and locate it for instance in the local folder where you work.
For instance with the file [js_style.mplstyle](./js_style.mplstyle) with commands such as:

```python
axes.labelsize: 14
axes.titlesize: 16
lines.linewidth: 2
lines.markersize: 8
```

You can then load in a script the style file with:

```python
import matplotlib.pyplot as plt
plt.style.use('js_style')
```

More information on the style loading is available here: [customizing-with-style-sheets](https://matplotlib.org/stable/tutorials/introductory/customizing.html#customizing-with-style-sheets) and a nice gallery of examples can be found here: [style_sheets_reference](https://matplotlib.org/stable/gallery/style_sheets/style_sheets_reference.html)
