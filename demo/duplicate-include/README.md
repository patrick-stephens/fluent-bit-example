# Duplicate includes

Includes can only be used once.
This example nests the duplication to hide it further.

```
$ docker run --rm -it -v $PWD:/fluent-bit/etc fluent/fluent-bit:1.8.12
Fluent Bit v1.8.12
* Copyright (C) 2019-2021 The Fluent Bit Authors
* Copyright (C) 2015-2018 Treasure Data
* Fluent Bit is a CNCF sub-project under the umbrella of Fluentd
* https://fluentbit.io

[2022/02/11 16:32:56] [Warning] [config] I cannot open /fluent-bit/etc//valid.conf file
Error: Configuration file contains errors. Aborting
```