# Introduction
My Neovim configuration using Kickstart

# Windows
## Nice to have
### Windows Terminal
Open the Microsoft Store app and search for **Windows Terminal**

### PowerShell
```pwsh
winget install Microsoft.PowerShell
```

### WezTerm
Best cross platform terminal emulator: https://wezfurlong.org/wezterm/index.html

### NerdFont
You can choose a nerd font from here https://www.nerdfonts.com/

*Currently using the **JetBrainsMono Nerd Font***

## Pre-requisites
### Git
```pwsh
winget install git.git
```

### CMake
```pwsh
winget install Kitware.CMake
```

### Ripgrep
```pwsh
winget install 'ripgrep msvc'
```

## Installation
### Neovim
```pwsh
winget install Neovim.Neovim
```

### LLVM (Clang) [OPTIONAL BUT RECOMMENDED]
This step is crucial if you're getting the following errors:
- `uv_dlopen` cant find module
- `*.so` is not a valid WIN32 application

```pwsh
winget install llvm
```
Create environment path variable pointing at `C:\Program Files\LLVM\bin`

Follow these [instructions](https://github.com/nvim-treesitter/nvim-treesitter/wiki/Windows-support#troubleshooting) if anything isn't clear.

### Clone this config
```pwsh
git clone git@github.com:t-dimitrov/nvim-config.git $env:USERPROFILE\AppData\Local\nvim\
```

Open Neovim!
