# CSV Sorter

Just a simple bash script to sort a csv file by the first column using the `csvkit` module. The script simply:

1. Sorts the old file into a temp file.
2. Overwrites the old file with the sorted temp file contents.
3. Deletes the temp file.

> [!NOTE]
> If you experience problems running this script, you may need to cd into the folder containing the script file and run `chmod 777 *.sh` to set appropriate permissions on the directory containing the `.sh` file.

## Resources

- [csvsort | csvkit 2.0.1 documentation](https://csvkit.readthedocs.io/en/latest/scripts/csvsort.html)
