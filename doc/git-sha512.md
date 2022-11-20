git-sha512
==========

Like 'git rev-parse' but using sha512

## Synopsis

Usage: `git sha512 [<git-ref>...]`

    $ git sha512
    400b614ec2de91b121de75a56680b08c32c39143cbfe6295f4d53c05aab5fbe7d3cc0b647a9f67424a318fc216ad55929bbfcb6040d233e4bfd93ecc44df4c02

## Description

This is a git command that works like `git rev-parse` for finding the SHA1 of
a git commit reference.
Instead of reporting a SHA1 digest it reports a SHA512 digest.

## Installation

    bpan install git-sha512

## Copyright and License

Copyright 2022 by Ingy döt Net

This is free software, licensed under:

The MIT (X11) License
