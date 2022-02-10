# Invalid indentation

A simple example showing invalid indentation, this is trivial of course.
```
$ docker run --rm -it -v $PWD/fluent-bit-simple.conf:/fluent-bit/etc/fluent-bit.conf fluent/fluent-bit:1.8.12
Fluent Bit v1.8.12
* Copyright (C) 2019-2021 The Fluent Bit Authors
* Copyright (C) 2015-2018 Treasure Data
* Fluent Bit is a CNCF sub-project under the umbrella of Fluentd
* https://fluentbit.io

[2022/02/10 10:57:44] [  Error] File /fluent-bit/etc/fluent-bit.conf
[2022/02/10 10:57:44] [  Error] Error in line 5: Invalid indentation level
Error: Configuration file contains errors. Aborting
```

Confusingly, indentation seems to be ignored in included files - the exact same config but broken into two files:
```
 docker run --rm -it -v $PWD:/fluent-bit/etc fluent/fluent-bit:1.8.12
Fluent Bit v1.8.12
* Copyright (C) 2019-2021 The Fluent Bit Authors
* Copyright (C) 2015-2018 Treasure Data
* Fluent Bit is a CNCF sub-project under the umbrella of Fluentd
* https://fluentbit.io

[2022/02/10 10:55:25] [ info] [engine] started (pid=1)
[2022/02/10 10:55:25] [ info] [storage] version=1.1.5, initializing...
[2022/02/10 10:55:25] [ info] [storage] in-memory
[2022/02/10 10:55:25] [ info] [storage] normal synchronization mode, checksum disabled, max_chunks_up=128
[2022/02/10 10:55:25] [ info] [cmetrics] version=0.2.2
[2022/02/10 10:55:25] [ info] [sp] stream processor started
[0] dummy.0: [1644490525.618910293, {"message"=>"dummy"}]
[1] dummy.0: [1644490526.618930081, {"message"=>"dummy"}]
[2] dummy.0: [1644490527.618957646, {"message"=>"dummy"}]
[3] dummy.0: [1644490528.618961296, {"message"=>"dummy"}]
```