# GIT
alias gpl='git pull'
alias gst='git status'
alias gpu='git push'
alias gdi='git diff'
alias gap='git add -p'
alias gco='git commit'
alias gch='git checkout'
alias gds='git diff --stat master HEAD^'

# Composer
alias compi="php ../composer.phar install --dev --prefer-dist"
alias compu="php ../composer.phar update --dev --prefer-dist"

# PHP
alias unit="phpunit -c app/ --testsuite=PIM_Unit_Test"
alias tests="phpunit -c app/"
alias fixcs="php-cs-fixer fix src/ --dry-run"

#PIM
alias pimrights="sudo setfacl -R -m u:www-data:rwX -m u:nico:rwX app/cache app/logs app/entities app/import app/export app/emails web/bundles && sudo setfacl -dR -m u:www-data:rwX -m u:nico:rwX app/cache app/logs app/entities app/import app/export app/emails web/bundles"
