# :fzf-tab:complete:(\\|)zinit-*
FOLDER=${word//\//---}
case $group in
plugins)
  mdcat ${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/plugins/$FOLDER/README*
  ;;
esac
