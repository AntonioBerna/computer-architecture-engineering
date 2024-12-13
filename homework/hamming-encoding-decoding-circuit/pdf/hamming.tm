<TeXmacs|2.1.4>

<style|generic>

<\body>
  <doc-data|<doc-title|Hamming Encoding/Decoding
  Circuit>|<doc-author|<author-data|<author-name|Antonio Bernardini>>>>

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|1<space|2spc>Homework>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <with|par-left|1tab|1.1<space|2spc>Modalità di codifica
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2>>

    <with|par-left|1tab|1.2<space|2spc>Modalità di decodifica
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4>>

    <with|par-left|1tab|1.3<space|2spc>Vincoli
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|2<space|2spc>Soluzione>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7><vspace|0.5fn>

    <with|par-left|1tab|2.1<space|2spc>Introduzione
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-8>>

    <with|par-left|1tab|2.2<space|2spc>Codifica
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-9>>

    <with|par-left|1tab|2.3<space|2spc>Decodifica con correzione degli errori
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-17>>

    <with|par-left|1tab|2.4<space|2spc>Circuito finale
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-21>>

    <with|par-left|2tab|2.4.1<space|2spc>Codifica
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-23>>

    <with|par-left|2tab|2.4.2<space|2spc>Decodifica
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-24>>

    <with|par-left|2tab|2.4.3<space|2spc>Correzione degli errori
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-25>>

    <with|par-left|2tab|2.4.4<space|2spc>Diversificazione tra codifica e
    decodifica <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-26>>

    <with|par-left|1tab|2.5<space|2spc>Conclusioni
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-27>>
  </table-of-contents>

  <section|Homework>

  In questo esercizio viene chiesto di progettare e realizzare un circuito
  per la codifica e decodifica di una parola a 8 bit utilizzando il
  <strong|codice di Hamming> con distanza minima di Hamming <math|h=3>. Il
  circuito dovrà essere in grado di gestire sia la fase di codifica che
  quella di decodifica, a seconda dell'operazione richiesta.

  Il circuito ha <math|13> ingressi e <math|13> uscite, che vengono
  utilizzate in maniera differente a seconda che esso operi in modalità di
  codifica o di decodifica. Gli ingressi sono chiamati
  <math|d,p<rsub|1>,p<rsub|2>,d<rsub|1>,p<rsub|4>,d<rsub|2>,d<rsub|3>,d<rsub|4>,p<rsub|8>,d<rsub|5>,d<rsub|6>,d<rsub|7>,d<rsub|8>>.
  Le uscite sono chiamate <math|e,y<rsub|1>,\<ldots\>,y<rsub|12>>. L'ingresso
  <math|d> (decode) indica se si opera in modalità di codifica (<math|d=0>) o
  di decodifica (<math|d=1>). Il funzionamento delle due modalità è spiegato
  qui sotto.

  <subsection|Modalità di codifica>

  Quando <math|d=0>, il circuito opera in modalità di codifica. In questo
  caso, i bit di input <math|p<rsub|1>,p<rsub|2>,p<rsub|4>,p<rsub|8>> sono
  <em|don't care conditions> e possono assumere qualsiasi valore. I bit di
  dati <math|d<rsub|1>,\<ldots\>,d<rsub|8>> portano il valore che si intende
  codificare.

  Il circuito calcola quindi i valori dei bit di parità secondo un codice di
  Hamming <math|(12, 8)> e riporta in output i seguenti valori:

  <big-table|<tabular|<tformat|<table|<row|<cell|<math|<tformat|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|1|-1|1|-1|cell-valign|c>|<cwith|2|2|1|1|cell-row-span|2>|<cwith|2|2|1|1|cell-col-span|1>|<cwith|2|2|4|4|cell-row-span|2>|<cwith|2|2|4|4|cell-col-span|1>|<cwith|2|2|6|6|cell-row-span|2>|<cwith|2|2|6|6|cell-col-span|1>|<cwith|2|2|7|7|cell-row-span|2>|<cwith|2|2|7|7|cell-col-span|1>|<cwith|2|2|8|8|cell-row-span|2>|<cwith|2|2|8|8|cell-col-span|1>|<cwith|2|2|14|14|cell-row-span|2>|<cwith|2|2|14|14|cell-col-span|1>|<cwith|2|2|10|10|cell-row-span|2>|<cwith|2|2|10|10|cell-col-span|1>|<cwith|2|2|11|11|cell-row-span|2>|<cwith|2|2|11|11|cell-col-span|1>|<cwith|2|2|12|12|cell-row-span|2>|<cwith|2|2|12|12|cell-col-span|1>|<cwith|2|2|13|13|cell-row-span|2>|<cwith|2|2|13|13|cell-col-span|1>|<cwith|3|3|3|3|cell-lborder|0ln>|<cwith|3|3|2|2|cell-rborder|0ln>|<cwith|2|-1|1|-1|cell-bborder|1ln>|<cwith|2|-1|14|14|cell-rborder|1ln>|<cwith|2|2|3|3|cell-rborder|0ln>|<cwith|2|2|5|5|cell-lborder|0ln>|<cwith|2|2|5|5|cell-rborder|0ln>|<cwith|1|1|1|-1|cell-tborder|1ln>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|2|-1|1|-1|cell-tborder|1ln>|<cwith|1|1|14|14|cell-rborder|1ln>|<cwith|2|2|9|9|cell-tborder|1ln>|<cwith|1|1|9|9|cell-bborder|1ln>|<cwith|2|-1|9|9|cell-lborder|0ln>|<cwith|2|-1|9|9|cell-rborder|0ln>|<cwith|3|3|9|9|cell-tborder|0ln>|<cwith|2|2|9|9|cell-bborder|0ln>|<cwith|3|3|9|9|cell-bborder|1ln>|<cwith|3|3|9|9|cell-lborder|0ln>|<cwith|2|-1|8|8|cell-rborder|0ln>|<cwith|3|3|9|9|cell-rborder|0ln>|<cwith|2|-1|10|10|cell-lborder|0ln>|<cwith|3|3|5|5|cell-tborder|0ln>|<cwith|2|2|5|5|cell-bborder|0ln>|<cwith|3|3|5|5|cell-bborder|1ln>|<cwith|3|3|5|5|cell-lborder|0ln>|<cwith|2|-1|4|4|cell-rborder|0ln>|<cwith|3|3|5|5|cell-rborder|0ln>|<cwith|2|-1|6|6|cell-lborder|0ln>|<cwith|3|3|2|3|cell-tborder|0ln>|<cwith|2|2|2|3|cell-bborder|0ln>|<cwith|3|3|2|3|cell-bborder|1ln>|<cwith|3|3|3|3|cell-rborder|0ln>|<cwith|2|-1|4|4|cell-lborder|0ln>|<cwith|1|1|1|1|cell-tborder|1ln>|<cwith|2|-1|1|1|cell-bborder|1ln>|<cwith|1|-1|1|1|cell-lborder|1ln>|<cwith|1|-1|1|1|cell-rborder|1ln>|<cwith|1|-1|2|2|cell-lborder|1ln>|<cwith|1|1|1|-1|cell-background|pastel
  green>|<cwith|2|-1|1|-1|cell-background|pastel blue>|<table|<row|<cell|Bit
  di uscita>|<cell|<math|>y<rsub|1>>|<cell|y<rsub|2>>|<cell|y<rsub|3>>|<cell|y<rsub|4>>|<cell|y<rsub|5>>|<cell|y<rsub|6>>|<cell|y<rsub|7>>|<cell|y<rsub|8>>|<cell|y<rsub|9>>|<cell|y<rsub|10>>|<cell|y<rsub|11>>|<cell|y<rsub|12>>|<cell|e>>|<row|<cell|Valore>|<cell|primo
  bit>|<cell|secondo bit>|<cell|d<rsub|1>>|<cell|terzo
  bit>|<cell|d<rsub|2>>|<cell|d<rsub|3>>|<cell|d<rsub|4>>|<cell|quarto
  bit>|<cell|d<rsub|5>>|<cell|d<rsub|6>>|<cell|d<rsub|7>>|<cell|d<rsub|8><rsub|>>|<cell|0>>|<row|<cell|>|<cell|di
  parità>|<cell|di parità>|<cell|>|<cell|di
  parità>|<cell|>|<cell|>|<cell|>|<cell|di
  parità>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>>>>>>>>>|Tabella dei valori
  per la codifica>

  Ossia, vengono riportati in output i bit dati in ingresso nelle posizioni
  corrette per la codifica di Hamming adottata e vengono generati i bit di
  parità (anch'essi posizionati nelle posizioni corrette).

  Si noti che, in modalità di codifica, l'uscita<nbsp><math|e><nbsp>deve
  essere sempre forzata a zero.

  <\subsection>
    Modalità di decodifica
  </subsection>

  Quando <math|d=1>, il circuito riceve in input una parola codificate
  secondo il codice di Hamming <math|(12, 8)> e fornisce in output il valore
  decodificato (ed eventualmente corretto). L'output sarà il seguente:

  <big-table|<tabular|<tformat|<table|<row|<cell|<math|<tformat|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|1|-1|1|-1|cell-valign|c>|<cwith|2|2|1|1|cell-row-span|2>|<cwith|2|2|1|1|cell-col-span|1>|<cwith|2|2|4|4|cell-row-span|2>|<cwith|2|2|4|4|cell-col-span|1>|<cwith|2|2|6|6|cell-row-span|2>|<cwith|2|2|6|6|cell-col-span|1>|<cwith|2|2|7|7|cell-row-span|2>|<cwith|2|2|7|7|cell-col-span|1>|<cwith|2|2|8|8|cell-row-span|2>|<cwith|2|2|8|8|cell-col-span|1>|<cwith|2|2|14|14|cell-row-span|2>|<cwith|2|2|14|14|cell-col-span|1>|<cwith|2|2|10|10|cell-row-span|2>|<cwith|2|2|10|10|cell-col-span|1>|<cwith|2|2|11|11|cell-row-span|2>|<cwith|2|2|11|11|cell-col-span|1>|<cwith|2|2|12|12|cell-row-span|2>|<cwith|2|2|12|12|cell-col-span|1>|<cwith|2|2|13|13|cell-row-span|2>|<cwith|2|2|13|13|cell-col-span|1>|<cwith|2|-1|1|-1|cell-bborder|1ln>|<cwith|2|-1|14|14|cell-rborder|1ln>|<cwith|1|1|1|-1|cell-tborder|1ln>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|2|-1|1|-1|cell-tborder|1ln>|<cwith|1|1|14|14|cell-rborder|1ln>|<cwith|3|3|2|3|cell-tborder|0ln>|<cwith|2|2|2|3|cell-bborder|0ln>|<cwith|3|3|2|3|cell-bborder|1ln>|<cwith|1|1|1|1|cell-tborder|1ln>|<cwith|2|-1|1|1|cell-bborder|1ln>|<cwith|1|-1|1|1|cell-lborder|1ln>|<cwith|1|-1|1|1|cell-rborder|1ln>|<cwith|1|-1|2|2|cell-lborder|1ln>|<cwith|1|1|1|-1|cell-background|pastel
  green>|<cwith|2|-1|1|-1|cell-background|pastel
  blue>|<cwith|2|2|2|2|cell-row-span|2>|<cwith|2|2|2|2|cell-col-span|1>|<cwith|1|1|2|2|cell-bborder|0ln>|<cwith|2|-1|2|2|cell-bborder|1ln>|<cwith|2|-1|2|2|cell-tborder|1ln>|<cwith|2|-1|2|2|cell-lborder|1ln>|<cwith|2|-1|1|1|cell-rborder|1ln>|<cwith|2|2|9|9|cell-row-span|2>|<cwith|2|2|9|9|cell-col-span|1>|<cwith|1|1|9|9|cell-bborder|0ln>|<cwith|2|-1|9|9|cell-bborder|1ln>|<cwith|2|-1|9|9|cell-tborder|1ln>|<cwith|2|-1|9|9|cell-lborder|0ln>|<cwith|2|-1|8|8|cell-rborder|0ln>|<cwith|2|-1|9|9|cell-rborder|0ln>|<cwith|2|-1|10|10|cell-lborder|0ln>|<cwith|2|2|5|5|cell-row-span|2>|<cwith|2|2|5|5|cell-col-span|1>|<cwith|1|1|5|5|cell-bborder|0ln>|<cwith|2|-1|5|5|cell-bborder|1ln>|<cwith|2|-1|5|5|cell-tborder|1ln>|<cwith|2|-1|5|5|cell-lborder|0ln>|<cwith|2|-1|4|4|cell-rborder|0ln>|<cwith|2|-1|5|5|cell-rborder|0ln>|<cwith|2|-1|6|6|cell-lborder|0ln>|<cwith|2|2|3|3|cell-row-span|2>|<cwith|2|2|3|3|cell-col-span|1>|<cwith|1|1|3|3|cell-bborder|0ln>|<cwith|2|-1|3|3|cell-bborder|1ln>|<cwith|2|-1|3|3|cell-tborder|1ln>|<cwith|2|-1|3|3|cell-lborder|0ln>|<cwith|2|-1|2|2|cell-rborder|0ln>|<cwith|2|-1|3|3|cell-rborder|0ln>|<cwith|2|-1|4|4|cell-lborder|0ln>|<table|<row|<cell|Bit
  di uscita>|<cell|<math|>y<rsub|1>>|<cell|y<rsub|2>>|<cell|y<rsub|3>>|<cell|y<rsub|4>>|<cell|y<rsub|5>>|<cell|y<rsub|6>>|<cell|y<rsub|7>>|<cell|y<rsub|8>>|<cell|y<rsub|9>>|<cell|y<rsub|10>>|<cell|y<rsub|11>>|<cell|y<rsub|12>>|<cell|e>>|<row|<cell|Valore>|<cell|d<rsub|1>>|<cell|d<rsub|2>>|<cell|d<rsub|3>>|<cell|d<rsub|4>>|<cell|d<rsub|5>>|<cell|d<rsub|6>>|<cell|d<rsub|7>>|<cell|d<rsub|8>>|<cell|0>|<cell|0>|<cell|0>|<cell|0<rsub|>>|<cell|<shell|?>>>|<row|<cell|>|<cell|>|<cell|di
  parità>|<cell|>|<cell|di parità>|<cell|>|<cell|>|<cell|>|<cell|di
  parità>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>>>>>>>>>|Tabella dei valori
  per la decodifica>

  Dove con <code*|?> si intende il codice di errore: <math|0> se non è stato
  rilevato alcun errore di trasmissione, 1 se è stato rilevato almeno un
  errore.

  Nel caso sia stato rilevato un errore, il circuito tenta la correzione:
  viene utilizzata la sindrome per determinare quale bit è necessario
  invertire (e si effettua l'inversione). Si noti che il risultato è sensato
  solo se si è verificato un solo errore.

  Si noti che, in modalità di decodifica, i bit di output
  <math|y<rsub|9>,\<ldots\>,y<rsub|12>> sono sempre forzati a zero.

  <subsection|Vincoli>

  <\itemize>
    <item>Utilizzare esclusivamente <strong|porte logiche> di base e
    <strong|componenti elementari> (encoder, decoder, <text-dots>) per la
    progettazione del circuito.

    <item>Non è consentito utilizzare componenti predefiniti per la
    correzione degli errori o circuiti già progettati per il codice di
    Hamming.
  </itemize>

  <section|Soluzione>

  <subsection|Introduzione>

  Data la presenza di vincoli non possiamo utilizzare un'unica ROM (Read Only
  Memory) per rappresentare la logica combinatoria. Pertanto doppiamo
  ragionare in modo molto basilare. Infatti per capire come implementare un
  circuito per la codifica/decodifica di un codice di Hamming ad <math|8> bit
  occorre avere bene in mente quali sono le operazioni logiche che si
  svolgono durante la codifica, la decodifica e anche durante la correzione
  degli errori. L'idea è procedere step-by-step ricordando come di effettua
  la codifica/decodica e correzione degli errori \Pa mano\Q per poi
  automatizzare tale abilità con un circuito elettronico digitale.

  <subsection|Codifica>

  Immaginiamo di dover codificare il messaggio <math|10011010>, utilizzando
  il codice di Hamming. Procediamo come segue. Per prima cosa sappiamo che il
  messaggio da codificare presenta <math|n=8> bit e che il codice di Hamming
  è un metodo per la costruzione di codici a <with|font-shape|italic|distanza
  di Hamming> <math|h\<geqslant\>3>. Pertanto indichiamo con <math|m=n+k>
  cifre il numero di bit del messaggio codificato e calcoliamo il valore di
  <math|k>, utilizzando la seguente relazione:

  <\eqnarray>
    <tformat|<table|<row|<cell|n>|<cell|\<leqslant\>>|<cell|2<rsup|k>-k-1>>>>
  </eqnarray>

  da cui segue che <math|9\<leqslant\>2<rsup|k>-k> per cui <math|k=4>. Quindi
  otteniamo che il messaggio codificato avrà una lunghezza pari a
  <math|m=n+k=12>. Cominciamo il nostro algoritmo di codifica sapendo che
  dovremmo aggiungere <math|k=4> cifre, ossia <math|4> bit di parità, che
  indicheremo rispettivamente con <math|p<rsub|1>,p<rsub|2>,p<rsub|4>> e
  <math|p<rsub|8>>, dove il pedice <math|i>-esimo indica la posizione del bit
  di parità nel messaggio codificato. Quindi costruiamo la seguente tabella:

  <big-table|<tabular|<tformat|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|1|-1|1|-1|cell-valign|c>|<cwith|6|6|2|2|cell-bborder|1ln>|<cwith|1|2|4|14|cell-tborder|1ln>|<cwith|1|2|4|14|cell-bborder|1ln>|<cwith|1|2|4|14|cell-lborder|1ln>|<cwith|1|2|4|14|cell-rborder|1ln>|<cwith|3|6|3|-1|cell-tborder|1ln>|<cwith|3|6|3|-1|cell-bborder|1ln>|<cwith|3|6|3|-1|cell-lborder|1ln>|<cwith|3|6|3|-1|cell-rborder|1ln>|<cwith|2|2|3|-1|cell-bborder|1ln>|<cwith|3|6|2|2|cell-rborder|1ln>|<cwith|1|-1|1|1|cell-lborder|0ln>|<cwith|1|-1|1|1|cell-rborder|0ln>|<cwith|1|-1|2|2|cell-lborder|0ln>|<cwith|2|2|1|3|cell-bborder|1ln>|<cwith|3|3|1|3|cell-tborder|1ln>|<cwith|1|2|1|1|cell-lborder|1ln>|<cwith|1|2|3|3|cell-rborder|1ln>|<cwith|1|2|4|4|cell-lborder|1ln>|<cwith|6|6|1|1|cell-bborder|1ln>|<cwith|3|6|1|1|cell-lborder|1ln>|<cwith|3|6|1|1|cell-rborder|0ln>|<cwith|3|6|2|2|cell-lborder|0ln>|<cwith|2|2|1|1|cell-bborder|1ln>|<cwith|3|3|1|1|cell-tborder|1ln>|<cwith|2|2|1|1|cell-lborder|1ln>|<cwith|2|2|1|1|cell-rborder|0ln>|<cwith|2|2|2|2|cell-lborder|0ln>|<cwith|1|1|1|3|cell-tborder|1ln>|<cwith|1|1|1|3|cell-bborder|1ln>|<cwith|2|2|1|3|cell-tborder|1ln>|<cwith|1|1|1|1|cell-lborder|1ln>|<cwith|1|1|3|3|cell-rborder|1ln>|<cwith|1|1|4|4|cell-lborder|1ln>|<cwith|1|2|15|15|cell-tborder|1ln>|<cwith|1|2|15|15|cell-bborder|1ln>|<cwith|1|2|15|15|cell-lborder|1ln>|<cwith|3|3|15|15|cell-tborder|1ln>|<cwith|1|2|14|14|cell-rborder|1ln>|<cwith|1|2|16|16|cell-tborder|1ln>|<cwith|1|2|16|16|cell-bborder|1ln>|<cwith|1|2|16|16|cell-lborder|1ln>|<cwith|1|2|16|16|cell-rborder|1ln>|<cwith|3|3|16|16|cell-tborder|1ln>|<cwith|1|2|15|15|cell-rborder|1ln>|<table|<row|<cell|>|<cell|Posizione
  cifra>|<cell|>|<cell|1>|<cell|2>|<cell|3>|<cell|4>|<cell|5>|<cell|6>|<cell|7>|<cell|8>|<cell|9>|<cell|10>|<cell|11>|<cell|12>|<cell|>>|<row|<cell|>|<cell|Dato
  codificato>|<cell|>|<cell|<math|p<rsub|1>>>|<cell|<math|p<rsub|2>>>|<cell|>|<cell|<math|p<rsub|4>>>|<cell|>|<cell|>|<cell|>|<cell|<math|p<rsub|8>>>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|>|<cell|>|<cell|<math|p<rsub|1>>>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|>|<cell|Copertura>|<cell|<math|p<rsub|2>>>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|>|<cell|bit
  di parità>|<cell|<math|p<rsub|4>>>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|>|<cell|>|<cell|<math|p<rsub|8>>>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>>>>|Codifica
  di un messaggio usando il codice di Hamming (parte 1)>

  Attualmente la tabella è vuota e la prima cosa che dobbiamo fare è
  riempirla inserendo il messaggio da codificare, ossia <math|10011010> come
  segue:

  <big-table|<tabular|<tformat|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|1|-1|1|-1|cell-valign|c>|<cwith|6|6|2|2|cell-bborder|1ln>|<cwith|1|2|4|14|cell-tborder|1ln>|<cwith|1|2|4|14|cell-bborder|1ln>|<cwith|1|2|4|14|cell-lborder|1ln>|<cwith|1|2|4|14|cell-rborder|1ln>|<cwith|3|6|3|-1|cell-tborder|1ln>|<cwith|3|6|3|-1|cell-bborder|1ln>|<cwith|3|6|3|-1|cell-lborder|1ln>|<cwith|3|6|3|-1|cell-rborder|1ln>|<cwith|2|2|3|-1|cell-bborder|1ln>|<cwith|3|6|2|2|cell-rborder|1ln>|<cwith|1|-1|1|1|cell-lborder|0ln>|<cwith|1|-1|1|1|cell-rborder|0ln>|<cwith|1|-1|2|2|cell-lborder|0ln>|<cwith|2|2|1|3|cell-bborder|1ln>|<cwith|3|3|1|3|cell-tborder|1ln>|<cwith|1|2|1|1|cell-lborder|1ln>|<cwith|1|2|3|3|cell-rborder|1ln>|<cwith|1|2|4|4|cell-lborder|1ln>|<cwith|6|6|1|1|cell-bborder|1ln>|<cwith|3|6|1|1|cell-lborder|1ln>|<cwith|3|6|1|1|cell-rborder|0ln>|<cwith|3|6|2|2|cell-lborder|0ln>|<cwith|2|2|1|1|cell-bborder|1ln>|<cwith|3|3|1|1|cell-tborder|1ln>|<cwith|2|2|1|1|cell-lborder|1ln>|<cwith|2|2|1|1|cell-rborder|0ln>|<cwith|2|2|2|2|cell-lborder|0ln>|<cwith|1|1|1|3|cell-tborder|1ln>|<cwith|1|1|1|3|cell-bborder|1ln>|<cwith|2|2|1|3|cell-tborder|1ln>|<cwith|1|1|1|1|cell-lborder|1ln>|<cwith|1|1|3|3|cell-rborder|1ln>|<cwith|1|1|4|4|cell-lborder|1ln>|<cwith|1|2|15|15|cell-tborder|1ln>|<cwith|1|2|15|15|cell-bborder|1ln>|<cwith|1|2|15|15|cell-lborder|1ln>|<cwith|3|3|15|15|cell-tborder|1ln>|<cwith|1|2|14|14|cell-rborder|1ln>|<cwith|1|2|16|16|cell-tborder|1ln>|<cwith|1|2|16|16|cell-bborder|1ln>|<cwith|1|2|16|16|cell-lborder|1ln>|<cwith|1|2|16|16|cell-rborder|1ln>|<cwith|3|3|16|16|cell-tborder|1ln>|<cwith|1|2|15|15|cell-rborder|1ln>|<table|<row|<cell|>|<cell|Posizione
  cifra>|<cell|>|<cell|1>|<cell|2>|<cell|3>|<cell|4>|<cell|5>|<cell|6>|<cell|7>|<cell|8>|<cell|9>|<cell|10>|<cell|11>|<cell|12>|<cell|>>|<row|<cell|>|<cell|Dato
  codificato>|<cell|>|<cell|<math|p<rsub|1>>>|<cell|<math|p<rsub|2>>>|<cell|1>|<cell|<math|p<rsub|4>>>|<cell|0>|<cell|0>|<cell|1>|<cell|<math|p<rsub|8>>>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|>>|<row|<cell|>|<cell|>|<cell|<math|p<rsub|1>>>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|>|<cell|Copertura>|<cell|<math|p<rsub|2>>>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|>|<cell|bit
  di parità>|<cell|<math|p<rsub|4>>>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|>|<cell|>|<cell|<math|p<rsub|8>>>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>>>>|Codifica
  di un messaggio usando il codice di Hamming (parte 2)>

  a questo punto bisogna trasformare le posizioni (da <math|1> a <math|12>)
  in binario e inserire il simbolo \P<math|\<checked\>>\Q al posto degli
  <math|1> disponendo ciascun numero binario nella relativa colonna in base
  alla posizione. Per esempio il numero <math|<around*|(|7|)><rsub|10>=<around*|(|0111|)><rsub|2>>
  quindi verrà scritto nella tabella come segue:

  <big-table|<tabular|<tformat|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|1|-1|1|-1|cell-valign|c>|<cwith|6|6|2|2|cell-bborder|1ln>|<cwith|1|2|4|14|cell-tborder|1ln>|<cwith|1|2|4|14|cell-bborder|1ln>|<cwith|1|2|4|14|cell-lborder|1ln>|<cwith|1|2|4|14|cell-rborder|1ln>|<cwith|3|6|3|-1|cell-tborder|1ln>|<cwith|3|6|3|-1|cell-bborder|1ln>|<cwith|3|6|3|-1|cell-lborder|1ln>|<cwith|3|6|3|-1|cell-rborder|1ln>|<cwith|2|2|3|-1|cell-bborder|1ln>|<cwith|3|6|2|2|cell-rborder|1ln>|<cwith|1|-1|1|1|cell-lborder|0ln>|<cwith|1|-1|1|1|cell-rborder|0ln>|<cwith|1|-1|2|2|cell-lborder|0ln>|<cwith|2|2|1|3|cell-bborder|1ln>|<cwith|3|3|1|3|cell-tborder|1ln>|<cwith|1|2|1|1|cell-lborder|1ln>|<cwith|1|2|3|3|cell-rborder|1ln>|<cwith|1|2|4|4|cell-lborder|1ln>|<cwith|6|6|1|1|cell-bborder|1ln>|<cwith|3|6|1|1|cell-lborder|1ln>|<cwith|3|6|1|1|cell-rborder|0ln>|<cwith|3|6|2|2|cell-lborder|0ln>|<cwith|2|2|1|1|cell-bborder|1ln>|<cwith|3|3|1|1|cell-tborder|1ln>|<cwith|2|2|1|1|cell-lborder|1ln>|<cwith|2|2|1|1|cell-rborder|0ln>|<cwith|2|2|2|2|cell-lborder|0ln>|<cwith|1|1|1|3|cell-tborder|1ln>|<cwith|1|1|1|3|cell-bborder|1ln>|<cwith|2|2|1|3|cell-tborder|1ln>|<cwith|1|1|1|1|cell-lborder|1ln>|<cwith|1|1|3|3|cell-rborder|1ln>|<cwith|1|1|4|4|cell-lborder|1ln>|<cwith|1|2|15|15|cell-tborder|1ln>|<cwith|1|2|15|15|cell-bborder|1ln>|<cwith|1|2|15|15|cell-lborder|1ln>|<cwith|3|3|15|15|cell-tborder|1ln>|<cwith|1|2|14|14|cell-rborder|1ln>|<cwith|1|2|16|16|cell-tborder|1ln>|<cwith|1|2|16|16|cell-bborder|1ln>|<cwith|1|2|16|16|cell-lborder|1ln>|<cwith|1|2|16|16|cell-rborder|1ln>|<cwith|3|3|16|16|cell-tborder|1ln>|<cwith|1|2|15|15|cell-rborder|1ln>|<table|<row|<cell|>|<cell|Posizione
  cifra>|<cell|>|<cell|1>|<cell|2>|<cell|3>|<cell|4>|<cell|5>|<cell|6>|<cell|7>|<cell|8>|<cell|9>|<cell|10>|<cell|11>|<cell|12>|<cell|>>|<row|<cell|>|<cell|Dato
  codificato>|<cell|>|<cell|<math|p<rsub|1>>>|<cell|<math|p<rsub|2>>>|<cell|1>|<cell|<math|p<rsub|4>>>|<cell|0>|<cell|0>|<cell|1>|<cell|<math|p<rsub|8>>>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|>>|<row|<cell|>|<cell|>|<cell|<math|p<rsub|1>>>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|\<checked\>>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|>|<cell|Copertura>|<cell|<math|p<rsub|2>>>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|\<checked\>>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|>|<cell|bit
  di parità>|<cell|<math|p<rsub|4>>>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|\<checked\>>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|>|<cell|>|<cell|<math|p<rsub|8>>>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>>>>|Codifica
  di un messaggio usando il codice di Hamming (parte 3)>

  e ragionando allo stesso modo per le altre posizioni si ottiene:

  <big-table|<tabular|<tformat|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|1|-1|1|-1|cell-valign|c>|<cwith|6|6|2|2|cell-bborder|1ln>|<cwith|1|2|4|14|cell-tborder|1ln>|<cwith|1|2|4|14|cell-bborder|1ln>|<cwith|1|2|4|14|cell-lborder|1ln>|<cwith|1|2|4|14|cell-rborder|1ln>|<cwith|3|6|3|-1|cell-tborder|1ln>|<cwith|3|6|3|-1|cell-bborder|1ln>|<cwith|3|6|3|-1|cell-lborder|1ln>|<cwith|3|6|3|-1|cell-rborder|1ln>|<cwith|2|2|3|-1|cell-bborder|1ln>|<cwith|3|6|2|2|cell-rborder|1ln>|<cwith|1|-1|1|1|cell-lborder|0ln>|<cwith|1|-1|1|1|cell-rborder|0ln>|<cwith|1|-1|2|2|cell-lborder|0ln>|<cwith|2|2|1|3|cell-bborder|1ln>|<cwith|3|3|1|3|cell-tborder|1ln>|<cwith|1|2|1|1|cell-lborder|1ln>|<cwith|1|2|3|3|cell-rborder|1ln>|<cwith|1|2|4|4|cell-lborder|1ln>|<cwith|6|6|1|1|cell-bborder|1ln>|<cwith|3|6|1|1|cell-lborder|1ln>|<cwith|3|6|1|1|cell-rborder|0ln>|<cwith|3|6|2|2|cell-lborder|0ln>|<cwith|2|2|1|1|cell-bborder|1ln>|<cwith|3|3|1|1|cell-tborder|1ln>|<cwith|2|2|1|1|cell-lborder|1ln>|<cwith|2|2|1|1|cell-rborder|0ln>|<cwith|2|2|2|2|cell-lborder|0ln>|<cwith|1|1|1|3|cell-tborder|1ln>|<cwith|1|1|1|3|cell-bborder|1ln>|<cwith|2|2|1|3|cell-tborder|1ln>|<cwith|1|1|1|1|cell-lborder|1ln>|<cwith|1|1|3|3|cell-rborder|1ln>|<cwith|1|1|4|4|cell-lborder|1ln>|<cwith|1|2|15|15|cell-tborder|1ln>|<cwith|1|2|15|15|cell-bborder|1ln>|<cwith|1|2|15|15|cell-lborder|1ln>|<cwith|3|3|15|15|cell-tborder|1ln>|<cwith|1|2|14|14|cell-rborder|1ln>|<cwith|1|2|16|16|cell-tborder|1ln>|<cwith|1|2|16|16|cell-bborder|1ln>|<cwith|1|2|16|16|cell-lborder|1ln>|<cwith|1|2|16|16|cell-rborder|1ln>|<cwith|3|3|16|16|cell-tborder|1ln>|<cwith|1|2|15|15|cell-rborder|1ln>|<table|<row|<cell|>|<cell|Posizione
  cifra>|<cell|>|<cell|1>|<cell|2>|<cell|3>|<cell|4>|<cell|5>|<cell|6>|<cell|7>|<cell|8>|<cell|9>|<cell|10>|<cell|11>|<cell|12>|<cell|>>|<row|<cell|>|<cell|Dato
  codificato>|<cell|>|<cell|<math|p<rsub|1>>>|<cell|<math|p<rsub|2>>>|<cell|1>|<cell|<math|p<rsub|4>>>|<cell|0>|<cell|0>|<cell|1>|<cell|<math|p<rsub|8>>>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|>>|<row|<cell|>|<cell|>|<cell|<math|p<rsub|1>>>|<cell|\<checked\>>|<cell|>|<cell|\<checked\>>|<cell|>|<cell|\<checked\>>|<cell|>|<cell|\<checked\>>|<cell|>|<cell|\<checked\>>|<cell|>|<cell|\<checked\>>|<cell|>|<cell|>>|<row|<cell|>|<cell|Copertura>|<cell|<math|p<rsub|2>>>|<cell|>|<cell|\<checked\>>|<cell|\<checked\>>|<cell|>|<cell|>|<cell|\<checked\>>|<cell|\<checked\>>|<cell|>|<cell|>|<cell|\<checked\>>|<cell|\<checked\>>|<cell|>|<cell|>>|<row|<cell|>|<cell|bit
  di parità>|<cell|<math|p<rsub|4>>>|<cell|>|<cell|>|<cell|>|<cell|\<checked\>>|<cell|\<checked\>>|<cell|\<checked\>>|<cell|\<checked\>>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|\<checked\>>|<cell|>>|<row|<cell|>|<cell|>|<cell|<math|p<rsub|8>>>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|\<checked\>>|<cell|\<checked\>>|<cell|\<checked\>>|<cell|\<checked\>>|<cell|\<checked\>>|<cell|>>>>>|Codifica
  di un messaggio usando il codice di Hamming (parte 4)>

  Ora bisogna individuare nel dato codificato le posizioni degli <math|1>, ed
  in particolare in questo caso notiamo che in posizione <math|3,7,9> e
  <math|11> ci sono tutti <math|1>. Pertanto ci posizioniamo sopra ad una
  specifica posizione, per esempio la posizione <math|3> e coloriamo, con un
  colore a scelta (se si procede su carta conviene fare dei cerchi con la
  matita), tutti i simboli \P\<checked\>\Q della colonna come segue:

  <big-table|<tabular|<tformat|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|1|-1|1|-1|cell-valign|c>|<cwith|6|6|2|2|cell-bborder|1ln>|<cwith|1|2|4|14|cell-tborder|1ln>|<cwith|1|2|4|14|cell-bborder|1ln>|<cwith|1|2|4|14|cell-lborder|1ln>|<cwith|1|2|4|14|cell-rborder|1ln>|<cwith|3|6|3|-1|cell-tborder|1ln>|<cwith|3|6|3|-1|cell-bborder|1ln>|<cwith|3|6|3|-1|cell-lborder|1ln>|<cwith|3|6|3|-1|cell-rborder|1ln>|<cwith|2|2|3|-1|cell-bborder|1ln>|<cwith|3|6|2|2|cell-rborder|1ln>|<cwith|1|-1|1|1|cell-lborder|0ln>|<cwith|1|-1|1|1|cell-rborder|0ln>|<cwith|1|-1|2|2|cell-lborder|0ln>|<cwith|2|2|1|3|cell-bborder|1ln>|<cwith|3|3|1|3|cell-tborder|1ln>|<cwith|1|2|1|1|cell-lborder|1ln>|<cwith|1|2|3|3|cell-rborder|1ln>|<cwith|1|2|4|4|cell-lborder|1ln>|<cwith|6|6|1|1|cell-bborder|1ln>|<cwith|3|6|1|1|cell-lborder|1ln>|<cwith|3|6|1|1|cell-rborder|0ln>|<cwith|3|6|2|2|cell-lborder|0ln>|<cwith|2|2|1|1|cell-bborder|1ln>|<cwith|3|3|1|1|cell-tborder|1ln>|<cwith|2|2|1|1|cell-lborder|1ln>|<cwith|2|2|1|1|cell-rborder|0ln>|<cwith|2|2|2|2|cell-lborder|0ln>|<cwith|1|1|1|3|cell-tborder|1ln>|<cwith|1|1|1|3|cell-bborder|1ln>|<cwith|2|2|1|3|cell-tborder|1ln>|<cwith|1|1|1|1|cell-lborder|1ln>|<cwith|1|1|3|3|cell-rborder|1ln>|<cwith|1|1|4|4|cell-lborder|1ln>|<cwith|1|2|15|15|cell-tborder|1ln>|<cwith|1|2|15|15|cell-bborder|1ln>|<cwith|1|2|15|15|cell-lborder|1ln>|<cwith|3|3|15|15|cell-tborder|1ln>|<cwith|1|2|14|14|cell-rborder|1ln>|<cwith|1|2|16|16|cell-tborder|1ln>|<cwith|1|2|16|16|cell-bborder|1ln>|<cwith|1|2|16|16|cell-lborder|1ln>|<cwith|1|2|16|16|cell-rborder|1ln>|<cwith|1|2|15|15|cell-rborder|1ln>|<cwith|4|4|6|7|cell-background|>|<cwith|3|3|6|7|cell-background|green>|<cwith|3|3|7|14|cell-background|green>|<cwith|3|3|7|9|cell-background|>|<cwith|3|4|6|6|cell-background|green>|<cwith|3|6|9|15|cell-background|>|<table|<row|<cell|>|<cell|Posizione
  cifra>|<cell|>|<cell|1>|<cell|2>|<cell|3>|<cell|4>|<cell|5>|<cell|6>|<cell|7>|<cell|8>|<cell|9>|<cell|10>|<cell|11>|<cell|12>|<cell|>>|<row|<cell|>|<cell|Dato
  codificato>|<cell|>|<cell|<math|p<rsub|1>>>|<cell|<math|p<rsub|2>>>|<cell|1>|<cell|<math|p<rsub|4>>>|<cell|0>|<cell|0>|<cell|1>|<cell|<math|p<rsub|8>>>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|>>|<row|<cell|>|<cell|>|<cell|<math|p<rsub|1>>>|<cell|\<checked\>>|<cell|>|<cell|\<checked\>>|<cell|>|<cell|\<checked\>>|<cell|>|<cell|\<checked\>>|<cell|>|<cell|\<checked\>>|<cell|>|<cell|\<checked\>>|<cell|>|<cell|>>|<row|<cell|>|<cell|Copertura>|<cell|<math|p<rsub|2>>>|<cell|>|<cell|\<checked\>>|<cell|\<checked\>>|<cell|>|<cell|>|<cell|\<checked\>>|<cell|\<checked\>>|<cell|>|<cell|>|<cell|\<checked\>>|<cell|\<checked\>>|<cell|>|<cell|>>|<row|<cell|>|<cell|bit
  di parità>|<cell|<math|p<rsub|4>>>|<cell|>|<cell|>|<cell|>|<cell|\<checked\>>|<cell|\<checked\>>|<cell|\<checked\>>|<cell|\<checked\>>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|\<checked\>>|<cell|>>|<row|<cell|>|<cell|>|<cell|<math|p<rsub|8>>>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|\<checked\>>|<cell|\<checked\>>|<cell|\<checked\>>|<cell|\<checked\>>|<cell|\<checked\>>|<cell|>>>>>|Codifica
  di un messaggio usando il codice di Hamming (parte 5)>

  e ragionando allo stesso modo per le altre posizioni si ottiene:

  <big-table|<tabular|<tformat|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|1|-1|1|-1|cell-valign|c>|<cwith|6|6|2|2|cell-bborder|1ln>|<cwith|1|2|4|14|cell-tborder|1ln>|<cwith|1|2|4|14|cell-bborder|1ln>|<cwith|1|2|4|14|cell-lborder|1ln>|<cwith|1|2|4|14|cell-rborder|1ln>|<cwith|3|6|3|-1|cell-tborder|1ln>|<cwith|3|6|3|-1|cell-bborder|1ln>|<cwith|3|6|3|-1|cell-lborder|1ln>|<cwith|3|6|3|-1|cell-rborder|1ln>|<cwith|2|2|3|-1|cell-bborder|1ln>|<cwith|3|6|2|2|cell-rborder|1ln>|<cwith|1|-1|1|1|cell-lborder|0ln>|<cwith|1|-1|1|1|cell-rborder|0ln>|<cwith|1|-1|2|2|cell-lborder|0ln>|<cwith|2|2|1|3|cell-bborder|1ln>|<cwith|3|3|1|3|cell-tborder|1ln>|<cwith|1|2|1|1|cell-lborder|1ln>|<cwith|1|2|3|3|cell-rborder|1ln>|<cwith|1|2|4|4|cell-lborder|1ln>|<cwith|6|6|1|1|cell-bborder|1ln>|<cwith|3|6|1|1|cell-lborder|1ln>|<cwith|3|6|1|1|cell-rborder|0ln>|<cwith|3|6|2|2|cell-lborder|0ln>|<cwith|2|2|1|1|cell-bborder|1ln>|<cwith|3|3|1|1|cell-tborder|1ln>|<cwith|2|2|1|1|cell-lborder|1ln>|<cwith|2|2|1|1|cell-rborder|0ln>|<cwith|2|2|2|2|cell-lborder|0ln>|<cwith|1|1|1|3|cell-tborder|1ln>|<cwith|1|1|1|3|cell-bborder|1ln>|<cwith|2|2|1|3|cell-tborder|1ln>|<cwith|1|1|1|1|cell-lborder|1ln>|<cwith|1|1|3|3|cell-rborder|1ln>|<cwith|1|1|4|4|cell-lborder|1ln>|<cwith|1|2|15|15|cell-tborder|1ln>|<cwith|1|2|15|15|cell-bborder|1ln>|<cwith|1|2|15|15|cell-lborder|1ln>|<cwith|3|3|15|15|cell-tborder|1ln>|<cwith|1|2|14|14|cell-rborder|1ln>|<cwith|1|2|16|16|cell-tborder|1ln>|<cwith|1|2|16|16|cell-bborder|1ln>|<cwith|1|2|16|16|cell-lborder|1ln>|<cwith|1|2|16|16|cell-rborder|1ln>|<cwith|1|2|15|15|cell-rborder|1ln>|<cwith|4|4|6|7|cell-background|>|<cwith|3|3|6|7|cell-background|green>|<cwith|3|3|7|14|cell-background|green>|<cwith|3|3|7|9|cell-background|>|<cwith|3|4|11|11|cell-background|>|<cwith|3|4|13|13|cell-background|>|<cwith|3|4|6|6|cell-background|green>|<cwith|3|5|10|10|cell-background|green>|<cwith|5|6|12|12|cell-background|green>|<cwith|5|5|12|13|cell-background|>|<cwith|6|6|14|15|cell-background|green>|<cwith|5|6|15|15|cell-background|>|<cwith|3|4|14|14|cell-background|green>|<table|<row|<cell|>|<cell|Posizione
  cifra>|<cell|>|<cell|1>|<cell|2>|<cell|3>|<cell|4>|<cell|5>|<cell|6>|<cell|7>|<cell|8>|<cell|9>|<cell|10>|<cell|11>|<cell|12>|<cell|>>|<row|<cell|>|<cell|Dato
  codificato>|<cell|>|<cell|<math|p<rsub|1>>>|<cell|<math|p<rsub|2>>>|<cell|1>|<cell|<math|p<rsub|4>>>|<cell|0>|<cell|0>|<cell|1>|<cell|<math|p<rsub|8>>>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|>>|<row|<cell|>|<cell|>|<cell|<math|p<rsub|1>>>|<cell|\<checked\>>|<cell|>|<cell|\<checked\>>|<cell|>|<cell|\<checked\>>|<cell|>|<cell|\<checked\>>|<cell|>|<cell|\<checked\>>|<cell|>|<cell|\<checked\>>|<cell|>|<cell|>>|<row|<cell|>|<cell|Copertura>|<cell|<math|p<rsub|2>>>|<cell|>|<cell|\<checked\>>|<cell|\<checked\>>|<cell|>|<cell|>|<cell|\<checked\>>|<cell|\<checked\>>|<cell|>|<cell|>|<cell|\<checked\>>|<cell|\<checked\>>|<cell|>|<cell|>>|<row|<cell|>|<cell|bit
  di parità>|<cell|<math|p<rsub|4>>>|<cell|>|<cell|>|<cell|>|<cell|\<checked\>>|<cell|\<checked\>>|<cell|\<checked\>>|<cell|\<checked\>>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|\<checked\>>|<cell|>>|<row|<cell|>|<cell|>|<cell|<math|p<rsub|8>>>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|\<checked\>>|<cell|\<checked\>>|<cell|\<checked\>>|<cell|\<checked\>>|<cell|\<checked\>>|<cell|>>>>>|Codifica
  di un messaggio usando il codice di Hamming (parte 6)>

  Infine calcoliamo i bit di parità <math|p<rsub|1>,p<rsub|2>,p<rsub|4>> e
  <math|p<rsub|8>> contando, da sinistra a destra, quanti simboli
  \P\<checked\>\Q sono stati colorati (o cerchiati a matita). Per esempio per
  il calcolo del bit di parità <math|p<rsub|1>> abbiamo evidenziato le
  posizioni <math|3,7,9> e <math|11> per un totale di <math|4> simboli
  \P\<checked\>\Q, pertanto ricordando la logica dei codici di parità pari
  (il bit di parità vale <math|1> se il numero di <math|1> nella codifica è
  dispari) e di parità dispari (il bit di parità vale <math|1> se il numero
  di <math|1> nella codifica è pari) ed utilizzando, per esempio, la logica
  del codice di parità pari abbiamo che <math|p<rsub|1>=0> perchè abbiamo
  contato un totale di <math|4> simboli \P\<checked\>\Q. Invece per esempio
  per il calcolo del bit di parità <math|p<rsub|4>> abbiamo evidenziato
  esclusivamente la posizione <math|7> per un totale di <math|1> simbolo
  \P\<checked\>\Q, portandoci alla conclusione che <math|p<rsub|4>=1>.
  Ragionando allo stesso modo per gli altri bit di parità otteniamo:

  <big-table|<tabular|<tformat|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|1|-1|1|-1|cell-valign|c>|<cwith|6|6|2|2|cell-bborder|1ln>|<cwith|1|2|4|14|cell-tborder|1ln>|<cwith|1|2|4|14|cell-bborder|1ln>|<cwith|1|2|4|14|cell-lborder|1ln>|<cwith|1|2|4|14|cell-rborder|1ln>|<cwith|3|6|3|-1|cell-tborder|1ln>|<cwith|3|6|3|-1|cell-bborder|1ln>|<cwith|3|6|3|-1|cell-lborder|1ln>|<cwith|3|6|3|-1|cell-rborder|1ln>|<cwith|2|2|3|-1|cell-bborder|1ln>|<cwith|3|6|2|2|cell-rborder|1ln>|<cwith|1|-1|1|1|cell-lborder|0ln>|<cwith|1|-1|1|1|cell-rborder|0ln>|<cwith|1|-1|2|2|cell-lborder|0ln>|<cwith|2|2|1|3|cell-bborder|1ln>|<cwith|3|3|1|3|cell-tborder|1ln>|<cwith|1|2|1|1|cell-lborder|1ln>|<cwith|1|2|3|3|cell-rborder|1ln>|<cwith|1|2|4|4|cell-lborder|1ln>|<cwith|6|6|1|1|cell-bborder|1ln>|<cwith|3|6|1|1|cell-lborder|1ln>|<cwith|3|6|1|1|cell-rborder|0ln>|<cwith|3|6|2|2|cell-lborder|0ln>|<cwith|2|2|1|1|cell-bborder|1ln>|<cwith|3|3|1|1|cell-tborder|1ln>|<cwith|2|2|1|1|cell-lborder|1ln>|<cwith|2|2|1|1|cell-rborder|0ln>|<cwith|2|2|2|2|cell-lborder|0ln>|<cwith|1|1|1|3|cell-tborder|1ln>|<cwith|1|1|1|3|cell-bborder|1ln>|<cwith|2|2|1|3|cell-tborder|1ln>|<cwith|1|1|1|1|cell-lborder|1ln>|<cwith|1|1|3|3|cell-rborder|1ln>|<cwith|1|1|4|4|cell-lborder|1ln>|<cwith|1|2|15|15|cell-tborder|1ln>|<cwith|1|2|15|15|cell-bborder|1ln>|<cwith|1|2|15|15|cell-lborder|1ln>|<cwith|3|3|15|15|cell-tborder|1ln>|<cwith|1|2|14|14|cell-rborder|1ln>|<cwith|1|2|16|16|cell-tborder|1ln>|<cwith|1|2|16|16|cell-bborder|1ln>|<cwith|1|2|16|16|cell-lborder|1ln>|<cwith|1|2|16|16|cell-rborder|1ln>|<cwith|1|2|15|15|cell-rborder|1ln>|<cwith|4|4|6|7|cell-background|>|<cwith|3|3|6|7|cell-background|green>|<cwith|3|3|7|14|cell-background|green>|<cwith|3|3|7|9|cell-background|>|<cwith|3|4|11|11|cell-background|>|<cwith|3|4|13|13|cell-background|>|<cwith|3|4|6|6|cell-background|green>|<cwith|3|5|10|10|cell-background|green>|<cwith|5|6|12|12|cell-background|green>|<cwith|5|5|12|13|cell-background|>|<cwith|6|6|14|15|cell-background|green>|<cwith|5|6|15|15|cell-background|>|<cwith|3|4|14|14|cell-background|green>|<table|<row|<cell|>|<cell|Posizione
  cifra>|<cell|>|<cell|1>|<cell|2>|<cell|3>|<cell|4>|<cell|5>|<cell|6>|<cell|7>|<cell|8>|<cell|9>|<cell|10>|<cell|11>|<cell|12>|<cell|>>|<row|<cell|>|<cell|Dato
  codificato>|<cell|>|<cell|<math|p<rsub|1>>>|<cell|<math|p<rsub|2>>>|<cell|1>|<cell|<math|p<rsub|4>>>|<cell|0>|<cell|0>|<cell|1>|<cell|<math|p<rsub|8>>>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|>>|<row|<cell|>|<cell|>|<cell|<math|p<rsub|1>>>|<cell|\<checked\>>|<cell|>|<cell|\<checked\>>|<cell|>|<cell|\<checked\>>|<cell|>|<cell|\<checked\>>|<cell|>|<cell|\<checked\>>|<cell|>|<cell|\<checked\>>|<cell|>|<cell|0>>|<row|<cell|>|<cell|Copertura>|<cell|<math|p<rsub|2>>>|<cell|>|<cell|\<checked\>>|<cell|\<checked\>>|<cell|>|<cell|>|<cell|\<checked\>>|<cell|\<checked\>>|<cell|>|<cell|>|<cell|\<checked\>>|<cell|\<checked\>>|<cell|>|<cell|1>>|<row|<cell|>|<cell|bit
  di parità>|<cell|<math|p<rsub|4>>>|<cell|>|<cell|>|<cell|>|<cell|\<checked\>>|<cell|\<checked\>>|<cell|\<checked\>>|<cell|\<checked\>>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|\<checked\>>|<cell|1>>|<row|<cell|>|<cell|>|<cell|<math|p<rsub|8>>>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|\<checked\>>|<cell|\<checked\>>|<cell|\<checked\>>|<cell|\<checked\>>|<cell|\<checked\>>|<cell|0>>>>>|Codifica
  di un messaggio usando il codice di Hamming (parte 7)>

  In conclusione il dato codificato che viene trasmesso è
  <math|<underline|01>1<underline|1>001<underline|0>1010>.

  <subsection|Decodifica con correzione degli errori>

  Se il ricevente riceve il messaggio codificato 011100101110 per accorgersi
  di un eventuale errore di trasmissione deve decodificare il messaggio e
  controllare la <with|font-shape|italic|syndrome> o
  <with|font-shape|italic|codice di controllo>
  <math|N<rsub|c>=<around*|\<langle\>|p<rsub|8>p<rsub|4>p<rsub|2>p<rsub|1>|\<rangle\>>>,
  dove i bit di parità <math|p<rsub|i>> sono relativi alla procedura di
  decodifica e non sono quelli presenti nelle <math|i>-esime posizioni del
  messaggio ricevuto.

  Procediamo dunque con l'algoritmo di decodifica inserendo il messaggio
  codificato ricevuto nella seguente tabella:

  <big-table|<tabular|<tformat|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|1|-1|1|-1|cell-valign|c>|<cwith|6|6|2|2|cell-bborder|1ln>|<cwith|1|2|4|14|cell-tborder|1ln>|<cwith|1|2|4|14|cell-bborder|1ln>|<cwith|1|2|4|14|cell-lborder|1ln>|<cwith|1|2|4|14|cell-rborder|1ln>|<cwith|3|6|3|-1|cell-tborder|1ln>|<cwith|3|6|3|-1|cell-bborder|1ln>|<cwith|3|6|3|-1|cell-lborder|1ln>|<cwith|3|6|3|-1|cell-rborder|1ln>|<cwith|2|2|3|-1|cell-bborder|1ln>|<cwith|3|6|2|2|cell-rborder|1ln>|<cwith|1|-1|1|1|cell-lborder|0ln>|<cwith|1|-1|1|1|cell-rborder|0ln>|<cwith|1|-1|2|2|cell-lborder|0ln>|<cwith|2|2|1|3|cell-bborder|1ln>|<cwith|3|3|1|3|cell-tborder|1ln>|<cwith|1|2|1|1|cell-lborder|1ln>|<cwith|1|2|3|3|cell-rborder|1ln>|<cwith|1|2|4|4|cell-lborder|1ln>|<cwith|6|6|1|1|cell-bborder|1ln>|<cwith|3|6|1|1|cell-lborder|1ln>|<cwith|3|6|1|1|cell-rborder|0ln>|<cwith|3|6|2|2|cell-lborder|0ln>|<cwith|2|2|1|1|cell-bborder|1ln>|<cwith|3|3|1|1|cell-tborder|1ln>|<cwith|2|2|1|1|cell-lborder|1ln>|<cwith|2|2|1|1|cell-rborder|0ln>|<cwith|2|2|2|2|cell-lborder|0ln>|<cwith|1|1|1|3|cell-tborder|1ln>|<cwith|1|1|1|3|cell-bborder|1ln>|<cwith|2|2|1|3|cell-tborder|1ln>|<cwith|1|1|1|1|cell-lborder|1ln>|<cwith|1|1|3|3|cell-rborder|1ln>|<cwith|1|1|4|4|cell-lborder|1ln>|<cwith|1|2|15|15|cell-tborder|1ln>|<cwith|1|2|15|15|cell-bborder|1ln>|<cwith|1|2|15|15|cell-lborder|1ln>|<cwith|3|3|15|15|cell-tborder|1ln>|<cwith|1|2|14|14|cell-rborder|1ln>|<cwith|1|2|16|16|cell-tborder|1ln>|<cwith|1|2|16|16|cell-bborder|1ln>|<cwith|1|2|16|16|cell-lborder|1ln>|<cwith|1|2|16|16|cell-rborder|1ln>|<cwith|3|3|16|16|cell-tborder|1ln>|<cwith|1|2|15|15|cell-rborder|1ln>|<table|<row|<cell|>|<cell|Posizione
  cifra>|<cell|>|<cell|1>|<cell|2>|<cell|3>|<cell|4>|<cell|5>|<cell|6>|<cell|7>|<cell|8>|<cell|9>|<cell|10>|<cell|11>|<cell|12>|<cell|>>|<row|<cell|>|<cell|Dato
  codificato>|<cell|>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|>>|<row|<cell|>|<cell|>|<cell|<math|p<rsub|1>>>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|>|<cell|Copertura>|<cell|<math|p<rsub|2>>>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|>|<cell|bit
  di parità>|<cell|<math|p<rsub|4>>>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|>|<cell|>|<cell|<math|p<rsub|8>>>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>>>>|Decodifica
  di un messaggio usando il codice di Hamming (parte 1)>

  la procedura nel posizionamento dei simboli \P\<checked\>\Q è identica alla
  codifica pertanto otteniamo:

  <big-table|<tabular|<tformat|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|1|-1|1|-1|cell-valign|c>|<cwith|6|6|2|2|cell-bborder|1ln>|<cwith|1|2|4|14|cell-tborder|1ln>|<cwith|1|2|4|14|cell-bborder|1ln>|<cwith|1|2|4|14|cell-lborder|1ln>|<cwith|1|2|4|14|cell-rborder|1ln>|<cwith|3|6|3|-1|cell-tborder|1ln>|<cwith|3|6|3|-1|cell-bborder|1ln>|<cwith|3|6|3|-1|cell-lborder|1ln>|<cwith|3|6|3|-1|cell-rborder|1ln>|<cwith|2|2|3|-1|cell-bborder|1ln>|<cwith|3|6|2|2|cell-rborder|1ln>|<cwith|1|-1|1|1|cell-lborder|0ln>|<cwith|1|-1|1|1|cell-rborder|0ln>|<cwith|1|-1|2|2|cell-lborder|0ln>|<cwith|2|2|1|3|cell-bborder|1ln>|<cwith|3|3|1|3|cell-tborder|1ln>|<cwith|1|2|1|1|cell-lborder|1ln>|<cwith|1|2|3|3|cell-rborder|1ln>|<cwith|1|2|4|4|cell-lborder|1ln>|<cwith|6|6|1|1|cell-bborder|1ln>|<cwith|3|6|1|1|cell-lborder|1ln>|<cwith|3|6|1|1|cell-rborder|0ln>|<cwith|3|6|2|2|cell-lborder|0ln>|<cwith|2|2|1|1|cell-bborder|1ln>|<cwith|3|3|1|1|cell-tborder|1ln>|<cwith|2|2|1|1|cell-lborder|1ln>|<cwith|2|2|1|1|cell-rborder|0ln>|<cwith|2|2|2|2|cell-lborder|0ln>|<cwith|1|1|1|3|cell-tborder|1ln>|<cwith|1|1|1|3|cell-bborder|1ln>|<cwith|2|2|1|3|cell-tborder|1ln>|<cwith|1|1|1|1|cell-lborder|1ln>|<cwith|1|1|3|3|cell-rborder|1ln>|<cwith|1|1|4|4|cell-lborder|1ln>|<cwith|1|2|15|15|cell-tborder|1ln>|<cwith|1|2|15|15|cell-bborder|1ln>|<cwith|1|2|15|15|cell-lborder|1ln>|<cwith|3|3|15|15|cell-tborder|1ln>|<cwith|1|2|14|14|cell-rborder|1ln>|<cwith|1|2|16|16|cell-tborder|1ln>|<cwith|1|2|16|16|cell-bborder|1ln>|<cwith|1|2|16|16|cell-lborder|1ln>|<cwith|1|2|16|16|cell-rborder|1ln>|<cwith|3|3|16|16|cell-tborder|1ln>|<cwith|1|2|15|15|cell-rborder|1ln>|<table|<row|<cell|>|<cell|Posizione
  cifra>|<cell|>|<cell|1>|<cell|2>|<cell|3>|<cell|4>|<cell|5>|<cell|6>|<cell|7>|<cell|8>|<cell|9>|<cell|10>|<cell|11>|<cell|12>|<cell|>>|<row|<cell|>|<cell|Dato
  codificato>|<cell|>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|>>|<row|<cell|>|<cell|>|<cell|<math|p<rsub|1>>>|<cell|\<checked\>>|<cell|>|<cell|\<checked\>>|<cell|>|<cell|\<checked\>>|<cell|>|<cell|\<checked\>>|<cell|>|<cell|\<checked\>>|<cell|>|<cell|\<checked\>>|<cell|>|<cell|>>|<row|<cell|>|<cell|Copertura>|<cell|<math|p<rsub|2>>>|<cell|>|<cell|\<checked\>>|<cell|\<checked\>>|<cell|>|<cell|>|<cell|\<checked\>>|<cell|\<checked\>>|<cell|>|<cell|>|<cell|\<checked\>>|<cell|\<checked\>>|<cell|>|<cell|>>|<row|<cell|>|<cell|bit
  di parità>|<cell|<math|p<rsub|4>>>|<cell|>|<cell|>|<cell|>|<cell|\<checked\>>|<cell|\<checked\>>|<cell|\<checked\>>|<cell|\<checked\>>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|\<checked\>>|<cell|>>|<row|<cell|>|<cell|>|<cell|<math|p<rsub|8>>>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|\<checked\>>|<cell|\<checked\>>|<cell|\<checked\>>|<cell|\<checked\>>|<cell|\<checked\>>|<cell|>>>>>|Decodifica
  di un messaggio usando il codice di Hamming (parte 2)>

  così come è identica la colorazione dei simboli \P\<checked\>\Q in base
  alle posizioni e agli <math|1> e di conseguenza è identico anche il calcolo
  dei bit di parità:

  <big-table|<tabular|<tformat|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|1|-1|1|-1|cell-valign|c>|<cwith|6|6|2|2|cell-bborder|1ln>|<cwith|1|2|4|14|cell-tborder|1ln>|<cwith|1|2|4|14|cell-bborder|1ln>|<cwith|1|2|4|14|cell-lborder|1ln>|<cwith|1|2|4|14|cell-rborder|1ln>|<cwith|3|6|3|-1|cell-tborder|1ln>|<cwith|3|6|3|-1|cell-bborder|1ln>|<cwith|3|6|3|-1|cell-lborder|1ln>|<cwith|3|6|3|-1|cell-rborder|1ln>|<cwith|2|2|3|-1|cell-bborder|1ln>|<cwith|3|6|2|2|cell-rborder|1ln>|<cwith|1|-1|1|1|cell-lborder|0ln>|<cwith|1|-1|1|1|cell-rborder|0ln>|<cwith|1|-1|2|2|cell-lborder|0ln>|<cwith|2|2|1|3|cell-bborder|1ln>|<cwith|3|3|1|3|cell-tborder|1ln>|<cwith|1|2|1|1|cell-lborder|1ln>|<cwith|1|2|3|3|cell-rborder|1ln>|<cwith|1|2|4|4|cell-lborder|1ln>|<cwith|6|6|1|1|cell-bborder|1ln>|<cwith|3|6|1|1|cell-lborder|1ln>|<cwith|3|6|1|1|cell-rborder|0ln>|<cwith|3|6|2|2|cell-lborder|0ln>|<cwith|2|2|1|1|cell-bborder|1ln>|<cwith|3|3|1|1|cell-tborder|1ln>|<cwith|2|2|1|1|cell-lborder|1ln>|<cwith|2|2|1|1|cell-rborder|0ln>|<cwith|2|2|2|2|cell-lborder|0ln>|<cwith|1|1|1|3|cell-tborder|1ln>|<cwith|1|1|1|3|cell-bborder|1ln>|<cwith|2|2|1|3|cell-tborder|1ln>|<cwith|1|1|1|1|cell-lborder|1ln>|<cwith|1|1|3|3|cell-rborder|1ln>|<cwith|1|1|4|4|cell-lborder|1ln>|<cwith|1|2|15|15|cell-tborder|1ln>|<cwith|1|2|15|15|cell-bborder|1ln>|<cwith|1|2|15|15|cell-lborder|1ln>|<cwith|3|3|15|15|cell-tborder|1ln>|<cwith|1|2|14|14|cell-rborder|1ln>|<cwith|1|2|16|16|cell-tborder|1ln>|<cwith|1|2|16|16|cell-bborder|1ln>|<cwith|1|2|16|16|cell-lborder|1ln>|<cwith|1|2|16|16|cell-rborder|1ln>|<cwith|3|3|16|16|cell-tborder|1ln>|<cwith|1|2|15|15|cell-rborder|1ln>|<cwith|3|4|6|6|cell-background|green>|<cwith|5|6|7|7|cell-background|green>|<cwith|6|6|7|8|cell-background|>|<cwith|3|5|10|10|cell-background|green>|<cwith|3|3|12|13|cell-background|green>|<cwith|6|6|12|13|cell-background|green>|<cwith|3|4|13|13|cell-background|green>|<cwith|3|3|13|15|cell-background|>|<cwith|3|4|14|14|cell-background|green>|<cwith|6|6|13|14|cell-background|green>|<cwith|4|4|5|6|cell-background|green>|<table|<row|<cell|>|<cell|Posizione
  cifra>|<cell|>|<cell|1>|<cell|2>|<cell|3>|<cell|4>|<cell|5>|<cell|6>|<cell|7>|<cell|8>|<cell|9>|<cell|10>|<cell|11>|<cell|12>|<cell|>>|<row|<cell|>|<cell|Dato
  codificato>|<cell|>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|>>|<row|<cell|>|<cell|>|<cell|<math|p<rsub|1>>>|<cell|\<checked\>>|<cell|>|<cell|\<checked\>>|<cell|>|<cell|\<checked\>>|<cell|>|<cell|\<checked\>>|<cell|>|<cell|\<checked\>>|<cell|>|<cell|\<checked\>>|<cell|>|<cell|0>>|<row|<cell|>|<cell|Copertura>|<cell|<math|p<rsub|2>>>|<cell|>|<cell|\<checked\>>|<cell|\<checked\>>|<cell|>|<cell|>|<cell|\<checked\>>|<cell|\<checked\>>|<cell|>|<cell|>|<cell|\<checked\>>|<cell|\<checked\>>|<cell|>|<cell|1>>|<row|<cell|>|<cell|bit
  di parità>|<cell|<math|p<rsub|4>>>|<cell|>|<cell|>|<cell|>|<cell|\<checked\>>|<cell|\<checked\>>|<cell|\<checked\>>|<cell|\<checked\>>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|\<checked\>>|<cell|0>>|<row|<cell|>|<cell|>|<cell|<math|p<rsub|8>>>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|\<checked\>>|<cell|\<checked\>>|<cell|\<checked\>>|<cell|\<checked\>>|<cell|\<checked\>>|<cell|1>>>>>|Decodifica
  di un messaggio usando il codice di Hamming (parte 3)>

  quindi come si intuisce la <with|font-shape|italic|syndrone>
  <math|N<rsub|c>=<around*|\<langle\>|p<rsub|8>p<rsub|4>p<rsub|2>p<rsub|1>|\<rangle\>>=<around*|(|1010|)><rsub|2>=<around*|(|10|)><rsub|10>>
  quindi c'è stato un errore di trasmissione ed in particolare sapendo a
  priori che era stato modificato solo un bit, tra il trasmittente e il
  ricevente, possiamo dire con certezza che il bit in posizione <math|10>
  deve essere invertito da <math|1> a <math|0>, infatti se così fosse
  otterremmo una <with|font-shape|italic|syndrome> <math|N<rsub|c>=0> e
  quindi nessun errore di trasmissione.

  <subsection|Circuito finale>

  Il circuito finale è il seguente:

  <big-figure|<image|imgs/hamming.png|0.8par|||>|Circuito finale>

  consultabile dal file <shell|circuit.dig> tramite il simulatore Digital.

  <subsubsection|Codifica>

  I bit di parità <math|p<rsub|1>,p<rsub|2>,p<rsub|4>,p<rsub|8>> sono
  determinati in modo che ogni gruppo di bit controllato abbia una parità
  pari. Ogni bit di parità è calcolato come segue:

  <\eqnarray>
    <tformat|<table|<row|<cell|p<rsub|1>>|<cell|=>|<cell|d<rsub|1>\<oplus\>d<rsub|2>\<oplus\>d<rsub|4>\<oplus\>d<rsub|5>\<oplus\>d<rsub|7>>>|<row|<cell|p<rsub|2>>|<cell|=>|<cell|d<rsub|1>\<oplus\>d<rsub|3>\<oplus\>d<rsub|4>\<oplus\>d<rsub|6>\<oplus\>d<rsub|7>>>|<row|<cell|p<rsub|4>>|<cell|=>|<cell|d<rsub|2>\<oplus\>d<rsub|3>\<oplus\>d<rsub|4>\<oplus\>d<rsub|8>>>|<row|<cell|p<rsub|8>>|<cell|=>|<cell|d<rsub|5>\<oplus\>d<rsub|6>\<oplus\>d<rsub|7>\<oplus\>d<rsub|8>>>>>
  </eqnarray>

  dove <math|\<oplus\>> rappresenta l'operazione XOR.

  <subsubsection|Decodifica>

  Durante la decodifica, il ricevitore controlla la validità del messaggio
  verificando i bit di parità, generando un valore di
  <with|font-shape|italic|syndrome> per identificare eventuali errori.

  La sindrome è un numero binario a 4 bit, calcolato come segue:

  <\eqnarray>
    <tformat|<table|<row|<cell|s<rsub|1>>|<cell|=>|<cell|p<rsub|1>\<oplus\>d<rsub|1>\<oplus\>d<rsub|2>\<oplus\>d<rsub|4>\<oplus\>d<rsub|5>\<oplus\>d<rsub|7>>>|<row|<cell|s<rsub|2>>|<cell|=>|<cell|p<rsub|2>\<oplus\>d<rsub|1>\<oplus\>d<rsub|3>\<oplus\>d<rsub|4>\<oplus\>d<rsub|6>\<oplus\>d<rsub|7>>>|<row|<cell|s<rsub|4>>|<cell|=>|<cell|p<rsub|4>\<oplus\>d<rsub|2>\<oplus\>d<rsub|3>\<oplus\>d<rsub|4>\<oplus\>d<rsub|8>>>|<row|<cell|s<rsub|8>>|<cell|=>|<cell|p<rsub|8>\<oplus\>d<rsub|5>\<oplus\>d<rsub|6>\<oplus\>d<rsub|7>\<oplus\>d<rsub|8>>>>>
  </eqnarray>

  Il risultato della <with|font-shape|italic|syndrome>
  <math|N<rsub|c>=<around*|\<langle\>|s<rsub|8>s<rsub|4>s<rsub|2>s<rsub|1>|\<rangle\>>>
  identifica la posizione del bit errato (da 1 a 12). Ad esempio:

  <\itemize>
    <item>Se <math|N<rsub|c>=0>, il messaggio è corretto.

    <item>Se il valore è diverso da 0, esso indica la posizione del bit
    errato.
  </itemize>

  <subsubsection|Correzione degli errori>

  Un decoder riceve il valore della sindrome e identifica la posizione del
  bit errato. Le porte XOR sono utilizzate per correggere il bit: se un bit è
  errato, viene invertito (da 0 a 1 o da 1 a 0).

  <subsubsection|Diversificazione tra codifica e decodifica>

  Il multiplexer differenzia tra le operazioni di codifica e decodifica:

  <\itemize>
    <item>Codifica (<math|d=0>): Il circuito calcola i bit di parità e li
    aggiunge ai dati originali.

    <item>Decodifica (<math|d=1>): Il circuito rileva gli errori, calcola la
    sindrome e corregge il bit errato, se necessario.
  </itemize>

  <subsection|Conclusioni>

  Questo circuito fornisce una soluzione completa per la codifica, il
  rilevamento e la correzione degli errori di un singolo bit utilizzando il
  codice di Hamming. È particolarmente utile in sistemi di trasmissione dati,
  dove la correzione di errori è fondamentale per garantire l'affidabilità
  delle comunicazioni.
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-10|<tuple|3|3|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-11|<tuple|4|3|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-12|<tuple|5|3|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-13|<tuple|6|3|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-14|<tuple|7|4|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-15|<tuple|8|4|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-16|<tuple|9|4|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-17|<tuple|2.3|4|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-18|<tuple|10|5|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-19|<tuple|11|5|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-2|<tuple|1.1|1|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-20|<tuple|12|5|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-21|<tuple|2.4|5|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-22|<tuple|1|5|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-23|<tuple|2.4.1|6|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-24|<tuple|2.4.2|6|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-25|<tuple|2.4.3|6|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-26|<tuple|2.4.4|6|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-27|<tuple|2.5|6|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-3|<tuple|1|1|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-4|<tuple|1.2|2|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-5|<tuple|2|2|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-6|<tuple|1.3|2|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-7|<tuple|2|2|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-8|<tuple|2.1|2|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-9|<tuple|2.2|2|../../../.TeXmacs/texts/scratch/no_name_1.tm>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|figure>
      <tuple|normal|<surround|<hidden-binding|<tuple>|1>||Circuito
      finale>|<pageref|auto-22>>
    </associate>
    <\associate|table>
      <tuple|normal|<surround|<hidden-binding|<tuple>|1>||Tabella dei valori
      per la codifica>|<pageref|auto-3>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|2>||Tabella dei valori
      per la decodifica>|<pageref|auto-5>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|3>||Codifica di un
      messaggio usando il codice di Hamming (parte 1)>|<pageref|auto-10>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|4>||Codifica di un
      messaggio usando il codice di Hamming (parte 2)>|<pageref|auto-11>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|5>||Codifica di un
      messaggio usando il codice di Hamming (parte 3)>|<pageref|auto-12>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|6>||Codifica di un
      messaggio usando il codice di Hamming (parte 4)>|<pageref|auto-13>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|7>||Codifica di un
      messaggio usando il codice di Hamming (parte 5)>|<pageref|auto-14>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|8>||Codifica di un
      messaggio usando il codice di Hamming (parte 6)>|<pageref|auto-15>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|9>||Codifica di un
      messaggio usando il codice di Hamming (parte 7)>|<pageref|auto-16>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|10>||Decodifica di un
      messaggio usando il codice di Hamming (parte 1)>|<pageref|auto-18>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|11>||Decodifica di un
      messaggio usando il codice di Hamming (parte 2)>|<pageref|auto-19>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|12>||Decodifica di un
      messaggio usando il codice di Hamming (parte 3)>|<pageref|auto-20>>
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Homework>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <with|par-left|<quote|1tab>|1.1<space|2spc>Modalità di codifica
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|1tab>|1.2<space|2spc>Modalità di decodifica
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|1tab>|1.3<space|2spc>Vincoli
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Soluzione>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7><vspace|0.5fn>

      <with|par-left|<quote|1tab>|2.1<space|2spc>Introduzione
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|1tab>|2.2<space|2spc>Codifica
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <with|par-left|<quote|1tab>|2.3<space|2spc>Decodifica con correzione
      degli errori <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-17>>

      <with|par-left|<quote|1tab>|2.4<space|2spc>Circuito finale
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-21>>

      <with|par-left|<quote|2tab>|2.4.1<space|2spc>Codifica
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-23>>

      <with|par-left|<quote|2tab>|2.4.2<space|2spc>Decodifica
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-24>>

      <with|par-left|<quote|2tab>|2.4.3<space|2spc>Correzione degli errori
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-25>>

      <with|par-left|<quote|2tab>|2.4.4<space|2spc>Diversificazione tra
      codifica e decodifica <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-26>>

      <with|par-left|<quote|1tab>|2.5<space|2spc>Conclusioni
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-27>>
    </associate>
  </collection>
</auxiliary>