# User Dashboard

This is a sample User Dashboard Application using Ruby on Rails. The project was developed as a practice application to learn Ruby on Rails. In this project many of the popular gems is used such as Devise, Paperclip.

The demo of this application can be found at - [**View Demo**](http://userdashboard.herokuapp.com/)

## Features

* Version 1.0.0
	* Front-end
		* Signup with email confirmation
		* Login with Remember me
		* List of registered Users
		* Details of each individual user
		* Follow other user after login
	* User Dashboard
		* Dashboard Controlpanel with advanced information about the logged in user
		* List showing the last 3 followers and following users
		* Profile Panel to update user details such as email address, password and avatar image

**Future Version**

* Version 1.0.1
	* Front-end
		* Send email to user when a user follow him/her with the follower name
		* Change the follow button using Angular Js so that whenever the button is clicked it changed to Unfollow and also update the Followers box. It will also display Unfollow if the current user is following the user.

## Requirements

1. Ruby version **2.0**
2. Ruby on Rails version **4.0**
3. Mailcatcher gem

## Installation

1. Download the zipfile of the application and extract
2. Open the terminal and move to the folder where the extraction takes place
3. run the command `rake db:setup`
4. lastly run `rails server`
5. Open your browser and type `localhost:3000` to enjoy the application

## CONTRIBUTE

The project can be successful if more people contribute to apply advance concepts using Ruby on Rails. Please checkout the Future Version in the Features page before contributing. Or if have any idea you want to implement or think that there is a better way to implement any part of the code please create a pull request and I will do my best to merge appropriately and include your name in the contributor.

## Credits

1. [**Stanley – Freelancer Theme**](http://www.blacktie.co/2014/01/stanley-freelancer-theme/) - This is an excellent theme using Twitter Bootstrap which we have used for the frontend of the application. 

2. [**AdminLTE**](https://github.com/almasaeed2010/AdminLTE) - This is a Free Premium Admin control Panel Theme That Is Based On Bootstrap 3.x which we have used as the User Dashboard. 
