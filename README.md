# gen-badge

![Badge](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB3aWR0aD0iMjQ0IiBoZWlnaHQ9IjIwIj4KPGxpbmVhckdyYWRpZW50IGlkPSJiIiB4Mj0iMCIgeTI9IjEwMCUiPgogICAgPHN0b3Agb2Zmc2V0PSIwIiBzdG9wLWNvbG9yPSIjYmJiIiBzdG9wLW9wYWNpdHk9Ii4xIi8+CiAgICA8c3RvcCBvZmZzZXQ9IjEiIHN0b3Atb3BhY2l0eT0iLjEiLz4KPC9saW5lYXJHcmFkaWVudD4KPGNsaXBQYXRoIGlkPSJhIj4KICAgIDxyZWN0IHdpZHRoPSIyNDQiIGhlaWdodD0iMjAiIHJ4PSIzIiBmaWxsPSIjZmZmIi8+CjwvY2xpcFBhdGg+CjxnIGNsaXAtcGF0aD0idXJsKCNhKSI+CiAgICA8cGF0aCBmaWxsPSIjNTU1IiBkPSJNMCAwaDExNXYyMEgweiIvPgogICAgPHBhdGggZmlsbD0iI2ZmOTlmZiIgZD0iTTExNSAwaDEyOXYyMEgxMTV6Ii8+CiAgICA8cGF0aCBmaWxsPSJ1cmwoI2IpIiBkPSJNMCAwaDI0NHYyMEgweiIvPgo8L2c+CjxnIGZpbGw9IiNmZmYiIHRleHQtYW5jaG9yPSJtaWRkbGUiIGZvbnQtZmFtaWx5PSJEZWphVnUgU2FucyxWZXJkYW5hLEdlbmV2YSxzYW5zLXNlcmlmIiBmb250LXNpemU9IjExMCI+CiAgICA8dGV4dCB4PSI1NzAiIHk9IjE1MCIgZmlsbD0iIzAxMDEwMSIgZmlsbC1vcGFjaXR5PSIuMyIgdHJhbnNmb3JtPSJzY2FsZSguMSkiIHRleHRMZW5ndGg9IjEwNTAiPjwhW0NEQVRBW0JhZGdlIEdlbmVyYXRvcl1dPjwvdGV4dD4KICAgIDx0ZXh0IHg9IjU3MCIgeT0iMTQwIiB0cmFuc2Zvcm09InNjYWxlKC4xKSIgdGV4dExlbmd0aD0iMTA1MCI+PCFbQ0RBVEFbQmFkZ2UgR2VuZXJhdG9yXV0+PC90ZXh0PgogICAgPHRleHQgeD0iMTc5MCIgeT0iMTUwIiBmaWxsPSIjMDEwMTAxIiBmaWxsLW9wYWNpdHk9Ii4zIiB0cmFuc2Zvcm09InNjYWxlKC4xKSIgdGV4dExlbmd0aD0iMTE5MCI+PCFbQ0RBVEFbdXNpbmcgUG9zaXggU2hlbGxdXT48L3RleHQ+CiAgICA8dGV4dCB4PSIxNzkwIiB5PSIxNDAiIHRyYW5zZm9ybT0ic2NhbGUoLjEpIiB0ZXh0TGVuZ3RoPSIxMTkwIj48IVtDREFUQVt1c2luZyBQb3NpeCBTaGVsbF1dPjwvdGV4dD4KPC9nPgo8L3N2Zz4K)

A pure Shell badge/shield generator with no dependency required.

## Description

This is a simple "Travis-ci" like badge generator that can easily be included in your project.

Typically I use it in my Jenkins projects to create some additionnal badges like
doc build status or code coverage percentage badges which are then published using `publishHTML`.

This small script permits to customize the color, label (text in the right part of the badge)
and status (text in the left part).

It automatically handles the resizing of the badge depending on status and label text length.

It also automatically chooses black or white text depending on the brightness of the status color.

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
