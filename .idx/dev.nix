# See https://developers.google.com/idx/guides/customize-idx-env.
{ pkgs, ... }: {
  channel = "stable-23.11"; # or "unstable"

  # Use https://search.nixos.org/packages to find packages
  packages = [
    # See https://gist.github.com/fufexan/2e7020d05ff940c255d74d5c5e712815
    # builder
    # pkgs.gnumake
    # pkgs.cmake
    # pkgs.bear
    # pkgs.bazel
    # pkgs.bazel-watcher

    # debugger
    # pkgs.llvm.lldb
    # pkgs.gdb

    # fix headers not found
    # pkgs.clang-tools

    # LSP and compiler
    # pkgs.llvm.libstdcxxClang

    # other tools
    # pkgs.cppcheck
    # pkgs.llvm.libllvm
    # pkgs.valgrind
    # pkgs.mymake
    # pkgs.nixfmt
    pkgs.git

    # stdlib for cpp
    # pkgs.llvm.libcxx

    # libs
    # pkgs.glm
    # pkgs.SDL2
    # pkgs.SDL2_gfx
  ];

  # Sets environment variables in the workspace
  env = {
    SOME_ENV_VAR = "hello";
  };

  # Search for the extensions you want on https://open-vsx.org/ and use "publisher.id"
  idx.extensions = [
    "angular.ng-template"
  ];

  # Enable previews and customize configuration
  idx.previews = {
    enable = true;
    previews = {
      web = {
        command = [
          "npm"
          "run"
          "start"
          "--"
          "--port"
          "$PORT"
          "--host"
          "0.0.0.0"
          "--disable-host-check"
        ];
        manager = "web";
      };
    };
  };
}

