module Benchmarks

	require 'benchmark'
	require "algorithms"

	def self.sort_and_measure(collection_of_samples)
		
		sorts = %w(bubble_sort bubble_sort_enhanced selection_sort insertion_sort heapsort
      shell_sort quicksort mergesort shakersort)

		sorts.each do |algorithm|
			#do_log "Sort algorithm: #{algorithm}"
			te = Benchmark.bm do |x|
				x.report("#{algorithm}") { Sort.send(algorithm, collection_of_samples) }
			end
			#do_log "Times: #{te}"
		end
		
	end

end