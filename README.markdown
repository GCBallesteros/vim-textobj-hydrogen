Introduction
------------

The textobj-hydrogen plugin provides two new text objects which are
triggered by `ah` and `ih` respectively. You can use them when you have to
deal with hydrogen style notebook cells.  This are usually encountered when
transforming jupyter notebooks to plain text files with tools such as 
jupytext and notedown.


Installation
------------

My prefered method of installation is using the Plug plugin manager. For it to
work you will need to have `kana/vim-textobj-user` and this repo  installed.

```
Plug 'kana/vim-textobj-user'
Plug 'GCBallesteros/-hydrogen'
```

Copyright
---------

Copyright (c) Guillem Ballesteros. Distributed under the same terms as Vim itself.

Acknowledgements
----------------

I used [vim-textobj-underscore](https://github.com/lucapette/vim-textobj-underscore)
as a template for this plugin.
