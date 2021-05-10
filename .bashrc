#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

alias cd-df="cd ~/projects/dotfiles-arch"
alias i3config="vim ~/projects/dotfiles-arch/.config/i3/config"
alias kittyconfig="vim ~/projects/dotfiles-arch/.config/kitty/kitty.conf"
alias pbarconfig="vim ~/projects/dotfiles-arch/.config/polybar/config"
alias bashconfig="vim ~/projects/dotfiles-arch/.bashrc"

# Virtualenvwrapper stuff
PATH=$PATH:~/.local/bin
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
source ~/.local/bin/virtualenvwrapper.sh

# Load local configuration file that's not in git due to possible
# privacy conflicts
source ~/.rc_local

# Powerline script
. ~/.local/lib/python3.8/site-packages/powerline/bindings/bash/powerline.sh

# Start up dibs development environment
dibs() {
	cd ~/projects/dibs
	workon dibs
	redis-server &
}

# celery for dibs
start_celery() {
	celery -A config worker -l info &
}

# Run python django dev server
dstart() {
	workon dibs
	cd ~/projects/dibs
	docker-compose -f dev-docker-compose.yml up -d
}

dstop() {
	workon dibs
	cd ~/projects/dibs
	docker-compose -f dev-docker-compose.yml down
}

dlogs() {
	workon dibs
	cd ~/projects/dibs
	docker-compose -f dev-docker-compose.yml logs -f
}
# run django tests for dibs
dibs_test() {
	python manage.py test --failfast
}

# Open haverford college database hc_tenant_shell
hc_tenant_shell() {
	python manage.py tenant_command shell_plus --schema=haverford
}

# pytest and open coverage info
test_and_show_cov() {
	pytest --cov=. --cov-report html:htmlcov
	xdg-open htmlcov/index.html
}

# add flutter command to PATH
export PATH="$PATH:~/flutter/flutter/bin"
export DART_SDK=$HOME/flutter/flutter/bin/cache/dart-sdk/bin
export PATH="$PATH:$DART_SDK"
# export PATH="$PATH:~/flutter/flutter/bin/cache/dart-sdk/bin"
export PATH="$PATH:~/AndroidStudio/android-studio/bin" 
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$ANDROID_HOME/cmdline-tools/tools/bin:$PATH
alias run_emulator="flutter emulators --launch nexus"
export PATH="$PATH:/home/aishtiaque/aur_packages/vscodium-bin/src/vscodium-bin/bin"
export PATH="$PATH:~/Downloads/geckodriver" 
export PATH="$PATH:~/phantomjs-bin/bin/"
