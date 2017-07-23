---
title: "Creating a static website using Hugo"
date: 2017-07-05T21:51:52+02:00
---

While I am starting this blog I am using [Hugo](https://gohugo.io/) and therefore my first series is about *Creating a static website using Hugo*.

If you are on a Mac you can easily install Hugo via `brew`:

```shell
$ brew install hugo
```

Then go to your workspace and simply type

```shell
$ hugo new site devBlog
```

This creates a directory called `devblog` and the following structure

```shell
├── archetypes
├── config.toml
├── content
├── data
├── layouts
├── static
└── themes
```

Creating your first content is as simple as creating a new site. Just type

```shell
$ hugo new post/my-first-post.md
```

and Hugo creates the file `my-first-post.md` in the folder `content/post` which has the following content

```markdown
---
title: "My First Post"
date: 2017-07-06T21:49:25+02:00
draft: true
---
```

You can start writing your content in that file and you are done. Almost. To see your post in action you have to install a theme first so that Hugo can create the corresponding HTML, CSS and JavaScript files. So head over to [https://themes.gohugo.io/](https://themes.gohugo.io/) and browse through the listed themes. Currently I am using the theme [*hemingway2*](https://themes.gohugo.io/hemingway2/).

When you have chosen a theme clone it into the themes directory. I use `git submodule` for git repositories in another repository to keep everything clean. So you would type the following command in your console:

```shell
$ git submodule add <git-repository-url-of-your-chosen-theme> themes/<theme-name>
```

Now you are almost done. To see your blog you can start the built in server of hugo by running the command:

```shell
$ hugo server
```

Then you will find your blog under the URL [http://localhost:1313/](http://localhost:1313/).

*Congratulations! You started to write your first blog using [Hugo](https://gohugo.io/).*
