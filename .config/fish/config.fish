function fish_greeting
end

# --- Defaults: Zed + Zen (statt nano/firefox) ---
set -gx EDITOR "zeditor --wait"
set -gx VISUAL "zeditor --wait"
set -gx SUDO_EDITOR "zeditor --wait"
set -gx GIT_EDITOR "zeditor --wait"
set -gx BROWSER zen
set -gx TERMINAL ghostty
fish_add_path -P $HOME/.local/bin
set -gx DEFAULT_APP_CONF "$HOME/.config/default-app/roles.toml"

# --- Starship Prompt ---
if command -q starship
  starship init fish | source
end

# --- direnv (nix-direnv, systemweit an) ---
if command -q direnv
  direnv hook fish | source
end

# --- eza (ls replacement, interactive only; scripts keep /bin/ls) ---
if command -q eza
    alias ls='eza --group-directories-first --icons=auto'
    alias ll='eza -lh --group-directories-first --icons=auto --git'
    alias la='eza -la --group-directories-first --icons=auto --git'
    alias lt='eza --tree --level=2 --icons=auto --git'
    alias lta='lt -a'
end

# --- EZA_COLORS: plain ANSI names track the Noctalia-synced terminal palette ---
# (foot/kitty/Noctalia templates set the actual hues; no hex duplication here)
set -gx EZA_COLORS "di=1;34:fi=0:ex=1;32:ln=1;36:or=1;31:ur=33:uw=31:ux=1;32:gr=33:gw=31:gx=1;32:tr=33:tw=31:tx=1;32:sn=32:sb=32:nb=2;32:xa=36:gm=33:ga=32:gd=31:gc=1;31:xx=2:da=2:in=2:bl=2:hd=2;4:hl=36"

# --- zoxide (Jump, Binary bereits installiert) ---
if command -q zoxide
  zoxide init fish | source
end

# --- Atuin (lokale History, kein Sync) ---
if command -q atuin
  atuin init fish | source
end

# --- Git-Abbreviations (expandieren beim Tippen, keine Aliase) ---
abbr --add ga 'git add -p'
abbr --add gadd 'git add'
abbr --add gb 'git branch'
abbr --add gba 'git branch -a'
abbr --add gca 'git commit -a -m'
abbr --add gc 'git commit -m'
abbr --add gco 'git checkout'
abbr --add gdiff 'git diff'
abbr --add glog "git log --graph --topo-order --pretty='%w(100,0,6)%C(yellow)%h%C(bold)%C(black)%d %C(cyan)%ar %C(green)%an%n%C(bold)%C(white)%s %N' --abbrev-commit"
abbr --add gp 'git push origin HEAD'
abbr --add gpu 'git pull origin'
abbr --add gr 'git remote'
abbr --add gre 'git reset'
abbr --add gst 'git status'

