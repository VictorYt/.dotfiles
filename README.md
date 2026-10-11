# .dotfiles

Mes dotfiles, gérés avec [chezmoi](https://www.chezmoi.io/), pour trois environnements :

| Profil    | Détection                          | Paquets                                   | sudo |
|-----------|------------------------------------|-------------------------------------------|------|
| `mac`     | automatique (macOS)                | Homebrew (formules + casks), npm          | oui  |
| `wsl`     | automatique (noyau `microsoft`)    | apt (socle) + [pixi](https://pixi.sh) (outils CLI) | oui  |
| `cluster` | demandé au 1er lancement           | pixi uniquement, tout dans `$HOME`        | **non** |
| `linux`   | demandé au 1er lancement           | apt + pixi                                | oui  |

## Installation

```bash
git clone https://github.com/VictorYt/.dotfiles.git ~/.dotfiles
~/.dotfiles/install.sh                        # détecte le profil
DOTFILES_PROFILE=cluster ~/.dotfiles/install.sh  # ou le forcer
```

`install.sh` installe chezmoi dans `~/.local/bin` s'il est absent (sans sudo), puis lance
`chezmoi init --apply`. Pour voir ce qui va changer **avant** d'appliquer :

```bash
chezmoi init --source ~/.dotfiles
chezmoi diff
chezmoi apply
```

## Au quotidien

```bash
chezmoi edit ~/.zshrc     # éditer un fichier géré (puis chezmoi apply)
chezmoi re-add            # reprendre dans le dépôt une modif faite directement dans ~
chezmoi update            # git pull + apply (alias : dotup)
chezmoi cd                # aller dans le dépôt (alias : dot)
```

Ajouter/retirer un paquet : éditer [`home/.chezmoidata/packages.yaml`](home/.chezmoidata/packages.yaml),
le script d'installation se relance seul au prochain `chezmoi apply`.

## Contenu

```
install.sh                     amorçage (chezmoi sans sudo)
home/                          racine chezmoi (.chezmoiroot)
├── .chezmoi.toml.tmpl         détection du profil, nom/email git
├── .chezmoidata/packages.yaml listes de paquets par plateforme
├── .chezmoiexternal.toml      plugins zsh (versions épinglées)
├── .chezmoiscripts/           installation brew / apt+pixi, préférences macOS
├── dot_zshenv, dot_zprofile, dot_zshrc   zsh léger + starship, sans framework
├── dot_bashrc, dot_bash_profile          bash → bascule vers zsh sur le cluster
├── dot_gitconfig              git moderne (delta, zdiff3, fsckObjects…)
├── private_dot_ssh/           config SSH (GitHub, multiplexage)
└── private_dot_config/        nvim (LazyVim), starship, ghostty, zed, zsh/aliases
```

## Fichiers locaux (jamais versionnés)

Pour ce qui est propre à une machine ou sensible :

- `~/.zshrc.local`, `~/.bashrc.local` — modules du cluster, variables privées…
- `~/.gitconfig.local` — email pro, signature…
- `~/.ssh/config.local` — hôtes (cluster, serveurs)

Les secrets ne vont **jamais** dans ce dépôt (public). Pour en gérer, chezmoi s'intègre
à 1Password (`onepasswordRead`) ou chiffre avec age.

## Sécurité

- CI GitHub : [gitleaks](https://github.com/gitleaks/gitleaks) (secrets), shellcheck,
  rendu des templates pour chaque profil.
- Vérification locale : `gitleaks git ~/.dotfiles`.
- Les commandes précédées d'une espace ne sont pas enregistrées dans l'historique zsh.
