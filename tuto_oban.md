# TUTORIEL OBAN

## connection au compte OBAN

- récupérer le mot de passe encrypté dans le lien fourni par François-David (ne pas fermer la page car il n'est valable qu'une fois)

- taper la commande sur un terminal et entrer le mot de passe

```bash
ssh <login>@oban.imag.umontpellier.fr
```

- Pour éviter de retaper le mot de passe à chaque connection l'on peut générer une clé ssh (vérifier d'abord que l'on a pas déjà une : chercher un fichier avec l'extension .pub dans son dossier .ssh) avec par example la commande

```bash
ssh-keygen -t rsa
```

- récupérer le contenu du fichier .pub (clé publique) dans le fichier .ssh avec

```bash
cat nom_de_la_cle.pub
```

- ensuite créer un fichier .shh/authorized_keys et coller sa clé dedans

On peut à présent se connecter en tapant simplement la commande 

```bash
ssh <login>@oban.imag.umontpellier.fr
```

## Connection au remote

- installer l'extension Remote-SSH sur VSCode : une icone 'Remote Explorer' devrait apparaître en dessous de celle des extensions

- On voit alors le remote oban auquel on peut se connecter

## Mise en place de l'environement

Il faut maintenant configurer l'environement python dans ce remote

fichier environment.yml :
```yaml
name: nom_de_env
channels:
 - conda-forge
 - defaults
dependencies:
  - python=3.13
```

- créer et activer son environement ave les commandes :

```bash
micromamba create -f environment.yml
```

```bash
micromamba activate
```

- installer ensuite les packages nécéssaires

```bash
micromamba install pytorch pytorch-cuda=12.4 -c conda-forge -c pytorch -c nvidia
```

torchvision et torchaudio ne veulent pas s'installer jsp pk, la commande donnée sur le site de pytorch ne fonctionne pas : 

```bash
micromamba install pytorch torchvision torchaudio pytorch-cuda=11.8 -c pytorch -c nvidia
```