module TextAnalysis

	class TextAnalysis
		
		require "benchmarks"
		require "logger"

		def initialize(args)
			storage = File.open("./log/sort_algorithms.log", "a+")
			@logger = Logger.new(storage)
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
				@logger << "#{file}, quantity of elements: #{contents.size}"
				#Sort and benchmark!
				sort_and_measure contents, @logger
			end

			@logger.close

		end
		
	end

end
