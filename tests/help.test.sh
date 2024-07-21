#!/bin/bash

output=$(telelog --help)

if echo "$output" | grep -i "Usage:"; then
  echo "Should display help message"
  echo "Test passed ✅"
  exit 0
fi

echo "Test failed ❌"
exit 1