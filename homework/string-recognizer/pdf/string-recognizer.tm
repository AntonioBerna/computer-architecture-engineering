<TeXmacs|2.1.4>

<style|generic>

<\body>
  <doc-data|<doc-title|Riconoscitore di stringhe>|<doc-author|<author-data|<author-name|Antonio
  Bernardini>>>>

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|1<space|2spc>Homework>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <with|par-left|1tab|1.1<space|2spc>Introduzione
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|2<space|2spc>Soluzione>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5><vspace|0.5fn>

    <with|par-left|1tab|2.1<space|2spc>Introduzione
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6>>

    <with|par-left|1tab|2.2<space|2spc>Design della rete sequenziale
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7>>
  </table-of-contents>

  <section|Homework>

  <subsection|Introduzione>

  Per questo homework, occorre progettare una <with|font-shape|italic|rete
  sequenziale> in grado di accettare sequenze di caratteri che rispettino il
  formato <math|b a (d c)\<ast\> b a c>, dove la notazione <math|\<ast\>>
  indica che possono esserci <math|n> ripetizioni della sottosequenza <math|d
  c> con <math|n\<in\> [0,\<infty\>)>. La sequenza di caratteri in input è
  infinita.

  L'alfabeto di input è costituito dai caratteri
  <math|I=<around*|{|a,b,c,d|}>> rappresentati con le seguenti codifiche:

  <big-table|<math|<tabular|<tformat|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|1|-1|1|-1|cell-valign|c>|<cwith|5|5|1|-1|cell-bborder|1ln>|<cwith|1|-1|1|1|cell-lborder|1ln>|<cwith|1|-1|3|3|cell-rborder|1ln>|<cwith|1|1|1|-1|cell-tborder|1ln>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|2|2|1|-1|cell-tborder|1ln>|<cwith|1|1|1|1|cell-lborder|1ln>|<cwith|1|1|3|3|cell-rborder|1ln>|<cwith|1|-1|2|-1|cell-background|pastel
  green>|<cwith|1|-1|1|1|cell-background|pastel
  blue>|<table|<row|<cell|I>|<cell|x<rsub|1>>|<cell|x<rsub|0>>>|<row|<cell|a>|<cell|0>|<cell|0>>|<row|<cell|b>|<cell|0>|<cell|1>>|<row|<cell|c>|<cell|1>|<cell|1>>|<row|<cell|d>|<cell|1>|<cell|0>>>>>>|Tabella
  con le codifiche dei caratteri di input>

  L'alfabeto di output è costituito dai caratteri
  <math|O=<around*|{|no,sì|}>> rappresentati con le seguenti codifiche:

  <big-table|<math|<tabular|<tformat|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|1|-1|1|-1|cell-valign|c>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|2|2|1|-1|cell-tborder|1ln>|<cwith|1|1|1|-1|cell-tborder|1ln>|<cwith|3|3|1|-1|cell-bborder|1ln>|<cwith|1|-1|1|1|cell-lborder|1ln>|<cwith|1|-1|2|2|cell-rborder|1ln>|<cwith|1|-1|1|1|cell-background|pastel
  blue>|<cwith|1|-1|2|2|cell-background|pastel
  green>|<table|<row|<cell|O>|<cell|z>>|<row|<cell|no>|<cell|1>>|<row|<cell|sì>|<cell|0>>>>>>|Tabella
  con le codifiche dei caratteri di output>

  La rete dovrà essere costruita come <with|font-shape|italic|macchina di
  Mealy>. La <with|font-shape|italic|rete sequenziale> dovrà essere in grado
  di accettare o rifiutare correttamente le stringhe ammissibili secondo la
  definizione dell'espressione ed inoltre deve essere in grado di accettare
  correttamente anche sequenze <with|font-shape|italic|sovrapposte>.

  <section|Soluzione>

  <subsection|Introduzione>

  Abbiamo a disposizione tutte le indicazioni per procedere alla
  progettazione della <with|font-shape|italic|rete sequenziale> però come al
  solito cercherò di implementare una soluzione piuttosto compatta con
  l'ausio di moduli ROM (Read Only Memory).

  <subsection|Design della rete sequenziale>

  Sappiamo che l'alfabeto di input è <math|I=<around*|{|a,b,c,d|}>=<around*|{|00,01,11,10|}>>,
  mentre l'alfabeto di output è <math|O=<around*|{|no,sì|}>=<around*|{|1,0|}>>.
  Pertanto costruisco una relazione tra gli stati utilizzando la
  <with|font-shape|italic|macchina di Mealy>:

  <big-figure|<image|imgs/mealy.jpg|0.4par|||>|Relazione tra gli stati
  utilizzando la <with|font-shape|italic|macchina di Mealy>>

  Quindi, poichè ci sono <math|7> stati, abbiamo bisogno di <math|3> bit per
  la rappresentazione corretta degli stati (che indicheremo con
  <math|y<rsub|2>,y<rsub|1>,y<rsub|0>>) e delle transizioni (che indicheremo
  con <math|y<rsub|2><rprime|'>,y<rsub|1><rprime|'>,y<rsub|0><rprime|'>>),
  che avviene tramite la seguente tabella:

  <big-table|<tabular|<tformat|<table|<row|<cell|<math|<tformat|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|1|-1|1|-1|cell-valign|c>|<cwith|1|-1|1|5|cell-background|pastel
  blue>|<cwith|1|-1|6|9|cell-background|pastel
  green>|<cwith|3|3|3|5|cell-halign|c>|<cwith|3|3|3|5|cell-valign|c>|<cwith|3|3|3|5|cell-background|pastel
  blue>|<cwith|4|4|3|5|cell-halign|c>|<cwith|4|4|3|5|cell-valign|c>|<cwith|4|4|3|5|cell-background|pastel
  blue>|<cwith|5|5|3|5|cell-halign|c>|<cwith|5|5|3|5|cell-valign|c>|<cwith|5|5|3|5|cell-background|pastel
  blue>|<cwith|6|6|3|5|cell-halign|c>|<cwith|6|6|3|5|cell-valign|c>|<cwith|6|6|3|5|cell-background|pastel
  blue>|<cwith|7|7|3|5|cell-halign|c>|<cwith|7|7|3|5|cell-valign|c>|<cwith|7|7|3|5|cell-background|pastel
  blue>|<cwith|7|7|3|5|cell-halign|c>|<cwith|7|7|3|5|cell-valign|c>|<cwith|7|7|3|5|cell-background|pastel
  blue>|<cwith|8|8|3|5|cell-halign|c>|<cwith|8|8|3|5|cell-valign|c>|<cwith|8|8|3|5|cell-background|pastel
  blue>|<cwith|8|8|3|5|cell-halign|c>|<cwith|8|8|3|5|cell-valign|c>|<cwith|8|8|3|5|cell-background|pastel
  blue>|<cwith|9|9|3|5|cell-halign|c>|<cwith|9|9|3|5|cell-valign|c>|<cwith|9|9|3|5|cell-background|pastel
  blue>|<cwith|9|9|3|5|cell-halign|c>|<cwith|9|9|3|5|cell-valign|c>|<cwith|9|9|3|5|cell-background|pastel
  blue>|<cwith|11|11|3|5|cell-halign|c>|<cwith|11|11|3|5|cell-valign|c>|<cwith|11|11|3|5|cell-background|pastel
  blue>|<cwith|12|12|3|5|cell-halign|c>|<cwith|12|12|3|5|cell-valign|c>|<cwith|12|12|3|5|cell-background|pastel
  blue>|<cwith|13|13|3|5|cell-halign|c>|<cwith|13|13|3|5|cell-valign|c>|<cwith|13|13|3|5|cell-background|pastel
  blue>|<cwith|15|15|3|5|cell-halign|c>|<cwith|15|15|3|5|cell-valign|c>|<cwith|15|15|3|5|cell-background|pastel
  blue>|<cwith|16|16|3|5|cell-halign|c>|<cwith|16|16|3|5|cell-valign|c>|<cwith|16|16|3|5|cell-background|pastel
  blue>|<cwith|16|16|3|5|cell-halign|c>|<cwith|16|16|3|5|cell-valign|c>|<cwith|16|16|3|5|cell-background|pastel
  blue>|<cwith|17|17|3|5|cell-halign|c>|<cwith|17|17|3|5|cell-valign|c>|<cwith|17|17|3|5|cell-background|pastel
  blue>|<cwith|15|15|3|5|cell-halign|c>|<cwith|15|15|3|5|cell-valign|c>|<cwith|15|15|3|5|cell-background|pastel
  blue>|<cwith|16|16|3|5|cell-halign|c>|<cwith|16|16|3|5|cell-valign|c>|<cwith|16|16|3|5|cell-background|pastel
  blue>|<cwith|17|17|3|5|cell-halign|c>|<cwith|17|17|3|5|cell-valign|c>|<cwith|17|17|3|5|cell-background|pastel
  blue>|<cwith|19|19|3|5|cell-halign|c>|<cwith|19|19|3|5|cell-valign|c>|<cwith|19|19|3|5|cell-background|pastel
  blue>|<cwith|20|20|3|5|cell-halign|c>|<cwith|20|20|3|5|cell-valign|c>|<cwith|20|20|3|5|cell-background|pastel
  blue>|<cwith|21|21|3|5|cell-halign|c>|<cwith|21|21|3|5|cell-valign|c>|<cwith|21|21|3|5|cell-background|pastel
  blue>|<cwith|22|22|3|5|cell-halign|c>|<cwith|22|22|3|5|cell-valign|c>|<cwith|22|22|3|5|cell-background|pastel
  blue>|<cwith|23|23|3|5|cell-halign|c>|<cwith|23|23|3|5|cell-valign|c>|<cwith|23|23|3|5|cell-background|pastel
  blue>|<cwith|23|23|3|5|cell-halign|c>|<cwith|23|23|3|5|cell-valign|c>|<cwith|23|23|3|5|cell-background|pastel
  blue>|<cwith|24|24|3|5|cell-halign|c>|<cwith|24|24|3|5|cell-valign|c>|<cwith|24|24|3|5|cell-background|pastel
  blue>|<cwith|24|24|3|5|cell-halign|c>|<cwith|24|24|3|5|cell-valign|c>|<cwith|24|24|3|5|cell-background|pastel
  blue>|<cwith|25|25|3|5|cell-halign|c>|<cwith|25|25|3|5|cell-valign|c>|<cwith|25|25|3|5|cell-background|pastel
  blue>|<cwith|25|25|3|5|cell-halign|c>|<cwith|25|25|3|5|cell-valign|c>|<cwith|25|25|3|5|cell-background|pastel
  blue>|<cwith|26|26|3|5|cell-halign|c>|<cwith|26|26|3|5|cell-valign|c>|<cwith|26|26|3|5|cell-background|pastel
  blue>|<cwith|26|26|3|5|cell-halign|c>|<cwith|26|26|3|5|cell-valign|c>|<cwith|26|26|3|5|cell-background|pastel
  blue>|<cwith|27|27|3|5|cell-halign|c>|<cwith|27|27|3|5|cell-valign|c>|<cwith|27|27|3|5|cell-background|pastel
  blue>|<cwith|27|27|3|5|cell-halign|c>|<cwith|27|27|3|5|cell-valign|c>|<cwith|27|27|3|5|cell-background|pastel
  blue>|<cwith|27|27|3|5|cell-halign|c>|<cwith|27|27|3|5|cell-valign|c>|<cwith|27|27|3|5|cell-background|pastel
  blue>|<cwith|28|28|3|5|cell-halign|c>|<cwith|28|28|3|5|cell-valign|c>|<cwith|28|28|3|5|cell-background|pastel
  blue>|<cwith|28|28|3|5|cell-halign|c>|<cwith|28|28|3|5|cell-valign|c>|<cwith|28|28|3|5|cell-background|pastel
  blue>|<cwith|28|28|3|5|cell-halign|c>|<cwith|28|28|3|5|cell-valign|c>|<cwith|28|28|3|5|cell-background|pastel
  blue>|<cwith|29|29|3|5|cell-halign|c>|<cwith|29|29|3|5|cell-valign|c>|<cwith|29|29|3|5|cell-background|pastel
  blue>|<cwith|29|29|3|5|cell-halign|c>|<cwith|29|29|3|5|cell-valign|c>|<cwith|29|29|3|5|cell-background|pastel
  blue>|<cwith|29|29|3|5|cell-halign|c>|<cwith|29|29|3|5|cell-valign|c>|<cwith|29|29|3|5|cell-background|pastel
  blue>|<cwith|31|31|3|5|cell-halign|c>|<cwith|31|31|3|5|cell-valign|c>|<cwith|31|31|3|5|cell-background|pastel
  blue>|<cwith|32|32|3|5|cell-halign|c>|<cwith|32|32|3|5|cell-valign|c>|<cwith|32|32|3|5|cell-background|pastel
  blue>|<cwith|33|33|3|5|cell-halign|c>|<cwith|33|33|3|5|cell-valign|c>|<cwith|33|33|3|5|cell-background|pastel
  blue>|<cwith|6|9|1|2|cell-halign|c>|<cwith|6|9|1|2|cell-valign|c>|<cwith|6|9|1|2|cell-background|pastel
  blue>|<cwith|10|13|1|2|cell-halign|c>|<cwith|10|13|1|2|cell-valign|c>|<cwith|10|13|1|2|cell-background|pastel
  blue>|<cwith|14|17|1|2|cell-halign|c>|<cwith|14|17|1|2|cell-valign|c>|<cwith|14|17|1|2|cell-background|pastel
  blue>|<cwith|18|21|1|2|cell-halign|c>|<cwith|18|21|1|2|cell-valign|c>|<cwith|18|21|1|2|cell-background|pastel
  blue>|<cwith|22|25|1|2|cell-halign|c>|<cwith|22|25|1|2|cell-valign|c>|<cwith|22|25|1|2|cell-background|pastel
  blue>|<cwith|26|29|1|2|cell-halign|c>|<cwith|26|29|1|2|cell-valign|c>|<cwith|26|29|1|2|cell-background|pastel
  blue>|<cwith|30|33|1|2|cell-halign|c>|<cwith|30|33|1|2|cell-valign|c>|<cwith|30|33|1|2|cell-background|pastel
  blue>|<cwith|30|33|8|8|cell-halign|c>|<cwith|30|33|8|8|cell-valign|c>|<cwith|30|33|8|8|cell-background|pastel
  green>|<cwith|30|33|6|6|cell-halign|c>|<cwith|30|33|6|6|cell-valign|c>|<cwith|30|33|6|6|cell-background|pastel
  green>|<cwith|30|33|7|7|cell-halign|c>|<cwith|30|33|7|7|cell-valign|c>|<cwith|30|33|7|7|cell-background|pastel
  green>|<cwith|4|4|6|8|cell-halign|c>|<cwith|4|4|6|8|cell-valign|c>|<cwith|4|4|6|8|cell-background|pastel
  green>|<cwith|5|5|6|8|cell-halign|c>|<cwith|5|5|6|8|cell-valign|c>|<cwith|5|5|6|8|cell-background|pastel
  green>|<cwith|1|1|1|-1|cell-tborder|1ln>|<cwith|33|33|1|-1|cell-bborder|1ln>|<cwith|1|-1|1|1|cell-lborder|1ln>|<cwith|1|-1|9|9|cell-rborder|1ln>|<cwith|2|2|1|-1|cell-tborder|1ln>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|2|5|1|1|cell-lborder|1ln>|<cwith|2|5|9|9|cell-rborder|1ln>|<cwith|6|6|1|-1|cell-tborder|1ln>|<cwith|5|5|1|-1|cell-bborder|1ln>|<cwith|6|9|1|1|cell-lborder|1ln>|<cwith|6|9|9|9|cell-rborder|1ln>|<cwith|10|10|1|-1|cell-tborder|1ln>|<cwith|9|9|1|-1|cell-bborder|1ln>|<cwith|10|13|1|1|cell-lborder|1ln>|<cwith|10|13|9|9|cell-rborder|1ln>|<cwith|14|14|1|-1|cell-tborder|1ln>|<cwith|13|13|1|-1|cell-bborder|1ln>|<cwith|14|17|1|1|cell-lborder|1ln>|<cwith|14|17|9|9|cell-rborder|1ln>|<cwith|18|18|1|-1|cell-tborder|1ln>|<cwith|17|17|1|-1|cell-bborder|1ln>|<cwith|18|21|1|1|cell-lborder|1ln>|<cwith|18|21|9|9|cell-rborder|1ln>|<cwith|22|22|1|-1|cell-tborder|1ln>|<cwith|21|21|1|-1|cell-bborder|1ln>|<cwith|22|25|1|1|cell-lborder|1ln>|<cwith|22|25|9|9|cell-rborder|1ln>|<cwith|26|26|1|-1|cell-tborder|1ln>|<cwith|25|25|1|-1|cell-bborder|1ln>|<cwith|29|29|1|-1|cell-bborder|1ln>|<cwith|30|30|1|-1|cell-tborder|1ln>|<cwith|26|29|1|1|cell-lborder|1ln>|<cwith|26|29|9|9|cell-rborder|1ln>|<cwith|10|10|6|8|cell-halign|c>|<cwith|10|10|6|8|cell-valign|c>|<cwith|10|10|6|8|cell-background|pastel
  green>|<cwith|10|10|6|8|cell-halign|c>|<cwith|10|10|6|8|cell-valign|c>|<cwith|10|10|6|8|cell-background|pastel
  green>|<cwith|12|12|6|8|cell-halign|c>|<cwith|12|12|6|8|cell-valign|c>|<cwith|12|12|6|8|cell-background|pastel
  green>|<cwith|12|12|6|8|cell-halign|c>|<cwith|12|12|6|8|cell-valign|c>|<cwith|12|12|6|8|cell-background|pastel
  green>|<cwith|14|14|6|8|cell-halign|c>|<cwith|14|14|6|8|cell-valign|c>|<cwith|14|14|6|8|cell-background|pastel
  green>|<cwith|14|14|6|8|cell-halign|c>|<cwith|14|14|6|8|cell-valign|c>|<cwith|14|14|6|8|cell-background|pastel
  green>|<cwith|15|15|6|8|cell-halign|c>|<cwith|15|15|6|8|cell-valign|c>|<cwith|15|15|6|8|cell-background|pastel
  green>|<cwith|15|15|6|8|cell-halign|c>|<cwith|15|15|6|8|cell-valign|c>|<cwith|15|15|6|8|cell-background|pastel
  green>|<cwith|17|17|6|8|cell-halign|c>|<cwith|17|17|6|8|cell-valign|c>|<cwith|17|17|6|8|cell-background|pastel
  green>|<cwith|17|17|6|8|cell-halign|c>|<cwith|17|17|6|8|cell-valign|c>|<cwith|17|17|6|8|cell-background|pastel
  green>|<cwith|18|18|6|8|cell-halign|c>|<cwith|18|18|6|8|cell-valign|c>|<cwith|18|18|6|8|cell-background|pastel
  green>|<cwith|18|18|6|8|cell-halign|c>|<cwith|18|18|6|8|cell-valign|c>|<cwith|18|18|6|8|cell-background|pastel
  green>|<cwith|20|20|6|8|cell-halign|c>|<cwith|20|20|6|8|cell-valign|c>|<cwith|20|20|6|8|cell-background|pastel
  green>|<cwith|20|20|6|8|cell-halign|c>|<cwith|20|20|6|8|cell-valign|c>|<cwith|20|20|6|8|cell-background|pastel
  green>|<cwith|24|24|6|8|cell-halign|c>|<cwith|24|24|6|8|cell-valign|c>|<cwith|24|24|6|8|cell-background|pastel
  green>|<cwith|24|24|6|8|cell-halign|c>|<cwith|24|24|6|8|cell-valign|c>|<cwith|24|24|6|8|cell-background|pastel
  green>|<cwith|25|25|6|8|cell-halign|c>|<cwith|25|25|6|8|cell-valign|c>|<cwith|25|25|6|8|cell-background|pastel
  green>|<cwith|25|25|6|8|cell-halign|c>|<cwith|25|25|6|8|cell-valign|c>|<cwith|25|25|6|8|cell-background|pastel
  green>|<cwith|26|26|6|8|cell-halign|c>|<cwith|26|26|6|8|cell-valign|c>|<cwith|26|26|6|8|cell-background|pastel
  green>|<cwith|26|26|6|8|cell-halign|c>|<cwith|26|26|6|8|cell-valign|c>|<cwith|26|26|6|8|cell-background|pastel
  green>|<cwith|28|28|6|8|cell-halign|c>|<cwith|28|28|6|8|cell-valign|c>|<cwith|28|28|6|8|cell-background|pastel
  green>|<cwith|28|28|6|8|cell-halign|c>|<cwith|28|28|6|8|cell-valign|c>|<cwith|28|28|6|8|cell-background|pastel
  green>|<cwith|29|29|6|8|cell-halign|c>|<cwith|29|29|6|8|cell-valign|c>|<cwith|29|29|6|8|cell-background|pastel
  green>|<cwith|29|29|6|8|cell-halign|c>|<cwith|29|29|6|8|cell-valign|c>|<cwith|29|29|6|8|cell-background|pastel
  green>|<table|<row|<cell|x<rsub|1>>|<cell|x<rsub|0>>|<cell|y<rsub|2>>|<cell|y<rsub|1>>|<cell|y<rsub|0>>|<cell|y<rsub|2><rprime|'>>|<cell|y<rsub|1><rprime|'>>|<cell|y<rsub|0><rprime|'>>|<cell|z>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>>|<row|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|1>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>>|<row|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>>|<row|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>>|<row|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>>|<row|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>>|<row|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|1>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>>|<row|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>>|<row|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>>|<row|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|->|<cell|->|<cell|->|<cell|->>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|->|<cell|->|<cell|->|<cell|->>|<row|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|->|<cell|->|<cell|->|<cell|->>|<row|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|->|<cell|->|<cell|->|<cell|->>>>>>>>>>|Tabella
  delle codifiche degli input, degli stati, delle transizioni e
  dell'output<label|truth-table>>

  Ora normalemente si dovrebbe procedere con la minimizzazione delle
  transizioni <math|y<rsub|2><rprime|'>,y<rsub|1><rprime|'>,y<rprime|'><rsub|0>>
  e dell'output <math|z> utilizzando le mappe di Karnaugh, tuttavia come
  accennato pocanzi implementeremo dei moduli ROM. Pertanto in totale avremo
  bisogno di <math|4> moduli ROM (<math|3> per le transizioni ed <math|1> per
  l'output) configurando ogni modulo con le seguenti impostazioni:

  <big-figure|<image|imgs/settings-rom.png|0.25par|||>|Impostazioni di ogni
  singolo modulo ROM>

  dove è possibile aggiungere un <with|font-shape|italic|Label>
  personalizzato per comprendere a cosa serve il singolo modulo. Dunque
  possiamo configurare gli indirizzi di memoria del modulo ROM utilizzando la
  Tabella <reference|truth-table>. In particolare tutti i bit colorati in
  blu, presi per righe, devono essere convertiti in esadecimale (<math|4> bit
  alla volta partendo dal bit meno significativo, ovvero <math|y<rsub|0>>, e
  procedendo fino al bit più significativo, ovvero <math|x<rsub|1>>). Mentre
  i bit colorati in verde devono essere presi per colonne perchè ogni ROM
  calcolerà una singola transizione <math|y<rsub|i><rprime|'>> o l'output
  <math|z>.

  Pertanto per utilizzare le ROM sul software Digital occorre compilare ogni
  indirizzo di memoria di ogni ROM come segue:

  <big-figure|<tabular|<tformat|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|1|-1|1|-1|cell-valign|c>|<table|<row|<cell|<image|imgs/rom-z.png|0.3par|||>>|<cell|>|<cell|<image|imgs/rom-y2.png|0.3par|||>>>|<row|<cell|ROM
  per l'output <math|z>>|<cell|>|<cell|ROM per la transizione
  <math|y<rsub|2><rprime|'>>>>|<row|<cell|>|<cell|>|<cell|>>|<row|<cell|<image|imgs/rom-y1.png|0.3par|||>>|<cell|>|<cell|<image|imgs/rom-y0.png|0.3par|||>>>|<row|<cell|ROM
  per la transizione <math|y<rsub|1><rprime|'>>>|<cell|>|<cell|ROM per la
  transizione <math|y<rsub|0><rprime|'>>>>>>>|Configurazione dei moduli ROM
  della <with|font-shape|italic|rete sequenziale>>

  Chiaramente trattandosi di una <with|font-shape|italic|rete sequenziale>
  avremo bisogno di un modulo <with|font-shape|italic|clock>, in comune a
  <math|4> flip-flop D, ai quali verranno collegate in input le transizioni
  e, attravero il componente <with|font-shape|italic|tunnel>, verranno
  portate le uscite <math|Q<rsub|i>> agli stati <math|y<rsub|2>,y<rsub|1>> e
  <math|y<rsub|0>> di input. Pertanto il circuito finale è il seguente:

  <big-figure|<image|imgs/final-circuit.png|0.4par|||>|Circuito finale>
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1|../../../.TeXmacs/texts/scratch/no_name_17.tm>>
    <associate|auto-10|<tuple|2|3|../../../.TeXmacs/texts/scratch/no_name_17.tm>>
    <associate|auto-11|<tuple|3|3|../../../.TeXmacs/texts/scratch/no_name_17.tm>>
    <associate|auto-12|<tuple|4|4|../../../.TeXmacs/texts/scratch/no_name_17.tm>>
    <associate|auto-2|<tuple|1.1|1|../../../.TeXmacs/texts/scratch/no_name_17.tm>>
    <associate|auto-3|<tuple|1|1|../../../.TeXmacs/texts/scratch/no_name_17.tm>>
    <associate|auto-4|<tuple|2|1|../../../.TeXmacs/texts/scratch/no_name_17.tm>>
    <associate|auto-5|<tuple|2|1|../../../.TeXmacs/texts/scratch/no_name_17.tm>>
    <associate|auto-6|<tuple|2.1|1|../../../.TeXmacs/texts/scratch/no_name_17.tm>>
    <associate|auto-7|<tuple|2.2|2|../../../.TeXmacs/texts/scratch/no_name_17.tm>>
    <associate|auto-8|<tuple|1|2|../../../.TeXmacs/texts/scratch/no_name_17.tm>>
    <associate|auto-9|<tuple|3|2|../../../.TeXmacs/texts/scratch/no_name_17.tm>>
    <associate|truth-table|<tuple|3|2|../../../.TeXmacs/texts/scratch/no_name_17.tm>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|figure>
      <tuple|normal|<surround|<hidden-binding|<tuple>|1>||Relazione tra gli
      stati utilizzando la <with|font-shape|<quote|italic>|macchina di
      Mealy>>|<pageref|auto-8>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|2>||Impostazioni di
      ogni singolo modulo ROM>|<pageref|auto-10>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|3>||Configurazione dei
      moduli ROM della <with|font-shape|<quote|italic>|rete
      sequenziale>>|<pageref|auto-11>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|4>||Circuito
      finale>|<pageref|auto-12>>
    </associate>
    <\associate|table>
      <tuple|normal|<surround|<hidden-binding|<tuple>|1>||Tabella con le
      codifiche dei caratteri di input>|<pageref|auto-3>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|2>||Tabella con le
      codifiche dei caratteri di output>|<pageref|auto-4>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|3>||Tabella delle
      codifiche degli input, degli stati, delle transizioni e
      dell'output>|<pageref|auto-9>>
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Homework>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <with|par-left|<quote|1tab>|1.1<space|2spc>Introduzione
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Soluzione>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>

      <with|par-left|<quote|1tab>|2.1<space|2spc>Introduzione
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|2.2<space|2spc>Design della rete
      sequenziale <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>
    </associate>
  </collection>
</auxiliary>