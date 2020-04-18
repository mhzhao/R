# R
- gganimate short introdution (can't upload due to too large), but github is good enough to look at [gganimate package](https://github.com/thomasp85/gganimate) 
- [animation package demo](https://github.com/yihui/animation/tree/master/demo), interesting tree and leaf drawing.
- a very simple walking heart latex way, run like this:
  - pdflatex animate.tex
  - ./makeGIF.sh

## revealjs presentation in R
I use it in R markdown
- update [chalkboard plugin](https://github.com/rajgoel/reveal.js-plugins/tree/master/chalkboard) manually, copy them to /Library/Frameworks/R.framework/Versions/3.6/Resources/library/revealjs/reveal.js-3.3.0.1/plugin/chalkboard, then add the missing shortcuts [x, y] for color changes, add them in /Library/Frameworks/R.framework/Versions/3.6/Resources/library/revealjs/rmarkdown/templates/revealjs_presentation/resources/default.html, then new presentation from the template will be color changable. 
