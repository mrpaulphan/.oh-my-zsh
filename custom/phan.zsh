# Alias
alias nyit="cd /Users/MrPaulPhan/Development/nyit-dev/"
alias cogclient="cd /Users/MrPaulPhan/Development/cogclient/"
alias david="cd /Users/MrPaulPhan/Development/davidsbridal-dev"
alias sshpaul="ssh paul@162.243.68.235"
alias sshdrexel="ssh drexelba@66.147.244.54"
alias video="cd /Users/MrPaulPhan/Development/Laravel-Subscription"
alias videoGo="php artisan serve --port=4000"
alias msk="cd ~/Development/msk-portal"

# Bash
alias zshconfig="atom ~/.zshrc"
alias ohmyzsh="open ~/.oh-my-zsh"
alias zshfunction="atom ~/.oh-my-zsh/custom/phan.zsh"

pd() {
  if [ -z "$1" ];
  then
    echo "Error: please type a commit message"
    exit 0
  fi
  branch=$(git symbolic-ref --short -q HEAD)
  git add -A && git commit -m "$branch" -m"$1"
  git push origin $branch
}

push() {
  branch=$(git symbolic-ref --short -q HEAD)
  if [ -z "$1" ];
  then
  echo "Error: please type push \"{argument}\""
  else
    if [ -z "$2" ];
    then
      git add -A && git commit -m"$1"
      git push origin $branch
    else
      git add -A && git commit -m"$1" -m"$2"
      git push origin $branch
    fi
  fi
}
