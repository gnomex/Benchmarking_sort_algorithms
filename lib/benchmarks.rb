module Benchmarks

	require 'benchmark'

	def self.sort_and_measure(collection_of_samples, logger)
		
		sorts = %w(bubble_sort bubble_sort_enhanced selection_sort insertion_sort heapsort
      shell_sort invoke_quick_sort shaker_sort mergesort radix_sorts)

		results = Hash.new(0)

		sorts.each do |algorithm|

			logger.info " -> Algorithm: #{algorithm} "
			
			ts = Benchmark.bmbm do |x|
				x.report("#{algorithm}") { Algorithms::Sort.send(algorithm, collection_of_samples) }
			end

			results[algorithm] = ts

			logger.info "Times: #{ts.inspect}"
		end
		return results
	end

end