# :fzf-tab:complete:*tag-push:argument-2
# Preview for tag or commit (second argument)
case $group in
'tag')
  # For tags, show tag details
  git show --color=always $word | delta
  ;;
*)
  # For commit hashes or any other input
  if git rev-parse --verify $word >/dev/null 2>&1; then
    # If it's a valid commit, show the commit details
    git show --color=always $word | delta
  else
    # Otherwise show a message
    echo "Not a valid git reference: $word"
    echo "Please enter a valid tag or commit hash"
  fi
  ;;
esac 