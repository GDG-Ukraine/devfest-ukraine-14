# GDG DevFest 2014 site template

### Demo
You can always check current dev version at http://gdg-ukraine.github.io/devfest-2014/

### Local development
Generate site: 

```
jekyll build -w --config _config.yml
```

Start server: 

```
jekyll serve --config _config.yml
```

### Benefits
* Simple and beautiful design
* Responsive
* SVG icons
* Easily to configure
* Easily to deploy
* SEO friendly

### Contributors
* Design and markup: [ozasadnyy](https://github.com/ozasadnyy)
* Jekyll integration: [zasadnyy](https://github.com/zasadnyy)



## Documentation

### Automation (only Windows)


#### Images
You can optimize images by running **all_image_optimization.bat** from `..\automation\images` folder

```
all_image_optimization.bat -d -jtran -pout -pquant -optip -gsicle -svgo
```

Parameters:
* **-d** - default path to images' folder (you can pass your own path: `all_image_optimization.bat D:\development\web\devfest-14\images -jtran`) **Required!**
* [**-jtran**](http://jpegclub.org/jpegtran) - optimize JPEG images (suggested by [Web Fundamentals](https://developers.google.com/web/fundamentals))
* [**-pout**](http://advsys.net/ken/utils.htm) - lossless PNG optimization
* [**-optip**](http://optipng.sourceforge.net) - lossless PNG optimization (suggested by [Web Fundamentals](https://developers.google.com/web/fundamentals))
* [**-pquant**](http://pngquant.org) - lossy PNG optimization (suggested by [Web Fundamentals](https://developers.google.com/web/fundamentals))
* [**-gsicle**](http://www.lcdf.org/gifsicle) - create and optimize GIF images (suggested by [Web Fundamentals](https://developers.google.com/web/fundamentals))
* [**-svgo**](https://github.com/svg/svgo) - Nodejs-based tool for optimizing SVG vector graphics files (suggested by [Web Fundamentals](https://developers.google.com/web/fundamentals)) (**Nodejs required**)

For `-svgo` intall [Nodejs](http://nodejs.org/) and then run command

```
[sudo] npm install -g svgo
```

You can use some of parameters. For example

```
all_image_optimization.bat -d -jtran -optip
```

Moreover, you can run the files separately **jpegtran.bat**, **pngout.bat**, **optipng.bat**, **pngquant.bat**, **gifsicle.bat** or **svgo.bat** which by default will optimize all images in `../img/` folder and subfolder or pass a path to the folder.

```
jpegtran.bat 
```
Or

```
jpegtran.bat D:\development\web\devfest-14\images
```

#### Minify CSS and JS
You can optimize all `.css` and `.js` files in `../css/` and `../js/` folders  by running **minify_all.bat** from `..\automation\minifying` folder

```
minify_all.bat
```

Specify pathes to `.css` and `.js` folders through parameters

```
minify_all.bat path_to_css_folder path_to_js_folder
```

For example

```
minify_all.bat D:\development\web\devfest-14\styles D:\development\web\devfest-14\scripts
```

**Note!** path to css folder should be first
For sure, you can run the files separately **minify_css.bat** or **minify_js.bat**
You can use some of them. For example

```
minify_css.bat 
```

Or

```
minify_css.bat D:\development\web\devfest-14\styles
```

Also you can generate `.min` files only of **style.css** and **scripts.js**

```
minify_style_css_js
```

```
minify_scripts_js
```



#### _More information comming soon... Stay tuned!_