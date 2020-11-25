# Inkscape

Inkscape is full of joy!
Below are some interesting patterns you can create, and some help on how to learn to master Inkscape with it.

## TexText
The first point is to use LaTeX with Inkscape. A toolbox interface for that is given by [TexText](https://inkscape.org/~jcwinkler/%E2%98%85textext) and can help you make graph like that:

### Example:
[dome.svg](images/dome.svg)
<p float="left"><img src="images/dome.svg?sanitize=true" width="300">



## Converting .png to .svg files

How to convert a .png to .svg  file with Inkscape:
this use case is particularly helpful if you need to create (and guess what you do!) a numeric **signature** from a scanned version:
https://www.youtube.com/watch?v=21S_aGhyDeY
see also https://inkscape.org/doc/tutorials/tracing/tutorial-tracing.html.

### Example
[IMAG.png](images/IMAG.svg) vs.[IMAG.svg](images/IMAG.svg)
<p float="left"><img src="images/IMAG.png?sanitize=true" width="300">
<img src="images/IMAG.svg?sanitize=true" width="300">


## Layers, weaving and interlacing

Weaving Interlacing in vector graphics is useful for  making nice pictures often requires manipulating **layers** in Inkscape. Layers helps creating overlaps, occlusions, etc. (see for instance: https://www.youtube.com/watch?v=3ChqcAdTMAU) and is a key tool for vector graphics, combine with the "fill bounded area" tool.

Some advice can be found here wooden https://m.youtube.com/watch?v=n-Yz4ec-xew
and here
https://design.tutsplus.com/tutorials/geometric-design-knots-and-weaves--cms-23968

<p float="left"> <img src="https://github.com/josephsalmon/Tweets/blob/master/IslamicArt/svg/Celting_knot_color.svg" width="300">


## pdftk

In connection with Inkscape the software **[pdftk](https://www.pdflabs.com/tools/pdftk-server/)** (on Linux at least) can be used to burst pdfs, or merge pdfs together: see e.g.,

```pdftk myfile.pdf burst```

or

```pdftk *.pdf cat output newfile.pdf```

## Tiling and Cloning with rotation
Here is an example of the function "Edit\Clone\Clone\Create Tiled Clone...", starting from the image on the left, centering the rotation point on the gray dot, and then applying the techniques with correct parameter (see https://www.youtube.com/watch?v=YZLwVpeu2-g&ab_channel=cuttingtimes) you get:
<p float="left"> <img src="images/Sultan_Uljaytu_Frontispiece_before_tilling.svg?sanitize=true" width="300"><p float="left"> <img src="images/Sultan_Uljaytu_Frontispiece_after_tilling.svg?sanitize=true" width="300">




## Tiling / Repetition of object along a shape

[Repeat an Object Around a Shape with Inkscape](https://www.youtube.com/watch?v=3jve45Z60iU)
to get something like
[pattern_along_path.svg](images/pattern_along_path.svg) <p float="left"> <img src="images/pattern_along_path.svg?sanitize=true" width="300">

**Challenge**: can you replicate this https://ssdesai.wordpress.com/2020/06/30/mandala/ in Inkscape?

## Additional miscellaneous (math) art

You will find more examples and math art creations here: https://github.com/josephsalmon/Tweets/