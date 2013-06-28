---
layout: post
title: "How to integrate Bootstrap CSS into your Sinatra site, and get more out of your objects using ERB"
date: 2013-06-28 7:31
comments: true
categories:
---
By Ning Yap

![Bootstrap](http://www.ningmusic.com/img/bootstrap.jpg)

> Twitter Bootstrap + Sinatra = Beautiful Routes

####1) Grab the Bootstrap Package

Visit [Bootstrap](http://twitter.github.io/bootstrap/) and download the zip file. Then, copy the **css**, **js** and **img** folders into the '**public**' folder of your Sinatra site directory.

![public folder](http://www.ningmusic.com/img/public-css-js-img.png)

####2) Edit Your Template (layout.erb)

Edit your **layout.erb** to include **bootstrap.css** within the **\<head\>** tags.

![css head](http://www.ningmusic.com/img/css-head.jpg)

**bootstrap.js** goes within your **\<body\>** tags at the end.

![js body](http://www.ningmusic.com/img/js-body.jpg)

Note the positioning of **\<%= yield %\>** **ERB** tag which will take content from other ERB templates within your **views** directory. The file **layout.erb** is a convention of Sinatra that automatically becomes the default "layout" template of your site. This can be changed within your routes manually.


####3) Navigation Bar

![bootstrap navbar](http://www.ningmusic.com/img/bootstrap-navbar.png)

Consider your nav bar, which will sit on top of every page that uses your default layout. Bootstrap makes it very easy to create drop down menus and also includes a search bar. Use ERB (each loops) to dynamically generate menu items! For example, in the Genres dropdown menu, the list of genres is dynamically calculated as in the number of songs in each category.

{% include_code lang:css navbar_example.erb %}

####4) Sinatra Routes

Having a navigation bar means making decisions about your routes! Consider your "main" routes, or the ones that will be accessed most often. Try to make most content on the site accessible from within 3 clicks or so from the home page.

####5) Add a background via CSS

[Subtle Patterns](http://subtlepatterns.com/) has free "textured" backgrounds that can spruce up the look of your site. Add the texture files to your '**public/img**' folder of your site and then add the appropriate css between your **\<head\>** tags of your **layout.erb**.

    <style>
    body {
    background-image:url('/img/escheresque_ste.png');
    }
    </style>

####6) Edit the CSS

Don't be afraid to edit Bootstrap's CSS file to suit your needs. For example, I edited the ".btn" class to achieve rounder larger buttons to hold artists and songs. Refer to the [Components](http://twitter.github.io/bootstrap/components.html) section of the documentation

![btn-example](http://www.ningmusic.com/img/btn-example.jpg)
![btn-large](http://www.ningmusic.com/img/btn-large.jpg)

####7) Know your grid

Utilize "container" class and "span#" to take advantage of pre-configured grid/responsive design. Be aware of block elements and inline elements. "Span" classes can collapse responsively as the window resizes.

####8) Getting creative with href-ing and routes

Achieve flow by having objects point to each other and organize them both visually and logically. Add/drop features are more advanced and are "hidden" away, drop buttons are given class of danger to highlight destructive nature. Dynamic pages/data are more interesting, if you've built robust Classes/Objects, pull the data into the page with ERB, make the site feel alive!

![bootstrap-dashboard](http://www.ningmusic.com/img/bootstrap-dashboard.jpg)

Checkout my [repository](http://github.com/ningbit/playlister-sinatra) here to see the results!




