# GIT
alias gpl='git pull'
alias gst='git status'
#alias gpu='git push'
alias gdi='git diff'
alias gap='git add -p'
alias gco='git commit'
alias gcoa='git commit -a'
#alias gch='git checkout'
alias gds='git diff --stat master HEAD^'

# Composer
alias compi="php ../composer.phar install --dev --prefer-dist"
alias compu="php ../composer.phar update --dev --prefer-dist"

# PHP
alias unit="phpunit -c app/ --testsuite=PIM_Unit_Test"
alias tests="phpunit -c app/"
alias fixcsdry="php-cs-fixer fix src/ --dry-run"
alias fixcs="php /usr/local/bin/php-cs-fixer fix --level=psr2 -v --diff --config-file=.php_cs.php ./src/"
alias fixspec="php-cs-fixer fix -v --diff --config-file=.php_cs_spec ./spec/"
alias refreshassets="rm -rf app/cache/* ; app/console pim:installer:assets -e=prod ; app/console assets:install --symlink web"

# PIM
alias pimrights="sudo setfacl -R -m u:www-data:rwX -m u:nico:rwX app/uploads/product app/cache app/logs app/emails web/bundles app/archive && sudo setfacl -dR -m u:www-data:rwX -m u:nico:rwX app/cache app/logs app/emails web/bundles app/archive app/uploads/product"

# Selenium
alias selenium='java -jar /home/nico/git/selenium-server-standalone-2.43.1.jar'

# Mongo
alias repairmongo='sudo rm /var/lib/mongodb/mongod.lock && sudo /etc/init.d/mongodb restart'
