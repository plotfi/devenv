# devenv
Docker/Ubuntu-LTS based Development Environment for LLVM

To use run the following:

```
docker pull plotfi/devenv
docker run --privileged --interactive --tty --name devenv plotfi/devenv:latest /bin/bash
```

vim and clangd are provided, so are some handy scripts and dotfiles cloned from https://github.com/plotfi/dotfiles
