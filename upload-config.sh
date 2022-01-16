#!/bin/bash

docker run \
    --network=pinot-noir_default \
    -v $PWD:/tmp/pinot-quick-start \
    --name pinot-streaming-table-creation \
    apachepinot/pinot:0.9.3 AddTable \
    -schemaFile /tmp/pinot-quick-start/examples/schema.json \
    -tableConfigFile /tmp/pinot-quick-start/examples/table-config.json \
    -controllerHost manual-pinot-controller \
    -controllerPort 9000 \
    -exec