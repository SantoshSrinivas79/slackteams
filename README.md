
<!-- README.md is generated from README.Rmd. Please edit that file -->

# slackteams

<!-- badges: start -->

[![Covrpage
Summary](https://img.shields.io/badge/covrpage-Last_Build_2019_12_12-brightgreen.svg)](http://tinyurl.com/qq3vz59)
[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
<!-- badges: end -->

`slackteams` is an `R` package that allows the user to manage multiple
Slack teams during a session.

The package queries the
[slackr-app](https://github.com/yonicd/slackr-app) database to set the
environment variables needed by
[slackr](https://github.com/hrbrmstr/slackr).

## Installation

``` r
remotes::install_github("yonicd/slackteams")
```

## Create an Incoming Webhook

The following button will create a Slack incoming webhook with the
correct scope to your Slack
team.

<a href="https://slack.com/oauth/authorize?client_id=220157155520.220159943344&scope=incoming-webhook,files:read,files:write:user,chat:write:bot,chat:write:user,mpim:write,mpim:read,mpim:history,im:write,im:read,im:history,groups:write,groups:read,groups:history,channels:write,channels:read,channels:history,emoji:read,usergroups:read,users:read" target="_blank"><img alt="Add to Slack" height="40" width="139" src="https://platform.slack-edge.com/img/add_to_slack.png" srcset="https://platform.slack-edge.com/img/add_to_slack.png 1x, https://platform.slack-edge.com/img/add_to_slack@2x.png 2x"></a>

#### Button Directions

1.  Click the button
2.  Select the team to install the application
3.  Select the default channel to post to (this can be changed later)
4.  If successful a `SLACK_KEY_ID` will be returned. 👈 🚨 **Keep this
    Key** 🚨
5.  If not successful an error message will be returned.
6.  To keep the data safe you need your team `MEMBERID` to authenticate
    the `SLACK_KEY_ID`. [How to locate your Member
    ID](https://medium.com/@moshfeu/how-to-find-my-member-id-in-slack-workspace-d4bba942e38c)
7.  Paste the output into a json file. Default path that `slackteams`
    looks for the file is `~/slackr.json`.

#### slackr.json

``` json
{
  "slackr": {
    "key": "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX",
    "memberid": "UABC123"
  },
  "r4ds": {
    "key": "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX",
    "memberid": "UXYZ456"
  }
}
```

## Basic Usage

``` r
library(slackteams)
```

### Load the teams

``` r
slackteams::load_teams()
#> The following teams are loaded:
#>   slackr, r4ds
```

### Activate a Team

``` r
slackteams::activate_team('r4ds')
#> slackr environment variables are set to 'r4ds' supplied definitions
```

### Post a Message

``` r
slackr::slackr('My Spiffy Message')
```

### Activate Another Team

``` r
slackteams::activate_team('slackr')
#> slackr environment variables are set to 'slackr' supplied definitions
```

### Post a Message

``` r
slackr::slackr('My Other Spiffy Message')
```
