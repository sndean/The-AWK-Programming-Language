# Notes on (m)awk


## Resources

This is a repository for notes, code, and other things resulting from going through [The AWK Programming Language](https://ia802309.us.archive.org/25/items/pdfy-MgN0H1joIoDVoIC7/The_AWK_Programming_Language.pdf) and [AWK Essential Training](https://daviddlevine.com/2014/05/announcing-the-release-of-awk-essential-training-at-lynda-com/). I thought to work my way through this book and course because of several HN threads, including [this thread relating to the book](https://news.ycombinator.com/item?id=17140934) and [this thread on awk's usefulness more generally](https://news.ycombinator.com/item?id=17322412). This blog post [Don’t MAWK AWK – the fastest and most elegant big data munging language!](http://brenocon.com/blog/2009/09/dont-mawk-awk-the-fastest-and-most-elegant-big-data-munging-language/) and related [github repo](https://github.com/brendano/awkspeed) directed me toward mawk in particular. Overall, while I knew/know and used awk quite a bit before for various scripts, it seems smart to learn awk more formally. 

### Other resources

 - https://news.ycombinator.com/item?id=20308865

 - https://news.ycombinator.com/item?id=21101478
    - https://gregable.com/2010/09/why-you-should-know-just-little-awk.html



## Setup

Setup a working directory. In my case: `/Users/snd/org/GitHub/mawk-notes`. Install a version of awk that you want to use. In my case, I'm going to go through this tutorial mostly on macOS using mawk. Use `mawk -W version` to look at the version:

    snd:mawk snd$ mawk -W version
    mawk 1.3.4 20171017
    Copyright 2008-2016,2017, Thomas E. Dickey
    Copyright 1991-1996,2014, Michael D. Brennan

    random-funcs:       arc4random_stir/arc4random
    regex-funcs:        internal
    compiled limits:
    sprintf buffer      8192
    maximum-integer     2147483647
    
If typing `mawk` in your terminal on macOS brings up nothing, then you can install it: https://invisible-island.net/mawk/ or https://formulae.brew.sh/formula/mawk. I just used homebrew: `brew install mawk`. And that is really all that's required for set up.

As of April 2019, GNU Awk (gawk) version [5.0.0 is available](https://lists.gnu.org/archive/html/info-gnu/2019-04/msg00002.html) and an HN discussion of it can be found [here](https://news.ycombinator.com/item?id=19671983). Much of the notes here will run if you want to download and install and use that (see [here](ftp://ftp.gnu.org/gnu/gawk) instead of mawk.

    tar -xpvzf gawk-5.0.0.tar.gz
    cd gawk-5.0.0
    ./configure && make && make check





## Running scripts

Quickly test mawk:

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




