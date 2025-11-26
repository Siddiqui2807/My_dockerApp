#!/bin/bash
set -e

cat <<'EOF'
*******************************************
  Welcome — Docker Linux demo
  The script will show a few basic commands
  After the demo you'll be left in a bash shell
*******************************************
EOF

echo; echo "pwd ->"; pwd
echo; echo "ls -la ->"; ls -la
echo; echo "whoami ->"; whoami
echo; echo "uname -a ->"; uname -a
echo; echo "/etc/os-release ->"; cat /etc/os-release || true
echo; echo "df -h ->"; df -h
echo; echo "free -m ->"; free -m
echo; echo "ps aux --no-heading | head -n 6 ->"; ps aux --no-heading | head -n 6
echo; echo "ip addr show ->"; ip addr show || true

echo
cat <<'EOF'
Demo finished — starting an interactive bash shell now.
Type 'exit' to leave the container.
EOF

# Hand control to bash so the container remains interactive
exec bash
