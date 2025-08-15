#!/bin/bash

for i in {1..50}
do
  echo "Commit number $i" >> fakefile.txt
  git add fakefile.txt
  GIT_COMMITTER_DATE=$(date --date="$i fays ago")" \
  git commit --date="$(date --date"$i days ago")" -m fakecommit number $i"
done

git push origin main

