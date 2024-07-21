#!/bin/bash

output=$(telelog --message)

if echo "$output" | grep -i "Error: --message flag provided but no message found after it."; then
  echo "Should display error message"
  echo "Test passed ✅"
fi

telelog --message 'Hello, World!' | grep -i '{"ok":true' && echo "Test passed ✅" || echo "Test failed ❌"