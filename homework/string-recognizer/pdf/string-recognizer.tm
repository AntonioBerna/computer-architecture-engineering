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
  solito cercherò di implementare una soluzione piuttosto compatta tramite
  l'ausio del modulo ROM (Read Only Memory).

  <subsection|Design della rete sequenziale>

  Sappiamo che l'alfabeto di input è <math|I=<around*|{|a,b,c,d|}>=<around*|{|00,01,11,10|}>>,
  mentre l'alfabeto di output è <math|O=<around*|{|no,sì|}>=<around*|{|1,0|}>>.
  Pertanto costruisco una relazione tra gli stati utilizzando la
  <with|font-shape|italic|macchina di Mealy>:

  <big-figure|<image|imgs/mealy.png|0.7par|||>|Relazione tra gli stati
  utilizzando la <with|font-shape|italic|macchina di Mealy>>

  Quindi, poichè ci sono <math|5> stati, abbiamo bisogno di <math|3> bit per
  la rappresentazione corretta degli stati (che indicheremo con
  <math|y<rsub|2>,y<rsub|1>,y<rsub|0>>) e delle transizioni (che indicheremo
  con <math|y<rsub|2><rprime|'>,y<rsub|1><rprime|'>,y<rsub|0><rprime|'>>),
  che avviene tramite la seguente tabella (creabile dall'apposito menù
  <shell|Create \<gtr\> State Transition Table>):

  <big-figure|<image|imgs/truth-table.png|0.6par|||>|Tabella delle codifiche
  degli input, degli stati, delle transizioni e
  dell'output<label|truth-table>>

  Ora conviene esportare la tabella di verità in formato <shell|HEX>, sempre
  dall'apposito menù <shell|File \<gtr\> Export \<gtr\> HEX> (salvando il
  file con il nome <shell|mealy.hex>), per poterla utilizzare all'interno del
  singolo modulo ROM avente le seguenti impostazioni:

  <\big-figure|<tabular|<tformat|<cwith|1|1|1|-1|cell-halign|c>|<cwith|1|1|1|-1|cell-valign|c>|<table|<row|<cell|<image|imgs/settings-rom.png|0.3par|||>>|<cell|<image|imgs/hex-rom.png|0.3par|||>>>>>>>
    Impostazioni di ogni singolo modulo ROM
  </big-figure>

  dove è importante impostare la voce <shell|Reload at model start>,
  indicando il path del file <shell|mealy.hex>. Chiaramente trattandosi di
  una <with|font-shape|italic|rete sequenziale> avremo bisogno di un modulo
  <with|font-shape|italic|clock>, in comune a <math|4> flip-flop D, ai quali
  verranno collegate in input le transizioni e, attraverso il componente
  <with|font-shape|italic|tunnel>, verranno portate le uscite
  <math|Q<rsub|i>> agli stati <math|y<rsub|2>,y<rsub|1>> e <math|y<rsub|0>>
  di input. Pertanto il circuito finale è il seguente:

  <big-figure|<image|imgs/final-circuit.png|0.5par|||>|Circuito finale>

  Si noti che l'uso di un <with|font-shape|italic|bus dati> a <math|5> bit in
  input e a <math|4> bit in output implica che ogni input e ogni output non
  sono inseriti casualmente in tale <with|font-shape|italic|bus dati>, ma
  rispettano la disposizione della tabella di verità di Fig.
  <reference|truth-table>.
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-10|<tuple|3|2>>
    <associate|auto-11|<tuple|4|3>>
    <associate|auto-2|<tuple|1.1|1>>
    <associate|auto-3|<tuple|1|1>>
    <associate|auto-4|<tuple|2|1>>
    <associate|auto-5|<tuple|2|1>>
    <associate|auto-6|<tuple|2.1|1>>
    <associate|auto-7|<tuple|2.2|1>>
    <associate|auto-8|<tuple|1|2>>
    <associate|auto-9|<tuple|2|2>>
    <associate|truth-table|<tuple|2|2>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|figure>
      <tuple|normal|<surround|<hidden-binding|<tuple>|1>||Relazione tra gli
      stati utilizzando la <with|font-shape|<quote|italic>|macchina di
      Mealy>>|<pageref|auto-8>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|2>||Tabella delle
      codifiche degli input, degli stati, delle transizioni e
      dell'output>|<pageref|auto-9>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|3>|>
        Impostazioni di ogni singolo modulo ROM
      </surround>|<pageref|auto-10>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|4>||Circuito
      finale>|<pageref|auto-11>>
    </associate>
    <\associate|table>
      <tuple|normal|<surround|<hidden-binding|<tuple>|1>||Tabella con le
      codifiche dei caratteri di input>|<pageref|auto-3>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|2>||Tabella con le
      codifiche dei caratteri di output>|<pageref|auto-4>>
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