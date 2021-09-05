# dotfiles
A ***bare repository*** for my *nix dotfiles (i.e., config files)

## Setting up
As this is a [bare repository][1], the set up is slightly different to a simple clone. Clone with:

    git clone --bare git@github.com:murchu27/dotfiles.git $HOME/.dotfiles.git

Then, to get the actual files in the repo, run the below:

> Note, this will fail if you already have any of the files included in this repo in your home directory.
> Rename those files, and then run the command.
> You can then compare my files to yours (e.g., `diff .profile .profile.bak`), to see what you might want to keep from your files.

    git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME checkout

The extra arguments are needed because a bare repository does not contain a working tree, only the `.git` files.
The working tree is stored somewhere else, in this case, the home directory.

To avoid the pain of typing this out everytime, we could add an alias. Note that the [`.bash_aliases`][2] included in this repo already has this alias defined.

    alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
    
Now we can use regular git commands like:

    dotfiles status
    dotfiles commit -a -m "My commit 3"
    dotfiles push

---

[Original instructions][3]

[1]: https://www.geeksforgeeks.org/bare-repositories-in-git/
[2]: ../.bash_aliases#L14
[3]: https://antelo.medium.com/how-to-manage-your-dotfiles-with-git-f7aeed8adf8b