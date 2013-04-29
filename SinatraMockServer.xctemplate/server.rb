require 'sinatra/base'
require 'json'

class TestServer < Sinatra::Base

  self.app_file = __FILE__

  configure do
    set :logging, true
    set :dump_errors, true
    puts "#{root}"
    set :public_folder, Proc.new { File.expand_path(File.join(root, 'fixtures')) }
  end

  def render_fixture(filename)
    send_file File.join(settings.public_folder, filename)
  end

  get '/' do
    render_fixture('fixture1.json')
  end 

  # Return a 503 response to test error conditions
  get '/offline' do
    status 503
  end

  # Simulate a JSON error
  get '/error' do
    status 400
    content_type 'application/json'
    {:error=>"An error occurred!!"}.json
  end

  #start the server if ruby file executed directly
  run! if app_file == $0
end


