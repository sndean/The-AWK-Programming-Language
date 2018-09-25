# The-AWK-Programming-Language


This is a repository for notes, code, and other things resulting from going through [The AWK Programming Language](https://ia802309.us.archive.org/25/items/pdfy-MgN0H1joIoDVoIC7/The_AWK_Programming_Language.pdf) and [AWK Essential Training](AWK Essential Training). I was inspired to work my way through this book and course because of several HN posts, including [this relating to the book](https://news.ycombinator.com/item?id=17140934) and [this](https://news.ycombinator.com/item?id=17322412). Also, this blog post [Don’t MAWK AWK – the fastest and most elegant big data munging language!](http://brenocon.com/blog/2009/09/dont-mawk-awk-the-fastest-and-most-elegant-big-data-munging-language/) and related [github repo](https://github.com/brendano/awkspeed). Overall, while I knew/know and used Awk quite a bit before for various scripts, it seems like a good time to learn Awk more formally. And although these notes, code, and other items in this repo are almost entirely meant for my consumption only, I hope -- if you're wanting to learn Awk -- they're also useful for you.


## Setup

Setup a working directory. In my case: `/Users/snd/org/School/mawk`. Install a version of awk that you want to use. In my case, I'm going to go through this tutorial mostly on macOS using mawk. Use `mawk -W version` to look at the version:

    snd:mawk snd$ mawk -W version
    mawk 1.3.4 20171017
    Copyright 2008-2016,2017, Thomas E. Dickey
    Copyright 1991-1996,2014, Michael D. Brennan

    random-funcs:       arc4random_stir/arc4random
    regex-funcs:        internal
    compiled limits:
    sprintf buffer      8192
    maximum-integer     2147483647
    
If typing `mawk` in your terminal on macOS brings up nothing, then you can very likely install it: https://invisible-island.net/mawk/ or https://formulae.brew.sh/formula/mawk. I just used homebrew: `brew install mawk`. And that's really all that's required for setting up.


## Running scripts

Put the following data in `emp.data`:

        Beth 4.00 0 
        Dan 3.75 0 
        Kathy 4.00 10 
        Mark 5.00 20 
        Mary 5.50 22 
        Susie 4.25 18


Put the following awk code in a file called `chapter1.awk`:

        $3 > 0 {print$1, $2*$3}

Run the following command in the terminal:

        mawk -f chapter1.awk < emp.data

And you should see this result:

        Kathy 40
        Mark 100
        Mary 121
        Susie 76.5





