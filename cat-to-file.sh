#!/usr/bin/env bash
set -x

valuex='howdy'
valuey='hi'
myFile='fileX'

# Create new file with the variable assignments
cat << EOF > "$myFile"
variable-x="$valuex"
EOF

# Or, the other way...
cat > "$myFile" <<EOF
variable-x="$valuex"
variable-y="$valuey"
EOF

#rm -f "$myFile"
