# Missing custom configuration

This shows an example where we are missing configuration at runtime.
```
$ docker run --rm -it -v $PWD:/fluent-bit/etc fluent/fluent-bit:1.8.12
Fluent Bit v1.8.12
* Copyright (C) 2019-2021 The Fluent Bit Authors
* Copyright (C) 2015-2018 Treasure Data
* Fluent Bit is a CNCF sub-project under the umbrella of Fluentd
* https://fluentbit.io

[2022/02/10 10:59:08] [ warn] [env] variable ${CALYPTIA_KEY} is used but not set
[2022/02/10 10:59:08] [ info] [engine] started (pid=1)
[2022/02/10 10:59:08] [ info] [custom:calyptia:calyptia.0] custom initialized!
[2022/02/10 10:59:08] [ info] [storage] version=1.1.5, initializing...
[2022/02/10 10:59:08] [ info] [storage] in-memory
[2022/02/10 10:59:08] [ info] [storage] normal synchronization mode, checksum disabled, max_chunks_up=128
[2022/02/10 10:59:08] [ info] [cmetrics] version=0.2.2
[2022/02/10 10:59:08] [error] [output:calyptia:calyptia.1] configuration 'api_key' is missing
[2022/02/10 10:59:08] [error] [output:calyptia:calyptia.1] could not initialize configuration
[2022/02/10 10:59:08] [error] [lib] backend failed
[2022/02/10 10:59:08] [error] [output] failed to initialize 'calyptia' plugin
[2022/02/10 10:59:08] [ info] [input] pausing fluentbit_metrics.1
```