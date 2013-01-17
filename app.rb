require 'sinatra'
require_relative 'num_to_words'

get '/' do
  "<html>
     <body>
        <form action='/num_in_words'>
          <input type='text' name='text'>
          <input type='submit'>
        </form>
     </body>
   </html>"
end

get '/num_in_words' do
  num_to_words(params[:text])
end

  
  