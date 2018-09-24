#!/bin/bash

# Twitter API credentials and capture options

CONSUMERKEY="${TWITTER_CONSUMER_KEY}"
CONSUMERSECRET="${TWITTER_CONSUMER_SECRET}"
USERTOKEN="${TWITTER_USER_TOKEN}"
USERSECRET="${TWITTER_USER_SECRET}"

CAPTURE_MODE="${STATUS_CAPTURE_MODE}" # 1=track phrases/keywords, 2=follow users, 3=onepercent

URLEXPANDYES=y # install URL Expander or not

# Apache

SERVERNAME=127.0.0.1 # should default to this machine's IP address (-s overrides)

# TCAT
TCAT_AUTO_UPDATE="${TCAT_SELF_UPDATE}" # 0=off, 1=trivial, 2=substantial, 3=expensive

# Unix user and group to own the TCAT files

SHELLUSER=tcat
SHELLGROUP=tcat

# MySQL (blank password means randomly generate it)

DBPASS="${DATABASE_PASSWORD}" # password for the MySQL "root" administrator account

TCATMYSQLUSER="${TCAT_DATABASE_USER}"
TCATMYSQLPASS="${TCAT_DATABASE_PASSWORD}"

DB_CONFIG_MEMORY_PROFILE=y

# TCAT Web user interface logins (blank password means randomly generate it)

TCATADMINUSER="${TCAT_ADMIN_USERNAME}"
TCATADMINPASS="${TCAT_ADMIN_PASSWORD}"

TCATUSER="${TCAT_USER_USERNAME}"
TCATPASS="${TCAT_USER_PASSWORD}"

BATCH_MODE='y'
