library(httr)

login <- list(
	email = "login",
	password = "password"
	submit = "Login!"
)

res <- POST("http://kenpom.com/handlers/login_handler.php",
	body = login, encode = "form", verbose())

team <- GET("http://kenpom.com/team.php?team=Rice", verbose())

library(httr)

GET("https://testme.com/www/LoginService/login", 
	query = list(login = "xyz", password = variable)
)
