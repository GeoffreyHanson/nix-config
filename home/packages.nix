{ pkgs, ... }:

{
  home.packages = with pkgs; [
    chezmoi
    eza
    fd
    fzf
    gh
    ghostty
    git
    jq
    lazygit
    neovim
    ripgrep
    tree-sitter
    vim 
    yazi
    zellij
    zoxide
  ];
}
