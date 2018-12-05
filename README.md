# gen-badge

![Badge](https://github.com/kakwa/gen-badge/raw/master/example.svg)

A pure Shell badge/shield generator with no dependency required.

## Description

This is a simple "Travis-ci" like badge generator that can easily be included in your project.

Typically I use it in my Jenkins projects to create some additionnal badges like
doc build status or code coverage percentage badges which are then published using `publishHTML`.

This small script permits to customize the color, label (text in the right part of the badge)
and status (text in the left part).

It also automatically handles the resizing of the badge depending on status and label text length.

## Usage

Here are a few example on how to use this scipt:

```bash
# Display the help
./gen-status-badge -h

# Generate an 'ok' badge (will be green by default)
./gen-status-badge -o badge.svg -l 'build' -s 'ok'

# Generate a 'ko' badge (will be red by default)
./gen-status-badge -o badge.svg -l 'build' -s 'ko'

# Generate with a custom color (needs to be an RGB definition (#RGB or #RRGGBB))
./gen-status-badge -o badge.svg -l 'gen badge is' -s 'pink' -c '#ff99ff'
```

## Install

```bash
make install PREFIX=/usr/local/ # DESTDIR=/some/build/dir/
```
