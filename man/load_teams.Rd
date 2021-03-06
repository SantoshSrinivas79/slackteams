% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/file_managment.R
\name{load_teams}
\alias{load_teams}
\alias{load_teams_dcf}
\title{Load Team(s) From File}
\usage{
load_teams(file = "~/slackr.json", verbose = TRUE)

load_teams_dcf(file = "~/.slackr", verbose = TRUE)
}
\arguments{
\item{file}{character, Path to json containing slackr-app keys, Default: '~/slackr.json'}

\item{verbose}{logical, Print message after loading, Default: TRUE}
}
\description{
Load teams from local file that contains slackr-app keys
}
\concept{files}
