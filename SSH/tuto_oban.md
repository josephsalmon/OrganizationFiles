# OBAN TUTORIAL

## Remote ssh connection for computing

- Retrieve the encrypted password (from the link provided by the server administrator; do not close the page as it is only valid once)

- Type the command in a terminal and enter the password

```bash
ssh <login>@oban.imag.umontpellier.fr
```

- To avoid retyping the password for each connection, you can generate an SSH key (first check if you already have one: look for a file with the .pub extension in your .ssh folder) using, for example, the command

```bash
ssh-keygen -t rsa
```

- Retrieve the content of the .pub file (public key) in the .ssh folder with

```bash
cat nom_de_la_cle.pub
```

- Then create a .ssh/authorized_keys file and paste your key into it

You can now connect by simply typing the command

```bash
ssh <login>@oban.imag.umontpellier.fr
```

## Connection au remote

- Install the Remote-SSH extension on VSCode: a 'Remote Explorer' icon should appear below the extensions icon

- You should then see the oban remote to which you can connect


- On voit alors le remote oban auquel on peut se connecter

## Mise en place de l'environement

Now you need to configure the Python environment in this remote

environment.yml file:
```yaml
name: nom_de_env
channels:
 - conda-forge
 - defaults
dependencies:
  - python=3.13
```

- Create and activate your environment with the commands:

```bash
micromamba create -f environment.yml
```

```bash
micromamba activate
```

- Then install the necessary packages

```bash
micromamba install pytorch pytorch-cuda=12.4 -c conda-forge -c pytorch -c nvidia
```

torchvision and torchaudio do not want to install, I don't know why, the command given on the pytorch website does not work:

```bash
micromamba install pytorch torchvision torchaudio pytorch-cuda=11.8 -c pytorch -c nvidia
```