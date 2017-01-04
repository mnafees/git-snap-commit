# git-snap-commit
## What
An extension to `git commit` for repositiories that have an `index.html`, that is, for websites. It stores a snapshot of the `index.html` with every new commit in `~/git-snap-commit/[GIT PROJECT NAME]` so that you can go back and see how your website has evolved all this while.
## Why
I thought this would be a cool addition to `git commit` when I started to develop my own portfolio website.
## How
##### Note: Depends on phantomjs
#### Install
```
$ curl https://raw.githubusercontent.com/mnafees/git-snap-commit/master/installer.sh | sh -s install
```
#### Usage
```
$ cd /git/repo/with/the/index.html
$ git add index.html
$ git snap-commit -m "Make changes to index.html"
```
And that's it!
Go check `~/git-snap-commit/[GIT PROJECT NAME]` to see your new snapshot of `index.html`.
## License
```
MIT License

Copyright (c) 2017 Mohammed Nafees

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```
