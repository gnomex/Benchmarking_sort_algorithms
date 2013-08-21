Sort Algorithms
====
<p>
	<ul>
		<li>BubbleSort</li>
		<li>BubbleSort Enhanced</li>
		<li>HeapSort</li>
		<li>InsertionSort</li>
		<li>MergeSort</li>
		<li>QuickSort</li>
		<li>SelectionSort</li>
		<li>ShellSort</li>
		<li>ShakerSort</li>
		<li>RadixSort</li>
	</ul>
</p>

<p>[Sinatra](http://www.sinatrarb.com/)</p>
<p>[Twitter Bootstrap](http://twitter.github.com/bootstrap/)</p>
<p>[Chart.js](http://www.chartjs.org/)</p>

Samples
===

<p>
	<b>Hash structure:</b>
	<pre><code>
		{ :samples_of_file_1 => [{ :sort1 => [Benchmark::Tms]},
								{ :sort2 => [Benchmark::Tms]},
								{ :sortn => [Benchmark::Tms]}
								],
		 :samples_of_file_2 => [{ :sort1 => [Benchmark::Tms]},
								{ :sort2 => [Benchmark::Tms]},
								{ :sortn => [Benchmark::Tms]}
								],
		 :samples_of_file_n => [{ :sort1 => [Benchmark::Tms]},
								{ :sort2 => [Benchmark::Tms]},
								{ :sortn => [Benchmark::Tms]}
								]
		}
	</code></pre>
</p>

Go!
===

<p>
	How to run:
	<pre><code>
		$ bundle install				# To install gems

		$ rackup 				# To run the sample
	</code></pre>
	
	Then open [http://localhost:4567/](http://localhost:4567/)
</p>