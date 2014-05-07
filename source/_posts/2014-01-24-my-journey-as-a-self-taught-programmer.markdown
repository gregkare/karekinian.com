---
layout: post
title: "My journey as a self-taught programmer"
date: 2014-01-24 16:00
comments: false
categories: programming passion learning self-taught
---

[Ryan's tips on becoming a self-taught programmer][ryans_article] inspired me
to finally write about my experience as an autodidact software developer!


## Feeling like an impostor: it gets better

For the first years of my career as someone who gets paid to write code, I
haven't felt comfortable because I'm self-taught. If you've met me recently
you might not know I used to suffer from Impostor Syndrome. I was also **a lot
more** socially awkward. Nowadays I have a lot more self-confidence, I go to a
lot of meetups and conferences. A couple years ago I gave two talks at Agile
Tour conferences (about Cucumber and Rails). In last June I spoke about
[dependencies and packaging in Ruby at RuLu][rulu_talk] (I still haven't
watched the full video, it's really weird to see you speak). I'm not afraid to
send a pull request to fix something in an Open Source project I use, even when
I'm using it for the [first][sovereign] [time][s3_website].


## False start: Paper-Rock-Scissors on a graphing calculator

My introduction to programming was in middle school (I was around 13), when I
wrote a graphical Paper Rock Scissors game on a Casio graphing calculator, in
Casio Basic. I had absolutely no idea what I was doing, but the game worked.
You could play with a friend or against the calculator. Pretty soon dozens of
students from my high school painstakingly copied that source code by hand. I
had never heard of Free Software at this point.


## First computer, bedroom Linux sysadmin

A couple years after that my parents bought our first computer (a Pentium 75
with a 800MB hard drive). I never really thought about programming again, until
the end of the nineties, when I started playing with HTML. In high school I was
supposed to study literature because I decided I hated math and science when I
was 15. At the university I was studying British and American Literature and
Civilisation with students and teachers with an abysmal level. Still, I spent
those years installing Linux distributions, playing with DNS servers, Apache
(there was only one web server back then apart from IIS on Windows), mail
servers... When you experiment a lot you tend to break things often, so you
have to reinstall your OS a lot, but it's worth it!


## Missed opportunity: book about programming.

One of my uncles actually knew how to program. A couple years after this first
computer, he gave me a book about different programming languages. To this day
I still don't know why I only read the first few chapters from that book. Maybe
it was a bad book. Maybe I didn't care enough at the time.


## IRC, mp3z. Cascading Style Sheets! It's the future!

After dropping out from university I was delivering mail as a substitute from
time to time (the closest thing to nepotism a postman's son can get). The rest
of the time I was hanging out on IRC with people from all over the world who
were passionate about music and transfered files between hacked FTP servers
(the FXP scene... now I'm feeling really old). Spending most of my days and
nights on IRC helped me improve my English much faster than university ever
could. At least if you ignore terrible habits such as ironically using "prolly"
instead of "probably".

When the [CSS Zen Garden][css_zen_garden] launched in 2003 I became obsessed
with HTML & CSS. I launched an online music label, 1985 Records (our slogan was
"free music for nerds, by nerds") with a friend and hand-coded the website in a
couple nights. Every time we added a new artist I created a new HTML page and
edited the information by hand.


## Getting started: I have no idea what I'm doing.

### Are you trying to tell me I can write HTML and CSS and get money?!

For the longest time I never thought about using a programming language to
build web pages, for years I wrote it all by hand (I never used a WYSIWYG
editor). One day a friend of mine called me and offered me to actually get paid
to turn his Photoshop designs into HTML and CSS. I was teamed up with a CS
Engineer who was just about to graduate from an engineering school. He would
write PHP and a MySQL database, and I would handle all the HTML and CSS,
because **he refused to write HTML**. At that time JavaScript was just used to
make buggy rollover menus, and I didn't think of myself as a "Frontend
Developer", or even as a developer.


### Wait, I can even fix bugs myself!

In the beginning I treated the code he sent me via email in `tar.gz` archives
like the magic it was. He gave me enough directions on how to use his functions
in my `index.php` page. At that time I was using Vim with the arrow keys
disabled to force myself to use `hjkl`, because I thought that's how you should
use Vim. That really confused this engineer guy. Almost immediately I ran into
issues with the code he handed over to me. He wasn't writing tests, and he
didn't even seem to try running the code before he sent it to me. After the
second time I ended up with a PHP error on my screen, I investigated and
managed to fix the error myself. Victory!


### The scary world of SQL queries and PHP functions, or "full-stack" developer

As soon as this so-called "software engineer" graduated, he left us: he could
actually get a real, well-paying job at some company that hires people who come
from engineering schools like his. My boss asked me if I could handle taking
over the backend too (PHP & MySQL). I still remember how stressed I was before,
during and after that meeting at a restaurant. I had hand-written pages of
planned database tables & columns. Big Design Up Front!

> **My boss at the time**: So, can you do this PHP/MySQL thing?
>
> **Me**: Huh, I guess... Look at all these columns I wrote down on these
> sheets of paper!

I delivered my first custom CMS several months after the planned deadline. The
first one the other guy made was really simpled compared to this one, and I had
**everything** to learn. Still, the customer paid the bill, and I got a tiny
amount of it (based on a really low hourly rate, for a set number of hours,
assuming I would deliver according to plans).


## Finding a mentor

### Nothing for a while. Then back to HTML & CSS.

Even after shipping my first hand-made CMS, I was still a beginner. I didn't
know how to find another job as a programmer without a degree and only a couple
months of experience.

I tried to learn C using the K&R book but I didn't go very far.

After a couple months my flatmate at the time introduced me to a common friend.
He was looking for someone to write HTML/CSS and do a bit of design. I joined
this soon-to-be-company that was building an e-commerce application, using
Python and the TurboGears framework (a MVC web framework similar to Django or
Rails).


### Python, MVC framework, tests, Object Oriented Programming, Pair Programming, Extreme Programming. Whaaaaat?!

One of the founders of this company, Seb, was into Extreme Programming (this
was 2007). While trying to make their application look a bit more presentable,
I discovered a lot of things I could never have imagined: automated tests,
pair programming, Object Oriented Programming (before that I only used a PHP 5
library that used objects once, to generate PDF files, without understanding
anything about it). Seeing Python finally taught me that not every programming
language has to be ugly like PHP and C. Seeing an MVC framework finally gave
me an idea of how you can build an application that's not a huge mess of
templates and helper functions.


### Finally feeling like a "real" programmer

Hearing about all these new topics brought me on a long journey of learning
everything I could. Every evening after work I would learn something new by
pairing: building forms, writing tests, implementing linked lists (driven by
tests) in Ada...

At this point I had to decide if I wanted to join an evening class, a two year
program for adults, or keep learning on the job. I decided to do the latter!

After a couple months our e-commerce application was online, but the software
stack we picked was too buggy and unstable. We decided to go with Ruby on Rails
just before version 2.0 was released and rewrote the whole thing. Gradually I
took more and more responsibilities in the backend. To this day Ruby is still
my favorite programming language.


### Writing command line programs, not just websites and web applications!

After a couple small Rails apps I ended up writing and maintaining command line
tools for an avionics company as a contractor. It was scary and the most
challenging project I've done so far. In addition to experienced embedded
software engineers, this team had _real_ engineers: people writing specs and
algorithms for flight navigation systems! I was responsible for the software
running on 50 computers and the Continuous Integration server: continuous
delivery and the nightly build had to work properly, or we would lose time and
a lot of money.

It was also the first time I wrote Ruby code outside of Rails! The tools did a
lot of different things: from abstracting source control to compiling the code,
running test suites, generating traceability and certification reports...
Critical embedded software that goes into civilian airplanes have to comply
with tons of rules, unlike... nuclear plants or cars, but that's another topic.

To this day I'm really proud that this software is still used in two major
avionics projects. I learned a lot from that team: they were pioneers in Lean
Software Development in critical embedded software.


## Back to system administration for a while, professionally this time.

Last year I made the decision to switch to system administration and
infrastructure automation as a consultant and co-founder of Green Alto. I
gained a lot of experience, and now I feel it's time for me to go back to
software development. I'm currently learning Ember.js & C (before I learn
Rust).


## We made it. You can too!

It took me several years to start feeling comfortable as a developer without
degree or title. I've often thought about sharing how I learned to program,
but I had never done it before. Ryan Levick from 6Wunderkinder [explains how
he did it][ryans_article].

Becoming a programmer is not something you can learn by merely attending
fancy Computering classes. Even if you have a Computer Science degree, you
still have to be passionate about programming, practice, read books, watch
presentations, try different languages, read code, write code. I hope our
articles will inspire many other people to become programmers.

I'm glad to be part of the [welcoming community][welcoming_community] that's
the Ruby community in Berlin. I'm excited that initiatives like [Rails
Girls][rails_girls] and [Hackership][hackership] exist. The other self-taught
developers I've met are passionate and eager to learn. I highly recommend
finding a great mentor (thanks again Seb for everything you taught me over the
years, I owe you everything!).

I hope other self-taught developers will feel comfortable faster now that
there's more of us!

[ryans_article]: https://www.wunderlist.com/blog/Landing-your-dream-job
[sovereign]: https://github.com/al3x/sovereign/pull/47
[s3_website]: https://github.com/laurilehmijoki/s3_website/pull/35
[css_zen_garden]: https://en.wikipedia.org/wiki/CSS_Zen_Garden
[rails_girls]: http://railsgirls.com/
[hackership]: http://blog.hackership.org/2013/12/Batch-0s-end-is-just-the-beginning-announcing-our-crowd-funding-campaign.html
[rulu_talk]: http://www.youtube.com/watch?v=ueEwcHXyNRA
[welcoming_community]: http://rubyberlin.org/2013-10-statement-community.html
