# autoblog

A small and simple blog and RSS shell script inspired by
[Luke Smith's lb](https://github.com/LukeSmithxyz/lb) but
with many modifications and additions to match my own workflow.

## Features

`autoblog` can do the following:

* Define a `blog` directory where all blog posts will be stored.
* Set up a seperate `HTML` blog page with CSS styling of your choosing.
* Add the blog post on the website's main and blog index pages.
* Add the blog post to a specified RSS feed.
* Revise, delete, or change the title of a published post.

Read the `man` page for more.

## Installation 

Run the `Makefile` in order to install the script. It'll
be installed in `usr/local/bin/`. You can change the install path
by editing the `BIN_DIR` variable in the `Makefile`.

```shell
$ cd path/to/autoblog/
$ sudo make install
```

You must **always** run the script inside your website's
main directory.  

Alternatively, you can store the script inside your website's
main directory.

## Preparation

The following files have to exist
* `index.html`
* `blogindex.html`
* `rss.xml`
* `template.html`
* `styles.css`

Inside the `autoblog` script, change the `website` and `author` variables
to your website's URL and your name and make sure the rest
of the variables are properly set to match your website's
structure. By default, all blog posts are stored in `blog/`.  

`autoblog` will search for `<!--BLOG-->` inside `index.html`,
`blogindex.html` and `rss.xml` in order to put the blog post
listings and RSS feed below it.

The `template.html` file is how you want your blog post's page to look like. See
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
  -c        Change title
  -o        View published post in browser
  -d        Delete published post
  -l        List all published posts
```
