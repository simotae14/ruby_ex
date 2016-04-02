## Compito per il Modulo #2: Calculare la Freuqenza Massima di una ParolaMaximum Word Frequency

L'obiettivo globale del compito è scrivere una classe Ruby e lavorare con
attributi, metodi, hash, ed array.

Obiettivo funzionale del compito è leggere un testo da un file e trovare la parola o le parole che appaiono di più in una riga del file. Il modo in cui ci viene ordinato di misurare "le parole che appaiono di più" è per 

    1. trovare la parola/e con maggior frequenza in ogni riga
    2. trovare le righe del file nelle quali le parole con "maggior frequenza" 
       hanno il valore più alto fra le varie righe.

### Requisiti Funzionali

1. Scrivere una classe detta LineAnalyzer che 
    - memorizzi la posizione nel file di una riga di testo
    - analizzi una riga di testo
    - indovini la parola/e con la maggiore frequenza in quella riga e la sua frequenza

2. Scrivere una classe principale chiamata Solution che
    - legga il file fornito 'test.txt'
    - crei un array di istanze di LineAnalyzers
    - selezioni quelle che hanno la parola con "frequenza maggiore" più grande rispetto a tutte le istanze di LineAnalyzers 
    - stampi i risultati

### Cominciamo

1. Scarica ed estrai i file di start. La root directory di questo set iniziale verrà chiamata la root directory della tua sol.

    ```text
    --- student-start  
    |-- .rspec (important hidden file)
    |-- module2_assignment.rb
    |-- solution.rb
    |-- spec
    |   |-- line_analyzer_spec.rb
    |   |-- solution_spec.rb
    |   `-- spec_helper.rb
    `-- test.txt
    ```

    * module2_assignment.rb - la tua soluzione deve esser messa dentro questo file
    e si divide su due classi: LineAnalyzer and Solution.
    * spec - questa directory contiene i test per verificare la tua soluzione. Non devi modificare nulla in questa directory
    * solution.rb - uno script che puoi usare per eseguire la tua Solution al di fuori dallo scope 
    degli unit test
    * test.txt - questo file contiene un testo che la tua soluzione legge ed analizza.

2. Installare le seguenti gemme. Dovresti già averle installate.

    ```shell
    $ gem install rspec
    $ gem install rspec-its
    ```

3. Esegui il comando rspec command dalla root directory del progetto, quella che contiene dir spec (i.e., `student-start` directory) 
per eseguire gli unit test che stanno dentro la dir spec directory. Questo comando deve essere eseguito dalla root 
directory del progetto. Dovrebbero comparirti diverse failures fintanto che non completi la tua soluzione in
module2_assignment2.rb.

    ```shell
    $ rspec

    FFFFFFFFFFFFFFFFF

    Failures:

      1) LineAnalyzer 
         Failure/Error: subject { LineAnalyzer.new("test", 1) }
         ArgumentError:
           wrong number of arguments (2 for 0)
         # ./spec/line_analyzer_spec.rb:6:in `initialize'
         # ./spec/line_analyzer_spec.rb:6:in `new'
    ...
    Finished in 0.04955 seconds (files took 0.10746 seconds to load)
    17 examples, 17 failures
    ...
    ```

### Requisiti tecnici

1. Implementare tutte le parti del compito nel file module2_assignment.rb 
che trovi nella the root directory della tua soluzione. Lo studente caricherà il file specifico da questa
locazione.

2. Implementare una class chiamata LineAnalyzer. Il valutatore cercherà una classe con questo nome esatto.

3. Implementare i seguenti attributi di sola lettura in the LineAnalyzer
class. Il valutatore cercherà dei metodi accessori con i seguenti nomi esatti.
    * highest_wf_count - un numero con il numero massimo di occorrenze per una singola parola (calculato)
    * highest_wf_words - un array di parole col numero massimo di occorrenze (calculato)
    * content          - la string analizzata (fornito)
    * line_number      - il numero della riga analizzata (fornito)

4. Aggiungere i seguenti metodi alla classe LineAnalyzer. Il valutatore guarderà ai metodi con questi nomi
esatti.
    * initialize() - che prende una riga di testo (content) ed un line number
    * calculate_word_frequency() - calcola il risultato e lo memorizza in attributi

5. Implementare il metodo initialize() per:
    * prendere una riga di testo e un numero di riga
    * inizializzi il contenuto e line_number attributes
    * invochi il metodo calculate_word_frequency().

6. Implementare il metodo calculate_word_frequency() per:
    * calcolare il numero massimo di volte che una singola parola appare dentro ad un contenuto fornito
    e memorizzarlo in un attributo highest_wf_count.
    * identificare le parole che vengono usate più volte e memorizzarle nell'attributo highest_wf_words.

7. Implementare una class chiamata Solution. Il valutatore cercherà una classe con quell'esatto nome.

8. Implementare i seguenti read-only attributes in the Solution
class. Il valutatore cercherà dei metodi accessor con questo nome esatto.
    * analyzers - un array che conterrà un LineAnalyzer per ogni riga del file text di input
    * highest_count_across_lines - un numero che conterrà il valore della più alta frequenza di una parola
    * highest_count_words_across_lines - un array di LineAnalyzers con le parole con la + alta frequenza

9. Implementare i seguenti metodi nella classe Solution. Il valutatore cercherà i metodi con questi nomi esatti.
    * initialize() - initializza l'array che conterrà gli analyzers di ogni riga del file 
    * analyze_file() - processa 'test.txt' in un array di LineAnalyzers
    * calculate_line_with_highest_frequency() - determina quale/i riga/e di testo hanno il numero + grande di occorenze di una
    singola parola
    * print_highest_word_frequency_across_lines() - stampa la parola/e con il piu alto numero di occorrenze 
    ed il suo numero corrispondente 

10. Implementare il metodo initialize() per:
    * initialize analyzers come array vuoto

11. Implementare il metodo analyze_file() per:
    * leggere il 'test.txt' file in righe 
    * Creare un array di LineAnalyzers per ogni riga del file

12. Implementare il metodo calculate_line_with_highest_frequency() per:
    * calculare il massimo valore di highest_wf_count contenuto negli oggetti LineAnalyzer dentro all'array analyzers  
    e memorizzare il risultato nell'attributo highest_count_across_lines attribute.
    * identificare l'oggetto/i LineAnalyzer dentro l'array analyzers che abbia highest_wf_count uguale al valore dell'attributo
    highest_count_across_lines torvato nel passo precedente e memorizzarlo dentro l'attributo
    highest_count_words_across_lines.

13. Implementare il metodo print_highest_word_frequency_across_lines() per
    * print the result in the following format

    ```text
    The following words have the highest word frequency per line: 
    ["word1"] (appears in line #)
    ["word2", "word3"] (appears in line #)
    ```

### Self Grading/Feedback

Puoi valutarti da solo calcolando il risultato dal file di testo fornito
e usando la rspec unit tests anch'essa fornita. Quando hai completato con successo la soluzione,
i risultati dei test rspec dovranno apparire come segue.

```shell
$ rspec

Finished in 0.02748 seconds (files took 0.16322 seconds to load)
19 examples, 0 failures
```

### Submission

Inviare un archivio .zip (altre forme di archivio non sono supportate)
creato con la root direcotry della tua soluzione come cartella principale. Il valutatore
sostituirà i file spec con delle copie fresche e farà un test con un altro esempio di
test.txt.

```text
|-- module2_assignment.rb
`-- solution.rb
```

#### Updated: 2015-10-10a
