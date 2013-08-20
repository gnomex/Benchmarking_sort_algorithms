module TextAnalysis

	class TextAnalysis

		def initialize
			storage = File.open("./log/sort_algorithms.log", "w+")
			@logger = Logger.new(storage)
		end

		def parse(filename)

			@other_files = Array.new
			
			File.open(filename, "r").each_line do |line|
				line.gsub!(/\r\n?/, "\n")
				@other_files <<  line
			end
		end

		def load_files

			@other_files.each do |file|

				contents = Array.new
				
				File.open("./upload/#{file}").each_line do |line|
					line.gsub!(/\r\n?/, "\n")	#Line break
					contents << line[/[0-9]/].to_i
				end
				@logger << "#{file}, quantity of elements: #{contents.size}"
				#Sort and benchmark!
				Benchmarks.sort_and_measure contents, @logger
			end

			@logger.close
		end		
	end

end
