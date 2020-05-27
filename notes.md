# what is authentication?

- secure password, provides security
- make sure our users are who they say they are
- provide accessibility
- keeping data on applications use

# what does auth look like in Rails?(without devise)

- same as sinatra!! 

- sessions
- has_secure_password
- bcrypt
- authenticate(controller)

# differences between sinatra and rails auth?

- define in config/routes instead of controller
- sessions controller that handles login/logout
- dont want to signup/register in our sessions controller
- users controller => creating our user
- sessions controller => creating a session

# FLOW

- User model

    - attributes: email, password(password_digest) - table
    - bcrypt => has_secure_password => authenticate(controller)
    - Routes - sign up => new/create, get, post
    - Registration routes => login/logout,  get, post, delete
    - session[:user_id] => logs our user in