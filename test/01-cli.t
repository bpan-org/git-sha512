#!/usr/bin/env bash

source test/init

export PATH=$PWD/bin:$PATH

commit=$(git rev-list HEAD | tail -n1)

sha512=68a4b0699fea53949fbfc3851c348529bffe0e2a91019a2b7f0681c8f8e35725f2798412523995a07a661987050a370133c01a1785608c090b45daf359b05ff8

is "$(git sha512 "$commit")" \
  "$sha512" \
  "'git sha512' works with one argument"

is "$(s=$(git sha512); echo ${#s})" \
  128 \
  "'git sha512' works with no arguments"

is "$(git sha512 "$commit" "$commit")" \
  "$sha512"$'\n'"$sha512" \
  "'git sha512' works with multiple arguments"

done-testing
