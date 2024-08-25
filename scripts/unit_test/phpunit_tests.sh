#!/bin/bash

echo "**********************"
echo "Testing Laravel Image "
echo "**********************"


docker run --rm -v jobportal:/app hikmatmarwat/job_portal:1.6 "$@"
