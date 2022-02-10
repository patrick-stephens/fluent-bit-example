# Missing and default parsers

This example covers finding both default parsers, i.e. those in the image by default but not present in this repo, and using an invalid parser.

```
$ docker run --rm -it -v $PWD/fluent-bit.conf:/fluent-bit/etc/fluent-bit.conf -v $PWD/parsers-custom.conf:/fluent-bit/etc/parsers-custom.conf fluent/fluent-bit:1.8.12
Fluent Bit v1.8.12
* Copyright (C) 2019-2021 The Fluent Bit Authors
* Copyright (C) 2015-2018 Treasure Data
* Fluent Bit is a CNCF sub-project under the umbrella of Fluentd
* https://fluentbit.io

[2022/02/10 11:09:13] [ info] [engine] started (pid=1)
[2022/02/10 11:09:13] [ info] [storage] version=1.1.5, initializing...
[2022/02/10 11:09:13] [ info] [storage] in-memory
[2022/02/10 11:09:13] [ info] [storage] normal synchronization mode, checksum disabled, max_chunks_up=128
[2022/02/10 11:09:13] [ info] [cmetrics] version=0.2.2
[2022/02/10 11:09:13] [error] [filter:parser:parser.2] requested parser 'notpresent' not found
[2022/02/10 11:09:13] [error] [filter:parser:parser.2] Invalid 'parser'
[2022/02/10 11:09:13] [error] Failed initialize filter parser.2
[2022/02/10 11:09:13] [error] [lib] backend failed
```