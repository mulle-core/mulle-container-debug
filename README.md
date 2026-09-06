# mulle-container-debug

#### 🛄 Debugging support for mulle-container




| Release Version                                       | Release Notes  | AI Documentation
|-------------------------------------------------------|----------------|---------------
| ![Mulle kybernetiK tag](https://img.shields.io/github/tag/mulle-core/mulle-container-debug.svg) [![Build Status](https://github.com/mulle-core/mulle-container-debug/workflows/CI/badge.svg)](//github.com/mulle-core/mulle-container-debug/actions) | [RELEASENOTES](RELEASENOTES.md) | [DeepWiki for mulle-container-debug](https://deepwiki.com/mulle-core/mulle-container-debug)




## Documentation & Guides

* [API Summary](asset/dox/api/toc)



## Info

This repository is home to the various `describe` functions of mulle-container.
Currently there is only one data structure supported and that is
`mulle-pointerarray`. Support for the other data structures is just a matter
of time.

> #### Why is this in mulle-core ?
>
> It's based on mulle-buffer and mulle-sprintf. As mulle-sprintf uses mulle-thread,
> this repository doesn't belong in mulle-c. The describe methods are super simple
> to implement with mulle_buffer_sprintf though.
>


### You are here

![Overview](overview.dot.svg)





## Add

mulle-container-debug is a component of the [mulle-core](//github.com/mulle-core/mulle-core) library. So in your code include the mulle-core umbrella header:

``` c
#include <mulle-core/mulle-core.h>
```

### Add mulle-core to a cmake and git project

``` bash
git submodule add https://github.com/mulle-core/mulle-core.git mulle-core
```

Add this to your `CMakeLists.txt`:

``` cmake
add_subdirectory( mulle-core)
target_link_libraries( ${PROJECT_NAME} PRIVATE mulle-core)
```


### Add mulle-core to a mulle-sde project

``` sh
mulle-sde add github:mulle-core/mulle-core
```

### Embed mulle-container-debug with clib

``` sh
clib install --out src mulle-core/mulle-container-debug
```

Append `src` to your include path (e.g. add `-isystem src`  to your `CFLAGS`)
and compile all the sources that were downloaded.

## Install

Use [mulle-sde](//github.com/mulle-sde) to build and install mulle-container-debug and all dependencies:

``` sh
mulle-sde install --prefix /usr/local \
   https://github.com/mulle-core/mulle-container-debug/archive/latest.tar.gz
```

### Legacy Installation

Install the requirements:

| Requirements                                 | Description
|----------------------------------------------|-----------------------
| [mulle-c11](https://github.com/mulle-c/mulle-c11)             | 🔀 Cross-platform C compiler glue (and some cpp conveniences)
| [mulle-buffer](https://github.com/mulle-c/mulle-buffer)             | ↗️ A growable C char array and also a stream - on stack and heap
| [mulle-container](https://github.com/mulle-c/mulle-container)             | 🛄 Arrays, hashtables and a queue
| [mulle-sprintf](https://github.com/mulle-core/mulle-sprintf)             | 🔢 An extensible sprintf function supporting stdarg and mulle-vararg

Download the latest [tar](https://github.com/mulle-core/mulle-container-debug/archive/refs/tags/latest.tar.gz) or [zip](https://github.com/mulle-core/mulle-container-debug/archive/refs/tags/latest.zip) archive and unpack it.

Install **mulle-container-debug** into `/usr/local` with [cmake](https://cmake.org):

``` sh
PREFIX_DIR="/usr/local"
cmake -B build                               \
      -DMULLE_SDK_PATH="${PREFIX_DIR}"       \
      -DCMAKE_INSTALL_PREFIX="${PREFIX_DIR}" \
      -DCMAKE_PREFIX_PATH="${PREFIX_DIR}"    \
      -DCMAKE_BUILD_TYPE=Release &&
cmake --build build --config Release &&
cmake --install build --config Release
```


## Author

[Nat!](https://mulle-kybernetik.com/weblog) for Mulle kybernetiK  



