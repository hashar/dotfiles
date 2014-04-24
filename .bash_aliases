# GIT
alias gpl='git pull'
alias gst='git status'
alias gpu='git push'
alias gdi='git diff'
alias gap='git add -p'
alias gco='git commit'
alias gcoa='git commit -a'
alias gch='git checkout'
alias gds='git diff --stat master HEAD^'

# Composer
alias compi="php ../composer.phar install --dev --prefer-dist"
alias compu="php ../composer.phar update --dev --prefer-dist"

# PHP
alias unit="phpunit -c app/ --testsuite=PIM_Unit_Test"
alias tests="phpunit -c app/"
alias fixcsdry="php-cs-fixer fix src/ --dry-run"
alias fixcs="php-cs-fixer fix src/"

# PIM
alias pimrights="sudo setfacl -R -m u:www-data:rwX -m u:nico:rwX app/cache app/logs app/import app/export app/emails web/bundles app/archive && sudo setfacl -dR -m u:www-data:rwX -m u:nico:rwX app/cache app/logs app/import app/export app/emails web/bundles app/archive"

# Selenium
alias selenium='java -jar /home/nico/git/selenium-server-standalone-2.38.0.jar'
