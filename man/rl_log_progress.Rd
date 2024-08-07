% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rl_log_progress.R
\name{rl_log_progress}
\alias{rl_log_progress}
\title{Function to retrieve and help to log Q values during RL progress.}
\usage{
rl_log_progress(x, states, actions, control)
}
\arguments{
\item{x}{\itemize{
\item dataframe containing trading results
}}

\item{states}{\itemize{
\item Selected states of the System
}}

\item{actions}{\itemize{
\item Selected actions executed under environment
}}

\item{control}{\itemize{
\item control parameters as defined in the Reinforcement Learning Package
}}
}
\value{
dataframe with log of RL model reward sequences during model update
}
\description{
Function will record Q values during the model update. These values will be used by another function
Function was developed to help to estimate best control parameters during optimisation process

\ifelse{html}{\href{https://lifecycle.r-lib.org/articles/stages.html#stable}{\figure{lifecycle-stable.svg}{options: alt='[Stable]'}}}{\strong{[Stable]}}
}
\examples{

# retrieve RL model Q values progress
library(ReinforcementLearning)
library(dplyr)
library(magrittr)
library(lazytrade)
data(data_trades)
x <- data_trades
states <- c("tradewin", "tradeloss")
actions <- c("ON", "OFF")
control <- list(alpha = 0.7, gamma = 0.3, epsilon = 0.1)

rl_log_progress(x = x,states = states, actions = actions, control = control)

}
