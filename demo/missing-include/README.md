# Missing relative include

Trigger an error as missing a nested relative include.

```
$ docker run --rm -it -v $PWD:/fluent-bit/etc fluent/fluent-bit:1.8.12
Fluent Bit v1.8.12
* Copyright (C) 2019-2021 The Fluent Bit Authors
* Copyright (C) 2015-2018 Treasure Data
* Fluent Bit is a CNCF sub-project under the umbrella of Fluentd
* https://fluentbit.io

[2022/02/10 10:31:24] [Warning] [config] I cannot open /fluent-bit/etc//missing.conf file
Error: Configuration file contains errors. Aborting
```
