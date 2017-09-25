source ~/.aliases
source ~/.bash_prompt
source ~/.git-completion.bash

if [ -f ~/.git-completion.bash ]; then
	. ~/.git-completion.bash
	# Add git completion to aliases
	__git_complete g __git_main
	__git_complete gc _git_checkout
	__git_complete gm __git_merge
	__git_complete gp _git_pull
fi

bind '"\t":menu-complete'

export GOPATH="$HOME/workspace"
export PATH="/usr/local/bin:$PATH"
export PATH="$PATH:$GOPATH/bin"
export EDITOR=vim
export BROWSER=/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome
HISTSIZE=10000
HISTFILESIZE=erasedups
unget () {
	if [[ $# -eq 0 ]]; then
					echo "No package given for removal"
	exit 1
	fi
	if [[ -d $GOPATH/src/"$1" ]]; then
				$(go clean -i "$1")
				echo "Go cleaning "$1""
				rm -rf $GOPATH/src/"$1"
				echo "Removing src/"$1""
	else
				echo "Not a valid package: $1"
	fi
}

export PATH="/usr/local/opt/bison/bin:$PATH"
