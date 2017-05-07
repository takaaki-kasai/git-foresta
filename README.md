# git-foresta

git-foresta is a text-based git log graph viewer.
It is a modified version of [git-forest](http://inai.de/projects/hxtools/) (written in Perl by Jan Engelhardt).

## Samples

Following image is a result of
`git-foresta --all --style=10 | less -RS`
with font [Meslo LG](https://github.com/andreberg/Meslo-Font).

![git-foresta sample 1](https://raw.githubusercontent.com/takaaki-kasai/git-foresta/assets/zzz_git-foresta-sample1.png "git-foresta sample 1")

Following image is a result of
`git-foresta --all --style=1 --graph-symbol-commit=★ --graph-symbol-tip=☆ --graph-margin-right=2 | less -RS`
with font [Ricty Diminished](https://github.com/edihbrandon/RictyDiminished).

![git-foresta sample 2](https://raw.githubusercontent.com/takaaki-kasai/git-foresta/assets/zzz_git-foresta-sample2.png "git-foresta sample 2")

Terminal emulator of sample screenshots: [iTerm2](https://www.iterm2.com/)
with [Solarized Dark](https://github.com/altercation/solarized/tree/master/iterm2-colors-solarized) color scheme.

## Usage

The command `git-foresta` can take same options and arguments as `git log` (except `--pretty` or `--format`).
It can take additional options below.

* `--help`: Show help and exit.
* `--svdepth=<Subvine depth>`: Maximum length of merge subvines (default: `2`).
* `--no-status`: Do not show the working tree status near HEAD (show by defalt).
* `--style=<Style>`: Select `<Style>` from following.
  - `1`: Use single-line visuals (default).
  - `2`: Use double-line visuals.
  - `10`: Use specific rounded Unicode visuals for edges.
  - `15`: Use single bold-line visuals.
* `--graph-margin-left=<Margin>`: Left margin of the commit graph (default: `2`).
* `--graph-margin-right=<Margin>`: Right margin of the commit graph (default: `1`).
* `--graph-symbol-commit=<Symbol>`: Graph symbol of commit (default: `●` ).
* `--graph-symbol-merge=<Symbol>`: Graph symbol of merge (default: `◎` ).
* `--graph-symbol-overpass=<Symbol>`: Graph symbol of overpass (default: `═` ).
* `--graph-symbol-root=<Symbol>`: Graph symbol of root (default: `■` ).
* `--graph-symbol-tip=<Symbol>`: Graph symbol of tip (default: `○` ).

All other options and arguments (except `--pretty` or `--format`) are passed down to git-log. (e.g. `--all`)

Since git-foresta has no pager of is own, it is recommended to use some paging program
via pipe with appropriate option (e.g. `git-foresta | less -RS`).

## Install

Copy the `git-foresta` file (at the root of this repository) to one of the place in your `$PATH`,
and give execute permission to it.

## Tips

* Without `--no-status` option, current working tree status is shown near HEAD.
  Meanings of the symbols are as follows:
  - `*`: There are unstaged changes.
  - `+`: There are staged changes.
  - `%`: There are untracked files.
  - `$`: There are stashed changes.

* Example of shell configuration for zsh:
  ```zsh
  function gifo() { git-foresta --style=10 $@ | less -RS }
  function gifa() { git-foresta --all --style=10 $@ | less -RS }
  compdef _git gifo=git-log
  compdef _git gifa=git-log
  ```

## License

GPL-3.0, see `LICENSE`.
