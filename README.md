# Dot Files

Configuration files for programs I use between different machines.

## zsh

zshenv file mainly used to set environment variables for XDG Base Directory guidelines.
zshrc is where most of the customizations exist.

**Instructions**

1. Symlink `zshenv` file in the `$HOME` directory as `.zshenv`

```{sh}
ln -s .dots/zshenv ~/.zshenv
```

2. Symlink `zshrc` file to `$XDG_CONFIG_HOME/zsh/.zshrc`


## Karabiner

Symlink the custom keybindings to `~/.config/karabiner/assets/complex_modifications`



# DEPRECATED (may remove later)

- python: histfile PYTHONSTARTUP not needed after python@3.13

