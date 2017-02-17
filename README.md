## My Emacs Configure
# This is my emacs configuration tree, continually used and tweaked since 2016.But it doesn't work well in Winfdows(some features are not available), cause I don't likes Windows.And the config now supports for the following:

* C/C++ (auto-complete with c-headers, not available in Windows)
* Python
* Org
* Matlab


## Requirements

* 1.Emacs 24 or higher (Windows requires Emacs version 25 only)
* 2.Clang (for C/C++)

## Installation

To install, clone this repo to `~/.emacs.d`, i.e. ensure that the
`init.el` contained in this repo ends up at `~/.emacs.d/init.el`:

```
git clone https://github.com/Liunxs/.emacs.d.git ~/.emacs.d
```

Upon starting up Emacs for the first time, further third-party
packages will be automatically downloaded and installed. If you
encounter any errors at that stage, try restarting Emacs, and possibly
running `M-x package-refresh-contents` before doing so.



## Updates

Update the config with `git pull`. You'll probably also want/need to update
the third-party packages regularly too:

<kbd>M-x package-list-packages</kbd>, then <kbd>U</kbd> followed by <kbd>x</kbd>.

You should usually restart Emacs after pulling changes or updating
packages so that they can take effect. Emacs should usually restore
your working buffers when you restart due to this configuration's use
of the `desktop` and `session` packages.


## Support/issues

If you hit any problems, please first ensure that you are using the latest version
of this code, and that you have updated your packages to the most recent available
versions (see "Updates" above). If you still experience problems,please go ahead and [file an issue](https://github.com/Liunxs/.emacs.d/issues).

--Douglas Hall



