---
layout: post
title: "HTML5 Boilerplate Explained In Simple Terms"
date: 2013-09-30 19:00
comments: true
categories:
---

By Ning Yap

![HTML5 Boilerplate](/images/2013/html5-boilerplate.png)
_Get the [latest version](http://html5boilerplate.com/) of HTML5 Boilerplate and read about Rails integration [here](http://railsapps.github.io/rails-html5-boilerplate.html)_

## What is HTML5 Boilerplate?
A template from which one can more easily build a standards-aware website. It is in the words of one of its creators Paul Irish _"a **good starting template** of **HTML** and **CSS** and a **folder structure** that works... Baked into it is **years of best practices** from **front-end development professionals**."_ Since 2010, it's been polished and iterated upon by [hundreds of developers](https://github.com/h5bp/html5-boilerplate/tree/v4.3.0). 

####Here's a quick list of features:
- Cross-browser compatibility (Chrome, Firefox, Safari, Opera, IE)
- Legacy browser support back to IE6
- Includes common JavaScript libraries jquery.min.js and modernizr.js
- Includes common CSS library normalize.min.css
- Google Analytics tracking code snippet
- CSS common helper classes, media queries for responsive design
- Customizable! And open-source!


### How popular is it?

A Google search for "boilerplate" yields [html5boilerplate.com](http://html5boilerplate.com/) as the first search result over an actual boiler plate.

{% imgcap right 'http://upload.wikimedia.org/wikipedia/commons/e/e5/Bessemer_steel_boiler_plate_stamping.PNG' 375 375 Actual boiler plate used to make boilers %}


### A look at the file/folder structure

        .
        ├── css
        │   ├── main.css
        │   └── normalize.css
        ├── doc
        ├── img
        ├── js
        │   ├── main.js
        │   ├── plugins.js
        │   └── vendor
        │       ├── jquery.min.js
        │       └── modernizr.min.js
        ├── .htaccess
        ├── 404.html
        ├── apple-touch-icon-precomposed.png
        ├── index.html
        ├── humans.txt
        ├── robots.txt
        ├── crossdomain.xml
        └── favicon.ico

The structure is fairly straighforward, CSS files belong in **css**, documentation belongs in **doc**, image assets in **img**, and JavaScript files in **js**. **main.css** contains boilerplate styles that can be generated via [initializr.com](http://www.initializr.com/), as well as helper classes and media queries. 

**.htaccess** is the default config file for an Apache web server, **humans.txt** is for listing team members and technologies used, and **robots.txt** is for pages that should be hidden from search engines. **crossdomain.xml** is a template for working with cross-domain requests and **favicon.ico** and the **Apple touch icon** should be replaced with your own so the user sees a customized icon when he or she bookmarks the site. 

**404.html** is the default "Not Found" page and **index.html** the default load page.


## Examining index.html
> Hello world! This is HTML5 Boilerplate.

<div style="max-height:400px;overflow:scroll">
{% include_code index.html index.html %}
</div>
<span style='display:block;text-align:center'> ------ </span>
<br />
<p class="code-p">We have our simplified HTML5 doctype declaration:</p>
    <!DOCTYPE html>
<p class="code-p"><a href="http://www.quirksmode.org/css/condcom.html">Conditional commenting</a> only evaluat-able by Internet Explorer browsers. This allows for specifying CSS fixes for specific legacy versions of IE. The ".no-js" class can be used to specify custom styles when JavaScript is disabled.</p>
    <!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
    <!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
    <!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
    <!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
<p class="code-p">Apparently, if the charset isn't declared within the first <a href="https://code.google.com/p/doctype-mirror/wiki/ArticleUtf7">512 bytes</a> of your HTML document, your site is vulnerable to <a href="https://code.google.com/p/doctype-mirror/wiki/ArticleXSS">malicious code and hijacking!</a></p>
    <meta charset="utf-8">


<p class="code-p">Another IE fix to ensure the latest rendering engine version of IE (Internet Exploder) is being used</p>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

<p class="code-p">If you are <strong>NOT</strong> <a href="http://blog.javierusobiaga.com/stop-using-the-viewport-tag-until-you-know-ho">coding a responsive site, or site for mobile, take this line out</a>. It's basically a message to the mobile browser that says, "Render me differently, I'm designed for mobile screens too!"</p>
    <meta name="viewport" content="width=device-width, initial-scale=1">

<p class="code-p">Keep those styles in line with <a href="http://necolas.github.io/normalize.css/">normalize.css</a>!
<em>"Normalize.css makes browsers render all elements more consistently and in line with modern standards. It precisely targets only the styles that need normalizing."</em> How facist.</p>
    <link rel="stylesheet" href="css/normalize.css">

<p class="code-p">Why is this script loaded at the top (rather than the bottom) of the page, possibly <a href="http://elegantcode.com/2010/03/30/your-javascript-goes-where/">causing the whole page to hang</a> if your servers are slow? That's because this JavaScript library, <a href="http://modernizr.com/">Modernizr</a>, helps older browsers handle HTML5 elements; therefore, it must load before any HTML5-specific code can be read.</p>
    <script src="js/vendor/modernizr-2.6.2.min.js"></script>
<br />

### Examining index.html: \<body\> edition

<p class="code-p">Kindly inform your site visitor that their choice of browser is antiquated and they have <a href="http://i2.kym-cdn.com/photos/images/original/000/268/827/fe8.jpg">no taste in technology</a></p>

    <!--[if lt IE 7]>
      <p class="browsehappy">You are using an <strong>outdated</strong> browser. 
      Please <a href="http://browsehappy.com/">upgrade your browser</a> 
      to improve your experience.</p>
    <![endif]-->

<p class="code-p">Content is king.</p>
    <!-- Add your site or application content here -->
    <p>Hello world! This is HTML5 Boilerplate.</p>

<p class="code-p">Bow down to almighty Google, sourcer of jQuery. Actually, you should use Google CDN (Content Delivery Network) because the visitor's browser will likely have a cached version of jQuery from their site... and Google's servers are probably way faster than yours anyway. So yes, bow down to Lord Google.</p>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.10.2.min.js"><\/script>')</script>
    <script src="js/plugins.js"></script>
    <script src="js/main.js"></script>

<p class="code-p">The <a href="http://upload.wikimedia.org/wikipedia/en/9/98/Barad_d%C3%BBr_(LoTR_film).jpg">ever watchful eye</a></p>

    <!-- Google Analytics: change UA-XXXXX-X to be your site's ID. -->
    <script>
        (function(b,o,i,l,e,r){b.GoogleAnalyticsObject=l;b[l]||(b[l]=
        function(){(b[l].q=b[l].q||[]).push(arguments)});b[l].l=+new Date;
        e=o.createElement(i);r=o.getElementsByTagName(i)[0];
        e.src='//www.google-analytics.com/analytics.js';
        r.parentNode.insertBefore(e,r)}(window,document,'script','ga'));
        ga('create','UA-XXXXX-X');ga('send','pageview');
    </script>
<br />

## Abbreviated CSS rundown

<div style="max-height:300px;overflow:scroll">
  {% include_code main.css main.css %}
</div>
<br />
<span style='display:block;text-align:center'> ------ </span>
<br />
{% imgcap '/images/2013/clearfix.jpg' 450 450 %}

<p class="code-p">Friends don't let friends float divs non-clearfixed.</p>
    .clearfix:before,
    .clearfix:after {
        content: " "; /* 1 */
        display: table; /* 2 */
    }

    .clearfix:after {
        clear: both;
    }    

<p class="code-p">What are print styles? <a href="http://coding.smashingmagazine.com/2011/11/24/how-to-set-up-a-print-style-sheet/">Print styles</a> are styles for "printing", which means the transfer of ink to "paper". Paper is a dried, flat-sheet made from the fibrous pulp of wood, a material that hit its peak popularity at the end of the 20th century. Who prints webpages, seriously? Get a tablet, people!</p>
    @media print {
        * {
            background: transparent !important;
            color: #000 !important; /* Black prints faster: h5bp.com/s */
            box-shadow: none !important;
            text-shadow: none !important;
        }
<p class="code-p">My, what a large, shiny screen you have there! You can come over and query my media anytime...</p>
    @media only screen and (min-width: 35em) {
        /* Style adjustments for viewports that meet the condition */
    }
Apologies for that last one.

## A case against using HTML5 Boilerplate

{% imgcap 'http://www.paulirish.com/wp-content/uploads/2010/08/html5boilerplate_ss.png' HTML5 Boilerplate ca. 2010 %}

Will [the real HTML5 boilerplate](http://csswizardry.com/2011/01/the-real-html5-boilerplate/) please stand up? This guy, Harry Roberts, is into minimalism and questioning assumptions, which is always good. He considers the original to be bloatware, basically.

**THIS IS SPARTA!!!!**'s version of HTML5 Boilerplate
{% include_code index.html the_real_html5_boilerplate.html %}

Would have resulted in a much shorter blog post from me. Ah well...


## Summary
Now you know why HTML5 Boilerplate exists. It is a beacon of hope in this [hostile world](http://dev.opera.com/articles/view/unobtrusive-javascript/) of way too many options for browsing. At least with the boilerplate, you have a few crowd-sourced signposts pointing the way.

I must say, front-end development has really come a long way since the good ol' GeoCities days. So tell me when will people stop [confusing the roles of __web designer__ and __web developer__](http://thumbnails.visually.netdna-cdn.com/web-designer-vs-web-developer_502919932c2d2_w594.jpg)?

{% imgcap 'http://cdn.arstechnica.net/2009/04/24/geocities1.png' 480 480 The Good Ol' Days, Bless 'er Heart %}

