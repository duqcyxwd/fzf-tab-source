# :fzf-tab:complete:(-command-:|command:option-(v|V)-rest)
# source $ZDOTDIR/.zshenv
case $group in
'external command')
  echo "external command"
  which "$word"
  echo "---------"
  bat =$word
  ;;
'executable file')
  echo "[Executable File]"
  quick-preview ${realpath#--*=}
  ;;
'builtin command')
  echo "[Builtin Command]"
  run-help $word | bat -lman
  ;;
'shell function')
  echo '[Shell Function]'
  which "$word"
  ;;
'alias')
  echo "[Alias]"
  which "$word"
  ;;
parameter)
  echo "[Parameter]"
  echo ${(P)word}
  ;;
*)
  echo "[Default]"
  which "$word"
  ;;
esac
