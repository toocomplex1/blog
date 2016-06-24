class MyMailer < Devise::Mailer   
  default :from => 'akashmishra30493@gmail.com' 
  helper :application # gives access to all helpers defined within `application_helper`.
  include Devise::Controllers::UrlHelpers # Optional. eg. `confirmation_url`
  default template_path: 'devise/mailer' # to make sure that your mailer uses the devise views
end

