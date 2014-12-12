Custom redirections
===================

This is a rails applicaiton where a user can create custom redirection routes filllling a simple form. There are already some routes created, so the user can redirect any route to the already created routes.

This is accomplished by addind redirection routes when a form is submitted. The code is here:  
[RedirectionsController#create](https://github.com/juanortizthirdwave/redirections/blob/master/app/controllers/redirections_controller.rb#L17-L26)  
Also, when the app is started, it also loads the redirection routes. [Custom redirections initializer](https://github.com/juanortizthirdwave/redirections/blob/master/config/initializers/custom_redirections.rb)