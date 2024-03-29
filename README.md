_*ARCHIVED*_ since the original project maintainers took care of supporting containerization.

# DMI-TCAT in a Docker container

The main purpose of this fork of https://github.com/digitalmethodsinitiative/dmi-tcat
is to enable a maintainer to run a working development environment from a docker container
with debugging capabilities (xdebug extension being available by default).

![Analysis](/build/screenshots/DMI-twitter-capturing-and-analysis-toolset.png)

## Requirements

Clone the project after having installed [git](https://git-scm.org)

```
git clone git@github.com:thierrymarianne/contrib-dmi-tcat-devel.git --recursive
```

Install [Docker](https://www.docker.com/get-started)

## Build

Export your credentials as environment variables

```
export TWITTER_CONSUMER_KEY='' \
TWITTER_CONSUMER_SECRET='' \
TWITTER_USER_TOKEN='' \
TWITTER_USER_SECRET='' \
DATABASE_PASSWORD='' \
TCAT_DATABASE_USER='' \
TCAT_DATABASE_PASSWORD='' \
TCAT_USER_USERNAME='' \
TCAT_USER_PASSWORD='' \
TCAT_ADMIN_USERNAME='' \
TCAT_ADMIN_PASSWORD='' \
TCAT_SELF_UPDATE=0 \
STATUS_CAPTURE_MODE=1
```

Build the docker image

```
# takes care of running the one-liner installation script
# from within the container
make build-image
```

## Use

Configure the application (by filling the blanks) after copying the configuration template

```
cp src/config.php{.example,}
```

Run a container from the aforementioned image

``` 
make run-container
```

Import dataset

```
export BIN=dataset && php import/import-jsondump.php
```

## Run

Run a terminal from within the container

``` 
make get-interactive-shell
```

## Analysis

```
virtualenv deps
. ./deps/bin/activate
pip install -r requirements.txt
```
