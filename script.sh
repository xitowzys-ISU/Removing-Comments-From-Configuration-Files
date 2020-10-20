mkdir -p noComment

for entry in `ls -1 ./files | sed -e 's/\..*$//'`; do
    cat ./files/$entry.txt | sed '/^[[:blank:]]*#/d; s/#.*//' > ./noComment/$entry.txt
done