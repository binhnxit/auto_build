# README #
Centralized Multi-deployment with Capistrano

## Requirements

| Tools      | Version          | URL                                          |
|------------|------------------|----------------------------------------------|
| ruby       | 2.3.\* or later  | https://www.ruby-lang.org/en/                |
| capistrano | 3.8.1 | http://capistranorb.com/                                |

## install capistrano version 3.8.1
```sh
gem install capistrano -v 3.8.1
```
## install bundler
```sh
gem install bundler
```

## How to setup

```sh
#!script
git clone git@github.com:binhnxit/auto_build.git
cd auto_build
git pull origin master
cd backend
bundle install
cp .env.example .env
```

## How to deploy

```sh
#!script

cd path/to/auto_build/backend
cap -T

# Deploy myblog - dev
cap myblog:dev deploy branch=develop

# Deploy myblog - prod
cap myblog:production deploy branch=v0.1.2
```
## Install Jenkins and config [Refer](/jenkins)