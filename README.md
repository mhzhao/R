# R
- gganimate short introdution (can't upload due to too large), but github is good enough to look at [gganimate package](https://github.com/thomasp85/gganimate) 
- [animation package demo](https://github.com/yihui/animation/tree/master/demo), interesting tree and leaf drawing.
- a very simple walking heart latex way, run like this:
  - pdflatex animate.tex
  - ./makeGIF.sh

## revealjs presentation in R
I use it in R markdown
- update [chalkboard plugin](https://github.com/rajgoel/reveal.js-plugins/tree/master/chalkboard) manually, copy them to /Library/Frameworks/R.framework/Versions/3.6/Resources/library/revealjs/reveal.js-3.3.0.1/plugin/chalkboard, then add the missing shortcuts [x, y] for color changes, add them in /Library/Frameworks/R.framework/Versions/3.6/Resources/library/revealjs/rmarkdown/templates/revealjs_presentation/resources/default.html, then new presentation from the template will be color changable. 

## modify and rebuild package
1. For just simply testing out the effect of the changes in an interactive R session, here is how:
  - load library for the function to be modified and tested `library(revealjs)`
  - using `trace()` to do so: `trace("revealjs_presentation",edit=TRUE)`
  - save the modified file, back in R, use the modified function.
 this will not change the installed package, to permenantly modify the function, follow 2.
2. This method will rebuild the package
  - download and extract the source:
    + wget https://cran.r-project.org/src/contrib/revealjs_0.9.tar.gz
    + tar -xvzf revealjs_0.9.tar.gz
  - go into the directory(`cd revealjs`) and modify as necssary
  - build the changes
    + `cd ..`
    + `R CMD build revealjs`
  - it will result in a new archive file named `revealjs_0.9.tar.gz`, lastly, install the modified archive:
    + `R CMD INSTALL revealjs_0.9.tar.gz`
