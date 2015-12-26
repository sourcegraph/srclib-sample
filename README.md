# srclib-sample [![Build Status](https://travis-ci.org/sourcegraph/srclib-sample.png?branch=master)](https://travis-ci.org/sourcegraph/srclib-sample)

Sample toolchain demonstrating how to build a toolchain for
[srclib](http://srclib.org) to implement source code and dependency analysis for
a programming language.

## Usage

First, install [srclib](https://srclib.org).

Then, to set up this toolchain, clone this repository. Then from the directory
you cloned it to, run:

```
mkdir -p ~/.srclib/sourcegraph.com/sourcegraph
ln -s $PWD ~/.srclib/sourcegraph.com/sourcegraph/srclib-sample
```

Now, running `src toolchain list` should show this toolchain

```
$ srclib toolchain list
...
sourcegraph.com/sourcegraph/srclib-sample
```

Now try running the tests:

```
git submodule update --init # Initializes the testing submodules.
srclib test
```
