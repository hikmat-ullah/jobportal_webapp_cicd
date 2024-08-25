#!/bin/bash

echo "**********************"
echo "Testing Laravel Image "
echo "**********************"

docker run --rm -ti -v jobportal:/app hikmatmarwat/job_portal:1.6 "$@"


