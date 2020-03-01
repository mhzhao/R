#!/bin/bash
convert -density 600 animate.pdf -resize @1048576 PNG8:animate-%02d.png
convert -delay 25 animate-*.png animate.gif
