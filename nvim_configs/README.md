# To setup nvchad/neovim

## Run clean up command to avoid conflicts in setup

## Linux / Macos (unix)

```
rm -rf ~/.config/nvim
```
```
rm -rf ~/.local/share/nvim
```

## Then clone to machine 

```
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim
```

## Update

###To update NvChad run the following command :

```
:NvChadUpdate
```

## Install LSP for elixir
```
:LspInstall elixir-ls  
:LspInstall emmet-ls 
:LspInstall tailwindcss-language-server
```

```
:TSInstall heex
:TSInstall eex
:TSInstall elixir
```

## Can add plugins using this command and choose packages to your own liking
###  Add formatter like prettierd and htmlbeautifier
###  elixir-ls, next-ls, tailwindcss-language-server, emmet-ls

```
:Mason
```

## To sync added custom plugins
```
:Lazy sync
```
