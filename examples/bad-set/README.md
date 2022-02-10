# Bad set usage

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

[2022/02/10 10:23:20] [ info] [engine] started (pid=1)
[2022/02/10 10:23:20] [ info] [storage] version=1.1.5, initializing...
[2022/02/10 10:23:20] [ info] [storage] in-memory
[2022/02/10 10:23:20] [ info] [storage] normal synchronization mode, checksum disabled, max_chunks_up=128
[2022/02/10 10:23:20] [ info] [cmetrics] version=0.2.2
[2022/02/10 10:23:20] [ info] [sp] stream processor started
[0] dummy.0: [1644488600.619023522, {"C space"=>"3", "A"=>"Z", "$A"=>"2", "C"=>"${C}", "C space"=>"${C }"}]
[1] dummy.0: [1644488601.618946829, {"C space"=>"3", "A"=>"Z", "$A"=>"2", "C"=>"${C}", "C space"=>"${C }"}]
[2] dummy.0: [1644488602.618888722, {"C space"=>"3", "A"=>"Z", "$A"=>"2", "C"=>"${C}", "C space"=>"${C }"}]
[3] dummy.0: [1644488603.618945894, {"C space"=>"3", "A"=>"Z", "$A"=>"2", "C"=>"${C}", "C space"=>"${C }"}]
[0] dummy.1: [1644488600.619119076, {"A"=>"Z"}]
[1] dummy.1: [1644488601.618991271, {"A"=>"Z"}]
[2] dummy.1: [1644488602.618920755, {"A"=>"Z"}]
[3] dummy.1: [1644488603.618974580, {"A"=>"Z"}]
```
