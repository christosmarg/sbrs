# autoblog

A small and simple blog and RSS shell script inspired by
[Luke Smith's lb](https://github.com/LukeSmithxyz/lb) but
with a few modifications to match my own workflow.

## Features

`autoblog` can do the following:

* Set up a seperate `HTML` blog page with CSS styling
* Add the blog post on the website's main page and on the blog's index
* Add the blog post to an RSS feed
* List all the published posts
* Revise or delete an already published post

## Installation 

Run the `Makefile` in order to install the script. It'll
be installed in `usr/local/bin/`. You can change the install path
by editing the `INSTALL_PATH` variable in the `Makefile`.

```shell
$ cd path/to/autoblog/
$ sudo make install
```

You must **always** run the script inside the website's
main directory.  

Alternatively, you can store the script inside your website's
main directory.

## Preparation

Inside the script, change the `website` and `author` variables
to your website's URL and your name and make sure the rest
of the variables are properly set to match your website's
structure. By default, all blog posts are stored in `blog/`.  

`autoblog` will search for `<!--BLOG-->` inside `index.html` and
`rss.xml` in order to put the blog post listings and RSS feed
respectively. Inside `blogindex.html` however, it will search for
`<!--BLOG [Month Year]-->` (e.g `<!--January 1800-->`).  

A `template.html` file needs to exist in your main directory
in order for the script to run properly.
That file is how you want your blog post's page to look like. See
my own `template.html` for more. The `TITLE`, `HEADER` and `AUTHOR`
fields must exist and be left as is.

## Usage

You can run the script with one of the following
options

```
Options:
  -n        New post
  -p        Publish draft post
  -e        Edit draft post
  -v        View draft post in browser
  -t        Delete draft post
  -r        Revise published post
  -o        View published post in browser
  -d        Delete published post
  -l        List all published posts
```
