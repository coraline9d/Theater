# Bienvenue sur la base de donnée d'un site de théâtre

## Sauvergade 

1. Ouvrez votre terminal et allez dans le dossier où est stocké votre code

**Voici un exemple de chemin :**```cd /Applications/MAMP/Library/bin```

2. Tapez cette commande pour sauvegarder la base de donnée : 
```bash 
./mysqldump -u root -p theater > ~/Desktop/Theater/dump_theater.sql
```

## Restauration 

1. Ouvrez votre terminal et allez dans le dossier où est stocké votre code 
 
**Voici un exemple de chemin :**```cd /Applications/MAMP/Library/bin```

2. Tapez cette commande pour restaurer la base de donnée sauvegardé : 
```bash 
./mysqldump -u root -p theater < ~/Desktop/Theater/dump_theater.sql
```


