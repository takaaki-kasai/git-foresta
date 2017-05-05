#!/usr/bin/env sh

if [ ! -d local ]; then
  plenv exec carton install
fi
cp -a local local_tmp
rm -rf local_tmp/lib/perl5/Module
rm -rf local_tmp/lib/perl5/Git
fatpack-simple -d local_tmp git-foresta
rm -rf local_tmp
