# ![](https://github.com/tstamborski/pixelart-icons/blob/main/png/cmd32.png) Bash Scripts

Collection of my personal bash scripts. The scripts are *mostly* undocumented - i keep them here mainly for backup reason.

## Short Descriptions

*Here I put some descritions of some scripts.*

``` toughluck.sh year ```  
Prints out all fridays 13th in the given year.

``` for-each.sh command directory ```  
Executes a command for every not-hidden file or subdirectory in the specified directory.

``` for-subdirs.sh command directory ```  
Executes a command for every not-hidden subdirectory (it doesn't touch regular files) in the specified directory.

``` quick-zip.sh directory ```  
Creates a zip archive from the specified directory - it automatically set the archive name to the directory name + `.zip` extension.

``` add-ext.sh extension file ```  
Adds the specified extension to the given file - it checks and do nothing if the file already has needed extension.

``` hello.sh ```  
Silly script which prints "Hello" + current user name from uppercase letter.

``` tmx2bin.sh tmx_file output_file ```  
My script for extracting data from Tiled tmx files into plain binary format (good for use in the retro games development).
Format of the output file is 16 bits of map width, 16 bits of map height and next come tiles IDs stored as two byte values.
All values are encoded as little-endian.
