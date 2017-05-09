#!/usr/bin/env sh

if [ ! -d local ]; then
  plenv exec carton install
fi
cp -a local local_tmp
rm -rf local_tmp/lib/perl5/Module
rm -rf local_tmp/lib/perl5/Git
fatpack-simple -d local_tmp -o git-foresta script/git-foresta
rm -rf local_tmp
chmod 0755 git-foresta
