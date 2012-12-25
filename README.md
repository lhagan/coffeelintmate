CoffeeLintMate
==========

Quick, simple **CoffeeLint in TextMate**.

*What are these things?* [CoffeeLint](http://www.coffeelint.org) is a style checker
that helps keep CoffeeScript code clean and consistent. CoffeeLintMate brings this
functionality to [TextMate](https://github.com/textmate/textmate), displaying issues 
in a nicely formatted (thanks to [JSLintMate](http://rondevera.github.com/jslintmate/)) 
panel. It'll also check to make sure your code compiles.

Key features
----------

* Quick CoffeeLint on **command-S**.
* Full problem details on **control-L**. Navigate the list with full
  mouse/trackpad/keyboard support.

Installation (TextMate 2)
----------

CoffeeLintMate requires [Node.js](http://nodejs.org), [NPM](https://npmjs.org), and 
[CoffeeScript](http://coffeescript.org) (but you probably already have those 
if you're interested in this bundle).

In Terminal:

```shell
mkdir -p ~/Library/Application\ Support/Avian/Pristine\ Copy/Bundles/
cd ~/Library/Application\ Support/Avian/Pristine\ Copy/Bundles/
git clone git://github.com/lhagan/coffeelintmate.git CoffeeLintMate.tmbundle
cd CoffeeLintMate.tmbundle
npm install
```

Usage
-----

CoffeeLintMate has two modes:

* **Quick mode** shows a tooltip with a preview of the problems (if any)
  whenever you hit **command-S**.

* **Full mode** shows a full list of problems whenever you hit **control-L**.


### Quick mode ###

While you're coding, hit **command-S** to save changes and automatically run the
file through CoffeeLint. If any problems are found, CoffeeLintMate shows the first one
in a tooltip.

To skip the tooltip and see the full list of problems, use **full mode**.


### Full mode ###

To see the full list of problems in a JS file, hit **control-L** to run it
through CoffeeLint. Click a problem to jump to that line in the file. Fix
and repeat.

You can also navigate the list of problems with your keyboard: *up/down/k/j*
to move up/down, and *return* to select.

About
-----

- **Contributing:** Found a bug or have a suggestion? [Please open an
  issue][issues].
- **Compatibility:** Tested with OS X 10.7+ and TextMate 2.0 (9307).
  Probably works with older software, but it's not guaranteed.

This project is very heavily based on [JSLintMate](http://rondevera.github.com/jslintmate/)
by Ron DeVera, which was adapted from:

- <http://www.phpied.com/CoffeeLint-on-mac-textmate/>
- <http://wonko.com/post/pretty-CoffeeLint-output-for-textmate>
- <http://blog.pulletsforever.com/2009/07/09/running_CoffeeLint_with_safaris_javascript_core/>

CoffeeLintMate is released under the [MIT License][license].

[website]:    https://github.com/lhagan/coffeelintmate
[issues]:     https://github.com/lhagan/coffeelintmate/issues
[license]:    https://github.com/lhagan/coffeelintmate/blob/master/LICENSE.md
