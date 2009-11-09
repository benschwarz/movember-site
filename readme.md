# Movember

Do your bit, grow your own moustache, throw this site on heroku (for free!) and take daily photos. 


## Why not use the official site? 
The official site is crap, I think even the organisers know that. Maybe they'll get the clue and let a (real company)[http://ab-c.com.au] build it next time? 


## How do I get it running?

You'll need to download the code using git, from there you'll need a few rubygems.

    gem install sinatra haml rdiscount


## Where do I put my mo pictures?

Drop them in public/mos, also, delete mine so as to not confuse your donors.

## How do I deploy it?

Do like I do:

    gem install heroku 
    heroku create
    git push heroku master
    