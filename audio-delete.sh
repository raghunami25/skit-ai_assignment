x="${1:-40hrs}"
y="${x%???}"
echo $y

for file in $(find data/audios/*.wav -mmin +$y)
do
    # echo "filename ->"
    # echo $file
    stat $file
done

# find data/audios/*.wav -mmin +${1:-2:-3} -exec rm {} \;
echo deleted-files-"`date +"%d-%m-%Y"`".log