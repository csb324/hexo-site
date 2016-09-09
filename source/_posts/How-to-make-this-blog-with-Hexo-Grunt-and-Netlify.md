---
title: 'How to make this blog'
headline:  (with Hexo, Grunt, and Netlify)
date: 2016-06-30 21:21:41
tags: 
	- tech 
	- blog
---


## So a couple weeks ago... 

I went to [Smashing Conference][smashconf] in New York, and I heard a great [talk] by this guy named [Phil Hawksworth][phil] about static sites. I was sold pretty immediately, probably because I'm impressionable and conferences are exciting. But also because it sounded like a good idea.

You see, I'm the kind of person who, by all accounts, *should* have a fabulous personal website. I'm a front end developer, for god's sake. Making websites pretty is one of my favorite things to do. And yet, there I was, several years into my career and still without a website.  In the circles I run in, it's a bonkers thing to have to admit. It's like telling someone you don't have a phone number.

Here's my problem: It's not that I'd never started to build a personal website. Au contraire, my new friend! But every time, I'd find a shiny new toy I wanted to try out, and I'd try to apply it, and it would end up being total overkill. Like, my personal portfolio doesn't need Flux architecture. It just needs text. And images, if you're lucky. And then I'd inevitably get discouraged that it was taking me so long to learn the new thing in this totally inappropriate context, and I'd abandon the project altogether. 

I am aware that this might be happening all over again, but with static site generators as the shiny new thing. My hope is that, at the very least, my shiny toy of the moment might be legitimately well-suited to this kind of project.

## This site runs on Hexo. 

I picked [Hexo] from [this list][ssg], more or less at random (that is, sorting by stars and then picking the first JavaScript generator I could find). Phil had mentioned in his talk that there are a frighteningly large number of static site generators. There really are. The problem with this amount of fragmentation is that nothing (except Jekyll, I suppose) has quite the critical mass to generate a really strong community of support behind it. I mean, people are helpful, but standards are still just beginning to emerge. It's all a work in progress.

```
npm install -g hexo-cli
hexo init myproject
cd myproject
npm install
npm install hexo-server --save
hexo server
```

And then you go to localhost:4000 and it's all right there waiting for you. As if you're coming home after six long weeks at summer camp and remembering what your house smells like. 

## Figuring it out

Okay, so, it turns out Hexo isn't like coming home from summer camp at all. It's a little more like *going* to summer camp. It's very cool, but my initial exploration of the file structure yielded nothing but confusion.

Just like that one time at summer camp.

Post types are handled by scaffolds, which is pretty neat. 'Post', 'Page', and 'Draft' are all included for you by default, which means you can run `hexo new page "About Clara Beyer"` and it will set up the markdown file for you, right where it needs to be, frontmatter templated out and everything. 

PLUS, if I wanted to include some crazy new type of page, like a dog, I could make a dog.md scaffold (with frontmatter for things like size, color, favorite food, et cetera), and then run `hexo new dog BooBoo`. And it would just sort that business out for me. What a world we live in! 

But before I was living in this fantastic world, I was living in a very dark and confusing world. The starter theme that comes with Hexo is written with EJS and Stylus, neither of which I have any experience with whatsoever (I'm more of a Swig + Sass type of girl). Every change I tried to make either did nothing at all or broke the site. This was not working.

## Yo. Help.

<div class="in-post-media" style="max-width: 500px;">
	<blockquote class="twitter-tweet" data-lang="en"><p lang="en" dir="ltr">what I like about front end development is that I end up typing things like &quot;yo help&quot; in the command line</p>&mdash; clara b (@clarabellum) <a href="https://twitter.com/clarabellum/status/748682455608070144">July 1, 2016</a></blockquote>
	<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>	
</div>

Yeoman is awesome. Have I mentioned that? I'm really into the idea of generators, because I'm really not into the idea of reinventing the wheel every time I want to do something. 

So I googled "hexo generate theme", and *lo and behold*, I found [this][generator]. It let me pick my own templating language and css preprocessor, so I was a happy camper. Plus, it didn't start me off with hundreds of lines of CSS to "get me started" that I just have to untangle and delete. Maybe you want that -- in which case, there are a bunch of [themes] on the Hexo website that invite you to fork and clone and modify to your heart's content. But I love it when generators actually let you start from scratch. This one provided every file you need to make the site load consistently, and literally nothing else. 

```
# myproject/themes
npm install -g generator-hexo-theme
yo hexo-theme
```

## Get cracking

Once I had everything set up for Hexo to work properly, the only remaining step was getting my development process all streamlined and shiny. I'm a Grunt loyalist (yeah, yeah, grunt is dead, long live webpack or whatever), so that's what I'm going with. Right now, my Gruntfile is just set up to watch for changes and compile either the site itself (`grunt-hexo` lets you insert the hexo-cli functionality into grunt) or the scss (`grunt-contrib-sass`, guys). Livereload and recline. 

```
# myproject
npm install --save-dev grunt grunt-hexo grunt-contrib-sass
subl Gruntfile.js
# ... do some stuff ...
grunt
```

## We're doing it live

Once you have your project skeleton set up, what do you do next? Deploy, obviously.

I'm kidding, but also that's absolutely what I did. You see, in his Smashing talk, Phil brought up this service called [Netlify]. It looked too cool for school, and I wanted to see if it was actually that cool or if it had maybe just been talking a lot of game and actually back in its hometown it was on the marching band or some lame ass shit like that, (you know the kind I mean). 

Well, I will vouch for Netlify's coolness. Netlify is legitimately very cool. It took me basically five minutes to get signed up and deploy this site. Literally. It was almost too easy -- now I'm afraid I'm going to deploy it by accident or something. But that's a good problem to have, as far as I'm concerned.

```
npm install -g netlify-cli
# If you haven't already done this, get your things onto github / bitbucket / wherever
git commit -m "Ready for deployment!"
git push
```

Once your static site is on github, you can connect your github account with Netlify, choose the repository, and it handles pretty much everything else. Seriously.

## Things I haven't figured out yet but will definitely keep you posted on

* Handling images and whatnot.
* Categories and Tags. I know they exist, and they seem to work in the usual way, but I bet there's an opportunity for some really cool stuff there. Or not! Maybe there's an opportunity for a big headache! But you can bet I'm gonna find out!
* The endless possibilities of _config.yml. Literally endless, as far as I can tell. It looks like you can just put as many objects in those files as you want, which seems like both a great power and a great responsibility. 

And more. But until I come across them, I will not even know what these things are that I don't know. So, until that day, TTYL, LYLAS, HAGS, U R SO GREAT, NEVER CHANGE. 

[talk]: https://www.dropbox.com/s/dxhm92u4wsypfqh/dynamic-static-sites-phil-hawksworth.pdf?dl=0
[phil]:https://twitter.com/philhawksworth
[smashconf]: http://smashingconf.com/ny-2016/
[Hexo]: https://hexo.io/
[ssg]: https://staticsitegenerators.net/
[generator]: https://www.npmjs.com/package/generator-hexo-theme
[themes]: https://hexo.io/themes/
[Netlify]: https://www.netlify.com/
