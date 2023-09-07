# Images
Images and figures are always important for scientific communication.
Here is some basic information to know on numerical images, in particular, the RGB nature of the standard encoding and other variants:
https://e2eml.school/convert_rgb_to_grayscale.html

## Inkscape
Inkscape is full of joy!
Below are some interesting patterns you can create, and some help on how to learn to master Inkscape with it.

### TexText
The first point is to use LaTeX with Inkscape. A toolbox interface for that is given by [TexText](https://inkscape.org/~jcwinkler/%E2%98%85textext) and can help you make graphs like this one:

#### Example
[dome.svg](images/dome.svg)
<p float="left"><img src="images/dome.svg?sanitize=true" width="300">

### Converting .png to .svg files

How to convert a .png to .svg  file with Inkscape:
This use-case is particularly helpful if you need to create (and guess what you do!) a numeric **signature** from a scanned version:
https://www.youtube.com/watch?v=21S_aGhyDeY
see also https://inkscape.org/doc/tutorials/tracing/tutorial-tracing.html.

#### Example
[IMAG.png](images/IMAG.svg) vs. [IMAG.svg](images/IMAG.svg)
<p float="left"><img src="images/IMAG.png?sanitize=true" width="300">
<img src="images/IMAG.svg?sanitize=true" width="300">


### Layers, weaving and interlacing

Weaving Interlacing in vector graphics is useful for making nice pictures often requires manipulating **layers** in Inkscape. Layers help create overlaps, occlusions, etc. (see for instance: https://www.youtube.com/watch?v=3ChqcAdTMAU) and is a key tool for vector graphics, combined with the "fill bounded area" tool.

Some advice can be found [here](https://www.youtube.com/watch?app=desktop&v=n-Yz4ec-xew) and [there](https://design.tutsplus.com/tutorials/geometric-design-knots-and-weaves--cms-23968).


<p float="left"> <img src="https://github.com/josephsalmon/Tweets/blob/master/IslamicArt/svg/Celting_knot_color.svg" width="300">

## Splines and simple shapes
Learn how to use splines to create the symbol : <p float="left"> <img src="images/Curly_Bracket.svg?sanitize=true" width="100">


<u>Source</u>: <https://graphicdesign.stackexchange.com/questions/86334/inkscape-easy-way-to-create-curly-brace-bracket>

### `pdftk`

In connection with Inkscape the software **[`pdftk`](https://www.pdflabs.com/tools/pdftk-server/)** (on Linux at least) can be used to burst PDFs or merge PDFs together: see *e.g.*,

```pdftk myfile.pdf burst```

or

```pdftk *.pdf cat output newfile.pdf```

### Tiling and Cloning with rotation

Here is an example of the function "Edit\Clone\Clone\Create Tiled Clone...", starting from the image on the left, centering the rotation point on the gray dot, and then applying the techniques with the correct parameter (see [https://www.youtube.com/watch?v=YZLwVpeu2-g&ab_channel=cuttingtimes](https://www.youtube.com/watch?v=YZLwVpeu2-g&ab_channel=cuttingtimes)) you get:
<p float="left"><img src="images/Sultan_Uljaytu_Frontispiece_before_tilling.svg?sanitize=true" width="300"><img src="images/Sultan_Uljaytu_Frontispiece_after_tilling.svg?sanitize=true" width="300">


### Tiling / Repetition of objects along a shape

[Repeat an Object Around a Shape with Inkscape](https://www.youtube.com/watch?v=3jve45Z60iU)
to get something like
[pattern_along_path.svg](images/pattern_along_path.svg)
<p float="left"> <img src="images/pattern_along_path.svg?sanitize=true" width="300">

**Challenge**: Can you replicate this https://ssdesai.wordpress.com/2020/06/30/mandala/ in Inkscape?

### Animated SVG

See for instance: https://georgefrancis.dev/writing/a-generative-svg-starter-kit/.
This requires a bit of JavaScript though...

### (Open) Sources for SVG files

- https://scidraw.io/
- https://search.creativecommons.org/
- http://www.clker.com/
- https://openclipart.org/
- https://freesvg.org/

### Additional miscellaneous (math) art

You will find more examples and math art creations here: https://github.com/josephsalmon/Tweets/



## Other software for image manipulations
- GIMP
- Xournal (for PDFs)
