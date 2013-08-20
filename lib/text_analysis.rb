module TextAnalysis

	require "benchmarks"
	require "log4r"
	include Log4r

	# create a logger named 'logger' that logs to stdout
	@logger = Logger.new 'algorithms'
	@logger.outputters = FileOutputter.new("f1", :filename => "./log/sort_algorithms.log")

	def do_log(message)
		@logger.info message
	end


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
			do_log "#{file}, quantity of elements: #{contents.size}"
			#Sort and benchmark!
			sort_and_measure contents
		end
	end

end
