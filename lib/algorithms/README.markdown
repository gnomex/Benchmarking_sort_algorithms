Sort Algorithms
===

### Bubble Sort

<p>
	<ul>
		<li>Um dos mais simples algoritmos de ordenação</li>
		<li><blockquote>"A ideia é percorrer o array diversas vezes, a cada passagem
		fazendo flutuar para o topo o maior elemento da sequência."
		</blockquote></li>
		<li>
			<p>Complexidade</p>
			<ol>
				<li>Pior caso: O(n²)</li>
				<li>Caso médio: Theta(n²)</li>
				<li>Ômega(n²)</li>
			</ol>
		</li>
	</ul>
	<b>Código exemplo:</b>
	<pre><code>
		void bubble_sort(array){
			int i, j, n = array.size
			for( j = n-1; j >= 1. j--){
				for(i = 0; i < j; i++){
					if(array[i] > array[i+1]) swap(array[i], array[i+1])
				}
			}
		}
	</code></pre>
</p>

### Bubble Sort Enhanced

<p>
	<ul>
		<li>Bubble Sort <strong>Melhorado</strong></li>
		<li><blockquote>Funciona de forma semelhante ao <strong>Bubble Sort</strong>, porém mantém controle
		do número de trocas em cada laço da interação
		</blockquote>
		</li>
		<li>
			<p>Complexidade</p>
			<ol>
				<li>Pior caso: O(n²)</li>
				<li>Caso médio: Theta(n²)</li>
				<li>Ômega(n)</li>
			</ol>
		</li>
	</ul>
	<b>Código exemplo:</b>
	<pre><code>
		void Bubble_Sort_Enhanced(array){
			int i; Boolean Move = true;
			while (Move) {
				Move = false;
				for (int i = 0; i < (array.size - 1); i++) {
					if (array[i] > [i + 1]) {
						swap(array[i], array[i+1])
						Move = true
					}
				}
			}

	</code></pre>
</p>


### Insertion Sort

<p>
	<ul>
		<li><blockquote>Coloca cada elemento na posição correta em relação aos anteriores</blockquote></li>
		<li>
			<p>Complexidade</p>
			<ol>
				<li>Pior caso: O(n²)</li>
				<li>Caso médio: Theta(n²)</li>
				<li>Ômega(n)</li>
			</ol>
		</li>
	</ul>
	<b>Código exemplo:</b>
	<pre><code>
		void Insertion_Sort(array){
			int i, j, key;
			for(i = 1; i < array.size; i++){
				key = array[i];
				for(j = i-1; (j > 0) && (array[j] > key); j--){
					array[j+1] = array[j];
				}
				array[j+1] = key;
			}
		}

	</code></pre>
</p>

### Selection Sort
<p>
	<ul>
		<li>Um dos algoritmos mais simples de ordenação</li>
		<li><blockquote>Seleciona o menor elemento do array, e troca com a primeira posição do array</blockquote></li>
		<li>
			<p>Complexidade</p>
			<ol>
				<li>Pior caso: O(n²)</li>
				<li>Caso médio: Theta(n²)</li>
				<li>Ômega(n²)</li>
			</ol>
		</li>
	</ul>
	<b>Código exemplo:</b>
	<pre><code>
		void Selection_Sort(array){
			int i, little, j;
			for(i = 0; i < array.size - 1; i++){
				little = i;
				for(j = i + 1; j < n; j++){
					if(array[little] > array[j]) {
						little = j;
					}
				}
				swap(array[i], array[little]);
			}
		}

	</code></pre>
</p>

### Shell Sort
<p>
	<ul>
		<li>Refinamento do método de inserção direta</li>
		<li><blockquote>Aproxima os elementos distântes para a posição mais perto da certa</blockquote></li>
		<li>
			<p>Complexidade</p>
			<ol>
				<li>Pior caso: O(n log n²)</li>
				<li>Caso médio: Theta(n) ou Theta(n log n²). <strong>Depende da sequência</strong></li>
				<li>Ômega(n²)</li>
			</ol>
		</li>
	</ul>
	<b>Código exemplo:</b>
	<pre><code>
		void Shell_Sort() {
			int h = 1;
			while (h < array.size / 3) {
				h = (3 * h) + 1;
			}
			while (h >= 1) {
				for (int i = h; i < array.size; i++) {
					for (int j = i; j >= h && (array[j] < array[j - h]); j -= h) {
						swap(array[j], array[j - h]);
					}
				}
				h = h / 3;
			}
		}

	</code></pre>
</p>

### Quick Sort
<p>
	<ul>
		<li>Converte o problema de ordenar em problemas menores</li>
		<li><blockquote>Cada problema menor é ordenado e combinado com outros problemas para produzir uma solução maior</blockquote></li>
		<li><blockquote>É escolhido um elemento do vetor e são construidos dois problemas, um com os maiores e outro com os menores que o elemento</blockquote></li>
		<li>
			<p>Complexidade</p>
			<ol>
				<li>Pior caso: O(n²)</li>
				<li>Caso médio: Theta(n log 2 n)</li>
				<li>Ômega(n log 2 n)</li>
			</ol>
		</li>
	</ul>
	<b>Código exemplo:</b>
	<pre><code>

	int Partition(array, int left, int rigth) {
		int i = left, j = rigth + 1;
		int x = array[left];
		while (true) {
			while (array[++i] < x) {
				if (i == rigth) {
					break;
				}
			}
			while (x < array[--j]) {
				if (j == left) {
					break;
				}
			}
			if (i >= j) {
				break;
			}
			Swap(array[i], array[j]);
		}
		Swap(array[left], array[j]);
		return j;
	}

		int Quick_Sort(array, int left, int rigth){
			if(rigth > left)	{
				int j = Partition(array, int left, int rigth);
				Quick_Sort(array, left, j - 1);
				Quick_Sort(array, j + 1, rigth)
			}

		}

	</code></pre>
</p>

### Merge Sort
<p>
	<ul>
		<li>A ideia básica consiste em Dividir e Conquistar</li>
		<li>Possui alto consumo de memória e tempo de execução em alguns problemas</li>
		<li>
			<ol>
				<li><strong>Dividir:</strong> dividir os dados em subsequências pequenas</li>
				<li><strong>Conquistar:</strong> Classificar as duas metades recursivamente aplicando o merge_sort;</li>
				<li><strong>Combinar:</strong> Juntar as duas metades em um único conjunto já classificado.</li>
			</ol>
		</li>
		<li>
			<p>Complexidade</p>
			<ol>
				<li>Pior caso: O(n²)</li>
				<li>Caso médio: Theta(n²)</li>
				<li>Ômega(n)</li>
			</ol>
		</li>
	</ul>
	<b>Código exemplo:</b>
	<pre><code>

		void intercala(array, left, rigth, middle)	{
			int i, j, x;
			for( i = meio + 1; i <= rigth; i++){
				j = i - 1;
				x = array[i];
				while((j >= left) && (x < array[j]))	{
					array[j+1] = array[j];
					j--;
				}
			}
			array[j+1] = x;
		}


		int Merge_Sort(array, int left, int rigth){
			
			int middle;
			if(rigth > left)	{
				middle = ( left + rigth ) /2;
				Merge_Sort(array, left, middle);
				Merge_Sort(array, middle + 1, rigth)
				intercala(array, left, rigth, middle)
			}

		}
	</code></pre>
</p>
