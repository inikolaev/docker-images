# alpine-scheme

[![Docker Stars](https://img.shields.io/docker/stars/inikolaev/alpine-scheme.svg)][hub]
[![Docker Pulls](https://img.shields.io/docker/pulls/inikolaev/alpine-scheme.svg)][hub]

[hub]: https://hub.docker.com/r/inikolaev/alpine-scheme/

## Sample usage

```
$ docker run -it inikolaev/alpine-scheme
MIT/GNU Scheme running under GNU/Linux
Type `^C' (control-C) followed by `H' to obtain information about interrupts.

Copyright (C) 2014 Massachusetts Institute of Technology
This is free software; see the source for copying conditions. There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

Image saved on Saturday May 17, 2014 at 2:39:25 AM
  Release 9.2 || Microcode 15.3 || Runtime 15.7 || SF 4.41 || LIAR/x86-64 4.118
  Edwin 3.116

1 ]=> (begin
(display "Hello, World!")
(newline))
Hello, World!
;Unspecified return value

1 ]=>
```

