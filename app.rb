require 'sinatra'
require 'json'

configure do
  set :public_folder, Proc.new { File.join(root, "static") }
  set :upload, Proc.new { File.join(root, "upload") }
  enable :sessions
end

helpers do
	# def load_report
		
	# end
end

get '/' do
  erb :index
end

get '/upload' do
	erb :upload
end

post '/upload' do

	file_name = "#{params[:myfile][:filename]}"

	path = "./upload/#{file_name}"

	File.open(path, "w") do |f|
    	f.write(params['myfile'][:tempfile].read)
  	end

  	redirect "/analyse/#{file_name}"
end

get '/analyse/:file' do

	file_name = params[:file]
	
	path = "./upload/#{file_name}"

	analyser = TextAnalysis::TextAnalysis.new
	analyser.parse path
	analyser.load_files

	erb "Success!!!"
	#erb:analysis
end

error 400..510 do
	'Booooooooooooooom'
end

get '/*' do
	status 405
end