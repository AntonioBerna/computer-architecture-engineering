<TeXmacs|2.1.4>

<style|generic>

<\body>
  <doc-data|<doc-title|ALU a 4-bit>|<doc-author|<author-data|<author-name|Antonio
  Bernardini>>>>

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|1<space|2spc>Homework>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <with|par-left|1tab|1.1<space|2spc>Introduzione
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2>>

    <with|par-left|1tab|1.2<space|2spc>Operazioni supportate
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|2<space|2spc>Soluzione>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5><vspace|0.5fn>

    <with|par-left|1tab|2.1<space|2spc>Introduzione
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6>>

    <with|par-left|1tab|2.2<space|2spc>Scelte progettuali
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7>>

    <with|par-left|1tab|2.3<space|2spc>Operazioni per il modulo ALU ad
    <with|mode|math|1> bit <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-9>>

    <with|par-left|2tab|2.3.1<space|2spc>Somma senza segno
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-10>>

    <with|par-left|2tab|2.3.2<space|2spc><with|mode|math|Shift
    <with|mode|text|a> sinistra di una posizione di a>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-14>>

    <with|par-left|2tab|2.3.3<space|2spc>Operazione AND
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-17>>

    <with|par-left|2tab|2.3.4<space|2spc>Operazione OR
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-20>>

    <with|par-left|2tab|2.3.5<space|2spc>Operazione XOR
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-23>>

    <with|par-left|2tab|2.3.6<space|2spc>Operazione XNOR
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-26>>

    <with|par-left|2tab|2.3.7<space|2spc>Operazione NAND
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-29>>

    <with|par-left|2tab|2.3.8<space|2spc>Operazione NOR
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-32>>

    <with|par-left|2tab|2.3.9<space|2spc>Operazione
    <with|mode|math|<wide|a|\<bar\>>> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-35>>

    <with|par-left|2tab|2.3.10<space|2spc>Implementazione della ROM
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-38>>

    <with|par-left|1tab|2.4<space|2spc>Operazioni per il modulo ALU a
    <with|mode|math|4> bit <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-41>>

    <with|par-left|2tab|2.4.1<space|2spc>Somma senza segno
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-42>>

    <with|par-left|2tab|2.4.2<space|2spc><with|mode|math|Shift
    <with|mode|text|a> sinistra di una posizione di a>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-45>>

    <with|par-left|2tab|2.4.3<space|2spc>Le altre operazioni
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-48>>

    <with|par-left|2tab|2.4.4<space|2spc>Implementazione della ROM
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-51>>

    <with|par-left|1tab|2.5<space|2spc>Conclusioni
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-54>>
  </table-of-contents>

  <section|Homework>

  <subsection|Introduzione>

  Per questo homework è stato richiesto di progettare una semplice ALU che
  sia in grado di lavorare con operandi a <math|4> bit. La ALU è formata da
  una <with|font-shape|italic|rete iterativa> e non è necessario implementare
  ottimizzazioni basate sul parallelismo.

  <subsection|Operazioni supportate>

  La ALU lavora su uno o due operandi (<math|a=<around*|\<langle\>|a<rsub|3>a<rsub|2>a<rsub|1>a<rsub|0>|\<rangle\>>>
  e <math|b=<around*|\<langle\>|b<rsub|3>b<rsub|2>b<rsub|1>b<rsub|0>|\<rangle\>>>),
  a seconda dell'operazione che viene richiesta, utilizzando un
  <with|font-shape|italic|opcode>. L'<with|font-shape|italic|opcode> è a
  <math|4> bit, decomposto nei bit <math|op<rsub|0>,op<rsub|1>,op<rsub|2>,op<rsub|3>>.
  Le operazioni da supportare sono riportate nella seguente tabella:

  <big-table|<math|<tabular|<tformat|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|1|-1|1|-1|cell-valign|c>|<cwith|1|-1|1|-1|cell-tborder|0ln>|<cwith|1|-1|1|-1|cell-bborder|0ln>|<cwith|1|-1|1|-1|cell-lborder|0ln>|<cwith|1|-1|1|-1|cell-rborder|0ln>|<cwith|1|-1|5|5|cell-background|pastel
  green>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|2|2|1|-1|cell-tborder|1ln>|<cwith|1|1|1|-1|cell-tborder|1ln>|<cwith|10|10|1|-1|cell-bborder|1ln>|<cwith|1|-1|1|1|cell-lborder|1ln>|<cwith|1|-1|5|5|cell-rborder|1ln>|<cwith|1|-1|1|4|cell-background|pastel
  blue>|<table|<row|<cell|op<rsub|0>>|<cell|op<rsub|1>>|<cell|op<rsub|2>>|<cell|op<rsub|3>>|<cell|Operazione>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|a+b
  <around*|(|somma senza segno|)>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|Shift
  <text|a> sinistra di una posizione di a>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|a
  AND b>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|a OR
  b>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|a\<oplus\>b>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|a\<odot\>b>>|<row|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|a\|b>>|<row|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|a\<downarrow\>b>>|<row|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|<wide|a|\<bar\>>>>>>>>|Tabella
  delle operazioni supportate dall'ALU a <math|4> bit>

  Le operazioni logiche sono operazioni bit a bit. Nel caso dell'operazione
  shift, il valore in input di <math|b> è una <with|font-shape|italic|don't
  care condition>. Nel caso di <math|<wide|a|\<bar\>>>, <math|b> può essere
  assunto forzato a zero. Il circuito restituisce in <math|c<rsub|out>> il
  carry risultante dalla somma tra <math|a> e <math|b> ed il bit più
  significativo estratto dall'operazione di shift a sinistra.

  <\warning*>
    Non saranno considerate valide soluzioni che utilizzano sommatori o
    shifter per supportare queste operazioni. In generale, saranno valutate
    zero punti tutte le soluzioni che non sono iterative.
  </warning*>

  <\render-remark|Tip>
    Si consiglia di affrontare il problema per fasi. Ogni operazione
    richiesta può essere risolta con un sotto-circuito dedicato. Riconoscere
    delle ricorrenze nei circuiti può aiutare nella minimizzazione.
    L'utilizzo di ROM o PLA può aiutare <em|molto> nell'individuazione di una
    soluzione minima.
  </render-remark>

  <section|Soluzione>

  <subsection|Introduzione>

  Poichè l'ALU è una <with|font-shape|italic|rete iterativa> occorre
  ragionare sulla modellazione di una singola ALU per <math|1> bit per poi
  copiare e incollare ogni singola \Pmini\Q ALU per ottenerne infine una a
  <math|4> bit, <math|5> bit, eccetera. Come risulterà più chiaro in seguito,
  è normale che il primo modulo ALU ad <math|1> bit sia leggermente meno
  complesso dei successivi e questo va bene finchè si mantiene la logica di
  una <with|font-shape|italic|rete iterativa>.

  <subsection|Scelte progettuali>

  Il modo più semplice e veloce per progettare un'ALU a <math|4> bit è
  utilizzare una struttura simile a quella mostrata in Fig. <reference|alu>.

  <big-figure|<image|imgs/ALU-1-bit.png|0.6par|||>|<label|alu>ALU ad <math|1>
  bit>

  Tuttavia occorre osservare che se per una singola ALU ad <math|1> bit
  abbiamo bisogno di <math|19> porte logiche, per la nostra ALU a <math|4>
  bit si arriverebbe a <math|19\<cdot\>4=76> porte logiche. Questo risulta
  problematico per due motivi: l'homework assegnato ci permette di realizzare
  un'ALU a <math|4> bit utilizzando un massimo di <math|25> componenti,
  quindi con <math|76> porte logiche circa (perchè il primo modulo ne ha meno
  di <math|19>) viene superato il range, e inoltre occorre tenere presente
  l'elevato numero di transistor che verrebbero impiegati e di conseguenza
  anche eventuali ritardi nel caso in cui si volesse prototipare tale ALU su
  breadboard o PCB.

  Pertanto la soluzione più ovvia è implementare una ROM (Read Only Memory),
  grazie alla quale sarà possibile scrivere in degli appositi indirizzi di
  memoria dei valori (ossia i risultati delle operazioni). Infatti la ROM
  funziona come un puntatore in linguaggio C: il puntatore \Ppunta\Q ad un
  indirizzo di memoria e se voglio conoscerne il contenuto lo dereferenzio.

  <\numbered>
    <\cpp-code>
      #include \<less\>stdio.h\<gtr\>

      \ \ \ \ \ \ \ \ \ 

      int main(void) {

      \ \ \ \ int value = 69;

      \ \ \ \ int *p = &value;

      \ \ \ \ printf("Address: %#lX\\n", (unsigned long)p);

      \ \ \ \ printf("Value: %d\\n", *p);

      \ \ \ \ return 0;

      }
    </cpp-code>
  </numbered>

  Infine, per la realizzazione dell'ALU a <math|4> bit occorre ragionare su
  quali valori conviene usare come input e quali conviene usare come output,
  per non dare nulla per scontato. Pertanto ogni bit che forma i numeri
  <math|a=<around*|\<langle\>|a<rsub|3>a<rsub|2>a<rsub|1>a<rsub|0>|\<rangle\>>>
  e <math|b=<around*|\<langle\>|b<rsub|3>b<rsub|2>b<rsub|1>b<rsub|0>|\<rangle\>>>
  sarà un input per l'<math|i>-esima ALU, con
  <math|i\<in\><around*|[|0,3|]>>, così come i <math|4> bit di
  <with|font-shape|italic|opcode> saranno in input, per capire quale
  operazione eseguire. Quest'ultima selezione dell'operazione poteva essere
  svolta da un Multiplexer, tuttavia quest'ultimo è formato da un insieme di
  porte logiche e questo comporta un maggiore uso di componenti. Inoltre non
  bisogna dimenticarsi che la propagazione del carry <math|c<rsub|i>>, con
  <math|i\<in\><around*|[|0,3|]>>, è sia un'operazione di input che di
  output. Infine come ulteriore output avremmo il risultato
  <math|r=<around*|\<langle\>|r<rsub|3>r<rsub|2>r<rsub|1>r<rsub|0>|\<rangle\>>>.

  <subsection|Operazioni per il modulo ALU ad <math|1> bit>

  <subsubsection|Somma senza segno>

  La somma senza segno <math|a<rsub|0>+b<rsub|0>> è l'unica operazione, tra
  quelle richieste, che si può svolgere utilizzando proprio la
  <with|font-shape|italic|rete iterativa> di un Full Adder.

  <big-figure|<image|imgs/full-adder.png|0.5par|||>|Full
  Adder<label|full-adder>>

  Tuttavia, come accennato pocanzi, andremo ad implementare una
  <with|font-shape|italic|rete iterativa> basata su una ROM (Read Only
  Memory). Pertanto in questa fase ci serve capire come cambierà la somma
  senza segno tra il primo modulo ALU ad <math|1> bit e i successivi. Risulta
  quindi abbastanza evidente che per il primo modulo ALU abbiamo un carry
  <math|c<rsub|in>=0> e questo implica che il Full Adder di Fig.
  <reference|full-adder> si riduce ad un Half Adder. Pertanto iniziamo a
  costruire la tabella di verità che dovrà essere mappata, sotto forma di
  indirizzi di memoria, nella ROM. Come detto in precedenza in input avremo
  l'<with|font-shape|italic|opcode> per individuare l'operazione da svolgere
  e, solo per il primo modulo ALU, possiamo omettere <math|c<rsub|in>> nella
  tabella. Inoltre inseriremo <math|a<rsub|0>,b<rsub|0>> come input e
  <math|r<rsub|0>,c<rsub|0>> come output:

  <big-table|<tabular|<tformat|<table|<row|<cell|<math|<tformat|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|1|-1|1|-1|cell-valign|c>|<cwith|1|-1|7|8|cell-background|pastel
  green>|<cwith|1|-1|1|-1|cell-tborder|0ln>|<cwith|1|-1|1|-1|cell-bborder|0ln>|<cwith|1|-1|1|-1|cell-lborder|0ln>|<cwith|1|-1|1|-1|cell-rborder|0ln>|<cwith|5|5|1|-1|cell-bborder|1ln>|<cwith|1|-1|1|1|cell-lborder|1ln>|<cwith|1|-1|8|8|cell-rborder|1ln>|<cwith|1|1|1|-1|cell-tborder|1ln>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|2|2|1|-1|cell-tborder|1ln>|<cwith|1|1|1|1|cell-lborder|1ln>|<cwith|1|1|8|8|cell-rborder|1ln>|<cwith|1|-1|1|6|cell-background|pastel
  blue>|<table|<row|<cell|op<rsub|0>>|<cell|op<rsub|1>>|<cell|op<rsub|2>>|<cell|op<rsub|3>>|<cell|a<rsub|0>>|<cell|b<rsub|0>>|<cell|r<rsub|0>>|<cell|c<rsub|0>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>>>>>>>>>>|Tabella
  di verità dell'operazione <math|a<rsub|0>+b<rsub|0>> (senza segno) per il
  modulo ALU ad <math|1> bit>

  Tuttavia tale tabella presenta gli input e gli output in binario, quindi
  occorre convertire tali valori in esadecimale, per poterli inserire nella
  ROM, ottenendo:

  <big-table|<tabular|<tformat|<table|<row|<cell|<math|<tformat|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|1|-1|1|-1|cell-valign|c>|<cwith|1|-1|1|2|cell-background|pastel
  orange>|<cwith|1|-1|2|3|cell-background|pastel
  green>|<cwith|1|-1|1|-1|cell-tborder|0ln>|<cwith|1|-1|1|-1|cell-bborder|0ln>|<cwith|1|-1|1|-1|cell-lborder|0ln>|<cwith|1|-1|1|-1|cell-rborder|0ln>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|2|2|1|-1|cell-tborder|1ln>|<cwith|1|1|1|-1|cell-tborder|1ln>|<cwith|5|5|1|-1|cell-bborder|1ln>|<cwith|1|-1|1|1|cell-lborder|1ln>|<cwith|1|-1|2|2|cell-rborder|1ln>|<table|<row|<cell|input>|<cell|output>>|<row|<cell|<shell|0x00>>|<cell|0>>|<row|<cell|<shell|0x01>>|<cell|2>>|<row|<cell|<shell|0x02>>|<cell|2>>|<row|<cell|<shell|0x03>>|<cell|1>>>>>>>>>>|Tabella
  di verità dell'operazione <math|a<rsub|0>+b<rsub|0>> (senza segno) per il
  modulo ALU ad <math|1> bit in esadecimale>

  <subsubsection|<math|Shift <text|a> sinistra di una posizione di a>>

  Per implementare uno shift a sinistra di una posizione di
  <math|a=<around*|\<langle\>|a<rsub|3>a<rsub|2>a<rsub|1>a<rsub|0>|\<rangle\>>>
  possiamo usare il risultato <math|r<rsub|0>> e il carry <math|c<rsub|0>>,
  infatti lo shift a sinistra implica l'aggiunta di uno <math|0> a destra,
  quindi per il primo modulo ALU ad <math|1> bit, risulta sempre
  <math|r<rsub|0>=0> e <math|c<rsub|0>=a<rsub|0>>. Per comprendere meglio
  questo concetto immaginiamo di effettuare tale operazione sul numero
  <math|a=<around*|(|1|)><rsub|10>=<around*|(|0001|)><rsub|2>>. L'operazione
  di shift trasforma il numero <math|a> nel risultato
  <math|r=<around*|(|0010|)><rsub|2>=<around*|(|2|)><rsub|10>>, quindi come
  si può notare <math|r<rsub|0>=0> e <math|c<rsub|0>=a<rsub|0>=1>. Sottolineo
  che questo vale solo per il primo caso e quindi per il primo modulo ALU ad
  <math|1> bit. Ora costruiamo la tabella di verità utilizzando gli stessi
  input e gli stessi output dell'operazione precedente:

  <big-table|<tabular|<tformat|<table|<row|<cell|<math|<tformat|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|1|-1|1|-1|cell-valign|c>|<cwith|1|-1|7|8|cell-background|pastel
  green>|<cwith|1|-1|1|-1|cell-tborder|0ln>|<cwith|1|-1|1|-1|cell-bborder|0ln>|<cwith|1|-1|1|-1|cell-lborder|0ln>|<cwith|1|-1|1|-1|cell-rborder|0ln>|<cwith|5|5|1|-1|cell-bborder|1ln>|<cwith|1|-1|1|1|cell-lborder|1ln>|<cwith|1|-1|8|8|cell-rborder|1ln>|<cwith|1|1|1|-1|cell-tborder|1ln>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|2|2|1|-1|cell-tborder|1ln>|<cwith|1|1|1|1|cell-lborder|1ln>|<cwith|1|1|8|8|cell-rborder|1ln>|<cwith|1|-1|1|6|cell-background|pastel
  blue>|<table|<row|<cell|op<rsub|0>>|<cell|op<rsub|1>>|<cell|op<rsub|2>>|<cell|op<rsub|3>>|<cell|a<rsub|0>>|<cell|b<rsub|0>>|<cell|r<rsub|0>>|<cell|c<rsub|0>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|1>>>>>>>>>>|Tabella
  di verità dell'operazione shift a sinistra per il modulo ALU ad <math|1>
  bit>

  Tuttavia tale tabella presenta gli input e gli output in binario, quindi
  occorre convertire tali valori in esadecimale, per poterli inserire nella
  ROM, ottenendo:

  <big-table|<tabular|<tformat|<table|<row|<cell|<math|<tformat|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|1|-1|1|-1|cell-valign|c>|<cwith|1|-1|1|2|cell-background|pastel
  orange>|<cwith|1|-1|2|3|cell-background|pastel
  green>|<cwith|1|-1|1|-1|cell-tborder|0ln>|<cwith|1|-1|1|-1|cell-bborder|0ln>|<cwith|1|-1|1|-1|cell-lborder|0ln>|<cwith|1|-1|1|-1|cell-rborder|0ln>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|2|2|1|-1|cell-tborder|1ln>|<cwith|1|1|1|-1|cell-tborder|1ln>|<cwith|5|5|1|-1|cell-bborder|1ln>|<cwith|1|-1|1|1|cell-lborder|1ln>|<cwith|1|-1|2|2|cell-rborder|1ln>|<table|<row|<cell|input>|<cell|output>>|<row|<cell|<shell|0x04>>|<cell|0>>|<row|<cell|<shell|0x05>>|<cell|0>>|<row|<cell|<shell|0x06>>|<cell|1>>|<row|<cell|<shell|0x07>>|<cell|1>>>>>>>>>>|Tabella
  di verità dell'operazione shift a sinistra per il modulo ALU ad <math|1>
  bit in esadecimale>

  <subsubsection|Operazione AND>

  Per questa operazione non c'è molto da dire tranne che il carry è sempre
  <math|0>, quindi possiamo direttamente costruire la tabella di verità:

  <big-table|<tabular|<tformat|<table|<row|<cell|<math|<tformat|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|1|-1|1|-1|cell-valign|c>|<cwith|1|-1|7|8|cell-background|pastel
  green>|<cwith|1|-1|1|-1|cell-tborder|0ln>|<cwith|1|-1|1|-1|cell-bborder|0ln>|<cwith|1|-1|1|-1|cell-lborder|0ln>|<cwith|1|-1|1|-1|cell-rborder|0ln>|<cwith|5|5|1|-1|cell-bborder|1ln>|<cwith|1|-1|1|1|cell-lborder|1ln>|<cwith|1|-1|8|8|cell-rborder|1ln>|<cwith|1|1|1|-1|cell-tborder|1ln>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|2|2|1|-1|cell-tborder|1ln>|<cwith|1|1|1|1|cell-lborder|1ln>|<cwith|1|1|8|8|cell-rborder|1ln>|<cwith|1|-1|1|6|cell-background|pastel
  blue>|<table|<row|<cell|op<rsub|0>>|<cell|op<rsub|1>>|<cell|op<rsub|2>>|<cell|op<rsub|3>>|<cell|a<rsub|0>>|<cell|b<rsub|0>>|<cell|r<rsub|0>>|<cell|c<rsub|0>>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>>>>>>>>>>|Tabella
  di verità dell'operazione <math|a<rsub|0> AND b<rsub|0>> per il modulo ALU
  ad <math|1> bit>

  Tuttavia tale tabella presenta gli input e gli output in binario, quindi
  occorre convertire tali valori in esadecimale, per poterli inserire nella
  ROM, ottenendo:

  <big-table|<tabular|<tformat|<table|<row|<cell|<math|<tformat|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|1|-1|1|-1|cell-valign|c>|<cwith|1|-1|1|2|cell-background|pastel
  orange>|<cwith|1|-1|2|3|cell-background|pastel
  green>|<cwith|1|-1|1|-1|cell-tborder|0ln>|<cwith|1|-1|1|-1|cell-bborder|0ln>|<cwith|1|-1|1|-1|cell-lborder|0ln>|<cwith|1|-1|1|-1|cell-rborder|0ln>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|2|2|1|-1|cell-tborder|1ln>|<cwith|1|1|1|-1|cell-tborder|1ln>|<cwith|5|5|1|-1|cell-bborder|1ln>|<cwith|1|-1|1|1|cell-lborder|1ln>|<cwith|1|-1|2|2|cell-rborder|1ln>|<cwith|1|-1|1|1|cell-background|pastel
  blue>|<table|<row|<cell|input>|<cell|output>>|<row|<cell|<shell|0x08>>|<cell|0>>|<row|<cell|<shell|0x09>>|<cell|0>>|<row|<cell|<shell|0x0A>>|<cell|0>>|<row|<cell|<shell|0x0B>>|<cell|2>>>>>>>>>>|Tabella
  di verità dell'operazione <math|a<rsub|0> AND b<rsub|0>> per il modulo ALU
  ad <math|1> bit in esadecimale>

  <subsubsection|Operazione OR>

  Per questa operazione non c'è molto da dire tranne che il carry è sempre
  <math|0>, quindi possiamo direttamente costruire la tabella di verità:

  <big-table|<tabular|<tformat|<table|<row|<cell|<math|<tformat|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|1|-1|1|-1|cell-valign|c>|<cwith|1|-1|7|8|cell-background|pastel
  green>|<cwith|1|-1|1|-1|cell-tborder|0ln>|<cwith|1|-1|1|-1|cell-bborder|0ln>|<cwith|1|-1|1|-1|cell-lborder|0ln>|<cwith|1|-1|1|-1|cell-rborder|0ln>|<cwith|5|5|1|-1|cell-bborder|1ln>|<cwith|1|-1|1|1|cell-lborder|1ln>|<cwith|1|-1|8|8|cell-rborder|1ln>|<cwith|1|1|1|-1|cell-tborder|1ln>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|2|2|1|-1|cell-tborder|1ln>|<cwith|1|1|1|1|cell-lborder|1ln>|<cwith|1|1|8|8|cell-rborder|1ln>|<cwith|1|-1|1|6|cell-background|pastel
  blue>|<table|<row|<cell|op<rsub|0>>|<cell|op<rsub|1>>|<cell|op<rsub|2>>|<cell|op<rsub|3>>|<cell|a<rsub|0>>|<cell|b<rsub|0>>|<cell|r<rsub|0>>|<cell|c<rsub|0>>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>>>>>>>>>>|Tabella
  di verità dell'operazione <math|a<rsub|0> OR b<rsub|0>> per il modulo ALU
  ad <math|1> bit>

  Tuttavia tale tabella presenta gli input e gli output in binario, quindi
  occorre convertire tali valori in esadecimale, per poterli inserire nella
  ROM, ottenendo:

  <big-table|<tabular|<tformat|<table|<row|<cell|<math|<tformat|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|1|-1|1|-1|cell-valign|c>|<cwith|1|-1|1|2|cell-background|pastel
  orange>|<cwith|1|-1|2|3|cell-background|pastel
  green>|<cwith|1|-1|1|-1|cell-tborder|0ln>|<cwith|1|-1|1|-1|cell-bborder|0ln>|<cwith|1|-1|1|-1|cell-lborder|0ln>|<cwith|1|-1|1|-1|cell-rborder|0ln>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|2|2|1|-1|cell-tborder|1ln>|<cwith|1|1|1|-1|cell-tborder|1ln>|<cwith|5|5|1|-1|cell-bborder|1ln>|<cwith|1|-1|1|1|cell-lborder|1ln>|<cwith|1|-1|2|2|cell-rborder|1ln>|<cwith|1|-1|1|1|cell-background|pastel
  blue>|<table|<row|<cell|input>|<cell|output>>|<row|<cell|<shell|0x10>>|<cell|0>>|<row|<cell|<shell|0x11>>|<cell|0>>|<row|<cell|<shell|0x12>>|<cell|0>>|<row|<cell|<shell|0x13>>|<cell|2>>>>>>>>>>|Tabella
  di verità dell'operazione <math|a<rsub|0> OR b<rsub|0>> per il modulo ALU
  ad <math|1> bit in esadecimale>

  dove il valore <math|<around*|\<langle\>|op<rsub|0>op<rsub|1>op<rsub|2>op<rsub|3>a<rsub|0>b<rsub|0>|\<rangle\>>=<around*|(|010000|)><rsub|2>=<around*|(|0001\|0000|)><rsub|2>=<around*|(|10|)><rsub|16>>
  e così via per gli altri.

  <subsubsection|Operazione XOR>

  Per questa operazione non c'è molto da dire tranne che il carry è sempre
  <math|0>, quindi possiamo direttamente costruire la tabella di verità:

  <big-table|<tabular|<tformat|<table|<row|<cell|<math|<tformat|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|1|-1|1|-1|cell-valign|c>|<cwith|1|-1|7|8|cell-background|pastel
  green>|<cwith|1|-1|1|-1|cell-tborder|0ln>|<cwith|1|-1|1|-1|cell-bborder|0ln>|<cwith|1|-1|1|-1|cell-lborder|0ln>|<cwith|1|-1|1|-1|cell-rborder|0ln>|<cwith|5|5|1|-1|cell-bborder|1ln>|<cwith|1|-1|1|1|cell-lborder|1ln>|<cwith|1|-1|8|8|cell-rborder|1ln>|<cwith|1|1|1|-1|cell-tborder|1ln>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|2|2|1|-1|cell-tborder|1ln>|<cwith|1|1|1|1|cell-lborder|1ln>|<cwith|1|1|8|8|cell-rborder|1ln>|<cwith|1|-1|1|6|cell-background|pastel
  blue>|<table|<row|<cell|op<rsub|0>>|<cell|op<rsub|1>>|<cell|op<rsub|2>>|<cell|op<rsub|3>>|<cell|a<rsub|0>>|<cell|b<rsub|0>>|<cell|r<rsub|0>>|<cell|c<rsub|0>>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>>>>>>>>>>|Tabella
  di verità dell'operazione <math|a<rsub|0>\<oplus\>b<rsub|0>> per il modulo
  ALU ad <math|1> bit>

  Tuttavia tale tabella presenta gli input e gli output in binario, quindi
  occorre convertire tali valori in esadecimale, per poterli inserire nella
  ROM, ottenendo:

  <big-table|<tabular|<tformat|<table|<row|<cell|<math|<tformat|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|1|-1|1|-1|cell-valign|c>|<cwith|1|-1|1|2|cell-background|pastel
  orange>|<cwith|1|-1|2|3|cell-background|pastel
  green>|<cwith|1|-1|1|-1|cell-tborder|0ln>|<cwith|1|-1|1|-1|cell-bborder|0ln>|<cwith|1|-1|1|-1|cell-lborder|0ln>|<cwith|1|-1|1|-1|cell-rborder|0ln>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|2|2|1|-1|cell-tborder|1ln>|<cwith|1|1|1|-1|cell-tborder|1ln>|<cwith|5|5|1|-1|cell-bborder|1ln>|<cwith|1|-1|1|1|cell-lborder|1ln>|<cwith|1|-1|2|2|cell-rborder|1ln>|<cwith|1|-1|1|1|cell-background|pastel
  blue>|<table|<row|<cell|input>|<cell|output>>|<row|<cell|<shell|0x18>>|<cell|0>>|<row|<cell|<shell|0x19>>|<cell|2>>|<row|<cell|<shell|0x1A>>|<cell|2>>|<row|<cell|<shell|0x1B>>|<cell|0>>>>>>>>>>|Tabella
  di verità dell'operazione <math|a<rsub|0>\<oplus\>b<rsub|0>> per il modulo
  ALU ad <math|1> bit in esadecimale>

  <subsubsection|Operazione XNOR>

  Per questa operazione non c'è molto da dire tranne che il carry è sempre
  <math|0>, quindi possiamo direttamente costruire la tabella di verità:

  <big-table|<tabular|<tformat|<table|<row|<cell|<math|<tformat|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|1|-1|1|-1|cell-valign|c>|<cwith|1|-1|7|8|cell-background|pastel
  green>|<cwith|1|-1|1|-1|cell-tborder|0ln>|<cwith|1|-1|1|-1|cell-bborder|0ln>|<cwith|1|-1|1|-1|cell-lborder|0ln>|<cwith|1|-1|1|-1|cell-rborder|0ln>|<cwith|5|5|1|-1|cell-bborder|1ln>|<cwith|1|-1|1|1|cell-lborder|1ln>|<cwith|1|-1|8|8|cell-rborder|1ln>|<cwith|1|1|1|-1|cell-tborder|1ln>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|2|2|1|-1|cell-tborder|1ln>|<cwith|1|1|1|1|cell-lborder|1ln>|<cwith|1|1|8|8|cell-rborder|1ln>|<cwith|1|-1|1|6|cell-background|pastel
  blue>|<table|<row|<cell|op<rsub|0>>|<cell|op<rsub|1>>|<cell|op<rsub|2>>|<cell|op<rsub|3>>|<cell|a<rsub|0>>|<cell|b<rsub|0>>|<cell|r<rsub|0>>|<cell|c<rsub|0>>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>>>>>>>>>>|Tabella
  di verità dell'operazione <math|a<rsub|0>\<odot\>b<rsub|0>> per il modulo
  ALU ad <math|1> bit>

  Tuttavia tale tabella presenta gli input e gli output in binario, quindi
  occorre convertire tali valori in esadecimale, per poterli inserire nella
  ROM, ottenendo:

  <big-table|<tabular|<tformat|<table|<row|<cell|<math|<tformat|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|1|-1|1|-1|cell-valign|c>|<cwith|1|-1|1|2|cell-background|pastel
  orange>|<cwith|1|-1|2|3|cell-background|pastel
  green>|<cwith|1|-1|1|-1|cell-tborder|0ln>|<cwith|1|-1|1|-1|cell-bborder|0ln>|<cwith|1|-1|1|-1|cell-lborder|0ln>|<cwith|1|-1|1|-1|cell-rborder|0ln>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|2|2|1|-1|cell-tborder|1ln>|<cwith|1|1|1|-1|cell-tborder|1ln>|<cwith|5|5|1|-1|cell-bborder|1ln>|<cwith|1|-1|1|1|cell-lborder|1ln>|<cwith|1|-1|2|2|cell-rborder|1ln>|<cwith|1|-1|1|1|cell-background|pastel
  blue>|<table|<row|<cell|input>|<cell|output>>|<row|<cell|<shell|0x20>>|<cell|2>>|<row|<cell|<shell|0x21>>|<cell|0>>|<row|<cell|<shell|0x22>>|<cell|0>>|<row|<cell|<shell|0x23>>|<cell|2>>>>>>>>>>|Tabella
  di verità dell'operazione <math|a<rsub|0>\<odot\>b<rsub|0>> per il modulo
  ALU ad <math|1> bit in esadecimale>

  <subsubsection|Operazione NAND>

  Per questa operazione non c'è molto da dire tranne che il carry è sempre
  <math|0>, quindi possiamo direttamente costruire la tabella di verità:

  <big-table|<tabular|<tformat|<table|<row|<cell|<math|<tformat|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|1|-1|1|-1|cell-valign|c>|<cwith|1|-1|7|8|cell-background|pastel
  green>|<cwith|1|-1|1|-1|cell-tborder|0ln>|<cwith|1|-1|1|-1|cell-bborder|0ln>|<cwith|1|-1|1|-1|cell-lborder|0ln>|<cwith|1|-1|1|-1|cell-rborder|0ln>|<cwith|5|5|1|-1|cell-bborder|1ln>|<cwith|1|-1|1|1|cell-lborder|1ln>|<cwith|1|-1|8|8|cell-rborder|1ln>|<cwith|1|1|1|-1|cell-tborder|1ln>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|2|2|1|-1|cell-tborder|1ln>|<cwith|1|1|1|1|cell-lborder|1ln>|<cwith|1|1|8|8|cell-rborder|1ln>|<cwith|1|-1|1|6|cell-background|pastel
  blue>|<table|<row|<cell|op<rsub|0>>|<cell|op<rsub|1>>|<cell|op<rsub|2>>|<cell|op<rsub|3>>|<cell|a<rsub|0>>|<cell|b<rsub|0>>|<cell|r<rsub|0>>|<cell|c<rsub|0>>>|<row|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>>|<row|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>>>>>>>>>>|Tabella
  di verità dell'operazione <math|a<rsub|0>\|b<rsub|0>> per il modulo ALU ad
  <math|1> bit>

  Tuttavia tale tabella presenta gli input e gli output in binario, quindi
  occorre convertire tali valori in esadecimale, per poterli inserire nella
  ROM, ottenendo:

  <big-table|<tabular|<tformat|<table|<row|<cell|<math|<tformat|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|1|-1|1|-1|cell-valign|c>|<cwith|1|-1|1|2|cell-background|pastel
  orange>|<cwith|1|-1|2|3|cell-background|pastel
  green>|<cwith|1|-1|1|-1|cell-tborder|0ln>|<cwith|1|-1|1|-1|cell-bborder|0ln>|<cwith|1|-1|1|-1|cell-lborder|0ln>|<cwith|1|-1|1|-1|cell-rborder|0ln>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|2|2|1|-1|cell-tborder|1ln>|<cwith|1|1|1|-1|cell-tborder|1ln>|<cwith|5|5|1|-1|cell-bborder|1ln>|<cwith|1|-1|1|1|cell-lborder|1ln>|<cwith|1|-1|2|2|cell-rborder|1ln>|<cwith|1|-1|1|1|cell-background|pastel
  blue>|<table|<row|<cell|input>|<cell|output>>|<row|<cell|<shell|0x28>>|<cell|2>>|<row|<cell|<shell|0x29>>|<cell|2>>|<row|<cell|<shell|0x2A>>|<cell|2>>|<row|<cell|<shell|0x2B>>|<cell|0>>>>>>>>>>|Tabella
  di verità dell'operazione <math|a<rsub|0>\|b<rsub|0>> per il modulo ALU ad
  <math|1> bit in esadecimale>

  <subsubsection|Operazione NOR>

  Per questa operazione non c'è molto da dire tranne che il carry è sempre
  <math|0>, quindi possiamo direttamente costruire la tabella di verità:

  <big-table|<tabular|<tformat|<table|<row|<cell|<math|<tformat|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|1|-1|1|-1|cell-valign|c>|<cwith|1|-1|7|8|cell-background|pastel
  green>|<cwith|1|-1|1|-1|cell-tborder|0ln>|<cwith|1|-1|1|-1|cell-bborder|0ln>|<cwith|1|-1|1|-1|cell-lborder|0ln>|<cwith|1|-1|1|-1|cell-rborder|0ln>|<cwith|5|5|1|-1|cell-bborder|1ln>|<cwith|1|-1|1|1|cell-lborder|1ln>|<cwith|1|-1|8|8|cell-rborder|1ln>|<cwith|1|1|1|-1|cell-tborder|1ln>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|2|2|1|-1|cell-tborder|1ln>|<cwith|1|1|1|1|cell-lborder|1ln>|<cwith|1|1|8|8|cell-rborder|1ln>|<cwith|1|-1|1|6|cell-background|pastel
  blue>|<table|<row|<cell|op<rsub|0>>|<cell|op<rsub|1>>|<cell|op<rsub|2>>|<cell|op<rsub|3>>|<cell|a<rsub|0>>|<cell|b<rsub|0>>|<cell|r<rsub|0>>|<cell|c<rsub|0>>>|<row|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>>>>>>>>>>|Tabella
  di verità dell'operazione <math|a<rsub|0>\<downarrow\>b<rsub|0>> per il
  modulo ALU ad <math|1> bit>

  Tuttavia tale tabella presenta gli input e gli output in binario, quindi
  occorre convertire tali valori in esadecimale, per poterli inserire nella
  ROM, ottenendo:

  <big-table|<tabular|<tformat|<table|<row|<cell|<math|<tformat|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|1|-1|1|-1|cell-valign|c>|<cwith|1|-1|1|2|cell-background|pastel
  orange>|<cwith|1|-1|2|3|cell-background|pastel
  green>|<cwith|1|-1|1|-1|cell-tborder|0ln>|<cwith|1|-1|1|-1|cell-bborder|0ln>|<cwith|1|-1|1|-1|cell-lborder|0ln>|<cwith|1|-1|1|-1|cell-rborder|0ln>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|2|2|1|-1|cell-tborder|1ln>|<cwith|1|1|1|-1|cell-tborder|1ln>|<cwith|5|5|1|-1|cell-bborder|1ln>|<cwith|1|-1|1|1|cell-lborder|1ln>|<cwith|1|-1|2|2|cell-rborder|1ln>|<cwith|1|-1|1|1|cell-background|pastel
  blue>|<table|<row|<cell|input>|<cell|output>>|<row|<cell|<shell|0x30>>|<cell|2>>|<row|<cell|<shell|0x31>>|<cell|0>>|<row|<cell|<shell|0x32>>|<cell|0>>|<row|<cell|<shell|0x33>>|<cell|0>>>>>>>>>>|Tabella
  di verità dell'operazione <math|a<rsub|0>\<downarrow\>b<rsub|0>> per il
  modulo ALU ad <math|1> bit in esadecimale>

  <subsubsection|Operazione <math|<wide|a|\<bar\>>>>

  Per questa operazione non c'è molto da dire tranne che il carry è sempre
  <math|0>, quindi possiamo direttamente costruire la tabella di verità:

  <big-table|<tabular|<tformat|<table|<row|<cell|<math|<tformat|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|1|-1|1|-1|cell-valign|c>|<cwith|1|-1|7|8|cell-background|pastel
  green>|<cwith|1|-1|1|-1|cell-tborder|0ln>|<cwith|1|-1|1|-1|cell-bborder|0ln>|<cwith|1|-1|1|-1|cell-lborder|0ln>|<cwith|1|-1|1|-1|cell-rborder|0ln>|<cwith|5|5|1|-1|cell-bborder|1ln>|<cwith|1|-1|1|1|cell-lborder|1ln>|<cwith|1|-1|8|8|cell-rborder|1ln>|<cwith|1|1|1|-1|cell-tborder|1ln>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|2|2|1|-1|cell-tborder|1ln>|<cwith|1|1|1|1|cell-lborder|1ln>|<cwith|1|1|8|8|cell-rborder|1ln>|<cwith|1|-1|1|6|cell-background|pastel
  blue>|<table|<row|<cell|op<rsub|0>>|<cell|op<rsub|1>>|<cell|op<rsub|2>>|<cell|op<rsub|3>>|<cell|a<rsub|0>>|<cell|b<rsub|0>>|<cell|r<rsub|0>>|<cell|c<rsub|0>>>|<row|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>>|<row|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>>>>>>>>>>|Tabella
  di verità dell'operazione <math|<wide|a|\<bar\>>> per il modulo ALU ad
  <math|1> bit>

  Tuttavia tale tabella presenta gli input e gli output in binario, quindi
  occorre convertire tali valori in esadecimale, per poterli inserire nella
  ROM, ottenendo:

  <big-table|<tabular|<tformat|<table|<row|<cell|<math|<tformat|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|1|-1|1|-1|cell-valign|c>|<cwith|1|-1|1|2|cell-background|pastel
  orange>|<cwith|1|-1|2|3|cell-background|pastel
  green>|<cwith|1|-1|1|-1|cell-tborder|0ln>|<cwith|1|-1|1|-1|cell-bborder|0ln>|<cwith|1|-1|1|-1|cell-lborder|0ln>|<cwith|1|-1|1|-1|cell-rborder|0ln>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|2|2|1|-1|cell-tborder|1ln>|<cwith|1|1|1|-1|cell-tborder|1ln>|<cwith|5|5|1|-1|cell-bborder|1ln>|<cwith|1|-1|1|1|cell-lborder|1ln>|<cwith|1|-1|2|2|cell-rborder|1ln>|<cwith|1|-1|1|1|cell-background|pastel
  blue>|<table|<row|<cell|input>|<cell|output>>|<row|<cell|<shell|0x38>>|<cell|2>>|<row|<cell|<shell|0x39>>|<cell|2>>|<row|<cell|<shell|0x3A>>|<cell|0>>|<row|<cell|<shell|0x3B>>|<cell|0>>>>>>>>>>|Tabella
  di verità dell'operazione <math|<wide|a|\<bar\>>> per il modulo ALU ad
  <math|1> bit in esadecimale>

  <subsubsection|Implementazione della ROM>

  Per usare la ROM con il software Digital occorre configurare gli indirizzi
  di memoria con i relativi valori di output precedentemente calcolati, come
  segue:

  <big-figure|<tabular|<tformat|<cwith|1|1|1|-1|cell-halign|c>|<cwith|1|1|1|-1|cell-valign|c>|<table|<row|<cell|<image|imgs/rom-settings.png|0.3par|||>>|<cell|<image|imgs/rom-data.png|0.3par|||>>>>>>|Configurazione
  della ROM su Digital>

  Inoltre come mostrato in Fig. <reference|alu-rom-1-bit>, dove è riportato
  il modulo ROM che implementa un'ALU ad <math|1> bit, occorre prestare molta
  attenzione all'ordine in cui si mettono i bit in ingresso e in uscita,
  infatti l'ordine deve essere lo stesso delle tabelle di verità, nelle quali
  il bit in posizione <math|0> è <math|b<rsub|0>> mentre quello in posizione
  <math|1> è <math|a<rsub|0>>, dal bit in posizione <math|2> al bit in
  posizione <math|5> c'è <with|font-shape|italic|opcode> ed infine per
  l'output abbiamo in posizione <math|1> il risultato <math|r<rsub|0>> e in
  posizione <math|0> il carry <math|c<rsub|0>> da propagare.

  <big-figure|<image|imgs/ALU-ROM-1-bit.png|0.5par|||>|Modulo ALU ad <math|1>
  bit con ROM<label|alu-rom-1-bit>>

  Il modulo ALU ad <math|1> bit è completo quindi dobbiamo solo capire come
  modificarlo, per il modulo ALU successivo, in modo tale da poterlo copiare
  e incollare per ottenere un'ALU ad <math|n> bit.

  <subsection|Operazioni per il modulo ALU a <math|4> bit>

  <subsubsection|Somma senza segno>

  Per come sono state realizzate le tabelle di verità precedenti la cosa più
  sensata da fare è inserire il carry <math|c<rsub|in>> delle propagazioni
  \Pdavanti\Q all'<with|font-shape|italic|opcode> modificando la tabella di
  verità come segue:

  <big-table|<tabular|<tformat|<table|<row|<cell|<math|<tformat|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|1|-1|1|-1|cell-valign|c>|<cwith|1|-1|8|9|cell-background|pastel
  green>|<cwith|1|-1|1|-1|cell-tborder|0ln>|<cwith|1|-1|1|-1|cell-bborder|0ln>|<cwith|1|-1|1|-1|cell-lborder|0ln>|<cwith|1|-1|1|-1|cell-rborder|0ln>|<cwith|1|-1|1|1|cell-tborder|0ln>|<cwith|1|-1|1|1|cell-bborder|0ln>|<cwith|1|-1|1|1|cell-rborder|0ln>|<cwith|1|-1|2|2|cell-lborder|0ln>|<cwith|5|5|1|-1|cell-bborder|1ln>|<cwith|1|-1|1|1|cell-lborder|1ln>|<cwith|1|-1|9|9|cell-rborder|1ln>|<cwith|1|1|1|-1|cell-tborder|1ln>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|2|2|1|-1|cell-tborder|1ln>|<cwith|1|1|1|1|cell-lborder|1ln>|<cwith|1|1|9|9|cell-rborder|1ln>|<cwith|1|1|1|-1|cell-background|pastel
  orange>|<cwith|1|1|8|9|cell-background|pastel
  green>|<cwith|1|-1|1|7|cell-background|pastel
  blue>|<table|<row|<cell|c<rsub|in>>|<cell|op<rsub|0>>|<cell|op<rsub|1>>|<cell|op<rsub|2>>|<cell|op<rsub|3>>|<cell|a<rsub|i>>|<cell|b<rsub|i>>|<cell|r<rsub|i>>|<cell|c<rsub|i>>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>>>>>>>>>>|Tabella
  di verità dell'operazione <math|a<rsub|i>+b<rsub|i>> (senza segno) per
  l'ALU a <math|4> bit>

  dove <math|i\<in\><around*|[|1,3|]>>. Tuttavia tale tabella presenta gli
  input e gli output in binario, quindi occorre convertire tali valori in
  esadecimale, per poterli inserire nella ROM, ottenendo:

  <big-table|<tabular|<tformat|<table|<row|<cell|<math|<tformat|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|1|-1|1|-1|cell-valign|c>|<cwith|1|-1|1|2|cell-background|pastel
  orange>|<cwith|1|-1|2|3|cell-background|pastel
  green>|<cwith|1|-1|1|-1|cell-tborder|0ln>|<cwith|1|-1|1|-1|cell-bborder|0ln>|<cwith|1|-1|1|-1|cell-lborder|0ln>|<cwith|1|-1|1|-1|cell-rborder|0ln>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|2|2|1|-1|cell-tborder|1ln>|<cwith|1|1|1|-1|cell-tborder|1ln>|<cwith|5|5|1|-1|cell-bborder|1ln>|<cwith|1|-1|1|1|cell-lborder|1ln>|<cwith|1|-1|2|2|cell-rborder|1ln>|<cwith|1|-1|1|1|cell-background|pastel
  blue>|<table|<row|<cell|input>|<cell|output>>|<row|<cell|<shell|0x40>>|<cell|2>>|<row|<cell|<shell|0x41>>|<cell|1>>|<row|<cell|<shell|0x42>>|<cell|1>>|<row|<cell|<shell|0x43>>|<cell|3>>>>>>>>>>|Tabella
  di verità dell'operazione <math|a<rsub|i>+b<rsub|i>> (senza segno) per
  l'ALU a <math|4> bit in esadecimale>

  <subsubsection|<math|Shift <text|a> sinistra di una posizione di a>>

  Anche per questa operazione procediamo allo stesso modo:

  <big-table|<tabular|<tformat|<table|<row|<cell|<math|<tformat|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|1|-1|1|-1|cell-valign|c>|<cwith|1|-1|8|9|cell-background|pastel
  green>|<cwith|1|-1|1|-1|cell-tborder|0ln>|<cwith|1|-1|1|-1|cell-bborder|0ln>|<cwith|1|-1|1|-1|cell-lborder|0ln>|<cwith|1|-1|1|-1|cell-rborder|0ln>|<cwith|1|-1|1|1|cell-tborder|0ln>|<cwith|1|-1|1|1|cell-bborder|0ln>|<cwith|1|-1|1|1|cell-rborder|0ln>|<cwith|1|-1|2|2|cell-lborder|0ln>|<cwith|5|5|1|-1|cell-bborder|1ln>|<cwith|1|-1|1|1|cell-lborder|1ln>|<cwith|1|-1|9|9|cell-rborder|1ln>|<cwith|1|1|1|-1|cell-tborder|1ln>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|2|2|1|-1|cell-tborder|1ln>|<cwith|1|1|1|1|cell-lborder|1ln>|<cwith|1|1|9|9|cell-rborder|1ln>|<cwith|1|1|1|-1|cell-background|pastel
  orange>|<cwith|1|1|8|9|cell-background|pastel
  green>|<cwith|1|-1|1|7|cell-background|pastel
  blue>|<table|<row|<cell|c<rsub|in>>|<cell|op<rsub|0>>|<cell|op<rsub|1>>|<cell|op<rsub|2>>|<cell|op<rsub|3>>|<cell|a<rsub|i>>|<cell|b<rsub|i>>|<cell|r<rsub|i>>|<cell|c<rsub|i>>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|1>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>>>>>>>>>>|Tabella
  di verità dell'operazione shift a sinistra per l'ALU a <math|4> bit>

  dove <math|i\<in\><around*|[|1,3|]>>. Tuttavia tale tabella presenta gli
  input e gli output in binario, quindi occorre convertire tali valori in
  esadecimale, per poterli inserire nella ROM, ottenendo:

  <big-table|<tabular|<tformat|<table|<row|<cell|<math|<tformat|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|1|-1|1|-1|cell-valign|c>|<cwith|1|-1|1|2|cell-background|pastel
  orange>|<cwith|1|-1|2|3|cell-background|pastel
  green>|<cwith|1|-1|1|-1|cell-tborder|0ln>|<cwith|1|-1|1|-1|cell-bborder|0ln>|<cwith|1|-1|1|-1|cell-lborder|0ln>|<cwith|1|-1|1|-1|cell-rborder|0ln>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|2|2|1|-1|cell-tborder|1ln>|<cwith|1|1|1|-1|cell-tborder|1ln>|<cwith|5|5|1|-1|cell-bborder|1ln>|<cwith|1|-1|1|1|cell-lborder|1ln>|<cwith|1|-1|2|2|cell-rborder|1ln>|<cwith|1|-1|1|1|cell-background|pastel
  blue>|<table|<row|<cell|input>|<cell|output>>|<row|<cell|<shell|0x44>>|<cell|2>>|<row|<cell|<shell|0x45>>|<cell|2>>|<row|<cell|<shell|0x46>>|<cell|3>>|<row|<cell|<shell|0x47>>|<cell|3>>>>>>>>>>|Tabella
  di verità dell'operazione shift a sinistra per l'ALU a <math|4> bit in
  esadecimale>

  <subsubsection|Le altre operazioni>

  Le operazioni rimaste rimangono identiche a meno del carry
  <math|c<rsub|in>> pertanto le riassumo tutte in una singola tabella di
  verità:

  <big-table|<math|<tformat|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|1|-1|1|-1|cell-valign|c>|<cwith|1|-1|8|9|cell-background|pastel
  green>|<cwith|1|-1|1|-1|cell-tborder|0ln>|<cwith|1|-1|1|-1|cell-bborder|0ln>|<cwith|1|-1|1|-1|cell-lborder|0ln>|<cwith|1|-1|1|-1|cell-rborder|0ln>|<cwith|1|-1|1|1|cell-tborder|0ln>|<cwith|1|-1|1|1|cell-bborder|0ln>|<cwith|1|-1|1|1|cell-rborder|0ln>|<cwith|1|-1|2|2|cell-lborder|0ln>|<cwith|1|-1|1|1|cell-lborder|1ln>|<cwith|1|-1|9|9|cell-rborder|1ln>|<cwith|1|1|1|-1|cell-tborder|1ln>|<cwith|1|1|1|1|cell-lborder|1ln>|<cwith|1|1|9|9|cell-rborder|1ln>|<cwith|1|1|1|-1|cell-background|pastel
  orange>|<cwith|1|1|8|9|cell-background|pastel
  green>|<cwith|5|6|1|-1|cell-tborder|0ln>|<cwith|5|6|1|-1|cell-bborder|0ln>|<cwith|5|6|1|-1|cell-lborder|0ln>|<cwith|5|6|1|-1|cell-rborder|0ln>|<cwith|4|4|1|-1|cell-bborder|0ln>|<cwith|7|7|1|-1|cell-tborder|0ln>|<cwith|6|9|2|5|cell-halign|c>|<cwith|6|9|2|5|cell-valign|c>|<cwith|6|9|2|5|cell-tborder|0ln>|<cwith|6|9|2|5|cell-bborder|0ln>|<cwith|6|9|2|5|cell-lborder|0ln>|<cwith|6|9|2|5|cell-rborder|0ln>|<cwith|6|9|2|2|cell-lborder|0ln>|<cwith|9|9|2|5|cell-tborder|0ln>|<cwith|9|9|2|5|cell-lborder|0ln>|<cwith|9|9|2|5|cell-rborder|0ln>|<cwith|8|8|2|5|cell-bborder|0ln>|<cwith|5|6|2|5|cell-tborder|0ln>|<cwith|5|6|2|5|cell-bborder|0ln>|<cwith|5|6|2|5|cell-lborder|0ln>|<cwith|5|6|2|5|cell-rborder|0ln>|<cwith|4|4|2|5|cell-bborder|0ln>|<cwith|7|7|2|5|cell-tborder|0ln>|<cwith|6|9|3|3|cell-halign|c>|<cwith|6|9|3|3|cell-valign|c>|<cwith|6|9|3|3|cell-tborder|0ln>|<cwith|6|9|3|3|cell-bborder|0ln>|<cwith|6|9|3|3|cell-lborder|0ln>|<cwith|6|9|3|3|cell-rborder|0ln>|<cwith|6|6|3|3|cell-bborder|0ln>|<cwith|6|6|3|3|cell-rborder|0ln>|<cwith|7|7|3|3|cell-tborder|0ln>|<cwith|6|9|3|3|cell-halign|c>|<cwith|6|9|3|3|cell-valign|c>|<cwith|6|9|3|3|cell-tborder|0ln>|<cwith|6|9|3|3|cell-bborder|0ln>|<cwith|6|9|3|3|cell-lborder|0ln>|<cwith|6|9|3|3|cell-rborder|0ln>|<cwith|9|9|3|3|cell-tborder|0ln>|<cwith|9|9|3|3|cell-lborder|0ln>|<cwith|9|9|3|3|cell-rborder|0ln>|<cwith|8|8|3|3|cell-bborder|0ln>|<cwith|6|6|3|3|cell-bborder|0ln>|<cwith|6|6|3|3|cell-rborder|0ln>|<cwith|7|7|3|3|cell-tborder|0ln>|<cwith|6|9|4|4|cell-halign|c>|<cwith|6|9|4|4|cell-valign|c>|<cwith|6|9|4|4|cell-tborder|0ln>|<cwith|6|9|4|4|cell-bborder|0ln>|<cwith|6|9|4|4|cell-lborder|0ln>|<cwith|6|9|4|4|cell-rborder|0ln>|<cwith|6|6|4|4|cell-bborder|0ln>|<cwith|6|6|4|4|cell-lborder|0ln>|<cwith|7|7|4|4|cell-tborder|0ln>|<cwith|6|9|4|4|cell-halign|c>|<cwith|6|9|4|4|cell-valign|c>|<cwith|6|9|4|4|cell-tborder|0ln>|<cwith|6|9|4|4|cell-bborder|0ln>|<cwith|6|9|4|4|cell-lborder|0ln>|<cwith|6|9|4|4|cell-rborder|0ln>|<cwith|9|9|4|4|cell-tborder|0ln>|<cwith|9|9|4|4|cell-lborder|0ln>|<cwith|9|9|4|4|cell-rborder|0ln>|<cwith|8|8|4|4|cell-bborder|0ln>|<cwith|6|6|4|4|cell-bborder|0ln>|<cwith|6|6|4|4|cell-lborder|0ln>|<cwith|7|7|4|4|cell-tborder|0ln>|<cwith|6|9|6|7|cell-halign|c>|<cwith|6|9|6|7|cell-valign|c>|<cwith|6|9|6|7|cell-tborder|0ln>|<cwith|6|9|6|7|cell-bborder|0ln>|<cwith|6|9|6|7|cell-lborder|0ln>|<cwith|6|9|6|7|cell-rborder|0ln>|<cwith|9|9|6|7|cell-tborder|0ln>|<cwith|9|9|6|7|cell-lborder|0ln>|<cwith|9|9|6|7|cell-rborder|0ln>|<cwith|8|8|6|7|cell-bborder|0ln>|<cwith|9|9|6|6|cell-lborder|0ln>|<cwith|5|6|5|7|cell-tborder|0ln>|<cwith|5|6|5|7|cell-bborder|0ln>|<cwith|5|6|5|7|cell-lborder|0ln>|<cwith|5|6|5|7|cell-rborder|0ln>|<cwith|4|4|5|7|cell-bborder|0ln>|<cwith|7|7|5|7|cell-tborder|0ln>|<cwith|5|6|4|4|cell-rborder|0ln>|<cwith|5|6|8|8|cell-lborder|0ln>|<cwith|6|9|1|1|cell-halign|c>|<cwith|6|9|1|1|cell-valign|c>|<cwith|6|9|1|1|cell-tborder|0ln>|<cwith|6|9|1|1|cell-bborder|0ln>|<cwith|6|9|1|1|cell-rborder|0ln>|<cwith|6|9|1|1|cell-tborder|0ln>|<cwith|6|9|1|1|cell-bborder|0ln>|<cwith|6|9|1|1|cell-rborder|0ln>|<cwith|9|9|1|1|cell-tborder|0ln>|<cwith|9|9|1|1|cell-rborder|0ln>|<cwith|8|8|1|1|cell-bborder|0ln>|<cwith|9|9|1|1|cell-rborder|0ln>|<cwith|5|6|1|2|cell-tborder|0ln>|<cwith|5|6|1|2|cell-bborder|0ln>|<cwith|5|6|1|2|cell-lborder|0ln>|<cwith|5|6|1|2|cell-rborder|0ln>|<cwith|4|4|1|2|cell-bborder|0ln>|<cwith|7|7|1|2|cell-tborder|0ln>|<cwith|5|6|3|3|cell-lborder|0ln>|<cwith|6|9|1|1|cell-lborder|1ln>|<cwith|6|9|9|9|cell-rborder|1ln>|<cwith|2|2|1|-1|cell-tborder|1ln>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|5|5|1|-1|cell-bborder|1ln>|<cwith|6|6|1|-1|cell-tborder|1ln>|<cwith|2|5|1|1|cell-lborder|1ln>|<cwith|2|5|9|9|cell-rborder|1ln>|<cwith|10|13|1|7|cell-halign|c>|<cwith|10|13|1|7|cell-valign|c>|<cwith|10|13|1|7|cell-tborder|0ln>|<cwith|10|13|1|7|cell-bborder|0ln>|<cwith|10|13|1|7|cell-lborder|0ln>|<cwith|10|13|1|7|cell-rborder|0ln>|<cwith|10|13|1|1|cell-tborder|0ln>|<cwith|10|13|1|1|cell-bborder|0ln>|<cwith|10|13|1|1|cell-rborder|0ln>|<cwith|10|13|2|2|cell-lborder|0ln>|<cwith|10|10|1|7|cell-bborder|0ln>|<cwith|10|10|1|7|cell-lborder|0ln>|<cwith|10|10|1|7|cell-rborder|0ln>|<cwith|11|11|1|7|cell-tborder|0ln>|<cwith|10|13|2|5|cell-halign|c>|<cwith|10|13|2|5|cell-valign|c>|<cwith|10|13|2|5|cell-tborder|0ln>|<cwith|10|13|2|5|cell-bborder|0ln>|<cwith|10|13|2|5|cell-lborder|0ln>|<cwith|10|13|2|5|cell-rborder|0ln>|<cwith|10|13|2|2|cell-lborder|0ln>|<cwith|13|13|2|5|cell-tborder|0ln>|<cwith|13|13|2|5|cell-lborder|0ln>|<cwith|13|13|2|5|cell-rborder|0ln>|<cwith|12|12|2|5|cell-bborder|0ln>|<cwith|10|10|2|5|cell-bborder|0ln>|<cwith|10|10|2|5|cell-lborder|0ln>|<cwith|10|10|2|5|cell-rborder|0ln>|<cwith|11|11|2|5|cell-tborder|0ln>|<cwith|10|13|3|3|cell-halign|c>|<cwith|10|13|3|3|cell-valign|c>|<cwith|10|13|3|3|cell-tborder|0ln>|<cwith|10|13|3|3|cell-bborder|0ln>|<cwith|10|13|3|3|cell-lborder|0ln>|<cwith|10|13|3|3|cell-rborder|0ln>|<cwith|10|10|3|3|cell-bborder|0ln>|<cwith|10|10|3|3|cell-rborder|0ln>|<cwith|11|11|3|3|cell-tborder|0ln>|<cwith|10|13|3|3|cell-halign|c>|<cwith|10|13|3|3|cell-valign|c>|<cwith|10|13|3|3|cell-tborder|0ln>|<cwith|10|13|3|3|cell-bborder|0ln>|<cwith|10|13|3|3|cell-lborder|0ln>|<cwith|10|13|3|3|cell-rborder|0ln>|<cwith|13|13|3|3|cell-tborder|0ln>|<cwith|13|13|3|3|cell-lborder|0ln>|<cwith|13|13|3|3|cell-rborder|0ln>|<cwith|12|12|3|3|cell-bborder|0ln>|<cwith|10|10|3|3|cell-bborder|0ln>|<cwith|10|10|3|3|cell-rborder|0ln>|<cwith|11|11|3|3|cell-tborder|0ln>|<cwith|10|13|4|4|cell-halign|c>|<cwith|10|13|4|4|cell-valign|c>|<cwith|10|13|4|4|cell-tborder|0ln>|<cwith|10|13|4|4|cell-bborder|0ln>|<cwith|10|13|4|4|cell-lborder|0ln>|<cwith|10|13|4|4|cell-rborder|0ln>|<cwith|10|10|4|4|cell-bborder|0ln>|<cwith|10|10|4|4|cell-lborder|0ln>|<cwith|11|11|4|4|cell-tborder|0ln>|<cwith|10|13|4|4|cell-halign|c>|<cwith|10|13|4|4|cell-valign|c>|<cwith|10|13|4|4|cell-tborder|0ln>|<cwith|10|13|4|4|cell-bborder|0ln>|<cwith|10|13|4|4|cell-lborder|0ln>|<cwith|10|13|4|4|cell-rborder|0ln>|<cwith|13|13|4|4|cell-tborder|0ln>|<cwith|13|13|4|4|cell-lborder|0ln>|<cwith|13|13|4|4|cell-rborder|0ln>|<cwith|12|12|4|4|cell-bborder|0ln>|<cwith|10|10|4|4|cell-bborder|0ln>|<cwith|10|10|4|4|cell-lborder|0ln>|<cwith|11|11|4|4|cell-tborder|0ln>|<cwith|10|13|6|7|cell-halign|c>|<cwith|10|13|6|7|cell-valign|c>|<cwith|10|13|6|7|cell-tborder|0ln>|<cwith|10|13|6|7|cell-bborder|0ln>|<cwith|10|13|6|7|cell-lborder|0ln>|<cwith|10|13|6|7|cell-rborder|0ln>|<cwith|13|13|6|7|cell-tborder|0ln>|<cwith|13|13|6|7|cell-lborder|0ln>|<cwith|13|13|6|7|cell-rborder|0ln>|<cwith|12|12|6|7|cell-bborder|0ln>|<cwith|13|13|6|6|cell-lborder|0ln>|<cwith|10|10|5|7|cell-bborder|0ln>|<cwith|10|10|5|7|cell-lborder|0ln>|<cwith|10|10|5|7|cell-rborder|0ln>|<cwith|11|11|5|7|cell-tborder|0ln>|<cwith|10|10|4|4|cell-rborder|0ln>|<cwith|10|13|1|1|cell-halign|c>|<cwith|10|13|1|1|cell-valign|c>|<cwith|10|13|1|1|cell-tborder|0ln>|<cwith|10|13|1|1|cell-bborder|0ln>|<cwith|10|13|1|1|cell-rborder|0ln>|<cwith|10|13|1|1|cell-tborder|0ln>|<cwith|10|13|1|1|cell-bborder|0ln>|<cwith|10|13|1|1|cell-rborder|0ln>|<cwith|13|13|1|1|cell-tborder|0ln>|<cwith|13|13|1|1|cell-rborder|0ln>|<cwith|12|12|1|1|cell-bborder|0ln>|<cwith|13|13|1|1|cell-rborder|0ln>|<cwith|10|10|1|2|cell-bborder|0ln>|<cwith|10|10|1|2|cell-lborder|0ln>|<cwith|10|10|1|2|cell-rborder|0ln>|<cwith|11|11|1|2|cell-tborder|0ln>|<cwith|10|10|3|3|cell-lborder|0ln>|<cwith|10|13|4|4|cell-halign|c>|<cwith|10|13|4|4|cell-valign|c>|<cwith|10|13|4|4|cell-tborder|0ln>|<cwith|10|13|4|4|cell-bborder|0ln>|<cwith|10|13|4|4|cell-lborder|0ln>|<cwith|10|13|4|4|cell-rborder|0ln>|<cwith|10|13|4|4|cell-halign|c>|<cwith|10|13|4|4|cell-valign|c>|<cwith|10|13|4|4|cell-tborder|0ln>|<cwith|10|13|4|4|cell-bborder|0ln>|<cwith|10|13|4|4|cell-lborder|0ln>|<cwith|10|13|4|4|cell-rborder|0ln>|<cwith|10|10|4|4|cell-bborder|0ln>|<cwith|10|10|4|4|cell-lborder|0ln>|<cwith|10|10|4|4|cell-rborder|0ln>|<cwith|11|11|4|4|cell-tborder|0ln>|<cwith|10|13|4|4|cell-halign|c>|<cwith|10|13|4|4|cell-valign|c>|<cwith|10|13|4|4|cell-tborder|0ln>|<cwith|10|13|4|4|cell-bborder|0ln>|<cwith|10|13|4|4|cell-lborder|0ln>|<cwith|10|13|4|4|cell-rborder|0ln>|<cwith|13|13|4|4|cell-tborder|0ln>|<cwith|13|13|4|4|cell-lborder|0ln>|<cwith|13|13|4|4|cell-rborder|0ln>|<cwith|12|12|4|4|cell-bborder|0ln>|<cwith|10|10|4|4|cell-bborder|0ln>|<cwith|10|10|4|4|cell-lborder|0ln>|<cwith|10|10|4|4|cell-rborder|0ln>|<cwith|11|11|4|4|cell-tborder|0ln>|<cwith|10|13|4|4|cell-halign|c>|<cwith|10|13|4|4|cell-valign|c>|<cwith|10|13|4|4|cell-tborder|0ln>|<cwith|10|13|4|4|cell-bborder|0ln>|<cwith|10|13|4|4|cell-lborder|0ln>|<cwith|10|13|4|4|cell-rborder|0ln>|<cwith|10|10|4|4|cell-bborder|0ln>|<cwith|10|10|4|4|cell-rborder|0ln>|<cwith|11|11|4|4|cell-tborder|0ln>|<cwith|10|13|4|4|cell-halign|c>|<cwith|10|13|4|4|cell-valign|c>|<cwith|10|13|4|4|cell-tborder|0ln>|<cwith|10|13|4|4|cell-bborder|0ln>|<cwith|10|13|4|4|cell-lborder|0ln>|<cwith|10|13|4|4|cell-rborder|0ln>|<cwith|13|13|4|4|cell-tborder|0ln>|<cwith|13|13|4|4|cell-lborder|0ln>|<cwith|13|13|4|4|cell-rborder|0ln>|<cwith|12|12|4|4|cell-bborder|0ln>|<cwith|10|10|4|4|cell-bborder|0ln>|<cwith|10|10|4|4|cell-rborder|0ln>|<cwith|11|11|4|4|cell-tborder|0ln>|<cwith|10|10|4|4|cell-lborder|0ln>|<cwith|14|17|1|7|cell-halign|c>|<cwith|14|17|1|7|cell-valign|c>|<cwith|14|17|1|7|cell-tborder|0ln>|<cwith|14|17|1|7|cell-bborder|0ln>|<cwith|14|17|1|7|cell-lborder|0ln>|<cwith|14|17|1|7|cell-rborder|0ln>|<cwith|14|17|1|1|cell-tborder|0ln>|<cwith|14|17|1|1|cell-bborder|0ln>|<cwith|14|17|1|1|cell-rborder|0ln>|<cwith|14|17|2|2|cell-lborder|0ln>|<cwith|14|17|1|7|cell-halign|c>|<cwith|14|17|1|7|cell-valign|c>|<cwith|14|17|1|7|cell-tborder|0ln>|<cwith|14|17|1|7|cell-bborder|0ln>|<cwith|14|17|1|7|cell-lborder|0ln>|<cwith|14|17|1|7|cell-rborder|0ln>|<cwith|14|17|1|1|cell-tborder|0ln>|<cwith|14|17|1|1|cell-bborder|0ln>|<cwith|14|17|1|1|cell-rborder|0ln>|<cwith|14|17|2|2|cell-lborder|0ln>|<cwith|14|14|1|7|cell-bborder|0ln>|<cwith|14|14|1|7|cell-lborder|0ln>|<cwith|14|14|1|7|cell-rborder|0ln>|<cwith|15|15|1|7|cell-tborder|0ln>|<cwith|14|17|2|5|cell-halign|c>|<cwith|14|17|2|5|cell-valign|c>|<cwith|14|17|2|5|cell-tborder|0ln>|<cwith|14|17|2|5|cell-bborder|0ln>|<cwith|14|17|2|5|cell-lborder|0ln>|<cwith|14|17|2|5|cell-rborder|0ln>|<cwith|14|17|2|2|cell-lborder|0ln>|<cwith|17|17|2|5|cell-tborder|0ln>|<cwith|17|17|2|5|cell-lborder|0ln>|<cwith|17|17|2|5|cell-rborder|0ln>|<cwith|16|16|2|5|cell-bborder|0ln>|<cwith|14|14|2|5|cell-bborder|0ln>|<cwith|14|14|2|5|cell-lborder|0ln>|<cwith|14|14|2|5|cell-rborder|0ln>|<cwith|15|15|2|5|cell-tborder|0ln>|<cwith|14|17|3|3|cell-halign|c>|<cwith|14|17|3|3|cell-valign|c>|<cwith|14|17|3|3|cell-tborder|0ln>|<cwith|14|17|3|3|cell-bborder|0ln>|<cwith|14|17|3|3|cell-lborder|0ln>|<cwith|14|17|3|3|cell-rborder|0ln>|<cwith|14|14|3|3|cell-bborder|0ln>|<cwith|14|14|3|3|cell-rborder|0ln>|<cwith|15|15|3|3|cell-tborder|0ln>|<cwith|14|17|3|3|cell-halign|c>|<cwith|14|17|3|3|cell-valign|c>|<cwith|14|17|3|3|cell-tborder|0ln>|<cwith|14|17|3|3|cell-bborder|0ln>|<cwith|14|17|3|3|cell-lborder|0ln>|<cwith|14|17|3|3|cell-rborder|0ln>|<cwith|17|17|3|3|cell-tborder|0ln>|<cwith|17|17|3|3|cell-lborder|0ln>|<cwith|17|17|3|3|cell-rborder|0ln>|<cwith|16|16|3|3|cell-bborder|0ln>|<cwith|14|14|3|3|cell-bborder|0ln>|<cwith|14|14|3|3|cell-rborder|0ln>|<cwith|15|15|3|3|cell-tborder|0ln>|<cwith|14|17|4|4|cell-halign|c>|<cwith|14|17|4|4|cell-valign|c>|<cwith|14|17|4|4|cell-tborder|0ln>|<cwith|14|17|4|4|cell-bborder|0ln>|<cwith|14|17|4|4|cell-lborder|0ln>|<cwith|14|17|4|4|cell-rborder|0ln>|<cwith|14|14|4|4|cell-bborder|0ln>|<cwith|14|14|4|4|cell-lborder|0ln>|<cwith|15|15|4|4|cell-tborder|0ln>|<cwith|14|17|4|4|cell-halign|c>|<cwith|14|17|4|4|cell-valign|c>|<cwith|14|17|4|4|cell-tborder|0ln>|<cwith|14|17|4|4|cell-bborder|0ln>|<cwith|14|17|4|4|cell-lborder|0ln>|<cwith|14|17|4|4|cell-rborder|0ln>|<cwith|17|17|4|4|cell-tborder|0ln>|<cwith|17|17|4|4|cell-lborder|0ln>|<cwith|17|17|4|4|cell-rborder|0ln>|<cwith|16|16|4|4|cell-bborder|0ln>|<cwith|14|14|4|4|cell-bborder|0ln>|<cwith|14|14|4|4|cell-lborder|0ln>|<cwith|15|15|4|4|cell-tborder|0ln>|<cwith|14|17|6|7|cell-halign|c>|<cwith|14|17|6|7|cell-valign|c>|<cwith|14|17|6|7|cell-tborder|0ln>|<cwith|14|17|6|7|cell-bborder|0ln>|<cwith|14|17|6|7|cell-lborder|0ln>|<cwith|14|17|6|7|cell-rborder|0ln>|<cwith|17|17|6|7|cell-tborder|0ln>|<cwith|17|17|6|7|cell-lborder|0ln>|<cwith|17|17|6|7|cell-rborder|0ln>|<cwith|16|16|6|7|cell-bborder|0ln>|<cwith|17|17|6|6|cell-lborder|0ln>|<cwith|14|14|5|7|cell-bborder|0ln>|<cwith|14|14|5|7|cell-lborder|0ln>|<cwith|14|14|5|7|cell-rborder|0ln>|<cwith|15|15|5|7|cell-tborder|0ln>|<cwith|14|14|4|4|cell-rborder|0ln>|<cwith|14|17|1|1|cell-halign|c>|<cwith|14|17|1|1|cell-valign|c>|<cwith|14|17|1|1|cell-tborder|0ln>|<cwith|14|17|1|1|cell-bborder|0ln>|<cwith|14|17|1|1|cell-rborder|0ln>|<cwith|14|17|1|1|cell-tborder|0ln>|<cwith|14|17|1|1|cell-bborder|0ln>|<cwith|14|17|1|1|cell-rborder|0ln>|<cwith|17|17|1|1|cell-tborder|0ln>|<cwith|17|17|1|1|cell-rborder|0ln>|<cwith|16|16|1|1|cell-bborder|0ln>|<cwith|17|17|1|1|cell-rborder|0ln>|<cwith|14|14|1|2|cell-bborder|0ln>|<cwith|14|14|1|2|cell-lborder|0ln>|<cwith|14|14|1|2|cell-rborder|0ln>|<cwith|15|15|1|2|cell-tborder|0ln>|<cwith|14|14|3|3|cell-lborder|0ln>|<cwith|14|17|4|4|cell-halign|c>|<cwith|14|17|4|4|cell-valign|c>|<cwith|14|17|4|4|cell-tborder|0ln>|<cwith|14|17|4|4|cell-bborder|0ln>|<cwith|14|17|4|4|cell-lborder|0ln>|<cwith|14|17|4|4|cell-rborder|0ln>|<cwith|14|17|4|4|cell-halign|c>|<cwith|14|17|4|4|cell-valign|c>|<cwith|14|17|4|4|cell-tborder|0ln>|<cwith|14|17|4|4|cell-bborder|0ln>|<cwith|14|17|4|4|cell-lborder|0ln>|<cwith|14|17|4|4|cell-rborder|0ln>|<cwith|14|14|4|4|cell-bborder|0ln>|<cwith|14|14|4|4|cell-lborder|0ln>|<cwith|14|14|4|4|cell-rborder|0ln>|<cwith|15|15|4|4|cell-tborder|0ln>|<cwith|14|17|4|4|cell-halign|c>|<cwith|14|17|4|4|cell-valign|c>|<cwith|14|17|4|4|cell-tborder|0ln>|<cwith|14|17|4|4|cell-bborder|0ln>|<cwith|14|17|4|4|cell-lborder|0ln>|<cwith|14|17|4|4|cell-rborder|0ln>|<cwith|17|17|4|4|cell-tborder|0ln>|<cwith|17|17|4|4|cell-lborder|0ln>|<cwith|17|17|4|4|cell-rborder|0ln>|<cwith|16|16|4|4|cell-bborder|0ln>|<cwith|14|14|4|4|cell-bborder|0ln>|<cwith|14|14|4|4|cell-lborder|0ln>|<cwith|14|14|4|4|cell-rborder|0ln>|<cwith|15|15|4|4|cell-tborder|0ln>|<cwith|14|17|4|4|cell-halign|c>|<cwith|14|17|4|4|cell-valign|c>|<cwith|14|17|4|4|cell-tborder|0ln>|<cwith|14|17|4|4|cell-bborder|0ln>|<cwith|14|17|4|4|cell-lborder|0ln>|<cwith|14|17|4|4|cell-rborder|0ln>|<cwith|14|14|4|4|cell-bborder|0ln>|<cwith|14|14|4|4|cell-rborder|0ln>|<cwith|15|15|4|4|cell-tborder|0ln>|<cwith|14|17|4|4|cell-halign|c>|<cwith|14|17|4|4|cell-valign|c>|<cwith|14|17|4|4|cell-tborder|0ln>|<cwith|14|17|4|4|cell-bborder|0ln>|<cwith|14|17|4|4|cell-lborder|0ln>|<cwith|14|17|4|4|cell-rborder|0ln>|<cwith|17|17|4|4|cell-tborder|0ln>|<cwith|17|17|4|4|cell-lborder|0ln>|<cwith|17|17|4|4|cell-rborder|0ln>|<cwith|16|16|4|4|cell-bborder|0ln>|<cwith|14|14|4|4|cell-bborder|0ln>|<cwith|14|14|4|4|cell-rborder|0ln>|<cwith|15|15|4|4|cell-tborder|0ln>|<cwith|14|14|4|4|cell-lborder|0ln>|<cwith|14|17|4|4|cell-halign|c>|<cwith|14|17|4|4|cell-valign|c>|<cwith|14|17|4|4|cell-tborder|0ln>|<cwith|14|17|4|4|cell-bborder|0ln>|<cwith|14|17|4|4|cell-lborder|0ln>|<cwith|14|17|4|4|cell-rborder|0ln>|<cwith|14|17|4|4|cell-lborder|0ln>|<cwith|14|17|4|4|cell-halign|c>|<cwith|14|17|4|4|cell-valign|c>|<cwith|14|17|4|4|cell-tborder|0ln>|<cwith|14|17|4|4|cell-bborder|0ln>|<cwith|14|17|4|4|cell-lborder|0ln>|<cwith|14|17|4|4|cell-rborder|0ln>|<cwith|14|17|4|4|cell-lborder|0ln>|<cwith|14|17|4|4|cell-halign|c>|<cwith|14|17|4|4|cell-valign|c>|<cwith|14|17|4|4|cell-tborder|0ln>|<cwith|14|17|4|4|cell-bborder|0ln>|<cwith|14|17|4|4|cell-lborder|0ln>|<cwith|14|17|4|4|cell-rborder|0ln>|<cwith|14|17|4|4|cell-lborder|0ln>|<cwith|14|14|4|4|cell-bborder|0ln>|<cwith|14|14|4|4|cell-lborder|0ln>|<cwith|14|14|4|4|cell-rborder|0ln>|<cwith|15|15|4|4|cell-tborder|0ln>|<cwith|14|17|4|4|cell-halign|c>|<cwith|14|17|4|4|cell-valign|c>|<cwith|14|17|4|4|cell-tborder|0ln>|<cwith|14|17|4|4|cell-bborder|0ln>|<cwith|14|17|4|4|cell-lborder|0ln>|<cwith|14|17|4|4|cell-rborder|0ln>|<cwith|14|17|4|4|cell-lborder|0ln>|<cwith|17|17|4|4|cell-tborder|0ln>|<cwith|17|17|4|4|cell-lborder|0ln>|<cwith|17|17|4|4|cell-rborder|0ln>|<cwith|16|16|4|4|cell-bborder|0ln>|<cwith|14|14|4|4|cell-bborder|0ln>|<cwith|14|14|4|4|cell-lborder|0ln>|<cwith|14|14|4|4|cell-rborder|0ln>|<cwith|15|15|4|4|cell-tborder|0ln>|<cwith|14|14|4|4|cell-bborder|0ln>|<cwith|14|14|4|4|cell-lborder|0ln>|<cwith|14|14|4|4|cell-rborder|0ln>|<cwith|15|15|4|4|cell-tborder|0ln>|<cwith|14|17|2|2|cell-halign|c>|<cwith|14|17|2|2|cell-valign|c>|<cwith|14|17|2|2|cell-tborder|0ln>|<cwith|14|17|2|2|cell-bborder|0ln>|<cwith|14|17|2|2|cell-lborder|0ln>|<cwith|14|17|2|2|cell-rborder|0ln>|<cwith|14|17|2|2|cell-halign|c>|<cwith|14|17|2|2|cell-valign|c>|<cwith|14|17|2|2|cell-tborder|0ln>|<cwith|14|17|2|2|cell-bborder|0ln>|<cwith|14|17|2|2|cell-lborder|0ln>|<cwith|14|17|2|2|cell-rborder|0ln>|<cwith|14|17|2|2|cell-halign|c>|<cwith|14|17|2|2|cell-valign|c>|<cwith|14|17|2|2|cell-tborder|0ln>|<cwith|14|17|2|2|cell-bborder|0ln>|<cwith|14|17|2|2|cell-lborder|0ln>|<cwith|14|17|2|2|cell-rborder|0ln>|<cwith|14|14|2|2|cell-bborder|0ln>|<cwith|14|14|2|2|cell-lborder|0ln>|<cwith|14|14|2|2|cell-rborder|0ln>|<cwith|15|15|2|2|cell-tborder|0ln>|<cwith|14|17|2|2|cell-halign|c>|<cwith|14|17|2|2|cell-valign|c>|<cwith|14|17|2|2|cell-tborder|0ln>|<cwith|14|17|2|2|cell-bborder|0ln>|<cwith|14|17|2|2|cell-lborder|0ln>|<cwith|14|17|2|2|cell-rborder|0ln>|<cwith|17|17|2|2|cell-tborder|0ln>|<cwith|17|17|2|2|cell-lborder|0ln>|<cwith|17|17|2|2|cell-rborder|0ln>|<cwith|16|16|2|2|cell-bborder|0ln>|<cwith|14|14|2|2|cell-bborder|0ln>|<cwith|14|14|2|2|cell-lborder|0ln>|<cwith|14|14|2|2|cell-rborder|0ln>|<cwith|15|15|2|2|cell-tborder|0ln>|<cwith|14|17|2|2|cell-halign|c>|<cwith|14|17|2|2|cell-valign|c>|<cwith|14|17|2|2|cell-tborder|0ln>|<cwith|14|17|2|2|cell-bborder|0ln>|<cwith|14|17|2|2|cell-lborder|0ln>|<cwith|14|17|2|2|cell-rborder|0ln>|<cwith|14|14|2|2|cell-bborder|0ln>|<cwith|14|14|2|2|cell-rborder|0ln>|<cwith|15|15|2|2|cell-tborder|0ln>|<cwith|14|17|2|2|cell-halign|c>|<cwith|14|17|2|2|cell-valign|c>|<cwith|14|17|2|2|cell-tborder|0ln>|<cwith|14|17|2|2|cell-bborder|0ln>|<cwith|14|17|2|2|cell-lborder|0ln>|<cwith|14|17|2|2|cell-rborder|0ln>|<cwith|17|17|2|2|cell-tborder|0ln>|<cwith|17|17|2|2|cell-lborder|0ln>|<cwith|17|17|2|2|cell-rborder|0ln>|<cwith|16|16|2|2|cell-bborder|0ln>|<cwith|14|14|2|2|cell-bborder|0ln>|<cwith|14|14|2|2|cell-rborder|0ln>|<cwith|15|15|2|2|cell-tborder|0ln>|<cwith|14|14|2|2|cell-lborder|0ln>|<cwith|14|17|3|3|cell-halign|c>|<cwith|14|17|3|3|cell-valign|c>|<cwith|14|17|3|3|cell-tborder|0ln>|<cwith|14|17|3|3|cell-bborder|0ln>|<cwith|14|17|3|3|cell-lborder|0ln>|<cwith|14|17|3|3|cell-rborder|0ln>|<cwith|14|17|3|3|cell-halign|c>|<cwith|14|17|3|3|cell-valign|c>|<cwith|14|17|3|3|cell-tborder|0ln>|<cwith|14|17|3|3|cell-bborder|0ln>|<cwith|14|17|3|3|cell-lborder|0ln>|<cwith|14|17|3|3|cell-rborder|0ln>|<cwith|14|17|3|3|cell-halign|c>|<cwith|14|17|3|3|cell-valign|c>|<cwith|14|17|3|3|cell-tborder|0ln>|<cwith|14|17|3|3|cell-bborder|0ln>|<cwith|14|17|3|3|cell-lborder|0ln>|<cwith|14|17|3|3|cell-rborder|0ln>|<cwith|14|14|3|3|cell-bborder|0ln>|<cwith|14|14|3|3|cell-lborder|0ln>|<cwith|14|14|3|3|cell-rborder|0ln>|<cwith|15|15|3|3|cell-tborder|0ln>|<cwith|14|17|3|3|cell-halign|c>|<cwith|14|17|3|3|cell-valign|c>|<cwith|14|17|3|3|cell-tborder|0ln>|<cwith|14|17|3|3|cell-bborder|0ln>|<cwith|14|17|3|3|cell-lborder|0ln>|<cwith|14|17|3|3|cell-rborder|0ln>|<cwith|17|17|3|3|cell-tborder|0ln>|<cwith|17|17|3|3|cell-lborder|0ln>|<cwith|17|17|3|3|cell-rborder|0ln>|<cwith|16|16|3|3|cell-bborder|0ln>|<cwith|14|14|3|3|cell-bborder|0ln>|<cwith|14|14|3|3|cell-lborder|0ln>|<cwith|14|14|3|3|cell-rborder|0ln>|<cwith|15|15|3|3|cell-tborder|0ln>|<cwith|14|17|3|3|cell-halign|c>|<cwith|14|17|3|3|cell-valign|c>|<cwith|14|17|3|3|cell-tborder|0ln>|<cwith|14|17|3|3|cell-bborder|0ln>|<cwith|14|17|3|3|cell-lborder|0ln>|<cwith|14|17|3|3|cell-rborder|0ln>|<cwith|14|14|3|3|cell-bborder|0ln>|<cwith|14|14|3|3|cell-lborder|0ln>|<cwith|15|15|3|3|cell-tborder|0ln>|<cwith|14|17|3|3|cell-halign|c>|<cwith|14|17|3|3|cell-valign|c>|<cwith|14|17|3|3|cell-tborder|0ln>|<cwith|14|17|3|3|cell-bborder|0ln>|<cwith|14|17|3|3|cell-lborder|0ln>|<cwith|14|17|3|3|cell-rborder|0ln>|<cwith|17|17|3|3|cell-tborder|0ln>|<cwith|17|17|3|3|cell-lborder|0ln>|<cwith|17|17|3|3|cell-rborder|0ln>|<cwith|16|16|3|3|cell-bborder|0ln>|<cwith|14|14|3|3|cell-bborder|0ln>|<cwith|14|14|3|3|cell-lborder|0ln>|<cwith|15|15|3|3|cell-tborder|0ln>|<cwith|14|14|3|3|cell-rborder|0ln>|<cwith|14|17|3|3|cell-halign|c>|<cwith|14|17|3|3|cell-valign|c>|<cwith|14|17|3|3|cell-tborder|0ln>|<cwith|14|17|3|3|cell-bborder|0ln>|<cwith|14|17|3|3|cell-lborder|0ln>|<cwith|14|17|3|3|cell-rborder|0ln>|<cwith|14|17|3|3|cell-halign|c>|<cwith|14|17|3|3|cell-valign|c>|<cwith|14|17|3|3|cell-tborder|0ln>|<cwith|14|17|3|3|cell-bborder|0ln>|<cwith|14|17|3|3|cell-lborder|0ln>|<cwith|14|17|3|3|cell-rborder|0ln>|<cwith|14|14|3|3|cell-bborder|0ln>|<cwith|14|14|3|3|cell-lborder|0ln>|<cwith|14|14|3|3|cell-rborder|0ln>|<cwith|15|15|3|3|cell-tborder|0ln>|<cwith|14|17|3|3|cell-halign|c>|<cwith|14|17|3|3|cell-valign|c>|<cwith|14|17|3|3|cell-tborder|0ln>|<cwith|14|17|3|3|cell-bborder|0ln>|<cwith|14|17|3|3|cell-lborder|0ln>|<cwith|14|17|3|3|cell-rborder|0ln>|<cwith|17|17|3|3|cell-tborder|0ln>|<cwith|17|17|3|3|cell-lborder|0ln>|<cwith|17|17|3|3|cell-rborder|0ln>|<cwith|16|16|3|3|cell-bborder|0ln>|<cwith|14|14|3|3|cell-bborder|0ln>|<cwith|14|14|3|3|cell-lborder|0ln>|<cwith|14|14|3|3|cell-rborder|0ln>|<cwith|15|15|3|3|cell-tborder|0ln>|<cwith|14|17|3|3|cell-halign|c>|<cwith|14|17|3|3|cell-valign|c>|<cwith|14|17|3|3|cell-tborder|0ln>|<cwith|14|17|3|3|cell-bborder|0ln>|<cwith|14|17|3|3|cell-lborder|0ln>|<cwith|14|17|3|3|cell-rborder|0ln>|<cwith|14|14|3|3|cell-bborder|0ln>|<cwith|14|14|3|3|cell-rborder|0ln>|<cwith|15|15|3|3|cell-tborder|0ln>|<cwith|14|17|3|3|cell-halign|c>|<cwith|14|17|3|3|cell-valign|c>|<cwith|14|17|3|3|cell-tborder|0ln>|<cwith|14|17|3|3|cell-bborder|0ln>|<cwith|14|17|3|3|cell-lborder|0ln>|<cwith|14|17|3|3|cell-rborder|0ln>|<cwith|17|17|3|3|cell-tborder|0ln>|<cwith|17|17|3|3|cell-lborder|0ln>|<cwith|17|17|3|3|cell-rborder|0ln>|<cwith|16|16|3|3|cell-bborder|0ln>|<cwith|14|14|3|3|cell-bborder|0ln>|<cwith|14|14|3|3|cell-rborder|0ln>|<cwith|15|15|3|3|cell-tborder|0ln>|<cwith|14|14|3|3|cell-lborder|0ln>|<cwith|14|17|3|3|cell-halign|c>|<cwith|14|17|3|3|cell-valign|c>|<cwith|14|17|3|3|cell-tborder|0ln>|<cwith|14|17|3|3|cell-bborder|0ln>|<cwith|14|17|3|3|cell-lborder|0ln>|<cwith|14|17|3|3|cell-rborder|0ln>|<cwith|14|17|3|3|cell-lborder|0ln>|<cwith|14|17|3|3|cell-halign|c>|<cwith|14|17|3|3|cell-valign|c>|<cwith|14|17|3|3|cell-tborder|0ln>|<cwith|14|17|3|3|cell-bborder|0ln>|<cwith|14|17|3|3|cell-lborder|0ln>|<cwith|14|17|3|3|cell-rborder|0ln>|<cwith|14|17|3|3|cell-lborder|0ln>|<cwith|14|17|3|3|cell-halign|c>|<cwith|14|17|3|3|cell-valign|c>|<cwith|14|17|3|3|cell-tborder|0ln>|<cwith|14|17|3|3|cell-bborder|0ln>|<cwith|14|17|3|3|cell-lborder|0ln>|<cwith|14|17|3|3|cell-rborder|0ln>|<cwith|14|17|3|3|cell-lborder|0ln>|<cwith|14|14|3|3|cell-bborder|0ln>|<cwith|14|14|3|3|cell-lborder|0ln>|<cwith|14|14|3|3|cell-rborder|0ln>|<cwith|15|15|3|3|cell-tborder|0ln>|<cwith|14|17|3|3|cell-halign|c>|<cwith|14|17|3|3|cell-valign|c>|<cwith|14|17|3|3|cell-tborder|0ln>|<cwith|14|17|3|3|cell-bborder|0ln>|<cwith|14|17|3|3|cell-lborder|0ln>|<cwith|14|17|3|3|cell-rborder|0ln>|<cwith|14|17|3|3|cell-lborder|0ln>|<cwith|17|17|3|3|cell-tborder|0ln>|<cwith|17|17|3|3|cell-lborder|0ln>|<cwith|17|17|3|3|cell-rborder|0ln>|<cwith|16|16|3|3|cell-bborder|0ln>|<cwith|14|14|3|3|cell-bborder|0ln>|<cwith|14|14|3|3|cell-lborder|0ln>|<cwith|14|14|3|3|cell-rborder|0ln>|<cwith|15|15|3|3|cell-tborder|0ln>|<cwith|14|14|3|3|cell-bborder|0ln>|<cwith|14|14|3|3|cell-lborder|0ln>|<cwith|14|14|3|3|cell-rborder|0ln>|<cwith|15|15|3|3|cell-tborder|0ln>|<cwith|18|21|1|7|cell-halign|c>|<cwith|18|21|1|7|cell-valign|c>|<cwith|18|21|1|7|cell-tborder|0ln>|<cwith|18|21|1|7|cell-bborder|0ln>|<cwith|18|21|1|7|cell-lborder|0ln>|<cwith|18|21|1|7|cell-rborder|0ln>|<cwith|18|21|1|1|cell-tborder|0ln>|<cwith|18|21|1|1|cell-bborder|0ln>|<cwith|18|21|1|1|cell-rborder|0ln>|<cwith|18|21|2|2|cell-lborder|0ln>|<cwith|18|21|1|7|cell-halign|c>|<cwith|18|21|1|7|cell-valign|c>|<cwith|18|21|1|7|cell-tborder|0ln>|<cwith|18|21|1|7|cell-bborder|0ln>|<cwith|18|21|1|7|cell-lborder|0ln>|<cwith|18|21|1|7|cell-rborder|0ln>|<cwith|18|21|1|1|cell-tborder|0ln>|<cwith|18|21|1|1|cell-bborder|0ln>|<cwith|18|21|1|1|cell-rborder|0ln>|<cwith|18|21|2|2|cell-lborder|0ln>|<cwith|18|21|1|7|cell-halign|c>|<cwith|18|21|1|7|cell-valign|c>|<cwith|18|21|1|7|cell-tborder|0ln>|<cwith|18|21|1|7|cell-bborder|0ln>|<cwith|18|21|1|7|cell-lborder|0ln>|<cwith|18|21|1|7|cell-rborder|0ln>|<cwith|18|21|1|1|cell-tborder|0ln>|<cwith|18|21|1|1|cell-bborder|0ln>|<cwith|18|21|1|1|cell-rborder|0ln>|<cwith|18|21|2|2|cell-lborder|0ln>|<cwith|18|18|1|7|cell-bborder|0ln>|<cwith|18|18|1|7|cell-lborder|0ln>|<cwith|18|18|1|7|cell-rborder|0ln>|<cwith|19|19|1|7|cell-tborder|0ln>|<cwith|18|21|2|5|cell-halign|c>|<cwith|18|21|2|5|cell-valign|c>|<cwith|18|21|2|5|cell-tborder|0ln>|<cwith|18|21|2|5|cell-bborder|0ln>|<cwith|18|21|2|5|cell-lborder|0ln>|<cwith|18|21|2|5|cell-rborder|0ln>|<cwith|18|21|2|2|cell-lborder|0ln>|<cwith|21|21|2|5|cell-tborder|0ln>|<cwith|21|21|2|5|cell-lborder|0ln>|<cwith|21|21|2|5|cell-rborder|0ln>|<cwith|20|20|2|5|cell-bborder|0ln>|<cwith|18|18|2|5|cell-bborder|0ln>|<cwith|18|18|2|5|cell-lborder|0ln>|<cwith|18|18|2|5|cell-rborder|0ln>|<cwith|19|19|2|5|cell-tborder|0ln>|<cwith|18|21|3|3|cell-halign|c>|<cwith|18|21|3|3|cell-valign|c>|<cwith|18|21|3|3|cell-tborder|0ln>|<cwith|18|21|3|3|cell-bborder|0ln>|<cwith|18|21|3|3|cell-lborder|0ln>|<cwith|18|21|3|3|cell-rborder|0ln>|<cwith|18|18|3|3|cell-bborder|0ln>|<cwith|18|18|3|3|cell-rborder|0ln>|<cwith|19|19|3|3|cell-tborder|0ln>|<cwith|18|21|3|3|cell-halign|c>|<cwith|18|21|3|3|cell-valign|c>|<cwith|18|21|3|3|cell-tborder|0ln>|<cwith|18|21|3|3|cell-bborder|0ln>|<cwith|18|21|3|3|cell-lborder|0ln>|<cwith|18|21|3|3|cell-rborder|0ln>|<cwith|21|21|3|3|cell-tborder|0ln>|<cwith|21|21|3|3|cell-lborder|0ln>|<cwith|21|21|3|3|cell-rborder|0ln>|<cwith|20|20|3|3|cell-bborder|0ln>|<cwith|18|18|3|3|cell-bborder|0ln>|<cwith|18|18|3|3|cell-rborder|0ln>|<cwith|19|19|3|3|cell-tborder|0ln>|<cwith|18|21|4|4|cell-halign|c>|<cwith|18|21|4|4|cell-valign|c>|<cwith|18|21|4|4|cell-tborder|0ln>|<cwith|18|21|4|4|cell-bborder|0ln>|<cwith|18|21|4|4|cell-lborder|0ln>|<cwith|18|21|4|4|cell-rborder|0ln>|<cwith|18|18|4|4|cell-bborder|0ln>|<cwith|18|18|4|4|cell-lborder|0ln>|<cwith|19|19|4|4|cell-tborder|0ln>|<cwith|18|21|4|4|cell-halign|c>|<cwith|18|21|4|4|cell-valign|c>|<cwith|18|21|4|4|cell-tborder|0ln>|<cwith|18|21|4|4|cell-bborder|0ln>|<cwith|18|21|4|4|cell-lborder|0ln>|<cwith|18|21|4|4|cell-rborder|0ln>|<cwith|21|21|4|4|cell-tborder|0ln>|<cwith|21|21|4|4|cell-lborder|0ln>|<cwith|21|21|4|4|cell-rborder|0ln>|<cwith|20|20|4|4|cell-bborder|0ln>|<cwith|18|18|4|4|cell-bborder|0ln>|<cwith|18|18|4|4|cell-lborder|0ln>|<cwith|19|19|4|4|cell-tborder|0ln>|<cwith|18|21|6|7|cell-halign|c>|<cwith|18|21|6|7|cell-valign|c>|<cwith|18|21|6|7|cell-tborder|0ln>|<cwith|18|21|6|7|cell-bborder|0ln>|<cwith|18|21|6|7|cell-lborder|0ln>|<cwith|18|21|6|7|cell-rborder|0ln>|<cwith|21|21|6|7|cell-tborder|0ln>|<cwith|21|21|6|7|cell-lborder|0ln>|<cwith|21|21|6|7|cell-rborder|0ln>|<cwith|20|20|6|7|cell-bborder|0ln>|<cwith|21|21|6|6|cell-lborder|0ln>|<cwith|18|18|5|7|cell-bborder|0ln>|<cwith|18|18|5|7|cell-lborder|0ln>|<cwith|18|18|5|7|cell-rborder|0ln>|<cwith|19|19|5|7|cell-tborder|0ln>|<cwith|18|18|4|4|cell-rborder|0ln>|<cwith|18|21|1|1|cell-halign|c>|<cwith|18|21|1|1|cell-valign|c>|<cwith|18|21|1|1|cell-tborder|0ln>|<cwith|18|21|1|1|cell-bborder|0ln>|<cwith|18|21|1|1|cell-rborder|0ln>|<cwith|18|21|1|1|cell-tborder|0ln>|<cwith|18|21|1|1|cell-bborder|0ln>|<cwith|18|21|1|1|cell-rborder|0ln>|<cwith|21|21|1|1|cell-tborder|0ln>|<cwith|21|21|1|1|cell-rborder|0ln>|<cwith|20|20|1|1|cell-bborder|0ln>|<cwith|21|21|1|1|cell-rborder|0ln>|<cwith|18|18|1|2|cell-bborder|0ln>|<cwith|18|18|1|2|cell-lborder|0ln>|<cwith|18|18|1|2|cell-rborder|0ln>|<cwith|19|19|1|2|cell-tborder|0ln>|<cwith|18|18|3|3|cell-lborder|0ln>|<cwith|18|21|4|4|cell-halign|c>|<cwith|18|21|4|4|cell-valign|c>|<cwith|18|21|4|4|cell-tborder|0ln>|<cwith|18|21|4|4|cell-bborder|0ln>|<cwith|18|21|4|4|cell-lborder|0ln>|<cwith|18|21|4|4|cell-rborder|0ln>|<cwith|18|21|4|4|cell-halign|c>|<cwith|18|21|4|4|cell-valign|c>|<cwith|18|21|4|4|cell-tborder|0ln>|<cwith|18|21|4|4|cell-bborder|0ln>|<cwith|18|21|4|4|cell-lborder|0ln>|<cwith|18|21|4|4|cell-rborder|0ln>|<cwith|18|18|4|4|cell-bborder|0ln>|<cwith|18|18|4|4|cell-lborder|0ln>|<cwith|18|18|4|4|cell-rborder|0ln>|<cwith|19|19|4|4|cell-tborder|0ln>|<cwith|18|21|4|4|cell-halign|c>|<cwith|18|21|4|4|cell-valign|c>|<cwith|18|21|4|4|cell-tborder|0ln>|<cwith|18|21|4|4|cell-bborder|0ln>|<cwith|18|21|4|4|cell-lborder|0ln>|<cwith|18|21|4|4|cell-rborder|0ln>|<cwith|21|21|4|4|cell-tborder|0ln>|<cwith|21|21|4|4|cell-lborder|0ln>|<cwith|21|21|4|4|cell-rborder|0ln>|<cwith|20|20|4|4|cell-bborder|0ln>|<cwith|18|18|4|4|cell-bborder|0ln>|<cwith|18|18|4|4|cell-lborder|0ln>|<cwith|18|18|4|4|cell-rborder|0ln>|<cwith|19|19|4|4|cell-tborder|0ln>|<cwith|18|21|4|4|cell-halign|c>|<cwith|18|21|4|4|cell-valign|c>|<cwith|18|21|4|4|cell-tborder|0ln>|<cwith|18|21|4|4|cell-bborder|0ln>|<cwith|18|21|4|4|cell-lborder|0ln>|<cwith|18|21|4|4|cell-rborder|0ln>|<cwith|18|18|4|4|cell-bborder|0ln>|<cwith|18|18|4|4|cell-rborder|0ln>|<cwith|19|19|4|4|cell-tborder|0ln>|<cwith|18|21|4|4|cell-halign|c>|<cwith|18|21|4|4|cell-valign|c>|<cwith|18|21|4|4|cell-tborder|0ln>|<cwith|18|21|4|4|cell-bborder|0ln>|<cwith|18|21|4|4|cell-lborder|0ln>|<cwith|18|21|4|4|cell-rborder|0ln>|<cwith|21|21|4|4|cell-tborder|0ln>|<cwith|21|21|4|4|cell-lborder|0ln>|<cwith|21|21|4|4|cell-rborder|0ln>|<cwith|20|20|4|4|cell-bborder|0ln>|<cwith|18|18|4|4|cell-bborder|0ln>|<cwith|18|18|4|4|cell-rborder|0ln>|<cwith|19|19|4|4|cell-tborder|0ln>|<cwith|18|18|4|4|cell-lborder|0ln>|<cwith|18|21|4|4|cell-halign|c>|<cwith|18|21|4|4|cell-valign|c>|<cwith|18|21|4|4|cell-tborder|0ln>|<cwith|18|21|4|4|cell-bborder|0ln>|<cwith|18|21|4|4|cell-lborder|0ln>|<cwith|18|21|4|4|cell-rborder|0ln>|<cwith|18|21|4|4|cell-lborder|0ln>|<cwith|18|21|4|4|cell-halign|c>|<cwith|18|21|4|4|cell-valign|c>|<cwith|18|21|4|4|cell-tborder|0ln>|<cwith|18|21|4|4|cell-bborder|0ln>|<cwith|18|21|4|4|cell-lborder|0ln>|<cwith|18|21|4|4|cell-rborder|0ln>|<cwith|18|21|4|4|cell-lborder|0ln>|<cwith|18|21|4|4|cell-halign|c>|<cwith|18|21|4|4|cell-valign|c>|<cwith|18|21|4|4|cell-tborder|0ln>|<cwith|18|21|4|4|cell-bborder|0ln>|<cwith|18|21|4|4|cell-lborder|0ln>|<cwith|18|21|4|4|cell-rborder|0ln>|<cwith|18|21|4|4|cell-lborder|0ln>|<cwith|18|18|4|4|cell-bborder|0ln>|<cwith|18|18|4|4|cell-lborder|0ln>|<cwith|18|18|4|4|cell-rborder|0ln>|<cwith|19|19|4|4|cell-tborder|0ln>|<cwith|18|21|4|4|cell-halign|c>|<cwith|18|21|4|4|cell-valign|c>|<cwith|18|21|4|4|cell-tborder|0ln>|<cwith|18|21|4|4|cell-bborder|0ln>|<cwith|18|21|4|4|cell-lborder|0ln>|<cwith|18|21|4|4|cell-rborder|0ln>|<cwith|18|21|4|4|cell-lborder|0ln>|<cwith|21|21|4|4|cell-tborder|0ln>|<cwith|21|21|4|4|cell-lborder|0ln>|<cwith|21|21|4|4|cell-rborder|0ln>|<cwith|20|20|4|4|cell-bborder|0ln>|<cwith|18|18|4|4|cell-bborder|0ln>|<cwith|18|18|4|4|cell-lborder|0ln>|<cwith|18|18|4|4|cell-rborder|0ln>|<cwith|19|19|4|4|cell-tborder|0ln>|<cwith|18|18|4|4|cell-bborder|0ln>|<cwith|18|18|4|4|cell-lborder|0ln>|<cwith|18|18|4|4|cell-rborder|0ln>|<cwith|19|19|4|4|cell-tborder|0ln>|<cwith|18|21|2|2|cell-halign|c>|<cwith|18|21|2|2|cell-valign|c>|<cwith|18|21|2|2|cell-tborder|0ln>|<cwith|18|21|2|2|cell-bborder|0ln>|<cwith|18|21|2|2|cell-lborder|0ln>|<cwith|18|21|2|2|cell-rborder|0ln>|<cwith|18|21|2|2|cell-halign|c>|<cwith|18|21|2|2|cell-valign|c>|<cwith|18|21|2|2|cell-tborder|0ln>|<cwith|18|21|2|2|cell-bborder|0ln>|<cwith|18|21|2|2|cell-lborder|0ln>|<cwith|18|21|2|2|cell-rborder|0ln>|<cwith|18|21|2|2|cell-halign|c>|<cwith|18|21|2|2|cell-valign|c>|<cwith|18|21|2|2|cell-tborder|0ln>|<cwith|18|21|2|2|cell-bborder|0ln>|<cwith|18|21|2|2|cell-lborder|0ln>|<cwith|18|21|2|2|cell-rborder|0ln>|<cwith|18|18|2|2|cell-bborder|0ln>|<cwith|18|18|2|2|cell-lborder|0ln>|<cwith|18|18|2|2|cell-rborder|0ln>|<cwith|19|19|2|2|cell-tborder|0ln>|<cwith|18|21|2|2|cell-halign|c>|<cwith|18|21|2|2|cell-valign|c>|<cwith|18|21|2|2|cell-tborder|0ln>|<cwith|18|21|2|2|cell-bborder|0ln>|<cwith|18|21|2|2|cell-lborder|0ln>|<cwith|18|21|2|2|cell-rborder|0ln>|<cwith|21|21|2|2|cell-tborder|0ln>|<cwith|21|21|2|2|cell-lborder|0ln>|<cwith|21|21|2|2|cell-rborder|0ln>|<cwith|20|20|2|2|cell-bborder|0ln>|<cwith|18|18|2|2|cell-bborder|0ln>|<cwith|18|18|2|2|cell-lborder|0ln>|<cwith|18|18|2|2|cell-rborder|0ln>|<cwith|19|19|2|2|cell-tborder|0ln>|<cwith|18|21|2|2|cell-halign|c>|<cwith|18|21|2|2|cell-valign|c>|<cwith|18|21|2|2|cell-tborder|0ln>|<cwith|18|21|2|2|cell-bborder|0ln>|<cwith|18|21|2|2|cell-lborder|0ln>|<cwith|18|21|2|2|cell-rborder|0ln>|<cwith|18|18|2|2|cell-bborder|0ln>|<cwith|18|18|2|2|cell-rborder|0ln>|<cwith|19|19|2|2|cell-tborder|0ln>|<cwith|18|21|2|2|cell-halign|c>|<cwith|18|21|2|2|cell-valign|c>|<cwith|18|21|2|2|cell-tborder|0ln>|<cwith|18|21|2|2|cell-bborder|0ln>|<cwith|18|21|2|2|cell-lborder|0ln>|<cwith|18|21|2|2|cell-rborder|0ln>|<cwith|21|21|2|2|cell-tborder|0ln>|<cwith|21|21|2|2|cell-lborder|0ln>|<cwith|21|21|2|2|cell-rborder|0ln>|<cwith|20|20|2|2|cell-bborder|0ln>|<cwith|18|18|2|2|cell-bborder|0ln>|<cwith|18|18|2|2|cell-rborder|0ln>|<cwith|19|19|2|2|cell-tborder|0ln>|<cwith|18|18|2|2|cell-lborder|0ln>|<cwith|18|21|3|3|cell-halign|c>|<cwith|18|21|3|3|cell-valign|c>|<cwith|18|21|3|3|cell-tborder|0ln>|<cwith|18|21|3|3|cell-bborder|0ln>|<cwith|18|21|3|3|cell-lborder|0ln>|<cwith|18|21|3|3|cell-rborder|0ln>|<cwith|18|21|3|3|cell-halign|c>|<cwith|18|21|3|3|cell-valign|c>|<cwith|18|21|3|3|cell-tborder|0ln>|<cwith|18|21|3|3|cell-bborder|0ln>|<cwith|18|21|3|3|cell-lborder|0ln>|<cwith|18|21|3|3|cell-rborder|0ln>|<cwith|18|21|3|3|cell-halign|c>|<cwith|18|21|3|3|cell-valign|c>|<cwith|18|21|3|3|cell-tborder|0ln>|<cwith|18|21|3|3|cell-bborder|0ln>|<cwith|18|21|3|3|cell-lborder|0ln>|<cwith|18|21|3|3|cell-rborder|0ln>|<cwith|18|18|3|3|cell-bborder|0ln>|<cwith|18|18|3|3|cell-lborder|0ln>|<cwith|18|18|3|3|cell-rborder|0ln>|<cwith|19|19|3|3|cell-tborder|0ln>|<cwith|18|21|3|3|cell-halign|c>|<cwith|18|21|3|3|cell-valign|c>|<cwith|18|21|3|3|cell-tborder|0ln>|<cwith|18|21|3|3|cell-bborder|0ln>|<cwith|18|21|3|3|cell-lborder|0ln>|<cwith|18|21|3|3|cell-rborder|0ln>|<cwith|21|21|3|3|cell-tborder|0ln>|<cwith|21|21|3|3|cell-lborder|0ln>|<cwith|21|21|3|3|cell-rborder|0ln>|<cwith|20|20|3|3|cell-bborder|0ln>|<cwith|18|18|3|3|cell-bborder|0ln>|<cwith|18|18|3|3|cell-lborder|0ln>|<cwith|18|18|3|3|cell-rborder|0ln>|<cwith|19|19|3|3|cell-tborder|0ln>|<cwith|18|21|3|3|cell-halign|c>|<cwith|18|21|3|3|cell-valign|c>|<cwith|18|21|3|3|cell-tborder|0ln>|<cwith|18|21|3|3|cell-bborder|0ln>|<cwith|18|21|3|3|cell-lborder|0ln>|<cwith|18|21|3|3|cell-rborder|0ln>|<cwith|18|18|3|3|cell-bborder|0ln>|<cwith|18|18|3|3|cell-lborder|0ln>|<cwith|19|19|3|3|cell-tborder|0ln>|<cwith|18|21|3|3|cell-halign|c>|<cwith|18|21|3|3|cell-valign|c>|<cwith|18|21|3|3|cell-tborder|0ln>|<cwith|18|21|3|3|cell-bborder|0ln>|<cwith|18|21|3|3|cell-lborder|0ln>|<cwith|18|21|3|3|cell-rborder|0ln>|<cwith|21|21|3|3|cell-tborder|0ln>|<cwith|21|21|3|3|cell-lborder|0ln>|<cwith|21|21|3|3|cell-rborder|0ln>|<cwith|20|20|3|3|cell-bborder|0ln>|<cwith|18|18|3|3|cell-bborder|0ln>|<cwith|18|18|3|3|cell-lborder|0ln>|<cwith|19|19|3|3|cell-tborder|0ln>|<cwith|18|18|3|3|cell-rborder|0ln>|<cwith|18|21|3|3|cell-halign|c>|<cwith|18|21|3|3|cell-valign|c>|<cwith|18|21|3|3|cell-tborder|0ln>|<cwith|18|21|3|3|cell-bborder|0ln>|<cwith|18|21|3|3|cell-lborder|0ln>|<cwith|18|21|3|3|cell-rborder|0ln>|<cwith|18|21|3|3|cell-halign|c>|<cwith|18|21|3|3|cell-valign|c>|<cwith|18|21|3|3|cell-tborder|0ln>|<cwith|18|21|3|3|cell-bborder|0ln>|<cwith|18|21|3|3|cell-lborder|0ln>|<cwith|18|21|3|3|cell-rborder|0ln>|<cwith|18|18|3|3|cell-bborder|0ln>|<cwith|18|18|3|3|cell-lborder|0ln>|<cwith|18|18|3|3|cell-rborder|0ln>|<cwith|19|19|3|3|cell-tborder|0ln>|<cwith|18|21|3|3|cell-halign|c>|<cwith|18|21|3|3|cell-valign|c>|<cwith|18|21|3|3|cell-tborder|0ln>|<cwith|18|21|3|3|cell-bborder|0ln>|<cwith|18|21|3|3|cell-lborder|0ln>|<cwith|18|21|3|3|cell-rborder|0ln>|<cwith|21|21|3|3|cell-tborder|0ln>|<cwith|21|21|3|3|cell-lborder|0ln>|<cwith|21|21|3|3|cell-rborder|0ln>|<cwith|20|20|3|3|cell-bborder|0ln>|<cwith|18|18|3|3|cell-bborder|0ln>|<cwith|18|18|3|3|cell-lborder|0ln>|<cwith|18|18|3|3|cell-rborder|0ln>|<cwith|19|19|3|3|cell-tborder|0ln>|<cwith|18|21|3|3|cell-halign|c>|<cwith|18|21|3|3|cell-valign|c>|<cwith|18|21|3|3|cell-tborder|0ln>|<cwith|18|21|3|3|cell-bborder|0ln>|<cwith|18|21|3|3|cell-lborder|0ln>|<cwith|18|21|3|3|cell-rborder|0ln>|<cwith|18|18|3|3|cell-bborder|0ln>|<cwith|18|18|3|3|cell-rborder|0ln>|<cwith|19|19|3|3|cell-tborder|0ln>|<cwith|18|21|3|3|cell-halign|c>|<cwith|18|21|3|3|cell-valign|c>|<cwith|18|21|3|3|cell-tborder|0ln>|<cwith|18|21|3|3|cell-bborder|0ln>|<cwith|18|21|3|3|cell-lborder|0ln>|<cwith|18|21|3|3|cell-rborder|0ln>|<cwith|21|21|3|3|cell-tborder|0ln>|<cwith|21|21|3|3|cell-lborder|0ln>|<cwith|21|21|3|3|cell-rborder|0ln>|<cwith|20|20|3|3|cell-bborder|0ln>|<cwith|18|18|3|3|cell-bborder|0ln>|<cwith|18|18|3|3|cell-rborder|0ln>|<cwith|19|19|3|3|cell-tborder|0ln>|<cwith|18|18|3|3|cell-lborder|0ln>|<cwith|18|21|3|3|cell-halign|c>|<cwith|18|21|3|3|cell-valign|c>|<cwith|18|21|3|3|cell-tborder|0ln>|<cwith|18|21|3|3|cell-bborder|0ln>|<cwith|18|21|3|3|cell-lborder|0ln>|<cwith|18|21|3|3|cell-rborder|0ln>|<cwith|18|21|3|3|cell-lborder|0ln>|<cwith|18|21|3|3|cell-halign|c>|<cwith|18|21|3|3|cell-valign|c>|<cwith|18|21|3|3|cell-tborder|0ln>|<cwith|18|21|3|3|cell-bborder|0ln>|<cwith|18|21|3|3|cell-lborder|0ln>|<cwith|18|21|3|3|cell-rborder|0ln>|<cwith|18|21|3|3|cell-lborder|0ln>|<cwith|18|21|3|3|cell-halign|c>|<cwith|18|21|3|3|cell-valign|c>|<cwith|18|21|3|3|cell-tborder|0ln>|<cwith|18|21|3|3|cell-bborder|0ln>|<cwith|18|21|3|3|cell-lborder|0ln>|<cwith|18|21|3|3|cell-rborder|0ln>|<cwith|18|21|3|3|cell-lborder|0ln>|<cwith|18|18|3|3|cell-bborder|0ln>|<cwith|18|18|3|3|cell-lborder|0ln>|<cwith|18|18|3|3|cell-rborder|0ln>|<cwith|19|19|3|3|cell-tborder|0ln>|<cwith|18|21|3|3|cell-halign|c>|<cwith|18|21|3|3|cell-valign|c>|<cwith|18|21|3|3|cell-tborder|0ln>|<cwith|18|21|3|3|cell-bborder|0ln>|<cwith|18|21|3|3|cell-lborder|0ln>|<cwith|18|21|3|3|cell-rborder|0ln>|<cwith|18|21|3|3|cell-lborder|0ln>|<cwith|21|21|3|3|cell-tborder|0ln>|<cwith|21|21|3|3|cell-lborder|0ln>|<cwith|21|21|3|3|cell-rborder|0ln>|<cwith|20|20|3|3|cell-bborder|0ln>|<cwith|18|18|3|3|cell-bborder|0ln>|<cwith|18|18|3|3|cell-lborder|0ln>|<cwith|18|18|3|3|cell-rborder|0ln>|<cwith|19|19|3|3|cell-tborder|0ln>|<cwith|18|18|3|3|cell-bborder|0ln>|<cwith|18|18|3|3|cell-lborder|0ln>|<cwith|18|18|3|3|cell-rborder|0ln>|<cwith|19|19|3|3|cell-tborder|0ln>|<cwith|18|21|4|4|cell-halign|c>|<cwith|18|21|4|4|cell-valign|c>|<cwith|18|21|4|4|cell-tborder|0ln>|<cwith|18|21|4|4|cell-bborder|0ln>|<cwith|18|21|4|4|cell-lborder|0ln>|<cwith|18|21|4|4|cell-rborder|0ln>|<cwith|18|21|4|4|cell-lborder|0ln>|<cwith|18|21|4|4|cell-halign|c>|<cwith|18|21|4|4|cell-valign|c>|<cwith|18|21|4|4|cell-tborder|0ln>|<cwith|18|21|4|4|cell-bborder|0ln>|<cwith|18|21|4|4|cell-lborder|0ln>|<cwith|18|21|4|4|cell-rborder|0ln>|<cwith|18|21|4|4|cell-lborder|0ln>|<cwith|18|21|4|4|cell-halign|c>|<cwith|18|21|4|4|cell-valign|c>|<cwith|18|21|4|4|cell-tborder|0ln>|<cwith|18|21|4|4|cell-bborder|0ln>|<cwith|18|21|4|4|cell-lborder|0ln>|<cwith|18|21|4|4|cell-rborder|0ln>|<cwith|18|21|4|4|cell-lborder|0ln>|<cwith|18|21|4|4|cell-halign|c>|<cwith|18|21|4|4|cell-valign|c>|<cwith|18|21|4|4|cell-tborder|0ln>|<cwith|18|21|4|4|cell-bborder|0ln>|<cwith|18|21|4|4|cell-lborder|0ln>|<cwith|18|21|4|4|cell-rborder|0ln>|<cwith|18|21|4|4|cell-lborder|0ln>|<cwith|18|18|4|4|cell-bborder|0ln>|<cwith|18|18|4|4|cell-lborder|0ln>|<cwith|18|18|4|4|cell-rborder|0ln>|<cwith|19|19|4|4|cell-tborder|0ln>|<cwith|18|21|4|4|cell-halign|c>|<cwith|18|21|4|4|cell-valign|c>|<cwith|18|21|4|4|cell-tborder|0ln>|<cwith|18|21|4|4|cell-bborder|0ln>|<cwith|18|21|4|4|cell-lborder|0ln>|<cwith|18|21|4|4|cell-rborder|0ln>|<cwith|18|21|4|4|cell-lborder|0ln>|<cwith|21|21|4|4|cell-tborder|0ln>|<cwith|21|21|4|4|cell-lborder|0ln>|<cwith|21|21|4|4|cell-rborder|0ln>|<cwith|20|20|4|4|cell-bborder|0ln>|<cwith|18|18|4|4|cell-bborder|0ln>|<cwith|18|18|4|4|cell-lborder|0ln>|<cwith|18|18|4|4|cell-rborder|0ln>|<cwith|19|19|4|4|cell-tborder|0ln>|<cwith|18|18|4|4|cell-bborder|0ln>|<cwith|18|18|4|4|cell-lborder|0ln>|<cwith|18|18|4|4|cell-rborder|0ln>|<cwith|19|19|4|4|cell-tborder|0ln>|<cwith|18|21|4|4|cell-halign|c>|<cwith|18|21|4|4|cell-valign|c>|<cwith|18|21|4|4|cell-tborder|0ln>|<cwith|18|21|4|4|cell-bborder|0ln>|<cwith|18|21|4|4|cell-lborder|0ln>|<cwith|18|21|4|4|cell-rborder|0ln>|<cwith|18|21|4|4|cell-halign|c>|<cwith|18|21|4|4|cell-valign|c>|<cwith|18|21|4|4|cell-tborder|0ln>|<cwith|18|21|4|4|cell-bborder|0ln>|<cwith|18|21|4|4|cell-lborder|0ln>|<cwith|18|21|4|4|cell-rborder|0ln>|<cwith|18|21|4|4|cell-halign|c>|<cwith|18|21|4|4|cell-valign|c>|<cwith|18|21|4|4|cell-tborder|0ln>|<cwith|18|21|4|4|cell-bborder|0ln>|<cwith|18|21|4|4|cell-lborder|0ln>|<cwith|18|21|4|4|cell-rborder|0ln>|<cwith|18|18|4|4|cell-bborder|0ln>|<cwith|18|18|4|4|cell-lborder|0ln>|<cwith|18|18|4|4|cell-rborder|0ln>|<cwith|19|19|4|4|cell-tborder|0ln>|<cwith|18|21|4|4|cell-halign|c>|<cwith|18|21|4|4|cell-valign|c>|<cwith|18|21|4|4|cell-tborder|0ln>|<cwith|18|21|4|4|cell-bborder|0ln>|<cwith|18|21|4|4|cell-lborder|0ln>|<cwith|18|21|4|4|cell-rborder|0ln>|<cwith|21|21|4|4|cell-tborder|0ln>|<cwith|21|21|4|4|cell-lborder|0ln>|<cwith|21|21|4|4|cell-rborder|0ln>|<cwith|20|20|4|4|cell-bborder|0ln>|<cwith|18|18|4|4|cell-bborder|0ln>|<cwith|18|18|4|4|cell-lborder|0ln>|<cwith|18|18|4|4|cell-rborder|0ln>|<cwith|19|19|4|4|cell-tborder|0ln>|<cwith|18|21|4|4|cell-halign|c>|<cwith|18|21|4|4|cell-valign|c>|<cwith|18|21|4|4|cell-tborder|0ln>|<cwith|18|21|4|4|cell-bborder|0ln>|<cwith|18|21|4|4|cell-lborder|0ln>|<cwith|18|21|4|4|cell-rborder|0ln>|<cwith|18|18|4|4|cell-bborder|0ln>|<cwith|18|18|4|4|cell-rborder|0ln>|<cwith|19|19|4|4|cell-tborder|0ln>|<cwith|18|21|4|4|cell-halign|c>|<cwith|18|21|4|4|cell-valign|c>|<cwith|18|21|4|4|cell-tborder|0ln>|<cwith|18|21|4|4|cell-bborder|0ln>|<cwith|18|21|4|4|cell-lborder|0ln>|<cwith|18|21|4|4|cell-rborder|0ln>|<cwith|21|21|4|4|cell-tborder|0ln>|<cwith|21|21|4|4|cell-lborder|0ln>|<cwith|21|21|4|4|cell-rborder|0ln>|<cwith|20|20|4|4|cell-bborder|0ln>|<cwith|18|18|4|4|cell-bborder|0ln>|<cwith|18|18|4|4|cell-rborder|0ln>|<cwith|19|19|4|4|cell-tborder|0ln>|<cwith|18|18|4|4|cell-lborder|0ln>|<cwith|22|25|1|7|cell-halign|c>|<cwith|22|25|1|7|cell-valign|c>|<cwith|22|25|1|7|cell-tborder|0ln>|<cwith|22|25|1|7|cell-bborder|0ln>|<cwith|22|25|1|7|cell-lborder|0ln>|<cwith|22|25|1|7|cell-rborder|0ln>|<cwith|22|25|1|1|cell-tborder|0ln>|<cwith|22|25|1|1|cell-bborder|0ln>|<cwith|22|25|1|1|cell-rborder|0ln>|<cwith|22|25|2|2|cell-lborder|0ln>|<cwith|22|25|1|7|cell-halign|c>|<cwith|22|25|1|7|cell-valign|c>|<cwith|22|25|1|7|cell-tborder|0ln>|<cwith|22|25|1|7|cell-bborder|0ln>|<cwith|22|25|1|7|cell-lborder|0ln>|<cwith|22|25|1|7|cell-rborder|0ln>|<cwith|22|25|1|1|cell-tborder|0ln>|<cwith|22|25|1|1|cell-bborder|0ln>|<cwith|22|25|1|1|cell-rborder|0ln>|<cwith|22|25|2|2|cell-lborder|0ln>|<cwith|22|25|1|7|cell-halign|c>|<cwith|22|25|1|7|cell-valign|c>|<cwith|22|25|1|7|cell-tborder|0ln>|<cwith|22|25|1|7|cell-bborder|0ln>|<cwith|22|25|1|7|cell-lborder|0ln>|<cwith|22|25|1|7|cell-rborder|0ln>|<cwith|22|25|1|1|cell-tborder|0ln>|<cwith|22|25|1|1|cell-bborder|0ln>|<cwith|22|25|1|1|cell-rborder|0ln>|<cwith|22|25|2|2|cell-lborder|0ln>|<cwith|22|25|1|7|cell-halign|c>|<cwith|22|25|1|7|cell-valign|c>|<cwith|22|25|1|7|cell-tborder|0ln>|<cwith|22|25|1|7|cell-bborder|0ln>|<cwith|22|25|1|7|cell-lborder|0ln>|<cwith|22|25|1|7|cell-rborder|0ln>|<cwith|22|25|1|1|cell-tborder|0ln>|<cwith|22|25|1|1|cell-bborder|0ln>|<cwith|22|25|1|1|cell-rborder|0ln>|<cwith|22|25|2|2|cell-lborder|0ln>|<cwith|22|22|1|7|cell-bborder|0ln>|<cwith|22|22|1|7|cell-lborder|0ln>|<cwith|22|22|1|7|cell-rborder|0ln>|<cwith|23|23|1|7|cell-tborder|0ln>|<cwith|22|25|2|5|cell-halign|c>|<cwith|22|25|2|5|cell-valign|c>|<cwith|22|25|2|5|cell-tborder|0ln>|<cwith|22|25|2|5|cell-bborder|0ln>|<cwith|22|25|2|5|cell-lborder|0ln>|<cwith|22|25|2|5|cell-rborder|0ln>|<cwith|22|25|2|2|cell-lborder|0ln>|<cwith|25|25|2|5|cell-tborder|0ln>|<cwith|25|25|2|5|cell-lborder|0ln>|<cwith|25|25|2|5|cell-rborder|0ln>|<cwith|24|24|2|5|cell-bborder|0ln>|<cwith|22|22|2|5|cell-bborder|0ln>|<cwith|22|22|2|5|cell-lborder|0ln>|<cwith|22|22|2|5|cell-rborder|0ln>|<cwith|23|23|2|5|cell-tborder|0ln>|<cwith|22|25|3|3|cell-halign|c>|<cwith|22|25|3|3|cell-valign|c>|<cwith|22|25|3|3|cell-tborder|0ln>|<cwith|22|25|3|3|cell-bborder|0ln>|<cwith|22|25|3|3|cell-lborder|0ln>|<cwith|22|25|3|3|cell-rborder|0ln>|<cwith|22|22|3|3|cell-bborder|0ln>|<cwith|22|22|3|3|cell-rborder|0ln>|<cwith|23|23|3|3|cell-tborder|0ln>|<cwith|22|25|3|3|cell-halign|c>|<cwith|22|25|3|3|cell-valign|c>|<cwith|22|25|3|3|cell-tborder|0ln>|<cwith|22|25|3|3|cell-bborder|0ln>|<cwith|22|25|3|3|cell-lborder|0ln>|<cwith|22|25|3|3|cell-rborder|0ln>|<cwith|25|25|3|3|cell-tborder|0ln>|<cwith|25|25|3|3|cell-lborder|0ln>|<cwith|25|25|3|3|cell-rborder|0ln>|<cwith|24|24|3|3|cell-bborder|0ln>|<cwith|22|22|3|3|cell-bborder|0ln>|<cwith|22|22|3|3|cell-rborder|0ln>|<cwith|23|23|3|3|cell-tborder|0ln>|<cwith|22|25|4|4|cell-halign|c>|<cwith|22|25|4|4|cell-valign|c>|<cwith|22|25|4|4|cell-tborder|0ln>|<cwith|22|25|4|4|cell-bborder|0ln>|<cwith|22|25|4|4|cell-lborder|0ln>|<cwith|22|25|4|4|cell-rborder|0ln>|<cwith|22|22|4|4|cell-bborder|0ln>|<cwith|22|22|4|4|cell-lborder|0ln>|<cwith|23|23|4|4|cell-tborder|0ln>|<cwith|22|25|4|4|cell-halign|c>|<cwith|22|25|4|4|cell-valign|c>|<cwith|22|25|4|4|cell-tborder|0ln>|<cwith|22|25|4|4|cell-bborder|0ln>|<cwith|22|25|4|4|cell-lborder|0ln>|<cwith|22|25|4|4|cell-rborder|0ln>|<cwith|25|25|4|4|cell-tborder|0ln>|<cwith|25|25|4|4|cell-lborder|0ln>|<cwith|25|25|4|4|cell-rborder|0ln>|<cwith|24|24|4|4|cell-bborder|0ln>|<cwith|22|22|4|4|cell-bborder|0ln>|<cwith|22|22|4|4|cell-lborder|0ln>|<cwith|23|23|4|4|cell-tborder|0ln>|<cwith|22|25|6|7|cell-halign|c>|<cwith|22|25|6|7|cell-valign|c>|<cwith|22|25|6|7|cell-tborder|0ln>|<cwith|22|25|6|7|cell-bborder|0ln>|<cwith|22|25|6|7|cell-lborder|0ln>|<cwith|22|25|6|7|cell-rborder|0ln>|<cwith|25|25|6|7|cell-tborder|0ln>|<cwith|25|25|6|7|cell-lborder|0ln>|<cwith|25|25|6|7|cell-rborder|0ln>|<cwith|24|24|6|7|cell-bborder|0ln>|<cwith|25|25|6|6|cell-lborder|0ln>|<cwith|22|22|5|7|cell-bborder|0ln>|<cwith|22|22|5|7|cell-lborder|0ln>|<cwith|22|22|5|7|cell-rborder|0ln>|<cwith|23|23|5|7|cell-tborder|0ln>|<cwith|22|22|4|4|cell-rborder|0ln>|<cwith|22|25|1|1|cell-halign|c>|<cwith|22|25|1|1|cell-valign|c>|<cwith|22|25|1|1|cell-tborder|0ln>|<cwith|22|25|1|1|cell-bborder|0ln>|<cwith|22|25|1|1|cell-rborder|0ln>|<cwith|22|25|1|1|cell-tborder|0ln>|<cwith|22|25|1|1|cell-bborder|0ln>|<cwith|22|25|1|1|cell-rborder|0ln>|<cwith|25|25|1|1|cell-tborder|0ln>|<cwith|25|25|1|1|cell-rborder|0ln>|<cwith|24|24|1|1|cell-bborder|0ln>|<cwith|25|25|1|1|cell-rborder|0ln>|<cwith|22|22|1|2|cell-bborder|0ln>|<cwith|22|22|1|2|cell-lborder|0ln>|<cwith|22|22|1|2|cell-rborder|0ln>|<cwith|23|23|1|2|cell-tborder|0ln>|<cwith|22|22|3|3|cell-lborder|0ln>|<cwith|22|25|4|4|cell-halign|c>|<cwith|22|25|4|4|cell-valign|c>|<cwith|22|25|4|4|cell-tborder|0ln>|<cwith|22|25|4|4|cell-bborder|0ln>|<cwith|22|25|4|4|cell-lborder|0ln>|<cwith|22|25|4|4|cell-rborder|0ln>|<cwith|22|25|4|4|cell-halign|c>|<cwith|22|25|4|4|cell-valign|c>|<cwith|22|25|4|4|cell-tborder|0ln>|<cwith|22|25|4|4|cell-bborder|0ln>|<cwith|22|25|4|4|cell-lborder|0ln>|<cwith|22|25|4|4|cell-rborder|0ln>|<cwith|22|22|4|4|cell-bborder|0ln>|<cwith|22|22|4|4|cell-lborder|0ln>|<cwith|22|22|4|4|cell-rborder|0ln>|<cwith|23|23|4|4|cell-tborder|0ln>|<cwith|22|25|4|4|cell-halign|c>|<cwith|22|25|4|4|cell-valign|c>|<cwith|22|25|4|4|cell-tborder|0ln>|<cwith|22|25|4|4|cell-bborder|0ln>|<cwith|22|25|4|4|cell-lborder|0ln>|<cwith|22|25|4|4|cell-rborder|0ln>|<cwith|25|25|4|4|cell-tborder|0ln>|<cwith|25|25|4|4|cell-lborder|0ln>|<cwith|25|25|4|4|cell-rborder|0ln>|<cwith|24|24|4|4|cell-bborder|0ln>|<cwith|22|22|4|4|cell-bborder|0ln>|<cwith|22|22|4|4|cell-lborder|0ln>|<cwith|22|22|4|4|cell-rborder|0ln>|<cwith|23|23|4|4|cell-tborder|0ln>|<cwith|22|25|4|4|cell-halign|c>|<cwith|22|25|4|4|cell-valign|c>|<cwith|22|25|4|4|cell-tborder|0ln>|<cwith|22|25|4|4|cell-bborder|0ln>|<cwith|22|25|4|4|cell-lborder|0ln>|<cwith|22|25|4|4|cell-rborder|0ln>|<cwith|22|22|4|4|cell-bborder|0ln>|<cwith|22|22|4|4|cell-rborder|0ln>|<cwith|23|23|4|4|cell-tborder|0ln>|<cwith|22|25|4|4|cell-halign|c>|<cwith|22|25|4|4|cell-valign|c>|<cwith|22|25|4|4|cell-tborder|0ln>|<cwith|22|25|4|4|cell-bborder|0ln>|<cwith|22|25|4|4|cell-lborder|0ln>|<cwith|22|25|4|4|cell-rborder|0ln>|<cwith|25|25|4|4|cell-tborder|0ln>|<cwith|25|25|4|4|cell-lborder|0ln>|<cwith|25|25|4|4|cell-rborder|0ln>|<cwith|24|24|4|4|cell-bborder|0ln>|<cwith|22|22|4|4|cell-bborder|0ln>|<cwith|22|22|4|4|cell-rborder|0ln>|<cwith|23|23|4|4|cell-tborder|0ln>|<cwith|22|22|4|4|cell-lborder|0ln>|<cwith|22|25|4|4|cell-halign|c>|<cwith|22|25|4|4|cell-valign|c>|<cwith|22|25|4|4|cell-tborder|0ln>|<cwith|22|25|4|4|cell-bborder|0ln>|<cwith|22|25|4|4|cell-lborder|0ln>|<cwith|22|25|4|4|cell-rborder|0ln>|<cwith|22|25|4|4|cell-lborder|0ln>|<cwith|22|25|4|4|cell-halign|c>|<cwith|22|25|4|4|cell-valign|c>|<cwith|22|25|4|4|cell-tborder|0ln>|<cwith|22|25|4|4|cell-bborder|0ln>|<cwith|22|25|4|4|cell-lborder|0ln>|<cwith|22|25|4|4|cell-rborder|0ln>|<cwith|22|25|4|4|cell-lborder|0ln>|<cwith|22|25|4|4|cell-halign|c>|<cwith|22|25|4|4|cell-valign|c>|<cwith|22|25|4|4|cell-tborder|0ln>|<cwith|22|25|4|4|cell-bborder|0ln>|<cwith|22|25|4|4|cell-lborder|0ln>|<cwith|22|25|4|4|cell-rborder|0ln>|<cwith|22|25|4|4|cell-lborder|0ln>|<cwith|22|22|4|4|cell-bborder|0ln>|<cwith|22|22|4|4|cell-lborder|0ln>|<cwith|22|22|4|4|cell-rborder|0ln>|<cwith|23|23|4|4|cell-tborder|0ln>|<cwith|22|25|4|4|cell-halign|c>|<cwith|22|25|4|4|cell-valign|c>|<cwith|22|25|4|4|cell-tborder|0ln>|<cwith|22|25|4|4|cell-bborder|0ln>|<cwith|22|25|4|4|cell-lborder|0ln>|<cwith|22|25|4|4|cell-rborder|0ln>|<cwith|22|25|4|4|cell-lborder|0ln>|<cwith|25|25|4|4|cell-tborder|0ln>|<cwith|25|25|4|4|cell-lborder|0ln>|<cwith|25|25|4|4|cell-rborder|0ln>|<cwith|24|24|4|4|cell-bborder|0ln>|<cwith|22|22|4|4|cell-bborder|0ln>|<cwith|22|22|4|4|cell-lborder|0ln>|<cwith|22|22|4|4|cell-rborder|0ln>|<cwith|23|23|4|4|cell-tborder|0ln>|<cwith|22|22|4|4|cell-bborder|0ln>|<cwith|22|22|4|4|cell-lborder|0ln>|<cwith|22|22|4|4|cell-rborder|0ln>|<cwith|23|23|4|4|cell-tborder|0ln>|<cwith|22|25|2|2|cell-halign|c>|<cwith|22|25|2|2|cell-valign|c>|<cwith|22|25|2|2|cell-tborder|0ln>|<cwith|22|25|2|2|cell-bborder|0ln>|<cwith|22|25|2|2|cell-lborder|0ln>|<cwith|22|25|2|2|cell-rborder|0ln>|<cwith|22|25|2|2|cell-halign|c>|<cwith|22|25|2|2|cell-valign|c>|<cwith|22|25|2|2|cell-tborder|0ln>|<cwith|22|25|2|2|cell-bborder|0ln>|<cwith|22|25|2|2|cell-lborder|0ln>|<cwith|22|25|2|2|cell-rborder|0ln>|<cwith|22|25|2|2|cell-halign|c>|<cwith|22|25|2|2|cell-valign|c>|<cwith|22|25|2|2|cell-tborder|0ln>|<cwith|22|25|2|2|cell-bborder|0ln>|<cwith|22|25|2|2|cell-lborder|0ln>|<cwith|22|25|2|2|cell-rborder|0ln>|<cwith|22|22|2|2|cell-bborder|0ln>|<cwith|22|22|2|2|cell-lborder|0ln>|<cwith|22|22|2|2|cell-rborder|0ln>|<cwith|23|23|2|2|cell-tborder|0ln>|<cwith|22|25|2|2|cell-halign|c>|<cwith|22|25|2|2|cell-valign|c>|<cwith|22|25|2|2|cell-tborder|0ln>|<cwith|22|25|2|2|cell-bborder|0ln>|<cwith|22|25|2|2|cell-lborder|0ln>|<cwith|22|25|2|2|cell-rborder|0ln>|<cwith|25|25|2|2|cell-tborder|0ln>|<cwith|25|25|2|2|cell-lborder|0ln>|<cwith|25|25|2|2|cell-rborder|0ln>|<cwith|24|24|2|2|cell-bborder|0ln>|<cwith|22|22|2|2|cell-bborder|0ln>|<cwith|22|22|2|2|cell-lborder|0ln>|<cwith|22|22|2|2|cell-rborder|0ln>|<cwith|23|23|2|2|cell-tborder|0ln>|<cwith|22|25|2|2|cell-halign|c>|<cwith|22|25|2|2|cell-valign|c>|<cwith|22|25|2|2|cell-tborder|0ln>|<cwith|22|25|2|2|cell-bborder|0ln>|<cwith|22|25|2|2|cell-lborder|0ln>|<cwith|22|25|2|2|cell-rborder|0ln>|<cwith|22|22|2|2|cell-bborder|0ln>|<cwith|22|22|2|2|cell-rborder|0ln>|<cwith|23|23|2|2|cell-tborder|0ln>|<cwith|22|25|2|2|cell-halign|c>|<cwith|22|25|2|2|cell-valign|c>|<cwith|22|25|2|2|cell-tborder|0ln>|<cwith|22|25|2|2|cell-bborder|0ln>|<cwith|22|25|2|2|cell-lborder|0ln>|<cwith|22|25|2|2|cell-rborder|0ln>|<cwith|25|25|2|2|cell-tborder|0ln>|<cwith|25|25|2|2|cell-lborder|0ln>|<cwith|25|25|2|2|cell-rborder|0ln>|<cwith|24|24|2|2|cell-bborder|0ln>|<cwith|22|22|2|2|cell-bborder|0ln>|<cwith|22|22|2|2|cell-rborder|0ln>|<cwith|23|23|2|2|cell-tborder|0ln>|<cwith|22|22|2|2|cell-lborder|0ln>|<cwith|22|25|3|3|cell-halign|c>|<cwith|22|25|3|3|cell-valign|c>|<cwith|22|25|3|3|cell-tborder|0ln>|<cwith|22|25|3|3|cell-bborder|0ln>|<cwith|22|25|3|3|cell-lborder|0ln>|<cwith|22|25|3|3|cell-rborder|0ln>|<cwith|22|25|3|3|cell-halign|c>|<cwith|22|25|3|3|cell-valign|c>|<cwith|22|25|3|3|cell-tborder|0ln>|<cwith|22|25|3|3|cell-bborder|0ln>|<cwith|22|25|3|3|cell-lborder|0ln>|<cwith|22|25|3|3|cell-rborder|0ln>|<cwith|22|25|3|3|cell-halign|c>|<cwith|22|25|3|3|cell-valign|c>|<cwith|22|25|3|3|cell-tborder|0ln>|<cwith|22|25|3|3|cell-bborder|0ln>|<cwith|22|25|3|3|cell-lborder|0ln>|<cwith|22|25|3|3|cell-rborder|0ln>|<cwith|22|22|3|3|cell-bborder|0ln>|<cwith|22|22|3|3|cell-lborder|0ln>|<cwith|22|22|3|3|cell-rborder|0ln>|<cwith|23|23|3|3|cell-tborder|0ln>|<cwith|22|25|3|3|cell-halign|c>|<cwith|22|25|3|3|cell-valign|c>|<cwith|22|25|3|3|cell-tborder|0ln>|<cwith|22|25|3|3|cell-bborder|0ln>|<cwith|22|25|3|3|cell-lborder|0ln>|<cwith|22|25|3|3|cell-rborder|0ln>|<cwith|25|25|3|3|cell-tborder|0ln>|<cwith|25|25|3|3|cell-lborder|0ln>|<cwith|25|25|3|3|cell-rborder|0ln>|<cwith|24|24|3|3|cell-bborder|0ln>|<cwith|22|22|3|3|cell-bborder|0ln>|<cwith|22|22|3|3|cell-lborder|0ln>|<cwith|22|22|3|3|cell-rborder|0ln>|<cwith|23|23|3|3|cell-tborder|0ln>|<cwith|22|25|3|3|cell-halign|c>|<cwith|22|25|3|3|cell-valign|c>|<cwith|22|25|3|3|cell-tborder|0ln>|<cwith|22|25|3|3|cell-bborder|0ln>|<cwith|22|25|3|3|cell-lborder|0ln>|<cwith|22|25|3|3|cell-rborder|0ln>|<cwith|22|22|3|3|cell-bborder|0ln>|<cwith|22|22|3|3|cell-lborder|0ln>|<cwith|23|23|3|3|cell-tborder|0ln>|<cwith|22|25|3|3|cell-halign|c>|<cwith|22|25|3|3|cell-valign|c>|<cwith|22|25|3|3|cell-tborder|0ln>|<cwith|22|25|3|3|cell-bborder|0ln>|<cwith|22|25|3|3|cell-lborder|0ln>|<cwith|22|25|3|3|cell-rborder|0ln>|<cwith|25|25|3|3|cell-tborder|0ln>|<cwith|25|25|3|3|cell-lborder|0ln>|<cwith|25|25|3|3|cell-rborder|0ln>|<cwith|24|24|3|3|cell-bborder|0ln>|<cwith|22|22|3|3|cell-bborder|0ln>|<cwith|22|22|3|3|cell-lborder|0ln>|<cwith|23|23|3|3|cell-tborder|0ln>|<cwith|22|22|3|3|cell-rborder|0ln>|<cwith|22|25|3|3|cell-halign|c>|<cwith|22|25|3|3|cell-valign|c>|<cwith|22|25|3|3|cell-tborder|0ln>|<cwith|22|25|3|3|cell-bborder|0ln>|<cwith|22|25|3|3|cell-lborder|0ln>|<cwith|22|25|3|3|cell-rborder|0ln>|<cwith|22|25|3|3|cell-halign|c>|<cwith|22|25|3|3|cell-valign|c>|<cwith|22|25|3|3|cell-tborder|0ln>|<cwith|22|25|3|3|cell-bborder|0ln>|<cwith|22|25|3|3|cell-lborder|0ln>|<cwith|22|25|3|3|cell-rborder|0ln>|<cwith|22|22|3|3|cell-bborder|0ln>|<cwith|22|22|3|3|cell-lborder|0ln>|<cwith|22|22|3|3|cell-rborder|0ln>|<cwith|23|23|3|3|cell-tborder|0ln>|<cwith|22|25|3|3|cell-halign|c>|<cwith|22|25|3|3|cell-valign|c>|<cwith|22|25|3|3|cell-tborder|0ln>|<cwith|22|25|3|3|cell-bborder|0ln>|<cwith|22|25|3|3|cell-lborder|0ln>|<cwith|22|25|3|3|cell-rborder|0ln>|<cwith|25|25|3|3|cell-tborder|0ln>|<cwith|25|25|3|3|cell-lborder|0ln>|<cwith|25|25|3|3|cell-rborder|0ln>|<cwith|24|24|3|3|cell-bborder|0ln>|<cwith|22|22|3|3|cell-bborder|0ln>|<cwith|22|22|3|3|cell-lborder|0ln>|<cwith|22|22|3|3|cell-rborder|0ln>|<cwith|23|23|3|3|cell-tborder|0ln>|<cwith|22|25|3|3|cell-halign|c>|<cwith|22|25|3|3|cell-valign|c>|<cwith|22|25|3|3|cell-tborder|0ln>|<cwith|22|25|3|3|cell-bborder|0ln>|<cwith|22|25|3|3|cell-lborder|0ln>|<cwith|22|25|3|3|cell-rborder|0ln>|<cwith|22|22|3|3|cell-bborder|0ln>|<cwith|22|22|3|3|cell-rborder|0ln>|<cwith|23|23|3|3|cell-tborder|0ln>|<cwith|22|25|3|3|cell-halign|c>|<cwith|22|25|3|3|cell-valign|c>|<cwith|22|25|3|3|cell-tborder|0ln>|<cwith|22|25|3|3|cell-bborder|0ln>|<cwith|22|25|3|3|cell-lborder|0ln>|<cwith|22|25|3|3|cell-rborder|0ln>|<cwith|25|25|3|3|cell-tborder|0ln>|<cwith|25|25|3|3|cell-lborder|0ln>|<cwith|25|25|3|3|cell-rborder|0ln>|<cwith|24|24|3|3|cell-bborder|0ln>|<cwith|22|22|3|3|cell-bborder|0ln>|<cwith|22|22|3|3|cell-rborder|0ln>|<cwith|23|23|3|3|cell-tborder|0ln>|<cwith|22|22|3|3|cell-lborder|0ln>|<cwith|22|25|3|3|cell-halign|c>|<cwith|22|25|3|3|cell-valign|c>|<cwith|22|25|3|3|cell-tborder|0ln>|<cwith|22|25|3|3|cell-bborder|0ln>|<cwith|22|25|3|3|cell-lborder|0ln>|<cwith|22|25|3|3|cell-rborder|0ln>|<cwith|22|25|3|3|cell-lborder|0ln>|<cwith|22|25|3|3|cell-halign|c>|<cwith|22|25|3|3|cell-valign|c>|<cwith|22|25|3|3|cell-tborder|0ln>|<cwith|22|25|3|3|cell-bborder|0ln>|<cwith|22|25|3|3|cell-lborder|0ln>|<cwith|22|25|3|3|cell-rborder|0ln>|<cwith|22|25|3|3|cell-lborder|0ln>|<cwith|22|25|3|3|cell-halign|c>|<cwith|22|25|3|3|cell-valign|c>|<cwith|22|25|3|3|cell-tborder|0ln>|<cwith|22|25|3|3|cell-bborder|0ln>|<cwith|22|25|3|3|cell-lborder|0ln>|<cwith|22|25|3|3|cell-rborder|0ln>|<cwith|22|25|3|3|cell-lborder|0ln>|<cwith|22|22|3|3|cell-bborder|0ln>|<cwith|22|22|3|3|cell-lborder|0ln>|<cwith|22|22|3|3|cell-rborder|0ln>|<cwith|23|23|3|3|cell-tborder|0ln>|<cwith|22|25|3|3|cell-halign|c>|<cwith|22|25|3|3|cell-valign|c>|<cwith|22|25|3|3|cell-tborder|0ln>|<cwith|22|25|3|3|cell-bborder|0ln>|<cwith|22|25|3|3|cell-lborder|0ln>|<cwith|22|25|3|3|cell-rborder|0ln>|<cwith|22|25|3|3|cell-lborder|0ln>|<cwith|25|25|3|3|cell-tborder|0ln>|<cwith|25|25|3|3|cell-lborder|0ln>|<cwith|25|25|3|3|cell-rborder|0ln>|<cwith|24|24|3|3|cell-bborder|0ln>|<cwith|22|22|3|3|cell-bborder|0ln>|<cwith|22|22|3|3|cell-lborder|0ln>|<cwith|22|22|3|3|cell-rborder|0ln>|<cwith|23|23|3|3|cell-tborder|0ln>|<cwith|22|22|3|3|cell-bborder|0ln>|<cwith|22|22|3|3|cell-lborder|0ln>|<cwith|22|22|3|3|cell-rborder|0ln>|<cwith|23|23|3|3|cell-tborder|0ln>|<cwith|22|25|4|4|cell-halign|c>|<cwith|22|25|4|4|cell-valign|c>|<cwith|22|25|4|4|cell-tborder|0ln>|<cwith|22|25|4|4|cell-bborder|0ln>|<cwith|22|25|4|4|cell-lborder|0ln>|<cwith|22|25|4|4|cell-rborder|0ln>|<cwith|22|25|4|4|cell-lborder|0ln>|<cwith|22|25|4|4|cell-halign|c>|<cwith|22|25|4|4|cell-valign|c>|<cwith|22|25|4|4|cell-tborder|0ln>|<cwith|22|25|4|4|cell-bborder|0ln>|<cwith|22|25|4|4|cell-lborder|0ln>|<cwith|22|25|4|4|cell-rborder|0ln>|<cwith|22|25|4|4|cell-lborder|0ln>|<cwith|22|25|4|4|cell-halign|c>|<cwith|22|25|4|4|cell-valign|c>|<cwith|22|25|4|4|cell-tborder|0ln>|<cwith|22|25|4|4|cell-bborder|0ln>|<cwith|22|25|4|4|cell-lborder|0ln>|<cwith|22|25|4|4|cell-rborder|0ln>|<cwith|22|25|4|4|cell-lborder|0ln>|<cwith|22|25|4|4|cell-halign|c>|<cwith|22|25|4|4|cell-valign|c>|<cwith|22|25|4|4|cell-tborder|0ln>|<cwith|22|25|4|4|cell-bborder|0ln>|<cwith|22|25|4|4|cell-lborder|0ln>|<cwith|22|25|4|4|cell-rborder|0ln>|<cwith|22|25|4|4|cell-lborder|0ln>|<cwith|22|22|4|4|cell-bborder|0ln>|<cwith|22|22|4|4|cell-lborder|0ln>|<cwith|22|22|4|4|cell-rborder|0ln>|<cwith|23|23|4|4|cell-tborder|0ln>|<cwith|22|25|4|4|cell-halign|c>|<cwith|22|25|4|4|cell-valign|c>|<cwith|22|25|4|4|cell-tborder|0ln>|<cwith|22|25|4|4|cell-bborder|0ln>|<cwith|22|25|4|4|cell-lborder|0ln>|<cwith|22|25|4|4|cell-rborder|0ln>|<cwith|22|25|4|4|cell-lborder|0ln>|<cwith|25|25|4|4|cell-tborder|0ln>|<cwith|25|25|4|4|cell-lborder|0ln>|<cwith|25|25|4|4|cell-rborder|0ln>|<cwith|24|24|4|4|cell-bborder|0ln>|<cwith|22|22|4|4|cell-bborder|0ln>|<cwith|22|22|4|4|cell-lborder|0ln>|<cwith|22|22|4|4|cell-rborder|0ln>|<cwith|23|23|4|4|cell-tborder|0ln>|<cwith|22|22|4|4|cell-bborder|0ln>|<cwith|22|22|4|4|cell-lborder|0ln>|<cwith|22|22|4|4|cell-rborder|0ln>|<cwith|23|23|4|4|cell-tborder|0ln>|<cwith|22|25|4|4|cell-halign|c>|<cwith|22|25|4|4|cell-valign|c>|<cwith|22|25|4|4|cell-tborder|0ln>|<cwith|22|25|4|4|cell-bborder|0ln>|<cwith|22|25|4|4|cell-lborder|0ln>|<cwith|22|25|4|4|cell-rborder|0ln>|<cwith|22|25|4|4|cell-halign|c>|<cwith|22|25|4|4|cell-valign|c>|<cwith|22|25|4|4|cell-tborder|0ln>|<cwith|22|25|4|4|cell-bborder|0ln>|<cwith|22|25|4|4|cell-lborder|0ln>|<cwith|22|25|4|4|cell-rborder|0ln>|<cwith|22|25|4|4|cell-halign|c>|<cwith|22|25|4|4|cell-valign|c>|<cwith|22|25|4|4|cell-tborder|0ln>|<cwith|22|25|4|4|cell-bborder|0ln>|<cwith|22|25|4|4|cell-lborder|0ln>|<cwith|22|25|4|4|cell-rborder|0ln>|<cwith|22|22|4|4|cell-bborder|0ln>|<cwith|22|22|4|4|cell-lborder|0ln>|<cwith|22|22|4|4|cell-rborder|0ln>|<cwith|23|23|4|4|cell-tborder|0ln>|<cwith|22|25|4|4|cell-halign|c>|<cwith|22|25|4|4|cell-valign|c>|<cwith|22|25|4|4|cell-tborder|0ln>|<cwith|22|25|4|4|cell-bborder|0ln>|<cwith|22|25|4|4|cell-lborder|0ln>|<cwith|22|25|4|4|cell-rborder|0ln>|<cwith|25|25|4|4|cell-tborder|0ln>|<cwith|25|25|4|4|cell-lborder|0ln>|<cwith|25|25|4|4|cell-rborder|0ln>|<cwith|24|24|4|4|cell-bborder|0ln>|<cwith|22|22|4|4|cell-bborder|0ln>|<cwith|22|22|4|4|cell-lborder|0ln>|<cwith|22|22|4|4|cell-rborder|0ln>|<cwith|23|23|4|4|cell-tborder|0ln>|<cwith|22|25|4|4|cell-halign|c>|<cwith|22|25|4|4|cell-valign|c>|<cwith|22|25|4|4|cell-tborder|0ln>|<cwith|22|25|4|4|cell-bborder|0ln>|<cwith|22|25|4|4|cell-lborder|0ln>|<cwith|22|25|4|4|cell-rborder|0ln>|<cwith|22|22|4|4|cell-bborder|0ln>|<cwith|22|22|4|4|cell-rborder|0ln>|<cwith|23|23|4|4|cell-tborder|0ln>|<cwith|22|25|4|4|cell-halign|c>|<cwith|22|25|4|4|cell-valign|c>|<cwith|22|25|4|4|cell-tborder|0ln>|<cwith|22|25|4|4|cell-bborder|0ln>|<cwith|22|25|4|4|cell-lborder|0ln>|<cwith|22|25|4|4|cell-rborder|0ln>|<cwith|25|25|4|4|cell-tborder|0ln>|<cwith|25|25|4|4|cell-lborder|0ln>|<cwith|25|25|4|4|cell-rborder|0ln>|<cwith|24|24|4|4|cell-bborder|0ln>|<cwith|22|22|4|4|cell-bborder|0ln>|<cwith|22|22|4|4|cell-rborder|0ln>|<cwith|23|23|4|4|cell-tborder|0ln>|<cwith|22|22|4|4|cell-lborder|0ln>|<cwith|22|25|3|3|cell-halign|c>|<cwith|22|25|3|3|cell-valign|c>|<cwith|22|25|3|3|cell-tborder|0ln>|<cwith|22|25|3|3|cell-bborder|0ln>|<cwith|22|25|3|3|cell-lborder|0ln>|<cwith|22|25|3|3|cell-rborder|0ln>|<cwith|22|25|3|3|cell-halign|c>|<cwith|22|25|3|3|cell-valign|c>|<cwith|22|25|3|3|cell-tborder|0ln>|<cwith|22|25|3|3|cell-bborder|0ln>|<cwith|22|25|3|3|cell-lborder|0ln>|<cwith|22|25|3|3|cell-rborder|0ln>|<cwith|22|25|3|3|cell-halign|c>|<cwith|22|25|3|3|cell-valign|c>|<cwith|22|25|3|3|cell-tborder|0ln>|<cwith|22|25|3|3|cell-bborder|0ln>|<cwith|22|25|3|3|cell-lborder|0ln>|<cwith|22|25|3|3|cell-rborder|0ln>|<cwith|22|25|3|3|cell-halign|c>|<cwith|22|25|3|3|cell-valign|c>|<cwith|22|25|3|3|cell-tborder|0ln>|<cwith|22|25|3|3|cell-bborder|0ln>|<cwith|22|25|3|3|cell-lborder|0ln>|<cwith|22|25|3|3|cell-rborder|0ln>|<cwith|22|25|3|3|cell-halign|c>|<cwith|22|25|3|3|cell-valign|c>|<cwith|22|25|3|3|cell-tborder|0ln>|<cwith|22|25|3|3|cell-bborder|0ln>|<cwith|22|25|3|3|cell-lborder|0ln>|<cwith|22|25|3|3|cell-rborder|0ln>|<cwith|22|22|3|3|cell-bborder|0ln>|<cwith|22|22|3|3|cell-lborder|0ln>|<cwith|22|22|3|3|cell-rborder|0ln>|<cwith|23|23|3|3|cell-tborder|0ln>|<cwith|22|25|3|3|cell-halign|c>|<cwith|22|25|3|3|cell-valign|c>|<cwith|22|25|3|3|cell-tborder|0ln>|<cwith|22|25|3|3|cell-bborder|0ln>|<cwith|22|25|3|3|cell-lborder|0ln>|<cwith|22|25|3|3|cell-rborder|0ln>|<cwith|25|25|3|3|cell-tborder|0ln>|<cwith|25|25|3|3|cell-lborder|0ln>|<cwith|25|25|3|3|cell-rborder|0ln>|<cwith|24|24|3|3|cell-bborder|0ln>|<cwith|22|22|3|3|cell-bborder|0ln>|<cwith|22|22|3|3|cell-lborder|0ln>|<cwith|22|22|3|3|cell-rborder|0ln>|<cwith|23|23|3|3|cell-tborder|0ln>|<cwith|22|25|3|3|cell-halign|c>|<cwith|22|25|3|3|cell-valign|c>|<cwith|22|25|3|3|cell-tborder|0ln>|<cwith|22|25|3|3|cell-bborder|0ln>|<cwith|22|25|3|3|cell-lborder|0ln>|<cwith|22|25|3|3|cell-rborder|0ln>|<cwith|22|22|3|3|cell-bborder|0ln>|<cwith|22|22|3|3|cell-lborder|0ln>|<cwith|23|23|3|3|cell-tborder|0ln>|<cwith|22|25|3|3|cell-halign|c>|<cwith|22|25|3|3|cell-valign|c>|<cwith|22|25|3|3|cell-tborder|0ln>|<cwith|22|25|3|3|cell-bborder|0ln>|<cwith|22|25|3|3|cell-lborder|0ln>|<cwith|22|25|3|3|cell-rborder|0ln>|<cwith|25|25|3|3|cell-tborder|0ln>|<cwith|25|25|3|3|cell-lborder|0ln>|<cwith|25|25|3|3|cell-rborder|0ln>|<cwith|24|24|3|3|cell-bborder|0ln>|<cwith|22|22|3|3|cell-bborder|0ln>|<cwith|22|22|3|3|cell-lborder|0ln>|<cwith|23|23|3|3|cell-tborder|0ln>|<cwith|22|22|3|3|cell-rborder|0ln>|<cwith|22|25|3|3|cell-halign|c>|<cwith|22|25|3|3|cell-valign|c>|<cwith|22|25|3|3|cell-tborder|0ln>|<cwith|22|25|3|3|cell-bborder|0ln>|<cwith|22|25|3|3|cell-lborder|0ln>|<cwith|22|25|3|3|cell-rborder|0ln>|<cwith|22|25|3|3|cell-halign|c>|<cwith|22|25|3|3|cell-valign|c>|<cwith|22|25|3|3|cell-tborder|0ln>|<cwith|22|25|3|3|cell-bborder|0ln>|<cwith|22|25|3|3|cell-lborder|0ln>|<cwith|22|25|3|3|cell-rborder|0ln>|<cwith|22|22|3|3|cell-bborder|0ln>|<cwith|22|22|3|3|cell-lborder|0ln>|<cwith|22|22|3|3|cell-rborder|0ln>|<cwith|23|23|3|3|cell-tborder|0ln>|<cwith|22|25|3|3|cell-halign|c>|<cwith|22|25|3|3|cell-valign|c>|<cwith|22|25|3|3|cell-tborder|0ln>|<cwith|22|25|3|3|cell-bborder|0ln>|<cwith|22|25|3|3|cell-lborder|0ln>|<cwith|22|25|3|3|cell-rborder|0ln>|<cwith|25|25|3|3|cell-tborder|0ln>|<cwith|25|25|3|3|cell-lborder|0ln>|<cwith|25|25|3|3|cell-rborder|0ln>|<cwith|24|24|3|3|cell-bborder|0ln>|<cwith|22|22|3|3|cell-bborder|0ln>|<cwith|22|22|3|3|cell-lborder|0ln>|<cwith|22|22|3|3|cell-rborder|0ln>|<cwith|23|23|3|3|cell-tborder|0ln>|<cwith|22|25|3|3|cell-halign|c>|<cwith|22|25|3|3|cell-valign|c>|<cwith|22|25|3|3|cell-tborder|0ln>|<cwith|22|25|3|3|cell-bborder|0ln>|<cwith|22|25|3|3|cell-lborder|0ln>|<cwith|22|25|3|3|cell-rborder|0ln>|<cwith|22|22|3|3|cell-bborder|0ln>|<cwith|22|22|3|3|cell-rborder|0ln>|<cwith|23|23|3|3|cell-tborder|0ln>|<cwith|22|25|3|3|cell-halign|c>|<cwith|22|25|3|3|cell-valign|c>|<cwith|22|25|3|3|cell-tborder|0ln>|<cwith|22|25|3|3|cell-bborder|0ln>|<cwith|22|25|3|3|cell-lborder|0ln>|<cwith|22|25|3|3|cell-rborder|0ln>|<cwith|25|25|3|3|cell-tborder|0ln>|<cwith|25|25|3|3|cell-lborder|0ln>|<cwith|25|25|3|3|cell-rborder|0ln>|<cwith|24|24|3|3|cell-bborder|0ln>|<cwith|22|22|3|3|cell-bborder|0ln>|<cwith|22|22|3|3|cell-rborder|0ln>|<cwith|23|23|3|3|cell-tborder|0ln>|<cwith|22|22|3|3|cell-lborder|0ln>|<cwith|22|25|3|3|cell-halign|c>|<cwith|22|25|3|3|cell-valign|c>|<cwith|22|25|3|3|cell-tborder|0ln>|<cwith|22|25|3|3|cell-bborder|0ln>|<cwith|22|25|3|3|cell-lborder|0ln>|<cwith|22|25|3|3|cell-rborder|0ln>|<cwith|22|25|3|3|cell-lborder|0ln>|<cwith|22|25|3|3|cell-halign|c>|<cwith|22|25|3|3|cell-valign|c>|<cwith|22|25|3|3|cell-tborder|0ln>|<cwith|22|25|3|3|cell-bborder|0ln>|<cwith|22|25|3|3|cell-lborder|0ln>|<cwith|22|25|3|3|cell-rborder|0ln>|<cwith|22|25|3|3|cell-lborder|0ln>|<cwith|22|25|3|3|cell-halign|c>|<cwith|22|25|3|3|cell-valign|c>|<cwith|22|25|3|3|cell-tborder|0ln>|<cwith|22|25|3|3|cell-bborder|0ln>|<cwith|22|25|3|3|cell-lborder|0ln>|<cwith|22|25|3|3|cell-rborder|0ln>|<cwith|22|25|3|3|cell-lborder|0ln>|<cwith|22|22|3|3|cell-bborder|0ln>|<cwith|22|22|3|3|cell-lborder|0ln>|<cwith|22|22|3|3|cell-rborder|0ln>|<cwith|23|23|3|3|cell-tborder|0ln>|<cwith|22|25|3|3|cell-halign|c>|<cwith|22|25|3|3|cell-valign|c>|<cwith|22|25|3|3|cell-tborder|0ln>|<cwith|22|25|3|3|cell-bborder|0ln>|<cwith|22|25|3|3|cell-lborder|0ln>|<cwith|22|25|3|3|cell-rborder|0ln>|<cwith|22|25|3|3|cell-lborder|0ln>|<cwith|25|25|3|3|cell-tborder|0ln>|<cwith|25|25|3|3|cell-lborder|0ln>|<cwith|25|25|3|3|cell-rborder|0ln>|<cwith|24|24|3|3|cell-bborder|0ln>|<cwith|22|22|3|3|cell-bborder|0ln>|<cwith|22|22|3|3|cell-lborder|0ln>|<cwith|22|22|3|3|cell-rborder|0ln>|<cwith|23|23|3|3|cell-tborder|0ln>|<cwith|22|22|3|3|cell-bborder|0ln>|<cwith|22|22|3|3|cell-lborder|0ln>|<cwith|22|22|3|3|cell-rborder|0ln>|<cwith|23|23|3|3|cell-tborder|0ln>|<cwith|22|25|3|3|cell-halign|c>|<cwith|22|25|3|3|cell-valign|c>|<cwith|22|25|3|3|cell-tborder|0ln>|<cwith|22|25|3|3|cell-bborder|0ln>|<cwith|22|25|3|3|cell-lborder|0ln>|<cwith|22|25|3|3|cell-rborder|0ln>|<cwith|22|25|3|3|cell-lborder|0ln>|<cwith|22|25|3|3|cell-halign|c>|<cwith|22|25|3|3|cell-valign|c>|<cwith|22|25|3|3|cell-tborder|0ln>|<cwith|22|25|3|3|cell-bborder|0ln>|<cwith|22|25|3|3|cell-lborder|0ln>|<cwith|22|25|3|3|cell-rborder|0ln>|<cwith|22|25|3|3|cell-lborder|0ln>|<cwith|22|25|3|3|cell-halign|c>|<cwith|22|25|3|3|cell-valign|c>|<cwith|22|25|3|3|cell-tborder|0ln>|<cwith|22|25|3|3|cell-bborder|0ln>|<cwith|22|25|3|3|cell-lborder|0ln>|<cwith|22|25|3|3|cell-rborder|0ln>|<cwith|22|25|3|3|cell-lborder|0ln>|<cwith|22|25|3|3|cell-halign|c>|<cwith|22|25|3|3|cell-valign|c>|<cwith|22|25|3|3|cell-tborder|0ln>|<cwith|22|25|3|3|cell-bborder|0ln>|<cwith|22|25|3|3|cell-lborder|0ln>|<cwith|22|25|3|3|cell-rborder|0ln>|<cwith|22|25|3|3|cell-lborder|0ln>|<cwith|22|22|3|3|cell-bborder|0ln>|<cwith|22|22|3|3|cell-lborder|0ln>|<cwith|22|22|3|3|cell-rborder|0ln>|<cwith|23|23|3|3|cell-tborder|0ln>|<cwith|22|25|3|3|cell-halign|c>|<cwith|22|25|3|3|cell-valign|c>|<cwith|22|25|3|3|cell-tborder|0ln>|<cwith|22|25|3|3|cell-bborder|0ln>|<cwith|22|25|3|3|cell-lborder|0ln>|<cwith|22|25|3|3|cell-rborder|0ln>|<cwith|22|25|3|3|cell-lborder|0ln>|<cwith|25|25|3|3|cell-tborder|0ln>|<cwith|25|25|3|3|cell-lborder|0ln>|<cwith|25|25|3|3|cell-rborder|0ln>|<cwith|24|24|3|3|cell-bborder|0ln>|<cwith|22|22|3|3|cell-bborder|0ln>|<cwith|22|22|3|3|cell-lborder|0ln>|<cwith|22|22|3|3|cell-rborder|0ln>|<cwith|23|23|3|3|cell-tborder|0ln>|<cwith|22|22|3|3|cell-bborder|0ln>|<cwith|22|22|3|3|cell-lborder|0ln>|<cwith|22|22|3|3|cell-rborder|0ln>|<cwith|23|23|3|3|cell-tborder|0ln>|<cwith|22|25|3|3|cell-halign|c>|<cwith|22|25|3|3|cell-valign|c>|<cwith|22|25|3|3|cell-tborder|0ln>|<cwith|22|25|3|3|cell-bborder|0ln>|<cwith|22|25|3|3|cell-lborder|0ln>|<cwith|22|25|3|3|cell-rborder|0ln>|<cwith|22|25|3|3|cell-halign|c>|<cwith|22|25|3|3|cell-valign|c>|<cwith|22|25|3|3|cell-tborder|0ln>|<cwith|22|25|3|3|cell-bborder|0ln>|<cwith|22|25|3|3|cell-lborder|0ln>|<cwith|22|25|3|3|cell-rborder|0ln>|<cwith|22|25|3|3|cell-halign|c>|<cwith|22|25|3|3|cell-valign|c>|<cwith|22|25|3|3|cell-tborder|0ln>|<cwith|22|25|3|3|cell-bborder|0ln>|<cwith|22|25|3|3|cell-lborder|0ln>|<cwith|22|25|3|3|cell-rborder|0ln>|<cwith|22|22|3|3|cell-bborder|0ln>|<cwith|22|22|3|3|cell-lborder|0ln>|<cwith|22|22|3|3|cell-rborder|0ln>|<cwith|23|23|3|3|cell-tborder|0ln>|<cwith|22|25|3|3|cell-halign|c>|<cwith|22|25|3|3|cell-valign|c>|<cwith|22|25|3|3|cell-tborder|0ln>|<cwith|22|25|3|3|cell-bborder|0ln>|<cwith|22|25|3|3|cell-lborder|0ln>|<cwith|22|25|3|3|cell-rborder|0ln>|<cwith|25|25|3|3|cell-tborder|0ln>|<cwith|25|25|3|3|cell-lborder|0ln>|<cwith|25|25|3|3|cell-rborder|0ln>|<cwith|24|24|3|3|cell-bborder|0ln>|<cwith|22|22|3|3|cell-bborder|0ln>|<cwith|22|22|3|3|cell-lborder|0ln>|<cwith|22|22|3|3|cell-rborder|0ln>|<cwith|23|23|3|3|cell-tborder|0ln>|<cwith|22|25|3|3|cell-halign|c>|<cwith|22|25|3|3|cell-valign|c>|<cwith|22|25|3|3|cell-tborder|0ln>|<cwith|22|25|3|3|cell-bborder|0ln>|<cwith|22|25|3|3|cell-lborder|0ln>|<cwith|22|25|3|3|cell-rborder|0ln>|<cwith|22|22|3|3|cell-bborder|0ln>|<cwith|22|22|3|3|cell-rborder|0ln>|<cwith|23|23|3|3|cell-tborder|0ln>|<cwith|22|25|3|3|cell-halign|c>|<cwith|22|25|3|3|cell-valign|c>|<cwith|22|25|3|3|cell-tborder|0ln>|<cwith|22|25|3|3|cell-bborder|0ln>|<cwith|22|25|3|3|cell-lborder|0ln>|<cwith|22|25|3|3|cell-rborder|0ln>|<cwith|25|25|3|3|cell-tborder|0ln>|<cwith|25|25|3|3|cell-lborder|0ln>|<cwith|25|25|3|3|cell-rborder|0ln>|<cwith|24|24|3|3|cell-bborder|0ln>|<cwith|22|22|3|3|cell-bborder|0ln>|<cwith|22|22|3|3|cell-rborder|0ln>|<cwith|23|23|3|3|cell-tborder|0ln>|<cwith|22|22|3|3|cell-lborder|0ln>|<cwith|22|25|4|4|cell-halign|c>|<cwith|22|25|4|4|cell-valign|c>|<cwith|22|25|4|4|cell-tborder|0ln>|<cwith|22|25|4|4|cell-bborder|0ln>|<cwith|22|25|4|4|cell-lborder|0ln>|<cwith|22|25|4|4|cell-rborder|0ln>|<cwith|22|25|4|4|cell-halign|c>|<cwith|22|25|4|4|cell-valign|c>|<cwith|22|25|4|4|cell-tborder|0ln>|<cwith|22|25|4|4|cell-bborder|0ln>|<cwith|22|25|4|4|cell-lborder|0ln>|<cwith|22|25|4|4|cell-rborder|0ln>|<cwith|22|25|4|4|cell-halign|c>|<cwith|22|25|4|4|cell-valign|c>|<cwith|22|25|4|4|cell-tborder|0ln>|<cwith|22|25|4|4|cell-bborder|0ln>|<cwith|22|25|4|4|cell-lborder|0ln>|<cwith|22|25|4|4|cell-rborder|0ln>|<cwith|22|25|4|4|cell-halign|c>|<cwith|22|25|4|4|cell-valign|c>|<cwith|22|25|4|4|cell-tborder|0ln>|<cwith|22|25|4|4|cell-bborder|0ln>|<cwith|22|25|4|4|cell-lborder|0ln>|<cwith|22|25|4|4|cell-rborder|0ln>|<cwith|22|25|4|4|cell-halign|c>|<cwith|22|25|4|4|cell-valign|c>|<cwith|22|25|4|4|cell-tborder|0ln>|<cwith|22|25|4|4|cell-bborder|0ln>|<cwith|22|25|4|4|cell-lborder|0ln>|<cwith|22|25|4|4|cell-rborder|0ln>|<cwith|22|22|4|4|cell-bborder|0ln>|<cwith|22|22|4|4|cell-lborder|0ln>|<cwith|22|22|4|4|cell-rborder|0ln>|<cwith|23|23|4|4|cell-tborder|0ln>|<cwith|22|25|4|4|cell-halign|c>|<cwith|22|25|4|4|cell-valign|c>|<cwith|22|25|4|4|cell-tborder|0ln>|<cwith|22|25|4|4|cell-bborder|0ln>|<cwith|22|25|4|4|cell-lborder|0ln>|<cwith|22|25|4|4|cell-rborder|0ln>|<cwith|25|25|4|4|cell-tborder|0ln>|<cwith|25|25|4|4|cell-lborder|0ln>|<cwith|25|25|4|4|cell-rborder|0ln>|<cwith|24|24|4|4|cell-bborder|0ln>|<cwith|22|22|4|4|cell-bborder|0ln>|<cwith|22|22|4|4|cell-lborder|0ln>|<cwith|22|22|4|4|cell-rborder|0ln>|<cwith|23|23|4|4|cell-tborder|0ln>|<cwith|22|22|4|4|cell-bborder|0ln>|<cwith|22|22|4|4|cell-lborder|0ln>|<cwith|22|22|4|4|cell-rborder|0ln>|<cwith|23|23|4|4|cell-tborder|0ln>|<cwith|26|29|1|7|cell-halign|c>|<cwith|26|29|1|7|cell-valign|c>|<cwith|26|29|1|7|cell-tborder|0ln>|<cwith|26|29|1|7|cell-bborder|0ln>|<cwith|26|29|1|7|cell-lborder|0ln>|<cwith|26|29|1|7|cell-rborder|0ln>|<cwith|26|29|1|1|cell-tborder|0ln>|<cwith|26|29|1|1|cell-bborder|0ln>|<cwith|26|29|1|1|cell-rborder|0ln>|<cwith|26|29|2|2|cell-lborder|0ln>|<cwith|26|29|1|7|cell-halign|c>|<cwith|26|29|1|7|cell-valign|c>|<cwith|26|29|1|7|cell-tborder|0ln>|<cwith|26|29|1|7|cell-bborder|0ln>|<cwith|26|29|1|7|cell-lborder|0ln>|<cwith|26|29|1|7|cell-rborder|0ln>|<cwith|26|29|1|1|cell-tborder|0ln>|<cwith|26|29|1|1|cell-bborder|0ln>|<cwith|26|29|1|1|cell-rborder|0ln>|<cwith|26|29|2|2|cell-lborder|0ln>|<cwith|26|29|1|7|cell-halign|c>|<cwith|26|29|1|7|cell-valign|c>|<cwith|26|29|1|7|cell-tborder|0ln>|<cwith|26|29|1|7|cell-bborder|0ln>|<cwith|26|29|1|7|cell-lborder|0ln>|<cwith|26|29|1|7|cell-rborder|0ln>|<cwith|26|29|1|1|cell-tborder|0ln>|<cwith|26|29|1|1|cell-bborder|0ln>|<cwith|26|29|1|1|cell-rborder|0ln>|<cwith|26|29|2|2|cell-lborder|0ln>|<cwith|26|29|1|7|cell-halign|c>|<cwith|26|29|1|7|cell-valign|c>|<cwith|26|29|1|7|cell-tborder|0ln>|<cwith|26|29|1|7|cell-bborder|0ln>|<cwith|26|29|1|7|cell-lborder|0ln>|<cwith|26|29|1|7|cell-rborder|0ln>|<cwith|26|29|1|1|cell-tborder|0ln>|<cwith|26|29|1|1|cell-bborder|0ln>|<cwith|26|29|1|1|cell-rborder|0ln>|<cwith|26|29|2|2|cell-lborder|0ln>|<cwith|26|29|1|7|cell-halign|c>|<cwith|26|29|1|7|cell-valign|c>|<cwith|26|29|1|7|cell-tborder|0ln>|<cwith|26|29|1|7|cell-bborder|0ln>|<cwith|26|29|1|7|cell-lborder|0ln>|<cwith|26|29|1|7|cell-rborder|0ln>|<cwith|26|29|1|1|cell-tborder|0ln>|<cwith|26|29|1|1|cell-bborder|0ln>|<cwith|26|29|1|1|cell-rborder|0ln>|<cwith|26|29|2|2|cell-lborder|0ln>|<cwith|26|26|1|7|cell-bborder|0ln>|<cwith|26|26|1|7|cell-lborder|0ln>|<cwith|26|26|1|7|cell-rborder|0ln>|<cwith|27|27|1|7|cell-tborder|0ln>|<cwith|26|29|2|5|cell-halign|c>|<cwith|26|29|2|5|cell-valign|c>|<cwith|26|29|2|5|cell-tborder|0ln>|<cwith|26|29|2|5|cell-bborder|0ln>|<cwith|26|29|2|5|cell-lborder|0ln>|<cwith|26|29|2|5|cell-rborder|0ln>|<cwith|26|29|2|2|cell-lborder|0ln>|<cwith|29|29|2|5|cell-tborder|0ln>|<cwith|29|29|2|5|cell-lborder|0ln>|<cwith|29|29|2|5|cell-rborder|0ln>|<cwith|28|28|2|5|cell-bborder|0ln>|<cwith|26|26|2|5|cell-bborder|0ln>|<cwith|26|26|2|5|cell-lborder|0ln>|<cwith|26|26|2|5|cell-rborder|0ln>|<cwith|27|27|2|5|cell-tborder|0ln>|<cwith|26|29|3|3|cell-halign|c>|<cwith|26|29|3|3|cell-valign|c>|<cwith|26|29|3|3|cell-tborder|0ln>|<cwith|26|29|3|3|cell-bborder|0ln>|<cwith|26|29|3|3|cell-lborder|0ln>|<cwith|26|29|3|3|cell-rborder|0ln>|<cwith|26|26|3|3|cell-bborder|0ln>|<cwith|26|26|3|3|cell-rborder|0ln>|<cwith|27|27|3|3|cell-tborder|0ln>|<cwith|26|29|3|3|cell-halign|c>|<cwith|26|29|3|3|cell-valign|c>|<cwith|26|29|3|3|cell-tborder|0ln>|<cwith|26|29|3|3|cell-bborder|0ln>|<cwith|26|29|3|3|cell-lborder|0ln>|<cwith|26|29|3|3|cell-rborder|0ln>|<cwith|29|29|3|3|cell-tborder|0ln>|<cwith|29|29|3|3|cell-lborder|0ln>|<cwith|29|29|3|3|cell-rborder|0ln>|<cwith|28|28|3|3|cell-bborder|0ln>|<cwith|26|26|3|3|cell-bborder|0ln>|<cwith|26|26|3|3|cell-rborder|0ln>|<cwith|27|27|3|3|cell-tborder|0ln>|<cwith|26|29|4|4|cell-halign|c>|<cwith|26|29|4|4|cell-valign|c>|<cwith|26|29|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-bborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-rborder|0ln>|<cwith|26|26|4|4|cell-bborder|0ln>|<cwith|26|26|4|4|cell-lborder|0ln>|<cwith|27|27|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-halign|c>|<cwith|26|29|4|4|cell-valign|c>|<cwith|26|29|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-bborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-rborder|0ln>|<cwith|29|29|4|4|cell-tborder|0ln>|<cwith|29|29|4|4|cell-lborder|0ln>|<cwith|29|29|4|4|cell-rborder|0ln>|<cwith|28|28|4|4|cell-bborder|0ln>|<cwith|26|26|4|4|cell-bborder|0ln>|<cwith|26|26|4|4|cell-lborder|0ln>|<cwith|27|27|4|4|cell-tborder|0ln>|<cwith|26|29|6|7|cell-halign|c>|<cwith|26|29|6|7|cell-valign|c>|<cwith|26|29|6|7|cell-tborder|0ln>|<cwith|26|29|6|7|cell-bborder|0ln>|<cwith|26|29|6|7|cell-lborder|0ln>|<cwith|26|29|6|7|cell-rborder|0ln>|<cwith|29|29|6|7|cell-tborder|0ln>|<cwith|29|29|6|7|cell-lborder|0ln>|<cwith|29|29|6|7|cell-rborder|0ln>|<cwith|28|28|6|7|cell-bborder|0ln>|<cwith|29|29|6|6|cell-lborder|0ln>|<cwith|26|26|5|7|cell-bborder|0ln>|<cwith|26|26|5|7|cell-lborder|0ln>|<cwith|26|26|5|7|cell-rborder|0ln>|<cwith|27|27|5|7|cell-tborder|0ln>|<cwith|26|26|4|4|cell-rborder|0ln>|<cwith|26|29|1|1|cell-halign|c>|<cwith|26|29|1|1|cell-valign|c>|<cwith|26|29|1|1|cell-tborder|0ln>|<cwith|26|29|1|1|cell-bborder|0ln>|<cwith|26|29|1|1|cell-rborder|0ln>|<cwith|26|29|1|1|cell-tborder|0ln>|<cwith|26|29|1|1|cell-bborder|0ln>|<cwith|26|29|1|1|cell-rborder|0ln>|<cwith|29|29|1|1|cell-tborder|0ln>|<cwith|29|29|1|1|cell-rborder|0ln>|<cwith|28|28|1|1|cell-bborder|0ln>|<cwith|29|29|1|1|cell-rborder|0ln>|<cwith|26|26|1|2|cell-bborder|0ln>|<cwith|26|26|1|2|cell-lborder|0ln>|<cwith|26|26|1|2|cell-rborder|0ln>|<cwith|27|27|1|2|cell-tborder|0ln>|<cwith|26|26|3|3|cell-lborder|0ln>|<cwith|26|29|4|4|cell-halign|c>|<cwith|26|29|4|4|cell-valign|c>|<cwith|26|29|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-bborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-rborder|0ln>|<cwith|26|29|4|4|cell-halign|c>|<cwith|26|29|4|4|cell-valign|c>|<cwith|26|29|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-bborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-rborder|0ln>|<cwith|26|26|4|4|cell-bborder|0ln>|<cwith|26|26|4|4|cell-lborder|0ln>|<cwith|26|26|4|4|cell-rborder|0ln>|<cwith|27|27|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-halign|c>|<cwith|26|29|4|4|cell-valign|c>|<cwith|26|29|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-bborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-rborder|0ln>|<cwith|29|29|4|4|cell-tborder|0ln>|<cwith|29|29|4|4|cell-lborder|0ln>|<cwith|29|29|4|4|cell-rborder|0ln>|<cwith|28|28|4|4|cell-bborder|0ln>|<cwith|26|26|4|4|cell-bborder|0ln>|<cwith|26|26|4|4|cell-lborder|0ln>|<cwith|26|26|4|4|cell-rborder|0ln>|<cwith|27|27|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-halign|c>|<cwith|26|29|4|4|cell-valign|c>|<cwith|26|29|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-bborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-rborder|0ln>|<cwith|26|26|4|4|cell-bborder|0ln>|<cwith|26|26|4|4|cell-rborder|0ln>|<cwith|27|27|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-halign|c>|<cwith|26|29|4|4|cell-valign|c>|<cwith|26|29|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-bborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-rborder|0ln>|<cwith|29|29|4|4|cell-tborder|0ln>|<cwith|29|29|4|4|cell-lborder|0ln>|<cwith|29|29|4|4|cell-rborder|0ln>|<cwith|28|28|4|4|cell-bborder|0ln>|<cwith|26|26|4|4|cell-bborder|0ln>|<cwith|26|26|4|4|cell-rborder|0ln>|<cwith|27|27|4|4|cell-tborder|0ln>|<cwith|26|26|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-halign|c>|<cwith|26|29|4|4|cell-valign|c>|<cwith|26|29|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-bborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-rborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-halign|c>|<cwith|26|29|4|4|cell-valign|c>|<cwith|26|29|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-bborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-rborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-halign|c>|<cwith|26|29|4|4|cell-valign|c>|<cwith|26|29|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-bborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-rborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|26|4|4|cell-bborder|0ln>|<cwith|26|26|4|4|cell-lborder|0ln>|<cwith|26|26|4|4|cell-rborder|0ln>|<cwith|27|27|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-halign|c>|<cwith|26|29|4|4|cell-valign|c>|<cwith|26|29|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-bborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-rborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|29|29|4|4|cell-tborder|0ln>|<cwith|29|29|4|4|cell-lborder|0ln>|<cwith|29|29|4|4|cell-rborder|0ln>|<cwith|28|28|4|4|cell-bborder|0ln>|<cwith|26|26|4|4|cell-bborder|0ln>|<cwith|26|26|4|4|cell-lborder|0ln>|<cwith|26|26|4|4|cell-rborder|0ln>|<cwith|27|27|4|4|cell-tborder|0ln>|<cwith|26|26|4|4|cell-bborder|0ln>|<cwith|26|26|4|4|cell-lborder|0ln>|<cwith|26|26|4|4|cell-rborder|0ln>|<cwith|27|27|4|4|cell-tborder|0ln>|<cwith|26|29|2|2|cell-halign|c>|<cwith|26|29|2|2|cell-valign|c>|<cwith|26|29|2|2|cell-tborder|0ln>|<cwith|26|29|2|2|cell-bborder|0ln>|<cwith|26|29|2|2|cell-lborder|0ln>|<cwith|26|29|2|2|cell-rborder|0ln>|<cwith|26|29|2|2|cell-halign|c>|<cwith|26|29|2|2|cell-valign|c>|<cwith|26|29|2|2|cell-tborder|0ln>|<cwith|26|29|2|2|cell-bborder|0ln>|<cwith|26|29|2|2|cell-lborder|0ln>|<cwith|26|29|2|2|cell-rborder|0ln>|<cwith|26|29|2|2|cell-halign|c>|<cwith|26|29|2|2|cell-valign|c>|<cwith|26|29|2|2|cell-tborder|0ln>|<cwith|26|29|2|2|cell-bborder|0ln>|<cwith|26|29|2|2|cell-lborder|0ln>|<cwith|26|29|2|2|cell-rborder|0ln>|<cwith|26|26|2|2|cell-bborder|0ln>|<cwith|26|26|2|2|cell-lborder|0ln>|<cwith|26|26|2|2|cell-rborder|0ln>|<cwith|27|27|2|2|cell-tborder|0ln>|<cwith|26|29|2|2|cell-halign|c>|<cwith|26|29|2|2|cell-valign|c>|<cwith|26|29|2|2|cell-tborder|0ln>|<cwith|26|29|2|2|cell-bborder|0ln>|<cwith|26|29|2|2|cell-lborder|0ln>|<cwith|26|29|2|2|cell-rborder|0ln>|<cwith|29|29|2|2|cell-tborder|0ln>|<cwith|29|29|2|2|cell-lborder|0ln>|<cwith|29|29|2|2|cell-rborder|0ln>|<cwith|28|28|2|2|cell-bborder|0ln>|<cwith|26|26|2|2|cell-bborder|0ln>|<cwith|26|26|2|2|cell-lborder|0ln>|<cwith|26|26|2|2|cell-rborder|0ln>|<cwith|27|27|2|2|cell-tborder|0ln>|<cwith|26|29|2|2|cell-halign|c>|<cwith|26|29|2|2|cell-valign|c>|<cwith|26|29|2|2|cell-tborder|0ln>|<cwith|26|29|2|2|cell-bborder|0ln>|<cwith|26|29|2|2|cell-lborder|0ln>|<cwith|26|29|2|2|cell-rborder|0ln>|<cwith|26|26|2|2|cell-bborder|0ln>|<cwith|26|26|2|2|cell-rborder|0ln>|<cwith|27|27|2|2|cell-tborder|0ln>|<cwith|26|29|2|2|cell-halign|c>|<cwith|26|29|2|2|cell-valign|c>|<cwith|26|29|2|2|cell-tborder|0ln>|<cwith|26|29|2|2|cell-bborder|0ln>|<cwith|26|29|2|2|cell-lborder|0ln>|<cwith|26|29|2|2|cell-rborder|0ln>|<cwith|29|29|2|2|cell-tborder|0ln>|<cwith|29|29|2|2|cell-lborder|0ln>|<cwith|29|29|2|2|cell-rborder|0ln>|<cwith|28|28|2|2|cell-bborder|0ln>|<cwith|26|26|2|2|cell-bborder|0ln>|<cwith|26|26|2|2|cell-rborder|0ln>|<cwith|27|27|2|2|cell-tborder|0ln>|<cwith|26|26|2|2|cell-lborder|0ln>|<cwith|26|29|3|3|cell-halign|c>|<cwith|26|29|3|3|cell-valign|c>|<cwith|26|29|3|3|cell-tborder|0ln>|<cwith|26|29|3|3|cell-bborder|0ln>|<cwith|26|29|3|3|cell-lborder|0ln>|<cwith|26|29|3|3|cell-rborder|0ln>|<cwith|26|29|3|3|cell-halign|c>|<cwith|26|29|3|3|cell-valign|c>|<cwith|26|29|3|3|cell-tborder|0ln>|<cwith|26|29|3|3|cell-bborder|0ln>|<cwith|26|29|3|3|cell-lborder|0ln>|<cwith|26|29|3|3|cell-rborder|0ln>|<cwith|26|29|3|3|cell-halign|c>|<cwith|26|29|3|3|cell-valign|c>|<cwith|26|29|3|3|cell-tborder|0ln>|<cwith|26|29|3|3|cell-bborder|0ln>|<cwith|26|29|3|3|cell-lborder|0ln>|<cwith|26|29|3|3|cell-rborder|0ln>|<cwith|26|26|3|3|cell-bborder|0ln>|<cwith|26|26|3|3|cell-lborder|0ln>|<cwith|26|26|3|3|cell-rborder|0ln>|<cwith|27|27|3|3|cell-tborder|0ln>|<cwith|26|29|3|3|cell-halign|c>|<cwith|26|29|3|3|cell-valign|c>|<cwith|26|29|3|3|cell-tborder|0ln>|<cwith|26|29|3|3|cell-bborder|0ln>|<cwith|26|29|3|3|cell-lborder|0ln>|<cwith|26|29|3|3|cell-rborder|0ln>|<cwith|29|29|3|3|cell-tborder|0ln>|<cwith|29|29|3|3|cell-lborder|0ln>|<cwith|29|29|3|3|cell-rborder|0ln>|<cwith|28|28|3|3|cell-bborder|0ln>|<cwith|26|26|3|3|cell-bborder|0ln>|<cwith|26|26|3|3|cell-lborder|0ln>|<cwith|26|26|3|3|cell-rborder|0ln>|<cwith|27|27|3|3|cell-tborder|0ln>|<cwith|26|29|3|3|cell-halign|c>|<cwith|26|29|3|3|cell-valign|c>|<cwith|26|29|3|3|cell-tborder|0ln>|<cwith|26|29|3|3|cell-bborder|0ln>|<cwith|26|29|3|3|cell-lborder|0ln>|<cwith|26|29|3|3|cell-rborder|0ln>|<cwith|26|26|3|3|cell-bborder|0ln>|<cwith|26|26|3|3|cell-lborder|0ln>|<cwith|27|27|3|3|cell-tborder|0ln>|<cwith|26|29|3|3|cell-halign|c>|<cwith|26|29|3|3|cell-valign|c>|<cwith|26|29|3|3|cell-tborder|0ln>|<cwith|26|29|3|3|cell-bborder|0ln>|<cwith|26|29|3|3|cell-lborder|0ln>|<cwith|26|29|3|3|cell-rborder|0ln>|<cwith|29|29|3|3|cell-tborder|0ln>|<cwith|29|29|3|3|cell-lborder|0ln>|<cwith|29|29|3|3|cell-rborder|0ln>|<cwith|28|28|3|3|cell-bborder|0ln>|<cwith|26|26|3|3|cell-bborder|0ln>|<cwith|26|26|3|3|cell-lborder|0ln>|<cwith|27|27|3|3|cell-tborder|0ln>|<cwith|26|26|3|3|cell-rborder|0ln>|<cwith|26|29|3|3|cell-halign|c>|<cwith|26|29|3|3|cell-valign|c>|<cwith|26|29|3|3|cell-tborder|0ln>|<cwith|26|29|3|3|cell-bborder|0ln>|<cwith|26|29|3|3|cell-lborder|0ln>|<cwith|26|29|3|3|cell-rborder|0ln>|<cwith|26|29|3|3|cell-halign|c>|<cwith|26|29|3|3|cell-valign|c>|<cwith|26|29|3|3|cell-tborder|0ln>|<cwith|26|29|3|3|cell-bborder|0ln>|<cwith|26|29|3|3|cell-lborder|0ln>|<cwith|26|29|3|3|cell-rborder|0ln>|<cwith|26|26|3|3|cell-bborder|0ln>|<cwith|26|26|3|3|cell-lborder|0ln>|<cwith|26|26|3|3|cell-rborder|0ln>|<cwith|27|27|3|3|cell-tborder|0ln>|<cwith|26|29|3|3|cell-halign|c>|<cwith|26|29|3|3|cell-valign|c>|<cwith|26|29|3|3|cell-tborder|0ln>|<cwith|26|29|3|3|cell-bborder|0ln>|<cwith|26|29|3|3|cell-lborder|0ln>|<cwith|26|29|3|3|cell-rborder|0ln>|<cwith|29|29|3|3|cell-tborder|0ln>|<cwith|29|29|3|3|cell-lborder|0ln>|<cwith|29|29|3|3|cell-rborder|0ln>|<cwith|28|28|3|3|cell-bborder|0ln>|<cwith|26|26|3|3|cell-bborder|0ln>|<cwith|26|26|3|3|cell-lborder|0ln>|<cwith|26|26|3|3|cell-rborder|0ln>|<cwith|27|27|3|3|cell-tborder|0ln>|<cwith|26|29|3|3|cell-halign|c>|<cwith|26|29|3|3|cell-valign|c>|<cwith|26|29|3|3|cell-tborder|0ln>|<cwith|26|29|3|3|cell-bborder|0ln>|<cwith|26|29|3|3|cell-lborder|0ln>|<cwith|26|29|3|3|cell-rborder|0ln>|<cwith|26|26|3|3|cell-bborder|0ln>|<cwith|26|26|3|3|cell-rborder|0ln>|<cwith|27|27|3|3|cell-tborder|0ln>|<cwith|26|29|3|3|cell-halign|c>|<cwith|26|29|3|3|cell-valign|c>|<cwith|26|29|3|3|cell-tborder|0ln>|<cwith|26|29|3|3|cell-bborder|0ln>|<cwith|26|29|3|3|cell-lborder|0ln>|<cwith|26|29|3|3|cell-rborder|0ln>|<cwith|29|29|3|3|cell-tborder|0ln>|<cwith|29|29|3|3|cell-lborder|0ln>|<cwith|29|29|3|3|cell-rborder|0ln>|<cwith|28|28|3|3|cell-bborder|0ln>|<cwith|26|26|3|3|cell-bborder|0ln>|<cwith|26|26|3|3|cell-rborder|0ln>|<cwith|27|27|3|3|cell-tborder|0ln>|<cwith|26|26|3|3|cell-lborder|0ln>|<cwith|26|29|3|3|cell-halign|c>|<cwith|26|29|3|3|cell-valign|c>|<cwith|26|29|3|3|cell-tborder|0ln>|<cwith|26|29|3|3|cell-bborder|0ln>|<cwith|26|29|3|3|cell-lborder|0ln>|<cwith|26|29|3|3|cell-rborder|0ln>|<cwith|26|29|3|3|cell-lborder|0ln>|<cwith|26|29|3|3|cell-halign|c>|<cwith|26|29|3|3|cell-valign|c>|<cwith|26|29|3|3|cell-tborder|0ln>|<cwith|26|29|3|3|cell-bborder|0ln>|<cwith|26|29|3|3|cell-lborder|0ln>|<cwith|26|29|3|3|cell-rborder|0ln>|<cwith|26|29|3|3|cell-lborder|0ln>|<cwith|26|29|3|3|cell-halign|c>|<cwith|26|29|3|3|cell-valign|c>|<cwith|26|29|3|3|cell-tborder|0ln>|<cwith|26|29|3|3|cell-bborder|0ln>|<cwith|26|29|3|3|cell-lborder|0ln>|<cwith|26|29|3|3|cell-rborder|0ln>|<cwith|26|29|3|3|cell-lborder|0ln>|<cwith|26|26|3|3|cell-bborder|0ln>|<cwith|26|26|3|3|cell-lborder|0ln>|<cwith|26|26|3|3|cell-rborder|0ln>|<cwith|27|27|3|3|cell-tborder|0ln>|<cwith|26|29|3|3|cell-halign|c>|<cwith|26|29|3|3|cell-valign|c>|<cwith|26|29|3|3|cell-tborder|0ln>|<cwith|26|29|3|3|cell-bborder|0ln>|<cwith|26|29|3|3|cell-lborder|0ln>|<cwith|26|29|3|3|cell-rborder|0ln>|<cwith|26|29|3|3|cell-lborder|0ln>|<cwith|29|29|3|3|cell-tborder|0ln>|<cwith|29|29|3|3|cell-lborder|0ln>|<cwith|29|29|3|3|cell-rborder|0ln>|<cwith|28|28|3|3|cell-bborder|0ln>|<cwith|26|26|3|3|cell-bborder|0ln>|<cwith|26|26|3|3|cell-lborder|0ln>|<cwith|26|26|3|3|cell-rborder|0ln>|<cwith|27|27|3|3|cell-tborder|0ln>|<cwith|26|26|3|3|cell-bborder|0ln>|<cwith|26|26|3|3|cell-lborder|0ln>|<cwith|26|26|3|3|cell-rborder|0ln>|<cwith|27|27|3|3|cell-tborder|0ln>|<cwith|26|29|4|4|cell-halign|c>|<cwith|26|29|4|4|cell-valign|c>|<cwith|26|29|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-bborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-rborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-halign|c>|<cwith|26|29|4|4|cell-valign|c>|<cwith|26|29|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-bborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-rborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-halign|c>|<cwith|26|29|4|4|cell-valign|c>|<cwith|26|29|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-bborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-rborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-halign|c>|<cwith|26|29|4|4|cell-valign|c>|<cwith|26|29|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-bborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-rborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|26|4|4|cell-bborder|0ln>|<cwith|26|26|4|4|cell-lborder|0ln>|<cwith|26|26|4|4|cell-rborder|0ln>|<cwith|27|27|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-halign|c>|<cwith|26|29|4|4|cell-valign|c>|<cwith|26|29|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-bborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-rborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|29|29|4|4|cell-tborder|0ln>|<cwith|29|29|4|4|cell-lborder|0ln>|<cwith|29|29|4|4|cell-rborder|0ln>|<cwith|28|28|4|4|cell-bborder|0ln>|<cwith|26|26|4|4|cell-bborder|0ln>|<cwith|26|26|4|4|cell-lborder|0ln>|<cwith|26|26|4|4|cell-rborder|0ln>|<cwith|27|27|4|4|cell-tborder|0ln>|<cwith|26|26|4|4|cell-bborder|0ln>|<cwith|26|26|4|4|cell-lborder|0ln>|<cwith|26|26|4|4|cell-rborder|0ln>|<cwith|27|27|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-halign|c>|<cwith|26|29|4|4|cell-valign|c>|<cwith|26|29|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-bborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-rborder|0ln>|<cwith|26|29|4|4|cell-halign|c>|<cwith|26|29|4|4|cell-valign|c>|<cwith|26|29|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-bborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-rborder|0ln>|<cwith|26|29|4|4|cell-halign|c>|<cwith|26|29|4|4|cell-valign|c>|<cwith|26|29|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-bborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-rborder|0ln>|<cwith|26|26|4|4|cell-bborder|0ln>|<cwith|26|26|4|4|cell-lborder|0ln>|<cwith|26|26|4|4|cell-rborder|0ln>|<cwith|27|27|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-halign|c>|<cwith|26|29|4|4|cell-valign|c>|<cwith|26|29|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-bborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-rborder|0ln>|<cwith|29|29|4|4|cell-tborder|0ln>|<cwith|29|29|4|4|cell-lborder|0ln>|<cwith|29|29|4|4|cell-rborder|0ln>|<cwith|28|28|4|4|cell-bborder|0ln>|<cwith|26|26|4|4|cell-bborder|0ln>|<cwith|26|26|4|4|cell-lborder|0ln>|<cwith|26|26|4|4|cell-rborder|0ln>|<cwith|27|27|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-halign|c>|<cwith|26|29|4|4|cell-valign|c>|<cwith|26|29|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-bborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-rborder|0ln>|<cwith|26|26|4|4|cell-bborder|0ln>|<cwith|26|26|4|4|cell-rborder|0ln>|<cwith|27|27|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-halign|c>|<cwith|26|29|4|4|cell-valign|c>|<cwith|26|29|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-bborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-rborder|0ln>|<cwith|29|29|4|4|cell-tborder|0ln>|<cwith|29|29|4|4|cell-lborder|0ln>|<cwith|29|29|4|4|cell-rborder|0ln>|<cwith|28|28|4|4|cell-bborder|0ln>|<cwith|26|26|4|4|cell-bborder|0ln>|<cwith|26|26|4|4|cell-rborder|0ln>|<cwith|27|27|4|4|cell-tborder|0ln>|<cwith|26|26|4|4|cell-lborder|0ln>|<cwith|26|29|3|3|cell-halign|c>|<cwith|26|29|3|3|cell-valign|c>|<cwith|26|29|3|3|cell-tborder|0ln>|<cwith|26|29|3|3|cell-bborder|0ln>|<cwith|26|29|3|3|cell-lborder|0ln>|<cwith|26|29|3|3|cell-rborder|0ln>|<cwith|26|29|3|3|cell-halign|c>|<cwith|26|29|3|3|cell-valign|c>|<cwith|26|29|3|3|cell-tborder|0ln>|<cwith|26|29|3|3|cell-bborder|0ln>|<cwith|26|29|3|3|cell-lborder|0ln>|<cwith|26|29|3|3|cell-rborder|0ln>|<cwith|26|29|3|3|cell-halign|c>|<cwith|26|29|3|3|cell-valign|c>|<cwith|26|29|3|3|cell-tborder|0ln>|<cwith|26|29|3|3|cell-bborder|0ln>|<cwith|26|29|3|3|cell-lborder|0ln>|<cwith|26|29|3|3|cell-rborder|0ln>|<cwith|26|29|3|3|cell-halign|c>|<cwith|26|29|3|3|cell-valign|c>|<cwith|26|29|3|3|cell-tborder|0ln>|<cwith|26|29|3|3|cell-bborder|0ln>|<cwith|26|29|3|3|cell-lborder|0ln>|<cwith|26|29|3|3|cell-rborder|0ln>|<cwith|26|29|3|3|cell-halign|c>|<cwith|26|29|3|3|cell-valign|c>|<cwith|26|29|3|3|cell-tborder|0ln>|<cwith|26|29|3|3|cell-bborder|0ln>|<cwith|26|29|3|3|cell-lborder|0ln>|<cwith|26|29|3|3|cell-rborder|0ln>|<cwith|26|26|3|3|cell-bborder|0ln>|<cwith|26|26|3|3|cell-lborder|0ln>|<cwith|26|26|3|3|cell-rborder|0ln>|<cwith|27|27|3|3|cell-tborder|0ln>|<cwith|26|29|3|3|cell-halign|c>|<cwith|26|29|3|3|cell-valign|c>|<cwith|26|29|3|3|cell-tborder|0ln>|<cwith|26|29|3|3|cell-bborder|0ln>|<cwith|26|29|3|3|cell-lborder|0ln>|<cwith|26|29|3|3|cell-rborder|0ln>|<cwith|29|29|3|3|cell-tborder|0ln>|<cwith|29|29|3|3|cell-lborder|0ln>|<cwith|29|29|3|3|cell-rborder|0ln>|<cwith|28|28|3|3|cell-bborder|0ln>|<cwith|26|26|3|3|cell-bborder|0ln>|<cwith|26|26|3|3|cell-lborder|0ln>|<cwith|26|26|3|3|cell-rborder|0ln>|<cwith|27|27|3|3|cell-tborder|0ln>|<cwith|26|29|3|3|cell-halign|c>|<cwith|26|29|3|3|cell-valign|c>|<cwith|26|29|3|3|cell-tborder|0ln>|<cwith|26|29|3|3|cell-bborder|0ln>|<cwith|26|29|3|3|cell-lborder|0ln>|<cwith|26|29|3|3|cell-rborder|0ln>|<cwith|26|26|3|3|cell-bborder|0ln>|<cwith|26|26|3|3|cell-lborder|0ln>|<cwith|27|27|3|3|cell-tborder|0ln>|<cwith|26|29|3|3|cell-halign|c>|<cwith|26|29|3|3|cell-valign|c>|<cwith|26|29|3|3|cell-tborder|0ln>|<cwith|26|29|3|3|cell-bborder|0ln>|<cwith|26|29|3|3|cell-lborder|0ln>|<cwith|26|29|3|3|cell-rborder|0ln>|<cwith|29|29|3|3|cell-tborder|0ln>|<cwith|29|29|3|3|cell-lborder|0ln>|<cwith|29|29|3|3|cell-rborder|0ln>|<cwith|28|28|3|3|cell-bborder|0ln>|<cwith|26|26|3|3|cell-bborder|0ln>|<cwith|26|26|3|3|cell-lborder|0ln>|<cwith|27|27|3|3|cell-tborder|0ln>|<cwith|26|26|3|3|cell-rborder|0ln>|<cwith|26|29|3|3|cell-halign|c>|<cwith|26|29|3|3|cell-valign|c>|<cwith|26|29|3|3|cell-tborder|0ln>|<cwith|26|29|3|3|cell-bborder|0ln>|<cwith|26|29|3|3|cell-lborder|0ln>|<cwith|26|29|3|3|cell-rborder|0ln>|<cwith|26|29|3|3|cell-halign|c>|<cwith|26|29|3|3|cell-valign|c>|<cwith|26|29|3|3|cell-tborder|0ln>|<cwith|26|29|3|3|cell-bborder|0ln>|<cwith|26|29|3|3|cell-lborder|0ln>|<cwith|26|29|3|3|cell-rborder|0ln>|<cwith|26|26|3|3|cell-bborder|0ln>|<cwith|26|26|3|3|cell-lborder|0ln>|<cwith|26|26|3|3|cell-rborder|0ln>|<cwith|27|27|3|3|cell-tborder|0ln>|<cwith|26|29|3|3|cell-halign|c>|<cwith|26|29|3|3|cell-valign|c>|<cwith|26|29|3|3|cell-tborder|0ln>|<cwith|26|29|3|3|cell-bborder|0ln>|<cwith|26|29|3|3|cell-lborder|0ln>|<cwith|26|29|3|3|cell-rborder|0ln>|<cwith|29|29|3|3|cell-tborder|0ln>|<cwith|29|29|3|3|cell-lborder|0ln>|<cwith|29|29|3|3|cell-rborder|0ln>|<cwith|28|28|3|3|cell-bborder|0ln>|<cwith|26|26|3|3|cell-bborder|0ln>|<cwith|26|26|3|3|cell-lborder|0ln>|<cwith|26|26|3|3|cell-rborder|0ln>|<cwith|27|27|3|3|cell-tborder|0ln>|<cwith|26|29|3|3|cell-halign|c>|<cwith|26|29|3|3|cell-valign|c>|<cwith|26|29|3|3|cell-tborder|0ln>|<cwith|26|29|3|3|cell-bborder|0ln>|<cwith|26|29|3|3|cell-lborder|0ln>|<cwith|26|29|3|3|cell-rborder|0ln>|<cwith|26|26|3|3|cell-bborder|0ln>|<cwith|26|26|3|3|cell-rborder|0ln>|<cwith|27|27|3|3|cell-tborder|0ln>|<cwith|26|29|3|3|cell-halign|c>|<cwith|26|29|3|3|cell-valign|c>|<cwith|26|29|3|3|cell-tborder|0ln>|<cwith|26|29|3|3|cell-bborder|0ln>|<cwith|26|29|3|3|cell-lborder|0ln>|<cwith|26|29|3|3|cell-rborder|0ln>|<cwith|29|29|3|3|cell-tborder|0ln>|<cwith|29|29|3|3|cell-lborder|0ln>|<cwith|29|29|3|3|cell-rborder|0ln>|<cwith|28|28|3|3|cell-bborder|0ln>|<cwith|26|26|3|3|cell-bborder|0ln>|<cwith|26|26|3|3|cell-rborder|0ln>|<cwith|27|27|3|3|cell-tborder|0ln>|<cwith|26|26|3|3|cell-lborder|0ln>|<cwith|26|29|3|3|cell-halign|c>|<cwith|26|29|3|3|cell-valign|c>|<cwith|26|29|3|3|cell-tborder|0ln>|<cwith|26|29|3|3|cell-bborder|0ln>|<cwith|26|29|3|3|cell-lborder|0ln>|<cwith|26|29|3|3|cell-rborder|0ln>|<cwith|26|29|3|3|cell-lborder|0ln>|<cwith|26|29|3|3|cell-halign|c>|<cwith|26|29|3|3|cell-valign|c>|<cwith|26|29|3|3|cell-tborder|0ln>|<cwith|26|29|3|3|cell-bborder|0ln>|<cwith|26|29|3|3|cell-lborder|0ln>|<cwith|26|29|3|3|cell-rborder|0ln>|<cwith|26|29|3|3|cell-lborder|0ln>|<cwith|26|29|3|3|cell-halign|c>|<cwith|26|29|3|3|cell-valign|c>|<cwith|26|29|3|3|cell-tborder|0ln>|<cwith|26|29|3|3|cell-bborder|0ln>|<cwith|26|29|3|3|cell-lborder|0ln>|<cwith|26|29|3|3|cell-rborder|0ln>|<cwith|26|29|3|3|cell-lborder|0ln>|<cwith|26|26|3|3|cell-bborder|0ln>|<cwith|26|26|3|3|cell-lborder|0ln>|<cwith|26|26|3|3|cell-rborder|0ln>|<cwith|27|27|3|3|cell-tborder|0ln>|<cwith|26|29|3|3|cell-halign|c>|<cwith|26|29|3|3|cell-valign|c>|<cwith|26|29|3|3|cell-tborder|0ln>|<cwith|26|29|3|3|cell-bborder|0ln>|<cwith|26|29|3|3|cell-lborder|0ln>|<cwith|26|29|3|3|cell-rborder|0ln>|<cwith|26|29|3|3|cell-lborder|0ln>|<cwith|29|29|3|3|cell-tborder|0ln>|<cwith|29|29|3|3|cell-lborder|0ln>|<cwith|29|29|3|3|cell-rborder|0ln>|<cwith|28|28|3|3|cell-bborder|0ln>|<cwith|26|26|3|3|cell-bborder|0ln>|<cwith|26|26|3|3|cell-lborder|0ln>|<cwith|26|26|3|3|cell-rborder|0ln>|<cwith|27|27|3|3|cell-tborder|0ln>|<cwith|26|26|3|3|cell-bborder|0ln>|<cwith|26|26|3|3|cell-lborder|0ln>|<cwith|26|26|3|3|cell-rborder|0ln>|<cwith|27|27|3|3|cell-tborder|0ln>|<cwith|26|29|3|3|cell-halign|c>|<cwith|26|29|3|3|cell-valign|c>|<cwith|26|29|3|3|cell-tborder|0ln>|<cwith|26|29|3|3|cell-bborder|0ln>|<cwith|26|29|3|3|cell-lborder|0ln>|<cwith|26|29|3|3|cell-rborder|0ln>|<cwith|26|29|3|3|cell-lborder|0ln>|<cwith|26|29|3|3|cell-halign|c>|<cwith|26|29|3|3|cell-valign|c>|<cwith|26|29|3|3|cell-tborder|0ln>|<cwith|26|29|3|3|cell-bborder|0ln>|<cwith|26|29|3|3|cell-lborder|0ln>|<cwith|26|29|3|3|cell-rborder|0ln>|<cwith|26|29|3|3|cell-lborder|0ln>|<cwith|26|29|3|3|cell-halign|c>|<cwith|26|29|3|3|cell-valign|c>|<cwith|26|29|3|3|cell-tborder|0ln>|<cwith|26|29|3|3|cell-bborder|0ln>|<cwith|26|29|3|3|cell-lborder|0ln>|<cwith|26|29|3|3|cell-rborder|0ln>|<cwith|26|29|3|3|cell-lborder|0ln>|<cwith|26|29|3|3|cell-halign|c>|<cwith|26|29|3|3|cell-valign|c>|<cwith|26|29|3|3|cell-tborder|0ln>|<cwith|26|29|3|3|cell-bborder|0ln>|<cwith|26|29|3|3|cell-lborder|0ln>|<cwith|26|29|3|3|cell-rborder|0ln>|<cwith|26|29|3|3|cell-lborder|0ln>|<cwith|26|26|3|3|cell-bborder|0ln>|<cwith|26|26|3|3|cell-lborder|0ln>|<cwith|26|26|3|3|cell-rborder|0ln>|<cwith|27|27|3|3|cell-tborder|0ln>|<cwith|26|29|3|3|cell-halign|c>|<cwith|26|29|3|3|cell-valign|c>|<cwith|26|29|3|3|cell-tborder|0ln>|<cwith|26|29|3|3|cell-bborder|0ln>|<cwith|26|29|3|3|cell-lborder|0ln>|<cwith|26|29|3|3|cell-rborder|0ln>|<cwith|26|29|3|3|cell-lborder|0ln>|<cwith|29|29|3|3|cell-tborder|0ln>|<cwith|29|29|3|3|cell-lborder|0ln>|<cwith|29|29|3|3|cell-rborder|0ln>|<cwith|28|28|3|3|cell-bborder|0ln>|<cwith|26|26|3|3|cell-bborder|0ln>|<cwith|26|26|3|3|cell-lborder|0ln>|<cwith|26|26|3|3|cell-rborder|0ln>|<cwith|27|27|3|3|cell-tborder|0ln>|<cwith|26|26|3|3|cell-bborder|0ln>|<cwith|26|26|3|3|cell-lborder|0ln>|<cwith|26|26|3|3|cell-rborder|0ln>|<cwith|27|27|3|3|cell-tborder|0ln>|<cwith|26|29|3|3|cell-halign|c>|<cwith|26|29|3|3|cell-valign|c>|<cwith|26|29|3|3|cell-tborder|0ln>|<cwith|26|29|3|3|cell-bborder|0ln>|<cwith|26|29|3|3|cell-lborder|0ln>|<cwith|26|29|3|3|cell-rborder|0ln>|<cwith|26|29|3|3|cell-halign|c>|<cwith|26|29|3|3|cell-valign|c>|<cwith|26|29|3|3|cell-tborder|0ln>|<cwith|26|29|3|3|cell-bborder|0ln>|<cwith|26|29|3|3|cell-lborder|0ln>|<cwith|26|29|3|3|cell-rborder|0ln>|<cwith|26|29|3|3|cell-halign|c>|<cwith|26|29|3|3|cell-valign|c>|<cwith|26|29|3|3|cell-tborder|0ln>|<cwith|26|29|3|3|cell-bborder|0ln>|<cwith|26|29|3|3|cell-lborder|0ln>|<cwith|26|29|3|3|cell-rborder|0ln>|<cwith|26|26|3|3|cell-bborder|0ln>|<cwith|26|26|3|3|cell-lborder|0ln>|<cwith|26|26|3|3|cell-rborder|0ln>|<cwith|27|27|3|3|cell-tborder|0ln>|<cwith|26|29|3|3|cell-halign|c>|<cwith|26|29|3|3|cell-valign|c>|<cwith|26|29|3|3|cell-tborder|0ln>|<cwith|26|29|3|3|cell-bborder|0ln>|<cwith|26|29|3|3|cell-lborder|0ln>|<cwith|26|29|3|3|cell-rborder|0ln>|<cwith|29|29|3|3|cell-tborder|0ln>|<cwith|29|29|3|3|cell-lborder|0ln>|<cwith|29|29|3|3|cell-rborder|0ln>|<cwith|28|28|3|3|cell-bborder|0ln>|<cwith|26|26|3|3|cell-bborder|0ln>|<cwith|26|26|3|3|cell-lborder|0ln>|<cwith|26|26|3|3|cell-rborder|0ln>|<cwith|27|27|3|3|cell-tborder|0ln>|<cwith|26|29|3|3|cell-halign|c>|<cwith|26|29|3|3|cell-valign|c>|<cwith|26|29|3|3|cell-tborder|0ln>|<cwith|26|29|3|3|cell-bborder|0ln>|<cwith|26|29|3|3|cell-lborder|0ln>|<cwith|26|29|3|3|cell-rborder|0ln>|<cwith|26|26|3|3|cell-bborder|0ln>|<cwith|26|26|3|3|cell-rborder|0ln>|<cwith|27|27|3|3|cell-tborder|0ln>|<cwith|26|29|3|3|cell-halign|c>|<cwith|26|29|3|3|cell-valign|c>|<cwith|26|29|3|3|cell-tborder|0ln>|<cwith|26|29|3|3|cell-bborder|0ln>|<cwith|26|29|3|3|cell-lborder|0ln>|<cwith|26|29|3|3|cell-rborder|0ln>|<cwith|29|29|3|3|cell-tborder|0ln>|<cwith|29|29|3|3|cell-lborder|0ln>|<cwith|29|29|3|3|cell-rborder|0ln>|<cwith|28|28|3|3|cell-bborder|0ln>|<cwith|26|26|3|3|cell-bborder|0ln>|<cwith|26|26|3|3|cell-rborder|0ln>|<cwith|27|27|3|3|cell-tborder|0ln>|<cwith|26|26|3|3|cell-lborder|0ln>|<cwith|26|29|4|4|cell-halign|c>|<cwith|26|29|4|4|cell-valign|c>|<cwith|26|29|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-bborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-rborder|0ln>|<cwith|26|29|4|4|cell-halign|c>|<cwith|26|29|4|4|cell-valign|c>|<cwith|26|29|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-bborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-rborder|0ln>|<cwith|26|29|4|4|cell-halign|c>|<cwith|26|29|4|4|cell-valign|c>|<cwith|26|29|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-bborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-rborder|0ln>|<cwith|26|29|4|4|cell-halign|c>|<cwith|26|29|4|4|cell-valign|c>|<cwith|26|29|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-bborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-rborder|0ln>|<cwith|26|29|4|4|cell-halign|c>|<cwith|26|29|4|4|cell-valign|c>|<cwith|26|29|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-bborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-rborder|0ln>|<cwith|26|26|4|4|cell-bborder|0ln>|<cwith|26|26|4|4|cell-lborder|0ln>|<cwith|26|26|4|4|cell-rborder|0ln>|<cwith|27|27|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-halign|c>|<cwith|26|29|4|4|cell-valign|c>|<cwith|26|29|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-bborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-rborder|0ln>|<cwith|29|29|4|4|cell-tborder|0ln>|<cwith|29|29|4|4|cell-lborder|0ln>|<cwith|29|29|4|4|cell-rborder|0ln>|<cwith|28|28|4|4|cell-bborder|0ln>|<cwith|26|26|4|4|cell-bborder|0ln>|<cwith|26|26|4|4|cell-lborder|0ln>|<cwith|26|26|4|4|cell-rborder|0ln>|<cwith|27|27|4|4|cell-tborder|0ln>|<cwith|26|26|4|4|cell-bborder|0ln>|<cwith|26|26|4|4|cell-lborder|0ln>|<cwith|26|26|4|4|cell-rborder|0ln>|<cwith|27|27|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-halign|c>|<cwith|26|29|4|4|cell-valign|c>|<cwith|26|29|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-bborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-rborder|0ln>|<cwith|26|29|4|4|cell-halign|c>|<cwith|26|29|4|4|cell-valign|c>|<cwith|26|29|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-bborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-rborder|0ln>|<cwith|26|29|4|4|cell-halign|c>|<cwith|26|29|4|4|cell-valign|c>|<cwith|26|29|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-bborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-rborder|0ln>|<cwith|26|29|4|4|cell-halign|c>|<cwith|26|29|4|4|cell-valign|c>|<cwith|26|29|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-bborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-rborder|0ln>|<cwith|26|29|4|4|cell-halign|c>|<cwith|26|29|4|4|cell-valign|c>|<cwith|26|29|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-bborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-rborder|0ln>|<cwith|26|29|4|4|cell-halign|c>|<cwith|26|29|4|4|cell-valign|c>|<cwith|26|29|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-bborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-rborder|0ln>|<cwith|26|26|4|4|cell-bborder|0ln>|<cwith|26|26|4|4|cell-lborder|0ln>|<cwith|26|26|4|4|cell-rborder|0ln>|<cwith|27|27|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-halign|c>|<cwith|26|29|4|4|cell-valign|c>|<cwith|26|29|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-bborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-rborder|0ln>|<cwith|29|29|4|4|cell-tborder|0ln>|<cwith|29|29|4|4|cell-lborder|0ln>|<cwith|29|29|4|4|cell-rborder|0ln>|<cwith|28|28|4|4|cell-bborder|0ln>|<cwith|26|26|4|4|cell-bborder|0ln>|<cwith|26|26|4|4|cell-lborder|0ln>|<cwith|26|26|4|4|cell-rborder|0ln>|<cwith|27|27|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-halign|c>|<cwith|26|29|4|4|cell-valign|c>|<cwith|26|29|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-bborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-rborder|0ln>|<cwith|26|26|4|4|cell-bborder|0ln>|<cwith|26|26|4|4|cell-rborder|0ln>|<cwith|27|27|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-halign|c>|<cwith|26|29|4|4|cell-valign|c>|<cwith|26|29|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-bborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-rborder|0ln>|<cwith|29|29|4|4|cell-tborder|0ln>|<cwith|29|29|4|4|cell-lborder|0ln>|<cwith|29|29|4|4|cell-rborder|0ln>|<cwith|28|28|4|4|cell-bborder|0ln>|<cwith|26|26|4|4|cell-bborder|0ln>|<cwith|26|26|4|4|cell-rborder|0ln>|<cwith|27|27|4|4|cell-tborder|0ln>|<cwith|26|26|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-halign|c>|<cwith|26|29|4|4|cell-valign|c>|<cwith|26|29|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-bborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-rborder|0ln>|<cwith|26|29|4|4|cell-halign|c>|<cwith|26|29|4|4|cell-valign|c>|<cwith|26|29|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-bborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-rborder|0ln>|<cwith|26|29|4|4|cell-halign|c>|<cwith|26|29|4|4|cell-valign|c>|<cwith|26|29|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-bborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-rborder|0ln>|<cwith|26|26|4|4|cell-bborder|0ln>|<cwith|26|26|4|4|cell-lborder|0ln>|<cwith|26|26|4|4|cell-rborder|0ln>|<cwith|27|27|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-halign|c>|<cwith|26|29|4|4|cell-valign|c>|<cwith|26|29|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-bborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-rborder|0ln>|<cwith|29|29|4|4|cell-tborder|0ln>|<cwith|29|29|4|4|cell-lborder|0ln>|<cwith|29|29|4|4|cell-rborder|0ln>|<cwith|28|28|4|4|cell-bborder|0ln>|<cwith|26|26|4|4|cell-bborder|0ln>|<cwith|26|26|4|4|cell-lborder|0ln>|<cwith|26|26|4|4|cell-rborder|0ln>|<cwith|27|27|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-halign|c>|<cwith|26|29|4|4|cell-valign|c>|<cwith|26|29|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-bborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-rborder|0ln>|<cwith|26|26|4|4|cell-bborder|0ln>|<cwith|26|26|4|4|cell-lborder|0ln>|<cwith|27|27|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-halign|c>|<cwith|26|29|4|4|cell-valign|c>|<cwith|26|29|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-bborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-rborder|0ln>|<cwith|29|29|4|4|cell-tborder|0ln>|<cwith|29|29|4|4|cell-lborder|0ln>|<cwith|29|29|4|4|cell-rborder|0ln>|<cwith|28|28|4|4|cell-bborder|0ln>|<cwith|26|26|4|4|cell-bborder|0ln>|<cwith|26|26|4|4|cell-lborder|0ln>|<cwith|27|27|4|4|cell-tborder|0ln>|<cwith|26|26|4|4|cell-rborder|0ln>|<cwith|26|29|4|4|cell-halign|c>|<cwith|26|29|4|4|cell-valign|c>|<cwith|26|29|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-bborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-rborder|0ln>|<cwith|26|29|4|4|cell-halign|c>|<cwith|26|29|4|4|cell-valign|c>|<cwith|26|29|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-bborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-rborder|0ln>|<cwith|26|26|4|4|cell-bborder|0ln>|<cwith|26|26|4|4|cell-lborder|0ln>|<cwith|26|26|4|4|cell-rborder|0ln>|<cwith|27|27|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-halign|c>|<cwith|26|29|4|4|cell-valign|c>|<cwith|26|29|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-bborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-rborder|0ln>|<cwith|29|29|4|4|cell-tborder|0ln>|<cwith|29|29|4|4|cell-lborder|0ln>|<cwith|29|29|4|4|cell-rborder|0ln>|<cwith|28|28|4|4|cell-bborder|0ln>|<cwith|26|26|4|4|cell-bborder|0ln>|<cwith|26|26|4|4|cell-lborder|0ln>|<cwith|26|26|4|4|cell-rborder|0ln>|<cwith|27|27|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-halign|c>|<cwith|26|29|4|4|cell-valign|c>|<cwith|26|29|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-bborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-rborder|0ln>|<cwith|26|26|4|4|cell-bborder|0ln>|<cwith|26|26|4|4|cell-rborder|0ln>|<cwith|27|27|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-halign|c>|<cwith|26|29|4|4|cell-valign|c>|<cwith|26|29|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-bborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-rborder|0ln>|<cwith|29|29|4|4|cell-tborder|0ln>|<cwith|29|29|4|4|cell-lborder|0ln>|<cwith|29|29|4|4|cell-rborder|0ln>|<cwith|28|28|4|4|cell-bborder|0ln>|<cwith|26|26|4|4|cell-bborder|0ln>|<cwith|26|26|4|4|cell-rborder|0ln>|<cwith|27|27|4|4|cell-tborder|0ln>|<cwith|26|26|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-halign|c>|<cwith|26|29|4|4|cell-valign|c>|<cwith|26|29|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-bborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-rborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-halign|c>|<cwith|26|29|4|4|cell-valign|c>|<cwith|26|29|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-bborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-rborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-halign|c>|<cwith|26|29|4|4|cell-valign|c>|<cwith|26|29|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-bborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-rborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|26|4|4|cell-bborder|0ln>|<cwith|26|26|4|4|cell-lborder|0ln>|<cwith|26|26|4|4|cell-rborder|0ln>|<cwith|27|27|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-halign|c>|<cwith|26|29|4|4|cell-valign|c>|<cwith|26|29|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-bborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-rborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|29|29|4|4|cell-tborder|0ln>|<cwith|29|29|4|4|cell-lborder|0ln>|<cwith|29|29|4|4|cell-rborder|0ln>|<cwith|28|28|4|4|cell-bborder|0ln>|<cwith|26|26|4|4|cell-bborder|0ln>|<cwith|26|26|4|4|cell-lborder|0ln>|<cwith|26|26|4|4|cell-rborder|0ln>|<cwith|27|27|4|4|cell-tborder|0ln>|<cwith|26|26|4|4|cell-bborder|0ln>|<cwith|26|26|4|4|cell-lborder|0ln>|<cwith|26|26|4|4|cell-rborder|0ln>|<cwith|27|27|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-halign|c>|<cwith|26|29|4|4|cell-valign|c>|<cwith|26|29|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-bborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-rborder|0ln>|<cwith|26|29|4|4|cell-halign|c>|<cwith|26|29|4|4|cell-valign|c>|<cwith|26|29|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-bborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-rborder|0ln>|<cwith|26|29|4|4|cell-halign|c>|<cwith|26|29|4|4|cell-valign|c>|<cwith|26|29|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-bborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-rborder|0ln>|<cwith|26|29|4|4|cell-halign|c>|<cwith|26|29|4|4|cell-valign|c>|<cwith|26|29|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-bborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-rborder|0ln>|<cwith|26|29|4|4|cell-halign|c>|<cwith|26|29|4|4|cell-valign|c>|<cwith|26|29|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-bborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-rborder|0ln>|<cwith|26|26|4|4|cell-bborder|0ln>|<cwith|26|26|4|4|cell-lborder|0ln>|<cwith|26|26|4|4|cell-rborder|0ln>|<cwith|27|27|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-halign|c>|<cwith|26|29|4|4|cell-valign|c>|<cwith|26|29|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-bborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-rborder|0ln>|<cwith|29|29|4|4|cell-tborder|0ln>|<cwith|29|29|4|4|cell-lborder|0ln>|<cwith|29|29|4|4|cell-rborder|0ln>|<cwith|28|28|4|4|cell-bborder|0ln>|<cwith|26|26|4|4|cell-bborder|0ln>|<cwith|26|26|4|4|cell-lborder|0ln>|<cwith|26|26|4|4|cell-rborder|0ln>|<cwith|27|27|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-halign|c>|<cwith|26|29|4|4|cell-valign|c>|<cwith|26|29|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-bborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-rborder|0ln>|<cwith|26|26|4|4|cell-bborder|0ln>|<cwith|26|26|4|4|cell-lborder|0ln>|<cwith|27|27|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-halign|c>|<cwith|26|29|4|4|cell-valign|c>|<cwith|26|29|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-bborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-rborder|0ln>|<cwith|29|29|4|4|cell-tborder|0ln>|<cwith|29|29|4|4|cell-lborder|0ln>|<cwith|29|29|4|4|cell-rborder|0ln>|<cwith|28|28|4|4|cell-bborder|0ln>|<cwith|26|26|4|4|cell-bborder|0ln>|<cwith|26|26|4|4|cell-lborder|0ln>|<cwith|27|27|4|4|cell-tborder|0ln>|<cwith|26|26|4|4|cell-rborder|0ln>|<cwith|26|29|4|4|cell-halign|c>|<cwith|26|29|4|4|cell-valign|c>|<cwith|26|29|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-bborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-rborder|0ln>|<cwith|26|29|4|4|cell-halign|c>|<cwith|26|29|4|4|cell-valign|c>|<cwith|26|29|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-bborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-rborder|0ln>|<cwith|26|26|4|4|cell-bborder|0ln>|<cwith|26|26|4|4|cell-lborder|0ln>|<cwith|26|26|4|4|cell-rborder|0ln>|<cwith|27|27|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-halign|c>|<cwith|26|29|4|4|cell-valign|c>|<cwith|26|29|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-bborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-rborder|0ln>|<cwith|29|29|4|4|cell-tborder|0ln>|<cwith|29|29|4|4|cell-lborder|0ln>|<cwith|29|29|4|4|cell-rborder|0ln>|<cwith|28|28|4|4|cell-bborder|0ln>|<cwith|26|26|4|4|cell-bborder|0ln>|<cwith|26|26|4|4|cell-lborder|0ln>|<cwith|26|26|4|4|cell-rborder|0ln>|<cwith|27|27|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-halign|c>|<cwith|26|29|4|4|cell-valign|c>|<cwith|26|29|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-bborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-rborder|0ln>|<cwith|26|26|4|4|cell-bborder|0ln>|<cwith|26|26|4|4|cell-rborder|0ln>|<cwith|27|27|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-halign|c>|<cwith|26|29|4|4|cell-valign|c>|<cwith|26|29|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-bborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-rborder|0ln>|<cwith|29|29|4|4|cell-tborder|0ln>|<cwith|29|29|4|4|cell-lborder|0ln>|<cwith|29|29|4|4|cell-rborder|0ln>|<cwith|28|28|4|4|cell-bborder|0ln>|<cwith|26|26|4|4|cell-bborder|0ln>|<cwith|26|26|4|4|cell-rborder|0ln>|<cwith|27|27|4|4|cell-tborder|0ln>|<cwith|26|26|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-halign|c>|<cwith|26|29|4|4|cell-valign|c>|<cwith|26|29|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-bborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-rborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-halign|c>|<cwith|26|29|4|4|cell-valign|c>|<cwith|26|29|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-bborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-rborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-halign|c>|<cwith|26|29|4|4|cell-valign|c>|<cwith|26|29|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-bborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-rborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|26|4|4|cell-bborder|0ln>|<cwith|26|26|4|4|cell-lborder|0ln>|<cwith|26|26|4|4|cell-rborder|0ln>|<cwith|27|27|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-halign|c>|<cwith|26|29|4|4|cell-valign|c>|<cwith|26|29|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-bborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-rborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|29|29|4|4|cell-tborder|0ln>|<cwith|29|29|4|4|cell-lborder|0ln>|<cwith|29|29|4|4|cell-rborder|0ln>|<cwith|28|28|4|4|cell-bborder|0ln>|<cwith|26|26|4|4|cell-bborder|0ln>|<cwith|26|26|4|4|cell-lborder|0ln>|<cwith|26|26|4|4|cell-rborder|0ln>|<cwith|27|27|4|4|cell-tborder|0ln>|<cwith|26|26|4|4|cell-bborder|0ln>|<cwith|26|26|4|4|cell-lborder|0ln>|<cwith|26|26|4|4|cell-rborder|0ln>|<cwith|27|27|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-halign|c>|<cwith|26|29|4|4|cell-valign|c>|<cwith|26|29|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-bborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-rborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-halign|c>|<cwith|26|29|4|4|cell-valign|c>|<cwith|26|29|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-bborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-rborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-halign|c>|<cwith|26|29|4|4|cell-valign|c>|<cwith|26|29|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-bborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-rborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-halign|c>|<cwith|26|29|4|4|cell-valign|c>|<cwith|26|29|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-bborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-rborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|26|4|4|cell-bborder|0ln>|<cwith|26|26|4|4|cell-lborder|0ln>|<cwith|26|26|4|4|cell-rborder|0ln>|<cwith|27|27|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-halign|c>|<cwith|26|29|4|4|cell-valign|c>|<cwith|26|29|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-bborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-rborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|29|29|4|4|cell-tborder|0ln>|<cwith|29|29|4|4|cell-lborder|0ln>|<cwith|29|29|4|4|cell-rborder|0ln>|<cwith|28|28|4|4|cell-bborder|0ln>|<cwith|26|26|4|4|cell-bborder|0ln>|<cwith|26|26|4|4|cell-lborder|0ln>|<cwith|26|26|4|4|cell-rborder|0ln>|<cwith|27|27|4|4|cell-tborder|0ln>|<cwith|26|26|4|4|cell-bborder|0ln>|<cwith|26|26|4|4|cell-lborder|0ln>|<cwith|26|26|4|4|cell-rborder|0ln>|<cwith|27|27|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-halign|c>|<cwith|26|29|4|4|cell-valign|c>|<cwith|26|29|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-bborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-rborder|0ln>|<cwith|26|29|4|4|cell-halign|c>|<cwith|26|29|4|4|cell-valign|c>|<cwith|26|29|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-bborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-rborder|0ln>|<cwith|26|29|4|4|cell-halign|c>|<cwith|26|29|4|4|cell-valign|c>|<cwith|26|29|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-bborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-rborder|0ln>|<cwith|26|26|4|4|cell-bborder|0ln>|<cwith|26|26|4|4|cell-lborder|0ln>|<cwith|26|26|4|4|cell-rborder|0ln>|<cwith|27|27|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-halign|c>|<cwith|26|29|4|4|cell-valign|c>|<cwith|26|29|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-bborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-rborder|0ln>|<cwith|29|29|4|4|cell-tborder|0ln>|<cwith|29|29|4|4|cell-lborder|0ln>|<cwith|29|29|4|4|cell-rborder|0ln>|<cwith|28|28|4|4|cell-bborder|0ln>|<cwith|26|26|4|4|cell-bborder|0ln>|<cwith|26|26|4|4|cell-lborder|0ln>|<cwith|26|26|4|4|cell-rborder|0ln>|<cwith|27|27|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-halign|c>|<cwith|26|29|4|4|cell-valign|c>|<cwith|26|29|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-bborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-rborder|0ln>|<cwith|26|26|4|4|cell-bborder|0ln>|<cwith|26|26|4|4|cell-rborder|0ln>|<cwith|27|27|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-halign|c>|<cwith|26|29|4|4|cell-valign|c>|<cwith|26|29|4|4|cell-tborder|0ln>|<cwith|26|29|4|4|cell-bborder|0ln>|<cwith|26|29|4|4|cell-lborder|0ln>|<cwith|26|29|4|4|cell-rborder|0ln>|<cwith|29|29|4|4|cell-tborder|0ln>|<cwith|29|29|4|4|cell-lborder|0ln>|<cwith|29|29|4|4|cell-rborder|0ln>|<cwith|28|28|4|4|cell-bborder|0ln>|<cwith|26|26|4|4|cell-bborder|0ln>|<cwith|26|26|4|4|cell-rborder|0ln>|<cwith|27|27|4|4|cell-tborder|0ln>|<cwith|26|26|4|4|cell-lborder|0ln>|<cwith|10|10|1|-1|cell-tborder|1ln>|<cwith|9|9|1|-1|cell-bborder|1ln>|<cwith|10|13|1|1|cell-lborder|1ln>|<cwith|10|13|9|9|cell-rborder|1ln>|<cwith|14|14|1|-1|cell-tborder|1ln>|<cwith|13|13|1|-1|cell-bborder|1ln>|<cwith|14|17|1|1|cell-lborder|1ln>|<cwith|14|17|9|9|cell-rborder|1ln>|<cwith|18|18|1|-1|cell-tborder|1ln>|<cwith|17|17|1|-1|cell-bborder|1ln>|<cwith|18|21|1|1|cell-lborder|1ln>|<cwith|18|21|9|9|cell-rborder|1ln>|<cwith|22|22|1|-1|cell-tborder|1ln>|<cwith|21|21|1|-1|cell-bborder|1ln>|<cwith|22|25|1|1|cell-lborder|1ln>|<cwith|22|25|9|9|cell-rborder|1ln>|<cwith|26|26|1|-1|cell-tborder|1ln>|<cwith|25|25|1|-1|cell-bborder|1ln>|<cwith|29|29|1|-1|cell-bborder|1ln>|<cwith|26|29|1|1|cell-lborder|1ln>|<cwith|26|29|9|9|cell-rborder|1ln>|<cwith|2|5|9|9|cell-halign|c>|<cwith|2|5|9|9|cell-valign|c>|<cwith|2|5|9|9|cell-background|pastel
  green>|<cwith|2|5|9|9|cell-tborder|0ln>|<cwith|2|5|9|9|cell-bborder|0ln>|<cwith|2|5|9|9|cell-lborder|0ln>|<cwith|2|5|9|9|cell-rborder|0ln>|<cwith|2|5|9|9|cell-rborder|1ln>|<cwith|2|2|9|9|cell-tborder|1ln>|<cwith|5|5|9|9|cell-bborder|1ln>|<cwith|2|5|9|9|cell-rborder|1ln>|<cwith|6|9|9|9|cell-halign|c>|<cwith|6|9|9|9|cell-valign|c>|<cwith|6|9|9|9|cell-background|pastel
  green>|<cwith|6|9|9|9|cell-tborder|0ln>|<cwith|6|9|9|9|cell-bborder|0ln>|<cwith|6|9|9|9|cell-lborder|0ln>|<cwith|6|9|9|9|cell-rborder|0ln>|<cwith|6|9|9|9|cell-rborder|1ln>|<cwith|6|6|9|9|cell-tborder|1ln>|<cwith|9|9|9|9|cell-bborder|1ln>|<cwith|6|9|9|9|cell-rborder|1ln>|<cwith|10|13|9|9|cell-halign|c>|<cwith|10|13|9|9|cell-valign|c>|<cwith|10|13|9|9|cell-background|pastel
  green>|<cwith|10|13|9|9|cell-tborder|0ln>|<cwith|10|13|9|9|cell-bborder|0ln>|<cwith|10|13|9|9|cell-lborder|0ln>|<cwith|10|13|9|9|cell-rborder|0ln>|<cwith|10|13|9|9|cell-rborder|1ln>|<cwith|10|10|9|9|cell-tborder|1ln>|<cwith|13|13|9|9|cell-bborder|1ln>|<cwith|10|13|9|9|cell-rborder|1ln>|<cwith|14|17|9|9|cell-halign|c>|<cwith|14|17|9|9|cell-valign|c>|<cwith|14|17|9|9|cell-background|pastel
  green>|<cwith|14|17|9|9|cell-tborder|0ln>|<cwith|14|17|9|9|cell-bborder|0ln>|<cwith|14|17|9|9|cell-lborder|0ln>|<cwith|14|17|9|9|cell-rborder|0ln>|<cwith|14|17|9|9|cell-rborder|1ln>|<cwith|14|14|9|9|cell-tborder|1ln>|<cwith|17|17|9|9|cell-bborder|1ln>|<cwith|14|17|9|9|cell-rborder|1ln>|<cwith|18|21|9|9|cell-halign|c>|<cwith|18|21|9|9|cell-valign|c>|<cwith|18|21|9|9|cell-background|pastel
  green>|<cwith|18|21|9|9|cell-tborder|0ln>|<cwith|18|21|9|9|cell-bborder|0ln>|<cwith|18|21|9|9|cell-lborder|0ln>|<cwith|18|21|9|9|cell-rborder|0ln>|<cwith|18|21|9|9|cell-rborder|1ln>|<cwith|18|18|9|9|cell-tborder|1ln>|<cwith|21|21|9|9|cell-bborder|1ln>|<cwith|18|21|9|9|cell-rborder|1ln>|<cwith|22|25|9|9|cell-halign|c>|<cwith|22|25|9|9|cell-valign|c>|<cwith|22|25|9|9|cell-background|pastel
  green>|<cwith|22|25|9|9|cell-tborder|0ln>|<cwith|22|25|9|9|cell-bborder|0ln>|<cwith|22|25|9|9|cell-lborder|0ln>|<cwith|22|25|9|9|cell-rborder|0ln>|<cwith|22|25|9|9|cell-rborder|1ln>|<cwith|22|22|9|9|cell-tborder|1ln>|<cwith|25|25|9|9|cell-bborder|1ln>|<cwith|22|25|9|9|cell-rborder|1ln>|<cwith|1|-1|1|7|cell-background|pastel
  blue>|<table|<row|<cell|c<rsub|in>>|<cell|op<rsub|0>>|<cell|op<rsub|1>>|<cell|op<rsub|2>>|<cell|op<rsub|3>>|<cell|a<rsub|i>>|<cell|b<rsub|i>>|<cell|r<rsub|i>>|<cell|c<rsub|i>>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<\cell>
    1
  </cell>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>>|<row|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>>|<row|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>>|<row|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>>|<row|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>>|<row|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>>|<row|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>>|<row|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>>>>>|Tabella
  di verità delle restanti operazioni per l'ALU a <math|4> bit>

  dove <math|i\<in\><around*|[|1,3|]>>. Tuttavia tale tabella presenta gli
  input e gli output in binario, quindi occorre convertire tali valori in
  esadecimale, per poterli inserire nella ROM, ottenendo:

  <big-table|<tabular|<tformat|<table|<row|<cell|<math|<tformat|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|1|-1|1|-1|cell-valign|c>|<cwith|1|-1|1|2|cell-background|pastel
  orange>|<cwith|1|-1|2|3|cell-background|pastel
  green>|<cwith|1|-1|1|-1|cell-tborder|0ln>|<cwith|1|-1|1|-1|cell-bborder|0ln>|<cwith|1|-1|1|-1|cell-lborder|0ln>|<cwith|1|-1|1|-1|cell-rborder|0ln>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|2|2|1|-1|cell-tborder|1ln>|<cwith|1|1|1|-1|cell-tborder|1ln>|<cwith|5|5|1|-1|cell-bborder|1ln>|<cwith|1|-1|1|1|cell-lborder|1ln>|<cwith|1|-1|2|2|cell-rborder|1ln>|<cwith|6|9|1|2|cell-halign|c>|<cwith|6|9|1|2|cell-valign|c>|<cwith|6|9|1|2|cell-background|pastel
  orange>|<cwith|6|9|2|2|cell-background|pastel
  green>|<cwith|6|9|1|2|cell-tborder|0ln>|<cwith|6|9|1|2|cell-bborder|0ln>|<cwith|6|9|1|2|cell-lborder|0ln>|<cwith|6|9|1|2|cell-rborder|0ln>|<cwith|6|6|1|2|cell-tborder|1ln>|<cwith|9|9|1|2|cell-bborder|1ln>|<cwith|6|9|1|1|cell-lborder|1ln>|<cwith|6|9|2|2|cell-rborder|1ln>|<cwith|10|13|1|2|cell-halign|c>|<cwith|10|13|1|2|cell-valign|c>|<cwith|10|13|1|2|cell-background|pastel
  orange>|<cwith|10|13|2|2|cell-background|pastel
  green>|<cwith|10|13|1|2|cell-tborder|0ln>|<cwith|10|13|1|2|cell-bborder|0ln>|<cwith|10|13|1|2|cell-lborder|0ln>|<cwith|10|13|1|2|cell-rborder|0ln>|<cwith|10|13|1|1|cell-lborder|1ln>|<cwith|10|13|2|2|cell-rborder|1ln>|<cwith|10|13|1|2|cell-halign|c>|<cwith|10|13|1|2|cell-valign|c>|<cwith|10|13|1|2|cell-background|pastel
  orange>|<cwith|10|13|2|2|cell-background|pastel
  green>|<cwith|10|13|1|2|cell-tborder|0ln>|<cwith|10|13|1|2|cell-bborder|0ln>|<cwith|10|13|1|2|cell-lborder|0ln>|<cwith|10|13|1|2|cell-rborder|0ln>|<cwith|10|10|1|2|cell-tborder|1ln>|<cwith|13|13|1|2|cell-bborder|1ln>|<cwith|10|13|1|1|cell-lborder|1ln>|<cwith|10|13|2|2|cell-rborder|1ln>|<cwith|14|17|1|2|cell-halign|c>|<cwith|14|17|1|2|cell-valign|c>|<cwith|14|17|1|2|cell-background|pastel
  orange>|<cwith|14|17|2|2|cell-background|pastel
  green>|<cwith|14|17|1|2|cell-tborder|0ln>|<cwith|14|17|1|2|cell-bborder|0ln>|<cwith|14|17|1|2|cell-lborder|0ln>|<cwith|14|17|1|2|cell-rborder|0ln>|<cwith|14|17|1|1|cell-lborder|1ln>|<cwith|14|17|2|2|cell-rborder|1ln>|<cwith|14|17|1|2|cell-halign|c>|<cwith|14|17|1|2|cell-valign|c>|<cwith|14|17|1|2|cell-background|pastel
  orange>|<cwith|14|17|2|2|cell-background|pastel
  green>|<cwith|14|17|1|2|cell-tborder|0ln>|<cwith|14|17|1|2|cell-bborder|0ln>|<cwith|14|17|1|2|cell-lborder|0ln>|<cwith|14|17|1|2|cell-rborder|0ln>|<cwith|14|14|1|2|cell-tborder|1ln>|<cwith|17|17|1|2|cell-bborder|1ln>|<cwith|14|17|1|1|cell-lborder|1ln>|<cwith|14|17|2|2|cell-rborder|1ln>|<cwith|18|21|1|2|cell-halign|c>|<cwith|18|21|1|2|cell-valign|c>|<cwith|18|21|1|2|cell-background|pastel
  orange>|<cwith|18|21|2|2|cell-background|pastel
  green>|<cwith|18|21|1|2|cell-tborder|0ln>|<cwith|18|21|1|2|cell-bborder|0ln>|<cwith|18|21|1|2|cell-lborder|0ln>|<cwith|18|21|1|2|cell-rborder|0ln>|<cwith|18|21|1|1|cell-lborder|1ln>|<cwith|18|21|2|2|cell-rborder|1ln>|<cwith|18|21|1|2|cell-halign|c>|<cwith|18|21|1|2|cell-valign|c>|<cwith|18|21|1|2|cell-background|pastel
  orange>|<cwith|18|21|2|2|cell-background|pastel
  green>|<cwith|18|21|1|2|cell-tborder|0ln>|<cwith|18|21|1|2|cell-bborder|0ln>|<cwith|18|21|1|2|cell-lborder|0ln>|<cwith|18|21|1|2|cell-rborder|0ln>|<cwith|18|21|1|1|cell-lborder|1ln>|<cwith|18|21|2|2|cell-rborder|1ln>|<cwith|18|21|1|2|cell-halign|c>|<cwith|18|21|1|2|cell-valign|c>|<cwith|18|21|1|2|cell-background|pastel
  orange>|<cwith|18|21|2|2|cell-background|pastel
  green>|<cwith|18|21|1|2|cell-tborder|0ln>|<cwith|18|21|1|2|cell-bborder|0ln>|<cwith|18|21|1|2|cell-lborder|0ln>|<cwith|18|21|1|2|cell-rborder|0ln>|<cwith|18|18|1|2|cell-tborder|1ln>|<cwith|21|21|1|2|cell-bborder|1ln>|<cwith|18|21|1|1|cell-lborder|1ln>|<cwith|18|21|2|2|cell-rborder|1ln>|<cwith|22|25|1|2|cell-halign|c>|<cwith|22|25|1|2|cell-valign|c>|<cwith|22|25|1|2|cell-background|pastel
  orange>|<cwith|22|25|2|2|cell-background|pastel
  green>|<cwith|22|25|1|2|cell-tborder|0ln>|<cwith|22|25|1|2|cell-bborder|0ln>|<cwith|22|25|1|2|cell-lborder|0ln>|<cwith|22|25|1|2|cell-rborder|0ln>|<cwith|22|25|1|1|cell-lborder|1ln>|<cwith|22|25|2|2|cell-rborder|1ln>|<cwith|22|25|1|2|cell-halign|c>|<cwith|22|25|1|2|cell-valign|c>|<cwith|22|25|1|2|cell-background|pastel
  orange>|<cwith|22|25|2|2|cell-background|pastel
  green>|<cwith|22|25|1|2|cell-tborder|0ln>|<cwith|22|25|1|2|cell-bborder|0ln>|<cwith|22|25|1|2|cell-lborder|0ln>|<cwith|22|25|1|2|cell-rborder|0ln>|<cwith|22|25|1|1|cell-lborder|1ln>|<cwith|22|25|2|2|cell-rborder|1ln>|<cwith|22|25|1|2|cell-halign|c>|<cwith|22|25|1|2|cell-valign|c>|<cwith|22|25|1|2|cell-background|pastel
  orange>|<cwith|22|25|2|2|cell-background|pastel
  green>|<cwith|22|25|1|2|cell-tborder|0ln>|<cwith|22|25|1|2|cell-bborder|0ln>|<cwith|22|25|1|2|cell-lborder|0ln>|<cwith|22|25|1|2|cell-rborder|0ln>|<cwith|22|22|1|2|cell-tborder|1ln>|<cwith|25|25|1|2|cell-bborder|1ln>|<cwith|22|25|1|1|cell-lborder|1ln>|<cwith|22|25|2|2|cell-rborder|1ln>|<cwith|26|29|1|2|cell-halign|c>|<cwith|26|29|1|2|cell-valign|c>|<cwith|26|29|1|2|cell-background|pastel
  orange>|<cwith|26|29|2|2|cell-background|pastel
  green>|<cwith|26|29|1|2|cell-tborder|0ln>|<cwith|26|29|1|2|cell-bborder|0ln>|<cwith|26|29|1|2|cell-lborder|0ln>|<cwith|26|29|1|2|cell-rborder|0ln>|<cwith|26|29|1|1|cell-lborder|1ln>|<cwith|26|29|2|2|cell-rborder|1ln>|<cwith|26|29|1|2|cell-halign|c>|<cwith|26|29|1|2|cell-valign|c>|<cwith|26|29|1|2|cell-background|pastel
  orange>|<cwith|26|29|2|2|cell-background|pastel
  green>|<cwith|26|29|1|2|cell-tborder|0ln>|<cwith|26|29|1|2|cell-bborder|0ln>|<cwith|26|29|1|2|cell-lborder|0ln>|<cwith|26|29|1|2|cell-rborder|0ln>|<cwith|26|29|1|1|cell-lborder|1ln>|<cwith|26|29|2|2|cell-rborder|1ln>|<cwith|26|29|1|2|cell-halign|c>|<cwith|26|29|1|2|cell-valign|c>|<cwith|26|29|1|2|cell-background|pastel
  orange>|<cwith|26|29|2|2|cell-background|pastel
  green>|<cwith|26|29|1|2|cell-tborder|0ln>|<cwith|26|29|1|2|cell-bborder|0ln>|<cwith|26|29|1|2|cell-lborder|0ln>|<cwith|26|29|1|2|cell-rborder|0ln>|<cwith|26|29|1|1|cell-lborder|1ln>|<cwith|26|29|2|2|cell-rborder|1ln>|<cwith|26|29|1|2|cell-halign|c>|<cwith|26|29|1|2|cell-valign|c>|<cwith|26|29|1|2|cell-background|pastel
  orange>|<cwith|26|29|2|2|cell-background|pastel
  green>|<cwith|26|29|1|2|cell-tborder|0ln>|<cwith|26|29|1|2|cell-bborder|0ln>|<cwith|26|29|1|2|cell-lborder|0ln>|<cwith|26|29|1|2|cell-rborder|0ln>|<cwith|26|26|1|2|cell-tborder|1ln>|<cwith|29|29|1|2|cell-bborder|1ln>|<cwith|26|29|1|1|cell-lborder|1ln>|<cwith|26|29|2|2|cell-rborder|1ln>|<cwith|1|-1|1|1|cell-background|pastel
  blue>|<table|<row|<cell|input>|<cell|output>>|<row|<cell|<shell|0x48>>|<cell|0>>|<row|<cell|<shell|0x49>>|<cell|0>>|<row|<cell|<shell|0x4A>>|<cell|0>>|<row|<cell|<shell|0x4B>>|<cell|2>>|<row|<cell|<shell|0x50>>|<cell|0>>|<row|<cell|<shell|0x51>>|<cell|2>>|<row|<cell|<shell|0x52>>|<cell|2>>|<row|<cell|<shell|0x53>>|<cell|2>>|<row|<cell|<shell|0x58>>|<cell|0>>|<row|<cell|<shell|0x59>>|<cell|2>>|<row|<cell|<shell|0x5A>>|<cell|2>>|<row|<cell|<shell|0x5B>>|<cell|0>>|<row|<cell|<shell|0x60>>|<cell|2>>|<row|<cell|<shell|0x61>>|<cell|0>>|<row|<cell|<shell|0x62>>|<cell|0>>|<row|<cell|<shell|0x63>>|<cell|2>>|<row|<cell|<shell|0x68>>|<cell|2>>|<row|<cell|<shell|0x69>>|<cell|2>>|<row|<cell|<shell|0x6A>>|<cell|2>>|<row|<cell|<shell|0x6B>>|<cell|0>>|<row|<cell|<shell|0x70>>|<cell|2>>|<row|<cell|<shell|0x71>>|<cell|0>>|<row|<cell|<shell|0x72>>|<cell|0>>|<row|<cell|<shell|0x73>>|<cell|0>>|<row|<cell|<shell|0x78>>|<cell|2>>|<row|<cell|<shell|0x79>>|<cell|2>>|<row|<cell|<shell|0x7A>>|<cell|0>>|<row|<cell|<shell|0x7B>>|<cell|0>>>>>>>>>>|Tabella
  di verità delle restanti operazioni per l'ALU a <math|4> bit in
  esadecimale>

  <subsubsection|Implementazione della ROM>

  Per usare la ROM con il software Digital occorre configurare gli indirizzi
  di memoria con i relativi valori di output precedentemente calcolati, come
  segue:

  <big-figure|<tabular|<tformat|<cwith|1|1|1|-1|cell-halign|c>|<cwith|1|1|1|-1|cell-valign|c>|<table|<row|<cell|<image|imgs/rom-settings-4-bit.png|0.3par|||>>|<cell|<image|imgs/rom-data-4-bit.png|0.3par|||>>>>>>|Configurazione
  della ROM su Digital>

  In conclusione l'ALU a <math|4> bit completa può essere realizzata come
  mostrato in Fig. <reference|alu-4-bit>.

  <big-figure|<image|imgs/ALU-4-bit.png|0.35par|||>|ALU a <math|4> bit
  completa implementata con ROM<label|alu-4-bit>>

  In aggiunta riporto anche il codice HDL relativo ai linguaggi di
  descrizione hardware VHDL:

  <\numbered>
    <\shell-code>
      LIBRARY ieee;

      USE ieee.std_logic_1164.all;

      use IEEE.NUMERIC_STD.ALL;

      \;

      entity DIG_ROM_ALU_1 is

      \ \ port (

      \ \ \ \ D: out std_logic_vector (1 downto 0);

      \ \ \ \ A: in std_logic_vector (5 downto 0);

      \ \ \ \ sel: in std_logic );

      end DIG_ROM_ALU_1;

      \;

      architecture Behavioral of DIG_ROM_ALU_1 is

      \ \ type mem is array ( 0 to 57) of std_logic_vector (1 downto 0);

      \ \ constant my_Rom : mem := (

      \ \ \ \ "00", "10", "10", "01", "00", "00", "01", "01", "00", "00",
      "00", "10",\ 

      \ \ \ \ "00", "00", "00", "00", "00", "10", "10", "10", "00", "00",
      "00", "00",\ 

      \ \ \ \ "00", "10", "10", "00", "00", "00", "00", "00", "10", "00",
      "00", "10",\ 

      \ \ \ \ "00", "00", "00", "00", "10", "10", "10", "00", "00", "00",
      "00", "00",\ 

      \ \ \ \ "10", "00", "00", "00", "00", "00", "00", "00", "10", "10");

      begin

      \ \ process (A, sel)

      \ \ begin

      \ \ \ \ if sel='0' then

      \ \ \ \ \ \ D \<less\>= (others =\<gtr\> 'Z');

      \ \ \ \ elsif A \<gtr\> "111001" then

      \ \ \ \ \ \ D \<less\>= (others =\<gtr\> '0');

      \ \ \ \ else

      \ \ \ \ \ \ D \<less\>= my_rom(to_integer(unsigned(A)));

      \ \ \ \ end if;

      \ \ end process;

      end Behavioral;

      \;

      \;

      LIBRARY ieee;

      USE ieee.std_logic_1164.all;

      use IEEE.NUMERIC_STD.ALL;

      \;

      entity DIG_ROM_ALU_2 is

      \ \ port (

      \ \ \ \ D: out std_logic_vector (1 downto 0);

      \ \ \ \ A: in std_logic_vector (6 downto 0);

      \ \ \ \ sel: in std_logic );

      end DIG_ROM_ALU_2;

      \;

      architecture Behavioral of DIG_ROM_ALU_2 is

      \ \ type mem is array ( 0 to 121) of std_logic_vector (1 downto 0);

      \ \ constant my_Rom : mem := (

      \ \ \ \ "00", "10", "10", "01", "00", "00", "01", "01", "00", "00",
      "00", "10",\ 

      \ \ \ \ "00", "00", "00", "00", "00", "10", "10", "10", "00", "00",
      "00", "00",\ 

      \ \ \ \ "00", "10", "10", "00", "00", "00", "00", "00", "10", "00",
      "00", "10",\ 

      \ \ \ \ "00", "00", "00", "00", "10", "10", "10", "00", "00", "00",
      "00", "00",\ 

      \ \ \ \ "10", "00", "00", "00", "00", "00", "00", "00", "10", "10",
      "00", "00",\ 

      \ \ \ \ "00", "00", "00", "00", "10", "01", "01", "11", "10", "10",
      "11", "11",\ 

      \ \ \ \ "00", "00", "00", "10", "00", "00", "00", "00", "00", "10",
      "10", "10",\ 

      \ \ \ \ "00", "00", "00", "00", "00", "10", "10", "00", "00", "00",
      "00", "00",\ 

      \ \ \ \ "10", "00", "00", "10", "00", "00", "00", "00", "10", "10",
      "10", "00",\ 

      \ \ \ \ "00", "00", "00", "00", "10", "00", "00", "00", "00", "00",
      "00", "00",\ 

      \ \ \ \ "10", "10");

      begin

      \ \ process (A, sel)

      \ \ begin

      \ \ \ \ if sel='0' then

      \ \ \ \ \ \ D \<less\>= (others =\<gtr\> 'Z');

      \ \ \ \ elsif A \<gtr\> "1111001" then

      \ \ \ \ \ \ D \<less\>= (others =\<gtr\> '0');

      \ \ \ \ else

      \ \ \ \ \ \ D \<less\>= my_rom(to_integer(unsigned(A)));

      \ \ \ \ end if;

      \ \ end process;

      end Behavioral;

      \;

      \;

      LIBRARY ieee;

      USE ieee.std_logic_1164.all;

      use IEEE.NUMERIC_STD.ALL;

      \;

      entity DIG_ROM_ALU_3 is

      \ \ port (

      \ \ \ \ D: out std_logic_vector (1 downto 0);

      \ \ \ \ A: in std_logic_vector (6 downto 0);

      \ \ \ \ sel: in std_logic );

      end DIG_ROM_ALU_3;

      \;

      architecture Behavioral of DIG_ROM_ALU_3 is

      \ \ type mem is array ( 0 to 121) of std_logic_vector (1 downto 0);

      \ \ constant my_Rom : mem := (

      \ \ \ \ "00", "10", "10", "01", "00", "00", "01", "01", "00", "00",
      "00", "10",\ 

      \ \ \ \ "00", "00", "00", "00", "00", "10", "10", "10", "00", "00",
      "00", "00",\ 

      \ \ \ \ "00", "10", "10", "00", "00", "00", "00", "00", "10", "00",
      "00", "10",\ 

      \ \ \ \ "00", "00", "00", "00", "10", "10", "10", "00", "00", "00",
      "00", "00",\ 

      \ \ \ \ "10", "00", "00", "00", "00", "00", "00", "00", "10", "10",
      "00", "00",\ 

      \ \ \ \ "00", "00", "00", "00", "10", "01", "01", "11", "10", "10",
      "11", "11",\ 

      \ \ \ \ "00", "00", "00", "10", "00", "00", "00", "00", "00", "10",
      "10", "10",\ 

      \ \ \ \ "00", "00", "00", "00", "00", "10", "10", "00", "00", "00",
      "00", "00",\ 

      \ \ \ \ "10", "00", "00", "10", "00", "00", "00", "00", "10", "10",
      "10", "00",\ 

      \ \ \ \ "00", "00", "00", "00", "10", "00", "00", "00", "00", "00",
      "00", "00",\ 

      \ \ \ \ "10", "10");

      begin

      \ \ process (A, sel)

      \ \ begin

      \ \ \ \ if sel='0' then

      \ \ \ \ \ \ D \<less\>= (others =\<gtr\> 'Z');

      \ \ \ \ elsif A \<gtr\> "1111001" then

      \ \ \ \ \ \ D \<less\>= (others =\<gtr\> '0');

      \ \ \ \ else

      \ \ \ \ \ \ D \<less\>= my_rom(to_integer(unsigned(A)));

      \ \ \ \ end if;

      \ \ end process;

      end Behavioral;

      \;

      \;

      LIBRARY ieee;

      USE ieee.std_logic_1164.all;

      use IEEE.NUMERIC_STD.ALL;

      \;

      entity DIG_ROM_ALU_4 is

      \ \ port (

      \ \ \ \ D: out std_logic_vector (1 downto 0);

      \ \ \ \ A: in std_logic_vector (6 downto 0);

      \ \ \ \ sel: in std_logic );

      end DIG_ROM_ALU_4;

      \;

      architecture Behavioral of DIG_ROM_ALU_4 is

      \ \ type mem is array ( 0 to 121) of std_logic_vector (1 downto 0);

      \ \ constant my_Rom : mem := (

      \ \ \ \ "00", "10", "10", "01", "00", "00", "01", "01", "00", "00",
      "00", "10",\ 

      \ \ \ \ "00", "00", "00", "00", "00", "10", "10", "10", "00", "00",
      "00", "00",\ 

      \ \ \ \ "00", "10", "10", "00", "00", "00", "00", "00", "10", "00",
      "00", "10",\ 

      \ \ \ \ "00", "00", "00", "00", "10", "10", "10", "00", "00", "00",
      "00", "00",\ 

      \ \ \ \ "10", "00", "00", "00", "00", "00", "00", "00", "10", "10",
      "00", "00",\ 

      \ \ \ \ "00", "00", "00", "00", "10", "01", "01", "11", "10", "10",
      "11", "11",\ 

      \ \ \ \ "00", "00", "00", "10", "00", "00", "00", "00", "00", "10",
      "10", "10",\ 

      \ \ \ \ "00", "00", "00", "00", "00", "10", "10", "00", "00", "00",
      "00", "00",\ 

      \ \ \ \ "10", "00", "00", "10", "00", "00", "00", "00", "10", "10",
      "10", "00",\ 

      \ \ \ \ "00", "00", "00", "00", "10", "00", "00", "00", "00", "00",
      "00", "00",\ 

      \ \ \ \ "10", "10");

      begin

      \ \ process (A, sel)

      \ \ begin

      \ \ \ \ if sel='0' then

      \ \ \ \ \ \ D \<less\>= (others =\<gtr\> 'Z');

      \ \ \ \ elsif A \<gtr\> "1111001" then

      \ \ \ \ \ \ D \<less\>= (others =\<gtr\> '0');

      \ \ \ \ else

      \ \ \ \ \ \ D \<less\>= my_rom(to_integer(unsigned(A)));

      \ \ \ \ end if;

      \ \ end process;

      end Behavioral;

      \;

      \;

      LIBRARY ieee;

      USE ieee.std_logic_1164.all;

      USE ieee.numeric_std.all;

      \;

      entity main is

      \ \ port (

      \ \ \ \ b_0: in std_logic;

      \ \ \ \ a_0: in std_logic;

      \ \ \ \ b_1: in std_logic;

      \ \ \ \ a_1: in std_logic;

      \ \ \ \ b_2: in std_logic;

      \ \ \ \ a_2: in std_logic;

      \ \ \ \ b_3: in std_logic;

      \ \ \ \ a_3: in std_logic;

      \ \ \ \ op_1: in std_logic;

      \ \ \ \ op_2: in std_logic;

      \ \ \ \ op_3: in std_logic;

      \ \ \ \ op_0: in std_logic;

      \ \ \ \ r_0: out std_logic;

      \ \ \ \ r_1: out std_logic;

      \ \ \ \ r_2: out std_logic;

      \ \ \ \ r_3: out std_logic;

      \ \ \ \ c_out: out std_logic);

      end main;

      \;

      architecture Behavioral of main is

      \ \ signal s0: std_logic_vector(5 downto 0);

      \ \ signal s1: std_logic_vector(1 downto 0);

      \ \ signal s2: std_logic_vector(3 downto 0);

      \ \ signal s3: std_logic_vector(6 downto 0);

      \ \ signal s4: std_logic_vector(1 downto 0);

      \ \ signal s5: std_logic_vector(6 downto 0);

      \ \ signal s6: std_logic_vector(6 downto 0);

      \ \ signal s7: std_logic_vector(1 downto 0);

      \ \ signal s8: std_logic_vector(1 downto 0);

      begin

      \ \ s2(0) \<less\>= op_3;

      \ \ s2(1) \<less\>= op_2;

      \ \ s2(2) \<less\>= op_1;

      \ \ s2(3) \<less\>= op_0;

      \ \ s0(0) \<less\>= b_0;

      \ \ s0(1) \<less\>= a_0;

      \ \ s0(5 downto 2) \<less\>= s2;

      \ \ gate0: entity work.DIG_ROM_ALU_1 -- ALU_1

      \ \ \ \ port map (

      \ \ \ \ \ \ A =\<gtr\> s0,

      \ \ \ \ \ \ sel =\<gtr\> '1',

      \ \ \ \ \ \ D =\<gtr\> s1);

      \ \ s3(0) \<less\>= b_1;

      \ \ s3(1) \<less\>= a_1;

      \ \ s3(5 downto 2) \<less\>= s2;

      \ \ s3(6) \<less\>= s1(0);

      \ \ r_0 \<less\>= s1(1);

      \ \ gate1: entity work.DIG_ROM_ALU_2 -- ALU_2

      \ \ \ \ port map (

      \ \ \ \ \ \ A =\<gtr\> s3,

      \ \ \ \ \ \ sel =\<gtr\> '1',

      \ \ \ \ \ \ D =\<gtr\> s4);

      \ \ s5(0) \<less\>= b_2;

      \ \ s5(1) \<less\>= a_2;

      \ \ s5(5 downto 2) \<less\>= s2;

      \ \ s5(6) \<less\>= s4(0);

      \ \ r_1 \<less\>= s4(1);

      \ \ gate2: entity work.DIG_ROM_ALU_3 -- ALU_3

      \ \ \ \ port map (

      \ \ \ \ \ \ A =\<gtr\> s5,

      \ \ \ \ \ \ sel =\<gtr\> '1',

      \ \ \ \ \ \ D =\<gtr\> s8);

      \ \ s6(0) \<less\>= b_3;

      \ \ s6(1) \<less\>= a_3;

      \ \ s6(5 downto 2) \<less\>= s2;

      \ \ s6(6) \<less\>= s8(0);

      \ \ r_2 \<less\>= s8(1);

      \ \ gate3: entity work.DIG_ROM_ALU_4 -- ALU_4

      \ \ \ \ port map (

      \ \ \ \ \ \ A =\<gtr\> s6,

      \ \ \ \ \ \ sel =\<gtr\> '1',

      \ \ \ \ \ \ D =\<gtr\> s7);

      \ \ c_out \<less\>= s7(0);

      \ \ r_3 \<less\>= s7(1);

      end Behavioral;
    </shell-code>
  </numbered>

  e Verilog:

  <\numbered>
    <\shell-code>
      module DIG_ROM_64X2_ALU_1 (

      \ \ \ \ input [5:0] A,

      \ \ \ \ input sel,

      \ \ \ \ output reg [1:0] D

      );

      \ \ \ \ reg [1:0] my_rom [0:57];

      \;

      \ \ \ \ always @ (*) begin

      \ \ \ \ \ \ \ \ if (~sel)

      \ \ \ \ \ \ \ \ \ \ \ \ D = 2'hz;

      \ \ \ \ \ \ \ \ else if (A \<gtr\> 6'h39)

      \ \ \ \ \ \ \ \ \ \ \ \ D = 2'h0;

      \ \ \ \ \ \ \ \ else

      \ \ \ \ \ \ \ \ \ \ \ \ D = my_rom[A];

      \ \ \ \ end

      \;

      \ \ \ \ initial begin

      \ \ \ \ \ \ \ \ my_rom[0] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[1] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[2] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[3] = 2'h1;

      \ \ \ \ \ \ \ \ my_rom[4] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[5] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[6] = 2'h1;

      \ \ \ \ \ \ \ \ my_rom[7] = 2'h1;

      \ \ \ \ \ \ \ \ my_rom[8] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[9] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[10] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[11] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[12] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[13] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[14] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[15] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[16] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[17] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[18] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[19] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[20] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[21] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[22] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[23] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[24] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[25] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[26] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[27] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[28] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[29] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[30] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[31] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[32] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[33] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[34] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[35] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[36] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[37] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[38] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[39] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[40] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[41] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[42] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[43] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[44] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[45] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[46] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[47] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[48] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[49] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[50] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[51] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[52] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[53] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[54] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[55] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[56] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[57] = 2'h2;

      \ \ \ \ end

      endmodule

      \;

      module DIG_ROM_128X2_ALU_2 (

      \ \ \ \ input [6:0] A,

      \ \ \ \ input sel,

      \ \ \ \ output reg [1:0] D

      );

      \ \ \ \ reg [1:0] my_rom [0:121];

      \;

      \ \ \ \ always @ (*) begin

      \ \ \ \ \ \ \ \ if (~sel)

      \ \ \ \ \ \ \ \ \ \ \ \ D = 2'hz;

      \ \ \ \ \ \ \ \ else if (A \<gtr\> 7'h79)

      \ \ \ \ \ \ \ \ \ \ \ \ D = 2'h0;

      \ \ \ \ \ \ \ \ else

      \ \ \ \ \ \ \ \ \ \ \ \ D = my_rom[A];

      \ \ \ \ end

      \;

      \ \ \ \ initial begin

      \ \ \ \ \ \ \ \ my_rom[0] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[1] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[2] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[3] = 2'h1;

      \ \ \ \ \ \ \ \ my_rom[4] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[5] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[6] = 2'h1;

      \ \ \ \ \ \ \ \ my_rom[7] = 2'h1;

      \ \ \ \ \ \ \ \ my_rom[8] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[9] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[10] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[11] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[12] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[13] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[14] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[15] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[16] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[17] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[18] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[19] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[20] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[21] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[22] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[23] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[24] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[25] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[26] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[27] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[28] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[29] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[30] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[31] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[32] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[33] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[34] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[35] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[36] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[37] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[38] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[39] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[40] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[41] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[42] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[43] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[44] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[45] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[46] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[47] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[48] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[49] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[50] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[51] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[52] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[53] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[54] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[55] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[56] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[57] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[58] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[59] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[60] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[61] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[62] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[63] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[64] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[65] = 2'h1;

      \ \ \ \ \ \ \ \ my_rom[66] = 2'h1;

      \ \ \ \ \ \ \ \ my_rom[67] = 2'h3;

      \ \ \ \ \ \ \ \ my_rom[68] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[69] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[70] = 2'h3;

      \ \ \ \ \ \ \ \ my_rom[71] = 2'h3;

      \ \ \ \ \ \ \ \ my_rom[72] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[73] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[74] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[75] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[76] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[77] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[78] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[79] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[80] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[81] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[82] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[83] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[84] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[85] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[86] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[87] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[88] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[89] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[90] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[91] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[92] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[93] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[94] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[95] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[96] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[97] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[98] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[99] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[100] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[101] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[102] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[103] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[104] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[105] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[106] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[107] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[108] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[109] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[110] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[111] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[112] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[113] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[114] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[115] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[116] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[117] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[118] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[119] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[120] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[121] = 2'h2;

      \ \ \ \ end

      endmodule

      \;

      module DIG_ROM_128X2_ALU_3 (

      \ \ \ \ input [6:0] A,

      \ \ \ \ input sel,

      \ \ \ \ output reg [1:0] D

      );

      \ \ \ \ reg [1:0] my_rom [0:121];

      \;

      \ \ \ \ always @ (*) begin

      \ \ \ \ \ \ \ \ if (~sel)

      \ \ \ \ \ \ \ \ \ \ \ \ D = 2'hz;

      \ \ \ \ \ \ \ \ else if (A \<gtr\> 7'h79)

      \ \ \ \ \ \ \ \ \ \ \ \ D = 2'h0;

      \ \ \ \ \ \ \ \ else

      \ \ \ \ \ \ \ \ \ \ \ \ D = my_rom[A];

      \ \ \ \ end

      \;

      \ \ \ \ initial begin

      \ \ \ \ \ \ \ \ my_rom[0] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[1] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[2] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[3] = 2'h1;

      \ \ \ \ \ \ \ \ my_rom[4] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[5] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[6] = 2'h1;

      \ \ \ \ \ \ \ \ my_rom[7] = 2'h1;

      \ \ \ \ \ \ \ \ my_rom[8] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[9] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[10] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[11] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[12] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[13] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[14] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[15] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[16] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[17] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[18] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[19] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[20] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[21] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[22] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[23] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[24] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[25] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[26] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[27] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[28] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[29] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[30] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[31] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[32] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[33] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[34] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[35] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[36] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[37] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[38] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[39] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[40] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[41] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[42] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[43] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[44] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[45] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[46] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[47] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[48] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[49] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[50] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[51] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[52] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[53] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[54] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[55] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[56] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[57] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[58] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[59] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[60] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[61] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[62] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[63] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[64] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[65] = 2'h1;

      \ \ \ \ \ \ \ \ my_rom[66] = 2'h1;

      \ \ \ \ \ \ \ \ my_rom[67] = 2'h3;

      \ \ \ \ \ \ \ \ my_rom[68] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[69] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[70] = 2'h3;

      \ \ \ \ \ \ \ \ my_rom[71] = 2'h3;

      \ \ \ \ \ \ \ \ my_rom[72] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[73] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[74] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[75] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[76] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[77] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[78] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[79] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[80] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[81] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[82] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[83] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[84] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[85] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[86] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[87] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[88] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[89] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[90] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[91] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[92] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[93] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[94] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[95] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[96] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[97] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[98] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[99] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[100] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[101] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[102] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[103] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[104] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[105] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[106] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[107] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[108] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[109] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[110] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[111] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[112] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[113] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[114] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[115] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[116] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[117] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[118] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[119] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[120] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[121] = 2'h2;

      \ \ \ \ end

      endmodule

      \;

      module DIG_ROM_128X2_ALU_4 (

      \ \ \ \ input [6:0] A,

      \ \ \ \ input sel,

      \ \ \ \ output reg [1:0] D

      );

      \ \ \ \ reg [1:0] my_rom [0:121];

      \;

      \ \ \ \ always @ (*) begin

      \ \ \ \ \ \ \ \ if (~sel)

      \ \ \ \ \ \ \ \ \ \ \ \ D = 2'hz;

      \ \ \ \ \ \ \ \ else if (A \<gtr\> 7'h79)

      \ \ \ \ \ \ \ \ \ \ \ \ D = 2'h0;

      \ \ \ \ \ \ \ \ else

      \ \ \ \ \ \ \ \ \ \ \ \ D = my_rom[A];

      \ \ \ \ end

      \;

      \ \ \ \ initial begin

      \ \ \ \ \ \ \ \ my_rom[0] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[1] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[2] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[3] = 2'h1;

      \ \ \ \ \ \ \ \ my_rom[4] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[5] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[6] = 2'h1;

      \ \ \ \ \ \ \ \ my_rom[7] = 2'h1;

      \ \ \ \ \ \ \ \ my_rom[8] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[9] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[10] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[11] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[12] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[13] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[14] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[15] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[16] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[17] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[18] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[19] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[20] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[21] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[22] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[23] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[24] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[25] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[26] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[27] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[28] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[29] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[30] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[31] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[32] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[33] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[34] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[35] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[36] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[37] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[38] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[39] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[40] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[41] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[42] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[43] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[44] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[45] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[46] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[47] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[48] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[49] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[50] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[51] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[52] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[53] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[54] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[55] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[56] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[57] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[58] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[59] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[60] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[61] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[62] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[63] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[64] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[65] = 2'h1;

      \ \ \ \ \ \ \ \ my_rom[66] = 2'h1;

      \ \ \ \ \ \ \ \ my_rom[67] = 2'h3;

      \ \ \ \ \ \ \ \ my_rom[68] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[69] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[70] = 2'h3;

      \ \ \ \ \ \ \ \ my_rom[71] = 2'h3;

      \ \ \ \ \ \ \ \ my_rom[72] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[73] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[74] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[75] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[76] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[77] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[78] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[79] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[80] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[81] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[82] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[83] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[84] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[85] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[86] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[87] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[88] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[89] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[90] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[91] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[92] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[93] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[94] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[95] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[96] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[97] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[98] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[99] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[100] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[101] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[102] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[103] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[104] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[105] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[106] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[107] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[108] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[109] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[110] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[111] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[112] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[113] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[114] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[115] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[116] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[117] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[118] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[119] = 2'h0;

      \ \ \ \ \ \ \ \ my_rom[120] = 2'h2;

      \ \ \ \ \ \ \ \ my_rom[121] = 2'h2;

      \ \ \ \ end

      endmodule

      \;

      \;

      module rom (

      \ \ input b_0,

      \ \ input a_0,

      \ \ input b_1,

      \ \ input a_1,

      \ \ input b_2,

      \ \ input a_2,

      \ \ input b_3,

      \ \ input a_3,

      \ \ input op_1,

      \ \ input op_2,

      \ \ input op_3,

      \ \ input op_0,

      \ \ output r_0,

      \ \ output r_1,

      \ \ output r_2,

      \ \ output r_3,

      \ \ output c_out

      );

      \ \ wire [5:0] s0;

      \ \ wire [1:0] s1;

      \ \ wire [3:0] s2;

      \ \ wire [6:0] s3;

      \ \ wire [1:0] s4;

      \ \ wire [6:0] s5;

      \ \ wire [6:0] s6;

      \ \ wire [1:0] s7;

      \ \ wire [1:0] s8;

      \ \ assign s2[0] = op_3;

      \ \ assign s2[1] = op_2;

      \ \ assign s2[2] = op_1;

      \ \ assign s2[3] = op_0;

      \ \ assign s0[0] = b_0;

      \ \ assign s0[1] = a_0;

      \ \ assign s0[5:2] = s2;

      \ \ // ALU_1

      \ \ DIG_ROM_64X2_ALU_1 DIG_ROM_64X2_ALU_1_i0 (

      \ \ \ \ .A( s0 ),

      \ \ \ \ .sel( 1'b1 ),

      \ \ \ \ .D( s1 )

      \ \ );

      \ \ assign s3[0] = b_1;

      \ \ assign s3[1] = a_1;

      \ \ assign s3[5:2] = s2;

      \ \ assign s3[6] = s1[0];

      \ \ assign r_0 = s1[1];

      \ \ // ALU_2

      \ \ DIG_ROM_128X2_ALU_2 DIG_ROM_128X2_ALU_2_i1 (

      \ \ \ \ .A( s3 ),

      \ \ \ \ .sel( 1'b1 ),

      \ \ \ \ .D( s4 )

      \ \ );

      \ \ assign s5[0] = b_2;

      \ \ assign s5[1] = a_2;

      \ \ assign s5[5:2] = s2;

      \ \ assign s5[6] = s4[0];

      \ \ assign r_1 = s4[1];

      \ \ // ALU_3

      \ \ DIG_ROM_128X2_ALU_3 DIG_ROM_128X2_ALU_3_i2 (

      \ \ \ \ .A( s5 ),

      \ \ \ \ .sel( 1'b1 ),

      \ \ \ \ .D( s8 )

      \ \ );

      \ \ assign s6[0] = b_3;

      \ \ assign s6[1] = a_3;

      \ \ assign s6[5:2] = s2;

      \ \ assign s6[6] = s8[0];

      \ \ assign r_2 = s8[1];

      \ \ // ALU_4

      \ \ DIG_ROM_128X2_ALU_4 DIG_ROM_128X2_ALU_4_i3 (

      \ \ \ \ .A( s6 ),

      \ \ \ \ .sel( 1'b1 ),

      \ \ \ \ .D( s7 )

      \ \ );

      \ \ assign c_out = s7[0];

      \ \ assign r_3 = s7[1];

      endmodule
    </shell-code>
  </numbered>

  <subsection|Conclusioni>

  Progettare un'ALU a <math|4> bit è un compito che un ingegnere deve fare
  almeno una volta nella vita. Sarebbe interessante ampliare il progetto
  realizzando anche i registri, il modulo clock, il program counter e tutto
  ciò che serve per realizzare un vero e proprio computer a <math|4> bit da
  realizzare su breadboard o, ancora meglio, progettando il PCB tramite
  KiCAD.
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
    <associate|prog-scripts|maxima>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|alu|<tuple|1|2>>
    <associate|alu-4-bit|<tuple|6|11>>
    <associate|alu-rom-1-bit|<tuple|4|8>>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-10|<tuple|2.3.1|3>>
    <associate|auto-11|<tuple|2|3>>
    <associate|auto-12|<tuple|2|3>>
    <associate|auto-13|<tuple|3|4>>
    <associate|auto-14|<tuple|2.3.2|4>>
    <associate|auto-15|<tuple|4|4>>
    <associate|auto-16|<tuple|5|4>>
    <associate|auto-17|<tuple|2.3.3|4>>
    <associate|auto-18|<tuple|6|4>>
    <associate|auto-19|<tuple|7|5>>
    <associate|auto-2|<tuple|1.1|1>>
    <associate|auto-20|<tuple|2.3.4|5>>
    <associate|auto-21|<tuple|8|5>>
    <associate|auto-22|<tuple|9|5>>
    <associate|auto-23|<tuple|2.3.5|5>>
    <associate|auto-24|<tuple|10|5>>
    <associate|auto-25|<tuple|11|6>>
    <associate|auto-26|<tuple|2.3.6|6>>
    <associate|auto-27|<tuple|12|6>>
    <associate|auto-28|<tuple|13|6>>
    <associate|auto-29|<tuple|2.3.7|6>>
    <associate|auto-3|<tuple|1.2|1>>
    <associate|auto-30|<tuple|14|6>>
    <associate|auto-31|<tuple|15|6>>
    <associate|auto-32|<tuple|2.3.8|7>>
    <associate|auto-33|<tuple|16|7>>
    <associate|auto-34|<tuple|17|7>>
    <associate|auto-35|<tuple|2.3.9|7>>
    <associate|auto-36|<tuple|18|7>>
    <associate|auto-37|<tuple|19|7>>
    <associate|auto-38|<tuple|2.3.10|7>>
    <associate|auto-39|<tuple|3|8>>
    <associate|auto-4|<tuple|1|1>>
    <associate|auto-40|<tuple|4|8>>
    <associate|auto-41|<tuple|2.4|8>>
    <associate|auto-42|<tuple|2.4.1|8>>
    <associate|auto-43|<tuple|20|8>>
    <associate|auto-44|<tuple|21|8>>
    <associate|auto-45|<tuple|2.4.2|8>>
    <associate|auto-46|<tuple|22|9>>
    <associate|auto-47|<tuple|23|9>>
    <associate|auto-48|<tuple|2.4.3|9>>
    <associate|auto-49|<tuple|24|9>>
    <associate|auto-5|<tuple|2|2>>
    <associate|auto-50|<tuple|25|10>>
    <associate|auto-51|<tuple|2.4.4|10>>
    <associate|auto-52|<tuple|5|10>>
    <associate|auto-53|<tuple|6|11>>
    <associate|auto-54|<tuple|2.5|26>>
    <associate|auto-6|<tuple|2.1|2>>
    <associate|auto-7|<tuple|2.2|2>>
    <associate|auto-8|<tuple|1|2>>
    <associate|auto-9|<tuple|2.3|3>>
    <associate|full-adder|<tuple|2|3>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|figure>
      <tuple|normal|<surround|<hidden-binding|<tuple>|1>||ALU ad
      <with|mode|<quote|math>|1> bit>|<pageref|auto-8>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|2>||Full
      Adder>|<pageref|auto-11>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|3>||Configurazione
      della ROM su Digital>|<pageref|auto-39>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|4>||Modulo ALU ad
      <with|mode|<quote|math>|1> bit con ROM>|<pageref|auto-40>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|5>||Configurazione
      della ROM su Digital>|<pageref|auto-52>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|6>||ALU a
      <with|mode|<quote|math>|4> bit completa implementata con
      ROM>|<pageref|auto-53>>
    </associate>
    <\associate|table>
      <tuple|normal|<surround|<hidden-binding|<tuple>|1>||Tabella delle
      operazioni supportate dall'ALU a <with|mode|<quote|math>|4>
      bit>|<pageref|auto-4>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|2>||Tabella di verità
      dell'operazione <with|mode|<quote|math>|a<rsub|0>+b<rsub|0>> (senza
      segno) per il modulo ALU ad <with|mode|<quote|math>|1>
      bit>|<pageref|auto-12>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|3>||Tabella di verità
      dell'operazione <with|mode|<quote|math>|a<rsub|0>+b<rsub|0>> (senza
      segno) per il modulo ALU ad <with|mode|<quote|math>|1> bit in
      esadecimale>|<pageref|auto-13>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|4>||Tabella di verità
      dell'operazione shift a sinistra per il modulo ALU ad
      <with|mode|<quote|math>|1> bit>|<pageref|auto-15>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|5>||Tabella di verità
      dell'operazione shift a sinistra per il modulo ALU ad
      <with|mode|<quote|math>|1> bit in esadecimale>|<pageref|auto-16>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|6>||Tabella di verità
      dell'operazione <with|mode|<quote|math>|a<rsub|0> AND b<rsub|0>> per il
      modulo ALU ad <with|mode|<quote|math>|1> bit>|<pageref|auto-18>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|7>||Tabella di verità
      dell'operazione <with|mode|<quote|math>|a<rsub|0> AND b<rsub|0>> per il
      modulo ALU ad <with|mode|<quote|math>|1> bit in
      esadecimale>|<pageref|auto-19>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|8>||Tabella di verità
      dell'operazione <with|mode|<quote|math>|a<rsub|0> OR b<rsub|0>> per il
      modulo ALU ad <with|mode|<quote|math>|1> bit>|<pageref|auto-21>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|9>||Tabella di verità
      dell'operazione <with|mode|<quote|math>|a<rsub|0> OR b<rsub|0>> per il
      modulo ALU ad <with|mode|<quote|math>|1> bit in
      esadecimale>|<pageref|auto-22>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|10>||Tabella di verità
      dell'operazione <with|mode|<quote|math>|a<rsub|0>\<oplus\>b<rsub|0>>
      per il modulo ALU ad <with|mode|<quote|math>|1> bit>|<pageref|auto-24>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|11>||Tabella di verità
      dell'operazione <with|mode|<quote|math>|a<rsub|0>\<oplus\>b<rsub|0>>
      per il modulo ALU ad <with|mode|<quote|math>|1> bit in
      esadecimale>|<pageref|auto-25>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|12>||Tabella di verità
      dell'operazione <with|mode|<quote|math>|a<rsub|0>\<odot\>b<rsub|0>> per
      il modulo ALU ad <with|mode|<quote|math>|1> bit>|<pageref|auto-27>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|13>||Tabella di verità
      dell'operazione <with|mode|<quote|math>|a<rsub|0>\<odot\>b<rsub|0>> per
      il modulo ALU ad <with|mode|<quote|math>|1> bit in
      esadecimale>|<pageref|auto-28>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|14>||Tabella di verità
      dell'operazione <with|mode|<quote|math>|a<rsub|0>\|b<rsub|0>> per il
      modulo ALU ad <with|mode|<quote|math>|1> bit>|<pageref|auto-30>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|15>||Tabella di verità
      dell'operazione <with|mode|<quote|math>|a<rsub|0>\|b<rsub|0>> per il
      modulo ALU ad <with|mode|<quote|math>|1> bit in
      esadecimale>|<pageref|auto-31>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|16>||Tabella di verità
      dell'operazione <with|mode|<quote|math>|a<rsub|0>\<downarrow\>b<rsub|0>>
      per il modulo ALU ad <with|mode|<quote|math>|1> bit>|<pageref|auto-33>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|17>||Tabella di verità
      dell'operazione <with|mode|<quote|math>|a<rsub|0>\<downarrow\>b<rsub|0>>
      per il modulo ALU ad <with|mode|<quote|math>|1> bit in
      esadecimale>|<pageref|auto-34>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|18>||Tabella di verità
      dell'operazione <with|mode|<quote|math>|<wide|a|\<bar\>>> per il modulo
      ALU ad <with|mode|<quote|math>|1> bit>|<pageref|auto-36>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|19>||Tabella di verità
      dell'operazione <with|mode|<quote|math>|<wide|a|\<bar\>>> per il modulo
      ALU ad <with|mode|<quote|math>|1> bit in
      esadecimale>|<pageref|auto-37>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|20>||Tabella di verità
      dell'operazione <with|mode|<quote|math>|a<rsub|i>+b<rsub|i>> (senza
      segno) per l'ALU a <with|mode|<quote|math>|4> bit>|<pageref|auto-43>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|21>||Tabella di verità
      dell'operazione <with|mode|<quote|math>|a<rsub|i>+b<rsub|i>> (senza
      segno) per l'ALU a <with|mode|<quote|math>|4> bit in
      esadecimale>|<pageref|auto-44>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|22>||Tabella di verità
      dell'operazione shift a sinistra per l'ALU a <with|mode|<quote|math>|4>
      bit>|<pageref|auto-46>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|23>||Tabella di verità
      dell'operazione shift a sinistra per l'ALU a <with|mode|<quote|math>|4>
      bit in esadecimale>|<pageref|auto-47>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|24>||Tabella di verità
      delle restanti operazioni per l'ALU a <with|mode|<quote|math>|4>
      bit>|<pageref|auto-49>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|25>||Tabella di verità
      delle restanti operazioni per l'ALU a <with|mode|<quote|math>|4> bit in
      esadecimale>|<pageref|auto-50>>
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Homework>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <with|par-left|<quote|1tab>|1.1<space|2spc>Introduzione
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|1tab>|1.2<space|2spc>Operazioni supportate
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Soluzione>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>

      <with|par-left|<quote|1tab>|2.1<space|2spc>Introduzione
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|2.2<space|2spc>Scelte progettuali
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|1tab>|2.3<space|2spc>Operazioni per il modulo ALU
      ad <with|mode|<quote|math>|1> bit <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <with|par-left|<quote|2tab>|2.3.1<space|2spc>Somma senza segno
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>>

      <with|par-left|<quote|2tab>|2.3.2<space|2spc><with|mode|<quote|math>|Shift
      <with|mode|<quote|text>|a> sinistra di una posizione di a>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-14>>

      <with|par-left|<quote|2tab>|2.3.3<space|2spc>Operazione AND
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-17>>

      <with|par-left|<quote|2tab>|2.3.4<space|2spc>Operazione OR
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-20>>

      <with|par-left|<quote|2tab>|2.3.5<space|2spc>Operazione XOR
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-23>>

      <with|par-left|<quote|2tab>|2.3.6<space|2spc>Operazione XNOR
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-26>>

      <with|par-left|<quote|2tab>|2.3.7<space|2spc>Operazione NAND
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-29>>

      <with|par-left|<quote|2tab>|2.3.8<space|2spc>Operazione NOR
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-32>>

      <with|par-left|<quote|2tab>|2.3.9<space|2spc>Operazione
      <with|mode|<quote|math>|<wide|a|\<bar\>>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-35>>

      <with|par-left|<quote|2tab>|2.3.10<space|2spc>Implementazione della ROM
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-38>>

      <with|par-left|<quote|1tab>|2.4<space|2spc>Operazioni per il modulo ALU
      a <with|mode|<quote|math>|4> bit <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-41>>

      <with|par-left|<quote|2tab>|2.4.1<space|2spc>Somma senza segno
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-42>>

      <with|par-left|<quote|2tab>|2.4.2<space|2spc><with|mode|<quote|math>|Shift
      <with|mode|<quote|text>|a> sinistra di una posizione di a>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-45>>

      <with|par-left|<quote|2tab>|2.4.3<space|2spc>Le altre operazioni
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-48>>

      <with|par-left|<quote|2tab>|2.4.4<space|2spc>Implementazione della ROM
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-51>>

      <with|par-left|<quote|1tab>|2.5<space|2spc>Conclusioni
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-54>>
    </associate>
  </collection>
</auxiliary>