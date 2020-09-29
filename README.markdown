Introduction
------------

The textobj-hydrogen plugin provides two new text-objects, `ah` and `ih`,
and backwards and forwards motion for them, `[h` and `]h` respectively. You
can use them when you have to deal with hydrogen style python notebook cells.
These are usually encountered when transforming jupyter notebooks to plain text
files with tools such as jupytext and notedown. 

All code cells start with `# %%` . The end of the cell is implicitly defined
by either a new cell marker or the end of the file. The `ah` object includes
the marker line while the `ih` does not. Both commands treat the end of the
cell in the same way.

The new objects and motions combined with a plugin that will allow the user to
send input to a REPL running along the editor allows for an enhanced Jupyter
notebook like experience.


Installation
------------

My prefered method of installation is using the Plug plugin manager. For it to
work you will need to have `kana/vim-textobj-user` and this repo  installed.

```
Plug 'kana/vim-textobj-user'
Plug 'GCBallesteros/vim-textobj-hydrogen'
```

Copyright
---------

Copyright (c) Guillem Ballesteros. Distributed under the same terms as Vim itself.

Acknowledgements
----------------

I used [vim-textobj-underscore](https://github.com/lucapette/vim-textobj-underscore)
as a template for this plugin.
