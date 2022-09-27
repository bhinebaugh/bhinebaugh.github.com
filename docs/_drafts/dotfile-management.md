GNU stow is straightforward.

Default usage and locations:
expects the current directory is the stow, and the target is the parent directory. (can be changed / specified with -t)
what if there is an existing file in the target location that symlinking would overwrite? stow registers a conflict and stops.
import untracked files from outside version control with `--adopt` - but this destroys the file in the source/installation?

http://brandon.invergo.net/news/2012-05-26-using-gnu-stow-to-manage-your-dotfiles.html
