# 1. Question 1: 
# Client secret f3f4cdd32ad6f9b351ec5a9f9dde0ab0b2ffb147
# Client ID: c71bcb7980550e3b70a2

library(httr)
library(httpuv)

# Provide common oauth endpoints such as twitter, facebook, 
oauth_endpoints("github")

# Create a connection with the app

my_app <- oauth_app(appname = "Coursera", 
                    key = "c71bcb7980550e3b70a2",
                    secret = "f3f4cdd32ad6f9b351ec5a9f9dde0ab0b2ffb147")

# Get OAuth credentials
github_token <- oauth2.0_token(oauth_endpoints("github"), my_app)

#Use API
gtoken <- config(github_token)
req <- GET("https://api.github.com/users/jtleek/repos", gtoken)
stop_for_status(req)
cot <- content(req)

## Q2






