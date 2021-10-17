
# site management

This is a blog built as a static site using Jekyll.

Content is divided into 
- posts: short content, sometimes with custom illustration and page design
- projects: larger stand-alone pages


# organization

use of posts versus pages...

# content management

Jekyll-compose plugin provides easy creation of
- post
- page
- draft
and publishing control shortcuts
- publish
- unpublish

## create a post

There is always the [standard way](http://jekyllrb.com) 
but why not run the shell script
which provides 
- title
- date
- layout

### drafts

there is a _drafts folder which is not generated...

### content

using markdown versus html

### custom metadata

common information about posts may be:
objective / motivation / intent
commentary / implementation
references / links

... and maybe have a way to include in the yaml front matter to be displayed automatically in the layout (?)

## customize a post

layout defaults to `post` but can be:
- page
- page-wrapped
- post

categories and tags...

### custom style and art direction

you can use the front matter `post_css` and `style`

`style` over multiple lines with `|` for (plain scalar?)
the subsequent CSS must be indented or the parser will yield a YAML exception and fail to generate the page