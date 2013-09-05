# Allow disabling of entire environment suite
[ -n "$INHERIT_ENV" ] && return 0

typeset -U path
path=(~/bin ~/.cabal/bin ~/.gem/ruby/2.0.0/bin $path)

# Editor
if which vim &> /dev/null; then
    if [[ -z $DISPLAY ]] then
        export EDITOR="vim"
    else
        export EDITOR="gvim --nofork"
    fi
    export VIMRELEASE="$(print ${${$(vim --version)[5]}:gs/.//})"
elif which vi &> /dev/null; then
    export EDITOR="vi"
fi
export VISUAL=$EDITOR

export SVN_EDITOR=$EDITOR

if echo hello|grep --color=auto l >/dev/null 2>&1; then
  export GREP_OPTIONS='--color=auto'
fi

# Browser
export WWW_HOME=http://google.com
if [[ -z $DISPLAY ]] then
    export BROWSER=elinks
else
    export BROWSER=firefox
fi
