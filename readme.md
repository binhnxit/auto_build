# README #
Centralized Multi-deployment with Capistrano

## Requirements

| Tools      | Version          | URL                                          |
|------------|------------------|----------------------------------------------|
| ruby       | 2.3.\* or later  | https://www.ruby-lang.org/en/                |
| capistrano | 3.8.1 | http://capistranorb.com/                                |

## install capistrano version 3.8.1
```
gem install capistrano -v 3.8.1
```
## install bundler
```
gem install bundler
```

## How to setup

```
#!script
git clone git@github.com:binhnxit/auto_build.git
cd auto_build
git pull origin master
cd backend
bundle install
cp .env.example .env
```

## How to deploy

```
#!script

cd path/to/auto_build/backend
cap -T

# Deploy dmm - dev
cap dmm_backend:dev deploy branch=develop

# Deploy dmm - prod
cap dmm_backend:production deploy branch=v0.1.2
```
## Install Jenkins and config [Refer](/jenkins)