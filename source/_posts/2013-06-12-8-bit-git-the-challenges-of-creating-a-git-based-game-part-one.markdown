---
layout: post
title: "8-Bit Git: the Challenges of Creating a Git-Based Game (Part One)"
date: 2013-06-12 20:07
comments: true
categories:
---
By Ning Yap [[@ningbit]](http://www.twitter.com/ningbit)

![LOZ NES game](http://www.consoleclassix.com/info_img/Legend_of_Zelda_NES_ScreenShot1.jpg)
>I made some games, but I'm pretending like I didn't because they all turned out weird. -- **Shigeru Miyamoto** (creator of The Legend Of Zelda)

### Game Start

After day one of using **Git** during a lesson [@TheFlatironSchool](http://flatironschool.com "@FlatironSchool"), I developed this fantastic (and insane) idea to write a simple **Git-based adventure game** loosely based on my favorite video game series of all-time, **The Legend of Zelda**. My initial idea was to use git branches and branch switching to represent the different "worlds" containing "treasures" to be collected, like

- *Forest branch*….. w/ master sword

- *Desert branch*…. w/ ocarina

- *Mountain branch*…. w/ fairy in a bottle

This "branch-world" idea quickly became preposterous as Git branches are not meant to be completely distinct entities, but rather different _**versions**_ of a **master branch** and represent modest changes in files and structures. I realized I'd need a cleaner, more sensible approach.

### Tutorial-Based Game

It became apparent that if I wanted to build a sensible game, I would need to actually _study_ Git and understand how it should be used. I would have to acknowledge and draw upon Git's power as a **version control system** and create a context to utilize that workflow.

    8-Bit Git: The Legend of BASHellda

Thus, _The Legend of BASHellda_ was born. It would be a tutorial -- masking as a game -- played from the BASH command line. It would use sensible, beginner-friendly git commands, like

    git status
    git branch
    git checkout
    git merge
    git add .
    git commit -am "update files"

And to provide instructions to the player, I would have Princess BASHellda leave notes (in .txt format) to guide the player on what to do next.

![Princess's Note](http://www.ningmusic.com/img/BASHellda.png)

### Logistics and Building a Story


The classic story of _The Legend of Zelda_ involves a hero saving a princess from an evil wizard through the use of key items, such as a magical sword. Here is how I mapped those characters and items

    Link (Hero)       => $User
    Princess Zelda    => Princess BASHellda
    Ganon             => Prince of Darkness "BSOD"
    Triforce          => Git
    Master Sword      => Sword of RM (on "master" branch)
    Hyrule Kingdom    => Land of 8-bit
    Hyrule Castle     => Bit Palace
    Locked Chest/Door => password-protected zip-file

And here are the branches or "worlds"

    master            = Bit Palace has been reduced to rubble by BSOD
    backup            = Contains "backup" of Bit Palace
    cursed_dungeon    = Princess is locked up in zip file

Sample note from the Princess in .txt file accessible by running *cat* command in BASH

    Dear $User,

    By the time you read this, BSOD will have already locked me away in the
    cursed dungeon remote branch. But no fear, you have been granted the powers
    of Git. The first thing to do is find out where you are. Type:

    git status

    Currently, you are on the master branch. You should see "On branch master"
    and more output. To find out additional local branches, type:

    git branch
    ...

### Building the Local Repository

Figuring out the gameplay logistics was half the battle. The other half was actually coding and "building the levels" in the repository. Here are some of the major issues I ran into as I built and played through the initial stages of the game:

- In what finished form should the repository be so, when pushed up to GitHub, it is playable when cloned
- Will the player have access to the different branches after cloning
- How to deal with the branch merges so there are no conflicts
- How to leave clear and concise instructions with moderate difficulty so as not to make the game too easy and boring or unplayable and confusing for a beginner

In building the repository, order of creating branches and adding folders and files was extremely important as to not cross-pollute other branches. For example, I would want

    bit_palace/rubble.txt

to be replaced by

    bit_palace/bit_palace.txt

after running

    git merge backup

on the master branch. Here's what the palace "looks like" after the player merges from backup.

![Bit Palace](http://www.ningmusic.com/img/bit_palace.png)

I'll continue this blog post next week with details about the finished game and maybe even some player feedback!

#### Next week, read Part TWO of this series ->





