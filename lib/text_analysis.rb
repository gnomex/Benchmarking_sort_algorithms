module TextAnalysis

	class TextAnalysis

		require 'logger'

		attr_reader :other_files

		def initialize
			# storage = File.open("./log/sort_algorithms.log", "a+")
			# @logger = Logger.new(storage)
			@logger = Logger.new('./log/sort_algorithms.log', 'daily')
		end

		def parse(filename)
			
			File.open(filename, "r").each_line do |line|
				line.gsub!(/\r\n?/, "")
				@other_files =  line.split(',')
			end
			@other_files.flatten
		end

		def load_files

			@other_files.each do |file|

				@logger.info "=== #{file} ==="

				contents = Array.new

				File.open("./upload/#{file}", 'r').each_line do |line|
					line.gsub!(/\r\n?/, "\n")	#Line break
					contents << line.to_i
				end
				
				@logger.info "#{file}, quantity of elements: #{contents.size}"
				#Sort and benchmark!
				Benchmarks.sort_and_measure contents, @logger
			end

		end		
	end

	# #Returns a hash with report
	# def self.load_report
		
	# end

end
