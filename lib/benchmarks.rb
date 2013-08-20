module Benchmarks

	require 'benchmark'

	def self.sort_and_measure(collection_of_samples, logger)
		
		sorts = %w(bubble_sort bubble_sort_enhanced selection_sort insertion_sort heapsort
      shell_sort quicksort mergesort) #shaker_sort)

		sorts.each do |algorithm|
			logger << "Sort algorithm: #{algorithm}"
			te = Benchmark.bm do |x|
				x.report("#{algorithm}") { Algorithms::Sort.send(algorithm, collection_of_samples) }
			end
			logger << "Times: #{te.inspect}"
		end
		
	end

end