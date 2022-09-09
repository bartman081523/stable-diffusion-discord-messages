IFS=$'\n'
for file in $(ls *.txt); do

echo $file
sed -e 's/\(.*\)/\L\1/' -i $file
sed 's/\(.*\!dream \)\(.*\)/\2/' -i $file
sed 's/\(.*\)\(\*\*.*\)/\1/' -i $file
#sed 's/\(.*\)\( \-c | \-n | \-w | \-h | \-i | \-s \).*/\2/' -i $file
sed 's/\(.*\)\(\-c \).*/\1/' -i $file
sed 's/\(.*\)\(\-n\).*/\1/' -i $file
sed 's/\(.*\)\(\-w \).*/\1/' -i $file
sed 's/\(.*\)\(\-h \).*/\1/' -i $file
sed 's/\(.*\)\(\-i \).*/\1/' -i $file
sed 's/\(.*\)\(\-s \).*/\1/' -i $file
sed 's/\"//' -i $file
sed 's/.*\_.*//' -i $file
done
