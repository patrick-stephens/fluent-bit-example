# Include properties

You can include files to bring in properties for the current section but this must be at the top-level with the included file properly indenting them.

```
$ docker run --rm -it -v $PWD:/fluent-bit/etc fluent/fluent-bit:1.8.12
Fluent Bit v1.8.12
* Copyright (C) 2019-2021 The Fluent Bit Authors
* Copyright (C) 2015-2018 Treasure Data
* Fluent Bit is a CNCF sub-project under the umbrella of Fluentd
* https://fluentbit.io

[2022/02/10 10:48:09] [ info] [engine] started (pid=1)
[2022/02/10 10:48:09] [ info] [storage] version=1.1.5, initializing...
[2022/02/10 10:48:09] [ info] [storage] in-memory
[2022/02/10 10:48:09] [ info] [storage] normal synchronization mode, checksum disabled, max_chunks_up=128
[2022/02/10 10:48:09] [ info] [cmetrics] version=0.2.2
[2022/02/10 10:48:09] [error] [config] dummy: unknown configuration property '@include'. The following properties are allowed: samples, dummy, rate, start_time_sec, and start_time_nsec.
[2022/02/10 10:48:09] [ help] try the command: /fluent-bit/bin/fluent-bit -i dummy -h

[2022/02/10 10:48:09] [error] [lib] backend failed
````