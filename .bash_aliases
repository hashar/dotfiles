# GIT
alias gpl='git pull'
alias gst='git status'
alias gpu='git push'

# Composer
alias compi="php ../composer.phar install --dev --prefer-dist"
alias compu="php ../composer.phar update --dev --prefer-dist"

# PHP
alias unit="phpunit -c app/ --testsuite=PIM_Unit_Test"
alias tests="phpunit -c app/"
alias fixcs="php-cs-fixer fix src/ --dry-run"
