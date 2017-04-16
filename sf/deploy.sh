#!/bin/bash
source .env

RELEASE_VERSION=`date "+%Y%m%d-%H%M%S"`;
CURRENT_RELEASE=$WEB_DIR"current";
REMOTE_PATH=$WEB_DIR"releases/"$RELEASE_VERSION/;


f_launch_remote()
{
    echo ""
    echo -e "Launching remote [\033[32m$REMOTE_SERVER_USERHOST:$REMOTE_PATH\033[0m] command: \033[32m$1\033[0m" | tee -a $LOG_FILE
    ssh $REMOTE_SERVER_USERHOST "cd $REMOTE_PATH && $1" | tee -a $LOG_FILE
    if [ "$?" -ne "0" ]; then
        echo -e "command \033[31m $1 \033[0m \033[32mFAILED.\033[0m Exit !!";
        exit 1;
    fi
}


f_launch_cmd()
{
    echo ""
    echo -e "Launching command: \033[32m$1\033[0m" | tee -a $LOG_FILE
    $1 | tee -a $LOG_FILE
    if [ "$?" -ne "0" ]; then
        echo -e "command \033[31m $1 \033[0m \033[32mFAILED.\033[0m Exit !!";
        exit 1;
    fi
}

f_testyes()
{
echo -ne "$1 [yes]"
read rep
if [ -n "$rep" ]; then
    if [ "$rep" != "yes" ]; then
        if [ -z $2 ]; then
            echo "So, make you sure, it's ok. This program have to quit" >&2
            exit
        fi
        return "0"
    fi
fi
return "1"
}

ASSETIC_OPTIONS="--env=prod --no-debug"

RSYNC_EXTRA_OPTIONS=""


# Configurations
CVS_EXCLUDES=" \
--exclude=.svn/ \
--exclude=*~ \
--exclude=*.old \
--exclude=*.bak \
--exclude=*.BAK \
--exclude=*.orig \
--exclude=CVS/ \
--exclude=.git/ \
--exclude=.idea/ \
"


CONFIG_EXCLUDES=" \
--exclude=app/config/parameters.yml \
"

RSYNC_EXCLUDES=" \
--exclude=archives/ \
--exclude=app/cache \
--exclude=app/logs \
--exclude=app/config/parameters.yml \
--exclude=app/config/mail.yml \
--exclude=uploads/ \
--exclude=web/uploads/ \
--exclude=web/data/ \
--exclude=web/fixtures/ \
--exclude=bootsrap.php.cache \
--exclude=releases/ \
--exclude=*~ \
"

php app/console cache:clear --env=prod

php app/console assets:install web  --env=prod

php app/console assetic:dump --env=prod



COMMON_RSYNC_OPTIONS=" -avzc -l --delete $RSYNC_EXTRA_OPTIONS $CVS_EXCLUDES $RSYNC_EXCLUDES $CONFIG_EXCLUDES"

if [ "$QUICK" = "0" ]; then
    f_launch_cmd "rsync --dry-run $COMMON_RSYNC_OPTIONS $COMMON_RSYNC_EXCLUDES . $REMOTE_SERVER_USERHOST:$REMOTE_PATH"
    f_testyes "Is this list of files is correct ?"
fi

f_launch_cmd "rsync $COMMON_RSYNC_OPTIONS $COMMON_RSYNC_EXCLUDES . $REMOTE_SERVER_USERHOST:$REMOTE_PATH"

f_launch_remote "rm -rf $CURRENT_RELEASE"
f_launch_remote "ln -s $REMOTE_PATH $CURRENT_RELEASE"
f_launch_remote "cd $CURRENT_RELEASE"
f_launch_remote "php app/console cache:clear --env=prod"

