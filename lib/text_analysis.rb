module TextAnalysis

	class TextAnalysis

		require 'logger'

		attr_reader :other_files, :report

		def initialize
			# storage = File.open("./log/sort_algorithms.log", "a+")
			# @logger = Logger.new(storage)
			@logger = Logger.new('./log/sort_algorithms.log', 'daily')
		end

		def parse(filename)
			
			@logger.info "Parsing a file uploaded"

			File.open(filename, "r").each_line do |line|
				line.gsub!(/\r\n?/, "")
				@other_files =  line.split(',')
			end

			@other_files.flatten
			@logger.info "Ok. Files: #{other_files.inspect}"
		end

		def load_files

			@logger.info "Start a load samples from files"

			@report = Hash.new

			@other_files.each do |file|

				@logger.info "=== Parsing #{file} ==="

				contents = Array.new

				File.open("./upload/#{file}", 'r').each_line do |line|
					line.gsub!(/\r\n?/, "\n")	#Line break
					contents << line.to_i
				end
				
				@logger.info "#{file}, quantity of elements: #{contents.size}"

				@report[file] = Benchmarks.sort_and_measure contents, @logger

				@logger.warn "#{@report.inspect}"
			end
		end		
	end

	# #Returns a hash with report
	# def self.load_report
		
	# end

end
