# https://github.com/asadalishah/twitter

# https://medium.com/@emmanuelsibanda/explaining-south-africas-sona-of-2019-through-a-twitter-keyword-analysis-f5306cad2d79
# https://medium.com/@GalarnykMichael/accessing-data-from-twitter-api-using-r-part1-b387a1c7d3e


################# Install twitteR package
install.packages("twitteR")
library(twitteR)

pkgs <- c("twitteR")
sapply(pkgs, require, character.only = TRUE)

################# Obtain an authentication token
appName <- "AsadTwitterApp"
apiKey <- "GnQ81vhrtlpciNufHQLjklojO"
apiSecret <- "fMAiHIYhR0haQfv34fcdovD6977e2eUVpfi6EPJBpuVdBqTLaK"
accessToken <- "42832002-X4xwxqpaDPWD1qSiugWWz1DdkonR4Xsuue9bFsMEO"
accessSecret <- "UH7EeBYNMIX3ceK1hwRMnEnJUMyj7TMXWcTvxjqVdVfV8"

setup_twitter_oauth(apiKey, apiSecret, accessToken, accessSecret)

#bearerToken <- "AAAAAAAAAAAAAAAAAAAAAHh%2FKgEAAAAACRsrrCpej%2FnH66S1Bh81zknccLo%3DMHCkShAMiEAiKTRfDWKg4a4BBSqmRoUQAnwfAuxXsGdtQTkB2v"

################# Get the data
tw = twitteR::searchTwitter('
#پاکپتن_کی_رنڈی +
#رائیونڈ_کی_رنڈی +
#پنڈی_کے_دلے', n=25, retryOnRateLimit=120)


d = twitteR::twListToDF(tw)
