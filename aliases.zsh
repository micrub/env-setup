# gitignore
alias gitignorenode='curl https://www.gitignore.io/api/node > .gitignore'

# mc - colors patch
alias mc='mc --colors normal=green,default:selected=brightmagenta,gray:marked=yellow,default:markselect=yellow,gray:directory=blue,default:executable=brightgreen,default:link=cyan,default:device=brightmagenta,default:special=lightgray,default:errors=red,default:reverse=green,default:gauge=green,default:input=white,gray:dnormal=green,gray:dfocus=brightgreen,gray:dhotnormal=cyan,gray:dhotfocus=brightcyan,gray:menu=green,default:menuhot=cyan,default:menusel=green,gray:menuhotsel=cyan,default:helpnormal=cyan,default:editnormal=green,default:editbold=blue,default:editmarked=gray,blue:stalelink=red,default'
alias create-babel-kit='git clone -o babel-starter-kit -b master --single-branch https://github.com/kriasoft/babel-starter-kit.git'
alias df='df -h'

alias al='vi ~/.oh-my-zsh/custom/aliases.zsh'
alias fn='vi ~/.oh-my-zsh/custom/functions.zsh'
alias zshrc='vi ~/.zshrc'
alias vimrc='vi ~/.vimrc'

alias relzshrc='source ~/.zshrc'

# git
alias gitcmdoc='git commit -m @doc'
alias gtc='git clone'
alias gfi='git flow init -f -d && git add . && git commit -m "init"'
alias gap='git add -p'
alias gitp='git push --all'
alias gitc='git commit'
alias gitC='git commit -m .'
