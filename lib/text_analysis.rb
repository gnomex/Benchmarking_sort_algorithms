module TextAnalysis

	class TextAnalysis

		attr_reader :other_files

		def initialize
			storage = File.open("./log/sort_algorithms.log", "a+")
			@logger = Logger.new(storage)
		end

		def parse(filename)
			
			File.open(filename, "r").each_line do |line|
				line.gsub!(/\r\n?/, "")
				@other_files =  line.split(',')
			end
			@other_files.flatten
			@logger << "Files: #{other_files.inspect}"
		end

		def load_files

			@other_files.each do |file|

				contents = Array.new
				
				@logger << "Try open #{file}"

				File.open("./upload/#{file}", 'r').each_line do |line|
					line.gsub!(/\r\n?/, "\n")	#Line break
					contents << line.to_i
				end
				
				@logger << "#{file}, quantity of elements: #{contents.size}"
				#Sort and benchmark!
				Benchmarks.sort_and_measure contents, @logger
			end

			@logger.close
		end		
	end

end
