echo "changes detected..."
crystal build src/example.cr
echo "built"
ps aux | grep '[.]/example' | awk '{print $2}' | xargs kill
echo "killed"
./example &
