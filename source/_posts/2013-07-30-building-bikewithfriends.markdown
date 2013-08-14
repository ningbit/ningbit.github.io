---
layout: post
title: "Building BikeWithFriends"
date: 2013-07-30 23:26
comments: true
categories:
---

By Ning Yap

![BikeWithFriends](/images/2013/bwf-login.png)

> I feel like I just gave birth to something. I feel drained, but at least the app is out there in the world now, living and breathing on it's own… (sort of)

## Multiple Starts

The genesis of the app was really more an area of focus than anything specific. After completing Ashley William's [CitiBike excercise](https://github.com/ashleygwilliams/student-citibike) for class at [The Flatiron School](http://flatironschool.com), I really wanted to play more with CitiBike JSON data and maps. I discussed with my group my hope to create some rough **proof of concepts** about ideas we could turn into projects.

{% imgcap left /images/2013/poc-maps.png Proof of Concept w/ Bike Route %}

I turned to my old, trusted friend Google to research what was already out there. There were a good amount of sites visualizing macro data regarding available bikes at all the stations, which was pretty cool, but I knew early on it wasn't worth trying to replicate that sort of implementation. The available bikes/docks data is available to everyone, and I saw multiple sites using that data in the same ways.

Originally I wanted to make an app that could text/email you if your "home" CitiBike station as out of bikes. It would also allow you to see the viability of a commute based on collected data about your start and end stations and a specified time of departure. It became apparent this would be a data intensive task, though doable.

Another focus for me was playing with map features as I think having a visual component to interact with is always fun and adds interest. The first POC involved getting bike directions to show up between two selected stations. The second POC gave you the ability to type in any address and it would show you the closest bike station to you.

{% imgcap right /images/2013/poc-biketrippr.png 400 280 Proof of Concept 2 w/ Address Search %}

{% imgcap right /images/2013/poc-biketrippr2.png 400 290 Proof of Concept 2 w/ Nearest Station %}

The proof of concepts were for the most part discarded in the final concept that became BikeWithFriends, but the time spent and knowledge gained through building those two apps gave me a level of confidence about being able to work closely with CitiBike data and creating an interactive user experience. In the meantime, I had signed up for a CitiBike membership and would receive a key by the end of the week.

## Major Pivot and Breakthrough

Just a day or two after the POCs were done, my team and a few other classmates were at Shake Shack waiting on line for burgers and shakes and through our discussions, we came up with new ideas for creating a better experience for users of our site: We would make CitiBiking into a sort of game, with leaderboards, the possibility of racing from one station to another station, and using CitiBike's trip data to calculate durations of your trips and start and end stations, which would put you on a leaderboard.

![BikeWithFriends](/images/2013/bwf-stats.png)

That idea quickly blossomed and matured. How about awarding badges for completing different kinds of trips and meeting certain game-like conditions? Badges for number of trips taken, stations visited, for crossing a bridge, or even for biking with someone else?

We realized how cool this concept could be, but would we be able to transform it into code? I spent my Sunday biking around Manhattan and to Williamsburg and Brooklyn to generate some data for our app. BTW, generating data for your app has to be one of my most favorite pastimes. I'm learning how much I love good, real seed data as it provides you with a much, much better picture of what your app should be and how it might be used. Biking around the city and across the bridges gave me an idea of getting a badge for crosssing the bridge. Biking along the south tip of Manhattan gave me an idea to award a badge for visiting the stations that give you a view of the Statue of Liberty. Or how about biking on holidays?

![BikeWithFriends](/images/2013/bwf-badges.png)

## Vision Becomes Reality

The experience of seeing something come from nothing has been amazing. And to see that passion recognized by being selected as Hack of the Month for the August [NY Tech Meetup](http://nytm.org/events/meetup/august-7-2013-nytm) is unbelievably rewarding. We will present on August 7th at NYU Skirball Performing Arts Center for an audience of 1,000+. We're stoked! Look for the follow-up blog post!

![BikeWithFriends](/images/2013/bwf-maps.png)