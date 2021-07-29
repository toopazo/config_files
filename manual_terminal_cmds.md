
# Files and folder commands

## Using the ```find``` command
- Search ```path-to-search``` for any files named ```*.txt``` and display their path names.
```
find /path-to-search -name "*.txt"
```

- Delete all files named  ```*.txt``` 
```
find . -name "*.txt" -type f -delete
```
## Using the ```sed``` command

- Search for ```foo``` and replace it with ```bar``` in all ```*.txt``` files
```
sed -i 's/foo/bar/g' *.txt
```
- More on sed: 
  - http://www.grymoire.com/Unix/Sed.html
  - https://www.folkstalk.com/2012/01/sed-command-in-unix-examples.html


## Using the ```grep``` command
- Find files containing ```asd```
```
grep -r "asd" path/
```

- Count files in current folder
```
ls -F |grep -v / | wc -l
```

## Other useful commands
- Show sub-folder size
```
du -h --max-depth=1 | sort -hr
```

-  Change ownership (both user and group) of all files and directories inside of directory and directory itself
```
sudo chown -R username:group directory
```

# Network related commands

- List current DNS servers
```
nmcli device show <interfacename> | grep IP4.DNS
```

- Restart network manager
```
sudo service network-manager restart
```
- Display computer info
```
hostnamectl 
```
