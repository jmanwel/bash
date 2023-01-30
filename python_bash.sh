#!/bin/bash

# example how run python code in bash
a=10
b=20
code="
import json;
print(json.dumps({'a': $a, 'b': $b}, indent=2))
"
json=$(python3 -c "$code")
# Use json content
echo -e "$json" > output.json