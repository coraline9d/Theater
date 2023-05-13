# Backup

1. I open my terminal and I write : 
```cd /Applications/MAMP/Library/bin```

2. After I type : 
```./mysqldump -u root -p theater > ~/Desktop/Theater/dump_theater.sql```

# Restore

1. I open my terminal and I write : 
```cd /Applications/MAMP/Library/bin```

2. After I type : 
```./mysqldump -u root -p theater < ~/Desktop/Theater/dump_theater.sql```


