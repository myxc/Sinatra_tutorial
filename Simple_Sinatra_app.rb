require 'sinatra'

#First interaction is when user goes to /name_form route: GET request for this form.
#set up a method in app file to handle the request, so it can render the appropriate template.
get '/name_form' do 
  erb :name_form
end

#After the person GET requests URL of route/name_form, they can submit something via POST
#need to handle the post request.
post '/name_form' do
  #Grab data that was submitted from the form
  #usign the params hash!!
  my_name = params[:name] #because name is what we named the text field of the form.

  #Send this data to the view template explicitly as a local variablE!
  erb :show_name, locals: { name: my_name} #Now we make the final view template to display this local variable etc.
end
