# Include typo/missing issues

Includes trigger major pain if missing or simple typo.
A simple example is pretty trivial to debug but as you scale up and start nesting it gets messier.

Only relative includes give you a warning about the file you are missing - absolute includes do not.

### Top-level missing include

No reference to the absolute path file that is missing:

```
$ docker run --rm -it -v $PWD/fluent-bit-simple.conf:/fluent-bit/etc/fluent-bit.conf fluent/fluent-bit:1.8.12
Fluent Bit v1.8.12
* Copyright (C) 2019-2021 The Fluent Bit Authors
* Copyright (C) 2015-2018 Treasure Data
* Fluent Bit is a CNCF sub-project under the umbrella of Fluentd
* https://fluentbit.io

[2022/02/10 10:28:20] [Warning] [config] I cannot open /fluent-bit/etc//missing.conf file
Error: Configuration file contains errors. Aborting
```

It gets worse, if you have the absolute file first then you get no report for the relative one either:
```
$ docker run --rm -it -v $PWD/fluent-bit-simple-absolute-first.conf:/fluent-bit/etc/fluent-bit.conf fluent/fluent-bit:1.8.12
Fluent Bit v1.8.12
* Copyright (C) 2019-2021 The Fluent Bit Authors
* Copyright (C) 2015-2018 Treasure Data
* Fluent Bit is a CNCF sub-project under the umbrella of Fluentd
* https://fluentbit.io

Error: Configuration file contains errors. Aborting
```

### Nested missing include

No reference to the absolute path file that is missing:
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

Again, if you move the ordering around so the absolute include is first then you also do not get the warning for the relative one.