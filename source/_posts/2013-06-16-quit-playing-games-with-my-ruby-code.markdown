---
layout: post
title: "Quit Playing Games with My Ruby Code"
date: 2013-06-16 23:07
comments: true
categories: 
---
By Ning Yap [[@ningbit]](http://www.twitter.com/ningbit)

{% imgcap left http://upload.wikimedia.org/wikipedia/en/7/7c/Tetris-VeryFirstVersion.png 319 192 Tetris, c.1986 in a Soviet lab %}

I don't mean to pigeonhole myself and this blog into being all about game development and game design (as my first two posts would seem to indicate), but it is what my beginner mind is gravitating towards, mainly out of curiosity. Maybe because I don't get to play games anymore and consider them a poor investment of my time these days. But programming games… That's cerebral and smart! _*ahem_

So perousing speakerdeck.com for a class assignment alerted me to the fact that I'm not alone at all. See [here](https://speakerdeck.com/sausheong/playing-with-ruby "Playing with Ruby") and [here](https://speakerdeck.com/cadwallion/game-development-and-ruby "Game Development and Ruby"). There are a good number of people interested in utilizing Ruby for game development. And where there is interest -- I'm learning -- there are *always* gems! The one I'll be focusing on (and also using) is called **'Gosu'**.

    gem install gosu

So there's a good amount of documentation about **gosu** on their site <http://www.libgosu.org/>, much of which I'm sure I'll understand better once I try to implement it. But I'll summarize what gosu is here

- It's a 2D game development library
- It's C++ based, with a Ruby wrapper
- Finished game will run on OSX, Linux and Windows platforms
- OpenGL is used for rendering

So my last game I tried to write, see [my last post](/blog/2013/06/12/8-bit-git-the-challenges-of-creating-a-git-based-game-part-one/), was played in the command line, didn't refresh, and had no sprites or fancy graphics. With gosu, I'll be able to take advantage of __*real-time* input__ from the player in the form of any keystroke (I'm thinking of a cool typing game!). It will be able to **draw** the window and then re-draw (I'm thinking of car-crashes and collisions and block-exploding animations). The **Resource Manager** allows for images and sprites (time to pay direct homage to my 8-bit and 16-bit past). The **Game State Manager** allows for win, loss, death, pause conditions (very much like real-life).

{% include_code gosu_example.rb %}

Not only that, there is even an option for adding sound, which is probably the icing on the cake, since I didn't tell you this, but I actually studied music/sound production in college.

{% imgcap right http://www.myabandonware.com/media/captures/M/mario-teaches-typing/mario-teaches-typing_1.gif 400 260 Mario Teaches Typing %}

### Ruby Typing Game?

Anyway, I recall this game called "Mario Teaches Typing" from the early 90s -- back when it was possible to not know how to type (Mavis Beacon, anyone?). That game turned out to be pretty garbage, because speed typing to make Mario jump is horribly unsatisfying. But maybe we should take another look? How about a game that teaches basic Ruby syntax. Can writing nested each loops be a fun game play mechanic? I'll have an answer to that question in the next few weeks, hopefully.

