
#!/bin/bash

result=$(git status)

if echo "$result" | grep -q "ahead of 'origin/master' by"; then
  echo "matched";
else
  echo "no match";
fi

