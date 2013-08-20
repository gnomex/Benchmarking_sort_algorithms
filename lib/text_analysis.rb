module TextAnalysis

	# require "log4r"
	# include Log4r

	# # create a logger named 'mylog' that logs to stdout
	# mylog = Logger.new 'mylog'
	# mylog.outputters = Outputter.stdout

	# 	# Now we can log.
	# def do_log(log)
	#   log.debug "This is a message with level DEBUG"
	#   log.info "This is a message with level INFO"
	#   log.warn "This is a message with level WARN"
	#   log.error "This is a message with level ERROR"
	#   log.fatal "This is a message with level FATAL"
	# end
	# do_log(mylog)

	def self.parse_and_load_files(filename)

		other_files = Array.new
		
		File.open(filename).each_line do |line|
			line.gsub!(/\r\n?/, "\n")

			other_files <<  line

		end

		other_files.each_with_index do |file, index|

			contents = Array.new
			
			File.open("./upload/#{file}", "w").each_line do |line|
				line.gsub!(/\r\n?/, "\n")	#Line break
				contents << line.to_i
			end
			#do_log "#{file}, quantity of elements: #{contents.size}"
			#Sort and benchmark!
			sort_and_measure contents
		end
	end

end
