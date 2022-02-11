# Malformed set

This is primarily taken from https://github.com/fluent/fluent-bit/issues/4775

Here, all the syntax is perfectly valid but will not necessarily do what you expect.
We want to prevent this type of cognitive complexity and having to debug it in production when things go wrong.

```
$ docker run --rm -it -v $PWD/fluent-bit.conf:/fluent-bit/etc/fluent-bit.conf fluent/fluent-bit:1.8.12
Fluent Bit v1.8.12
* Copyright (C) 2019-2021 The Fluent Bit Authors
* Copyright (C) 2015-2018 Treasure Data
* Fluent Bit is a CNCF sub-project under the umbrella of Fluentd
* https://fluentbit.io

[2022/02/11 16:23:23] [ warn] [env] variable ${A} is used but not set
[2022/02/11 16:23:23] [ warn] [env] variable ${${A} is used but not set
[2022/02/11 16:23:23] [ info] [engine] started (pid=1)
[2022/02/11 16:23:23] [ info] [storage] version=1.1.5, initializing...
[2022/02/11 16:23:23] [ info] [storage] in-memory
[2022/02/11 16:23:23] [ info] [storage] normal synchronization mode, checksum disabled, max_chunks_up=128
[2022/02/11 16:23:23] [ info] [cmetrics] version=0.2.2
[2022/02/11 16:23:23] [ info] [sp] stream processor started
[0] dummy.0: [1644596604.407218903, {"A 1"=>"", "A 2"=>"", "A 3"=>"${${A}"}]
[1] dummy.0: [1644596605.407196684, {"A 1"=>"", "A 2"=>"", "A 3"=>"${${A}"}]
[2] dummy.0: [1644596606.407183111, {"A 1"=>"", "A 2"=>"", "A 3"=>"${${A}"}]
[3] dummy.0: [1644596607.407197327, {"A 1"=>"", "A 2"=>"", "A 3"=>"${${A}"}]
```
