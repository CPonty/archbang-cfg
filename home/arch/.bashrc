# Add nano as default editor
export EDITOR=nano

alias vi='vim'
alias lxterm='lxterminal --geometry=80x32'

alias l='ls --color=auto'
alias ls='ls --color=auto'
alias lsl='ls -l --color=auto'
alias lsa='ls -a --color=auto'
alias lsal='ls -al --color=auto'
alias lsld='ls -al | grep ^d'
alias lsd='ls -d */'
alias lsad='ls -ad */'
alias wd='pwd'

alias copy='cp'
alias rename='mv'
alias del='rm'
alias dir='ls -al | grep ^d'

alias dud='du -h --max-depth=1 | sort'
alias dus='du -sh'
alias dush='du -sh'
awkstr='BEGIN{ pref[1]="K"; pref[2]="M"; pref[3]="G";} { total = total + $1; x = $1; y = 1; while( x > 1024 ) { x = (x + 1023)/1024; y++; } printf("%g%s\t%s\n",int(x*10)/10,pref[y],$2); } END { y = 1; while( total > 1024 ) { total = (total + 1023)/1024; y++; } printf("Total: %g%s\n",int(total*10)/10,pref[y]); }'
alias dusk="du -sk ./* | sort -nr | awk '$awkstr' | sed 's/.\///g' | sed 's/$/\//g'"
alias dfh='df -h .'

alias myip='curl ifconfig.me'
alias getip=myip

export MOSS='s4234549@moss.labs.eait.uq.edu.au'

#alias paclist=\
#'REMOTEPKGS=$(pacman -Sl); \
#for LOCALPKG in $(pacman -Qq); do \
#	echo "$REMOTEPKGS" | grep " $LOCALPKG "; \
#done | sort'

[ ! "$UID" = "0" ] && archbey2
