# Check if csvkit is installed, and install it if it is not.
brew list csvkit > /dev/null || brew install csvkit

# Set necessary variables
baseDir=$(dirname $0)
csvDir=$baseDir/csv-files
unsortedFile=$csvDir/example.csv
tempFile=$csvDir/tempFile.csv

# Sort the entries in the Services.csv file alphabetically using the first column, which should be Name, into a temp file.
csvsort -c 1 $unsortedFile > $tempFile

# Overwrite the Services.csv file with the new, sorted version.
cp -f $tempFile $unsortedFile

# Delete the now-unnecessary temp file.
rm $tempFile