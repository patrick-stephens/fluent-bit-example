#!/bin/bash
set -eux
SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

docker run --rm -it \
    -v $SCRIPT_DIR/fluent-bit.conf:/fluent-bit/etc/fluent-bit.conf:ro \
    -v $SCRIPT_DIR/common:/fluent-bit/etc/common:ro \
    -v $SCRIPT_DIR/lua:/fluent-bit/etc/lua:ro \
    -v $SCRIPT_DIR/parsers:/fluent-bit/etc/parsers:ro \
    -v $SCRIPT_DIR/functionA:/fluent-bit/etc/functionA \
    -v $SCRIPT_DIR/functionC:/fluent-bit/etc/functionC \
    -e HTTP_PORT=2020 \
    -e DEFAULT_LOGS_DIR=/logs \
    fluent/fluent-bit
