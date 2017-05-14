# Change Log
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/)
and this project adheres to [Semantic Versioning](http://semver.org/).

## [1.1.0] - 2017-05-14
### Added
- git-foresta script can takes `--version` option
- Added one-liner install script to README.md
- Added copyright text at the end of README.md

### Changed
- Performance improvement and code modernization (PR #1 by @Code-Hex)
- Don't transpose tip/root symbol with `--reverse` option
- Changed `less -RS` -> `less -RSX` in README.md

### Fixed
- Fixed broken vines with huge repositories (thanks to @delphinus, see PR #2)
- Fixed .zshrc sample code `$@` -> `"$@"` in README.md
- Fixed copyright text of mine in git-foresta script

## [1.0.1] - 2017-05-07
### Added
- New file: script/git-foresta script before packing dependent modules
- New file: build.sh script for packing dependent modules
- New file: cpanfile list of dependent modules
- New file: This CHANGELOG.md
- New file: .gitignore
- Added description of installation to README.md
- Added meanings of symbols for working tree status to README.md

### Changed
- Packed dependent modules into the git-foresta script by App::Fatpacker::Simple

## 1.0.0 - 2017-05-04
### Added
- New file: git-foresta
- New file: README.md
- New file: LICENSE

[Unreleased]: https://github.com/takaaki-kasai/git-foresta/compare/v1.1.0...HEAD
[1.1.0]: https://github.com/takaaki-kasai/git-foresta/compare/v1.0.1...v1.1.0
[1.0.1]: https://github.com/takaaki-kasai/git-foresta/compare/v1.0.0...v1.0.1
