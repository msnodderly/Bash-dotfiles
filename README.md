Bash-dotfiles
=============

Matt's Bash conifig.


This is my awesome Bash prompt:

    [▣▣▣□□ mds@mds-macbook Bash-dotfiles (master *)]$ 


It shows my laptop's battery status (showing 3 of 5 bars remaining -- as I'm writing this, it's 68% charged), the directory I'm in, the current git branch I have checked out (master) and that there are uncommitted changes (the words I'm typing right now in {README.md}).

The git status is provided by the {bash_completion} package, which is amazing and available on almost every \*NIX, but for some reason no one seems to know about it.

The battery status indicator is a little Bash function I wrote called {batterystatus()}}, the output of which gets included in the Bash prompt string. Right now it only works on OS X, but eventually I want to add Linux support so it works on all my laptops. 



