<TeXmacs|2.1.4>

<style|generic>

<\body>
  <doc-data|<doc-title|Sistema di controllo di un
  ascensore>|<doc-author|<author-data|<author-name|Antonio Bernardini>>>>

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|1<space|2spc>Homework>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <with|par-left|1tab|1.1<space|2spc>Introduzione
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2>>

    <with|par-left|1tab|1.2<space|2spc>Gestione delle chiamate ai piani e
    movimento <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3>>

    <with|par-left|1tab|1.3<space|2spc>Codifiche
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4>>

    <with|par-left|1tab|1.4<space|2spc>Ingressi
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7>>

    <with|par-left|1tab|1.5<space|2spc>Come realizzare il circuito
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-8>>

    <with|par-left|1tab|1.6<space|2spc>Suggerimenti
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-9>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|2<space|2spc>Soluzione>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-10><vspace|0.5fn>

    <with|par-left|1tab|2.1<space|2spc>Introduzione
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-11>>

    <with|par-left|1tab|2.2<space|2spc>Scelte progettuali
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-12>>

    <with|par-left|1tab|2.3<space|2spc>Display a 7 segmenti per i piani
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-13>>

    <with|par-left|1tab|2.4<space|2spc>Display a 16 segmenti per gli stati
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-19>>

    <with|par-left|1tab|2.5<space|2spc>Bufferizzazione delle richieste in
    attesa <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-28>>

    <with|par-left|1tab|2.6<space|2spc>Gestione dei reset
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-30>>

    <with|par-left|1tab|2.7<space|2spc>Rilevatore per un generico piano
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-32>>

    <with|par-left|1tab|2.8<space|2spc>Segnale per l'arrivo a destinazione
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-34>>

    <with|par-left|1tab|2.9<space|2spc>Gestione delle richieste
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-36>>

    <with|par-left|1tab|2.10<space|2spc>Bufferizzazione della direzione
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-48>>

    <with|par-left|1tab|2.11<space|2spc>Automa a stati finiti per la gestione
    degli stati <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-50>>

    <with|par-left|2tab|2.11.1<space|2spc>Display a 7 segmenti per il timer
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-53>>

    <with|par-left|2tab|2.11.2<space|2spc>Gestione del timer
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-57>>

    <with|par-left|1tab|2.12<space|2spc>Automa a stati finiti per la gestione
    dei piani <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-60>>

    <with|par-left|1tab|2.13<space|2spc>Conclusione
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-63>>
  </table-of-contents>

  <section|Homework>

  <subsection|Introduzione>

  Per questo homework è stato richiesto di progettare e realizzare il sistema
  di controllo di un ascensore in un palazzo di 3 piani, cui si aggiunge il
  piano terra ed un ultimo <with|font-shape|italic|piano VIP>, descritto più
  in basso. L'ascensore può essere nei seguenti stati:

  <\itemize>
    <item><with|font-shape|italic|Attesa>: l'ascensore aspetta che venga
    chiamato a un piano.

    <item><with|font-shape|italic|Movimento verso l'alto o il basso>:
    l'ascensore è in movimento in una direzione specifica.

    <item><with|font-shape|italic|Arresto>: l'ascensore si ferma all'arrivo
    ad un piano in cui è stata effettuata una prenotazione.

    <item><with|font-shape|italic|Apertura delle porte>: le porte si aprono e
    restano aperte per <math|9> secondi.
  </itemize>

  Ad ogni piano è installato un sensore di arrivo che, quando rileva la
  presenza dell'ascensore, solleva un segnale <math|A<rsub|x>> per indicare
  che esso è arrivato al piano <math|x>.

  <subsection|Gestione delle chiamate ai piani e movimento>

  Il passaggio ad un piano può essere prenotato sia dal piano stesso, sia
  dall'interno dell'ascensore, con l'apposita pulsantiera. È possibile
  prenotare il passaggio a qualsiasi piano in qualsiasi stato, anche mentre
  l'ascensore è in movimento. La chiamata ad un determinato piano viene
  bufferizzata in un elemento di memoria appositamente dedicato e permane
  nello stato di ``richiesta effettuata'' fino al momento in cui il
  l'ascensore arriva al piano coinvolto dalla richiesta.

  Se già in movimento, l'ascensore procede nel suo senso di marcia fino a
  quando non ha raggiunto l'ultimo piano per cui è presente una chiamata, in
  quella direzione. Ad esempio, se l'ascensore ha raggiunto il secondo piano
  in salita e sono presenti due chiamate, una al terzo ed una al primo,
  l'ascensore darà priorità al terzo piano poiché raggiungibile nello stesso
  senso di marcia.

  Viceversa, quando l'ascensore raggiunge un piano e sono unicamente presenti
  chiamate da piani raggiungibili nel senso di marcia opposto, esso invertirà
  il senso di marcia.

  Se, al momento della chiusura delle porte, non è presente alcuna chiamata,
  l'ascensore rimarrà (a porte chiuse) nello stato di attesa. Se in tale
  stato l'ascensore riceve una chiamata dal piano in cui è presente, si
  limiterà ad aprire le porte.

  Questo funzionamento di base è modificato dall'ultimo (quarto) piano: il
  <with|font-shape|italic|piano VIP>. Se è stata ricevuta una richiesta di
  passaggio al <with|font-shape|italic|piano VIP>, se l'ascensore sta
  procedendo in quella direzione (quindi verso l'alto),
  <with|font-shape|italic|salterà tutte le altre fermate> fino al
  raggiungimento del <with|font-shape|italic|piano VIP>. Viceversa, se si sta
  muovendo in direzione opposta (quindi verso il basso), raggiungerà soltanto
  il prossimo piano per cui è stata ricevuta una richiesta di passaggio e poi
  invertirà il senso di marcia.

  <subsection|Codifiche>

  L'ascensore deve tenere traccia dei seguenti stati, utilizzando le seguenti
  codifiche:

  <big-table|<math|<tabular|<tformat|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|1|-1|1|-1|cell-valign|c>|<cwith|6|6|1|-1|cell-bborder|1ln>|<cwith|1|-1|1|1|cell-lborder|1ln>|<cwith|1|-1|4|4|cell-rborder|1ln>|<cwith|1|1|1|-1|cell-tborder|1ln>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|2|2|1|-1|cell-tborder|1ln>|<cwith|1|1|1|1|cell-lborder|1ln>|<cwith|1|1|4|4|cell-rborder|1ln>|<cwith|1|-1|1|3|cell-background|pastel
  blue>|<cwith|1|-1|4|4|cell-background|pastel
  green>|<table|<row|<cell|z<rsub|2>>|<cell|z<rsub|1>>|<cell|z<rsub|0>>|<cell|Stato>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|Attesa>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|Movimento
  verso l<rprime|'>alto>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|Movimento
  verso il basso>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|Porte
  aperte>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|Arresto>>>>>>|Codifica degli
  stati dell'ascensore<label|elevator-states>>

  Lo stato di arresto corrisponde al momento in cui l'ascensore arriva ad un
  piano per cui è stata richiesta la fermata, segnalato dal segnale
  <math|A<rsub|x>>. Dopo essersi arrestato, l'ascensore dovrà aprire le porte
  e mantenerle aperte per <math|9> secondi.

  L'ascensore deve anche tenere traccia del piano in cui si trova in un
  determinato istante temporale. Per questo motivo, vengono utilizzate le
  seguenti variabili:

  <big-table|<math|<tabular|<tformat|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|1|-1|1|-1|cell-valign|c>|<cwith|6|6|1|-1|cell-bborder|1ln>|<cwith|1|-1|1|1|cell-lborder|1ln>|<cwith|1|-1|4|4|cell-rborder|1ln>|<cwith|1|1|1|-1|cell-tborder|1ln>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|2|2|1|-1|cell-tborder|1ln>|<cwith|1|1|1|1|cell-lborder|1ln>|<cwith|1|1|4|4|cell-rborder|1ln>|<cwith|1|-1|1|3|cell-background|pastel
  blue>|<cwith|1|-1|4|4|cell-background|pastel
  green>|<table|<row|<cell|y<rsub|2>>|<cell|y<rsub|1>>|<cell|y<rsub|0>>|<cell|Piano>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|Terra>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|1>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|2>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|3>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|VIP>>>>>>|Codifica
  dei piani dell'ascensore<label|elevator-floor>>

  All'avvio del sistema si può assumere che l'ascensore si trovi al piano T
  nello stato di attesa.

  <subsection|Ingressi>

  Gli ingressi al sistema di controllo dell'ascensore sono di due famiglie:
  la prima famiglia è costituita dai segnali <math|A<rsub|x>> precedentemente
  citati che vengono sollevati quando un ascensore raggiunge un piano. Tali
  segnali valgono <math|1> solo nel momento in cui l'ascensore è rilevato,
  per poi tornare a zero.

  La seconda famiglia è costituita dai segnali <math|P<rsub|x>> che indicano
  la chiamata al piano <math|x>. Tali segnali valgono <math|1> soltanto
  quando il tasto di chiamata viene premuto, per poi tornare a zero. È quindi
  necessario bufferizzare tali segnali in opportuni modi.

  <subsection|Come realizzare il circuito>

  La soluzione circuitale deve essere inserita all'interno del file
  <shell|circuit.dig>, che può essere modificato utilizzando l'editor e
  simulatore di circuiti <hlink|Digital|https://github.com/hneemann/Digital>.
  Nel file <shell|circuit.dig> sono già specificati gli ingressi e le uscite
  del circuito.

  <subsection|Suggerimenti>

  <\enumerate>
    <item>Per misurare il tempo, si può utilizzare un
    <with|font-shape|italic|clock> impostato ad una frequenza opportuna e
    ``contare'' il passaggio del tempo con un numero opportuno di stati. Ad
    esempio, per contare <math|5> secondi, si può utilizzare un clock
    impostato a <math|1 Hz> e utilizzare <math|5> stati. Il clock in
    <shell|circuit.dig> è già impostato a <math|1 Hz>.

    <item>È possibile <with|font-shape|italic|decomporre> una singola
    macchina a stati in più macchine a stati che controllino il funzionamento
    di parti differenti del sistema in maniera coordinata. Lo stato di una
    macchina a stati può essere utilizzata come input di un'altra. Allo
    stesso modo, l'output di una macchina a stati può diventare l'input di
    un'altra. In questo modo, è possibile studiare separatamente i problemi e
    comporre una soluzione finale.

    <item>Le transizioni di stato non sono necessariamente dovute al
    cambiamento di una sola variabile in ingresso. I ``caratteri in input''
    in questo caso possono corrispondere ad un valore booleano calcolato da
    una funzione booleana arbitraria, che processa segnali in input al
    sistema e variabili memorizzate in opportuni elementi di memoria in
    maniera consona. Alcune transizioni possono essere ``automatiche\Q,
    semplicemente legate alla ricezione di un certo numero di colpi di clock.
  </enumerate>

  <section|Soluzione>

  <subsection|Introduzione>

  Analizzando il file <shell|circuit.dig> per la prima volta notiamo la
  presenza di <math|10> input, rispettivamente
  <math|P<rsub|0>,\<ldots\>,P<rsub|3>,P<rsub|VIP>> per le chiamate e
  <math|A<rsub|0>,\<ldots\>,A<rsub|3>,A<rsub|VIP>> per gli arrivi, di
  <math|6> transizioni, rispettivamente <math|y<rsub|2>,y<rsub|1>,y<rsub|0>>
  per i piani e <math|z<rsub|2>,z<rsub|1>,z<rsub|0>> per gli stati, e infine
  del <with|font-shape|italic|clock> impostato ad <math|1 Hz>. Inoltre non è
  presente un output esplicito, infatti le transizioni, prima di diventare
  tali, \Ppassano\Q attraverso dei flip-flop D per definizione di automa a
  stati finiti e, nel caso dell'ascensore, essa non ha un vero e proprio
  output, ma occorrerà che mostri sia il piano che lo stato in un determinato
  istante temporale, pertanto tali transizioni fungono anche da output. Ci
  troviamo davanti ad un problema che può essere certamente modellato con le
  macchine di Mealy e/o Moore, ma non direttamente. Infatti occorre
  semplificare il problema utilizzando la famosa tecnica del
  <with|font-shape|italic|divide et impera> e vedremo in questo documento
  come fare. Buona lettura.

  <subsection|Scelte progettuali>

  Per quanto riguarda le scelte progettuali, vorrei partire dalla fine. In
  particolare implementeremo un sistema di visualizzazione dei piani e degli
  stati dell'ascensore utilizzando un display a <math|7> segmenti per i piani
  e <math|4> display a <math|16> segmenti per gli stati. Infatti mantenendo
  gli output del file <shell|circuit.dig> avremmo una codifica binaria dei
  piani e degli stati e questo comporterebbe una più difficile lettura da
  parte di un utilizzatore medio che si presume non sia un ingegnere.
  Successivamente, come richiesto dalle specifiche, dovremmo bufferizzare le
  chiamate <math|P<rsub|x>> in degli appositi elementi di memoria. Per
  esempio, dei flip-flop SR sono più che sufficienti per fare ciò. Capiremo
  come gestire i segnali di <math|RESET> dei flip-flop SR e andremo a
  generare diversi segnali \Ppersonalizzati\Q, come <math|DESTINATION> e
  <math|CK<rsub|2>>, utili per risolvere piccoli problemi. Successivamente
  cercheremo di analizzare il problema della gestione delle richieste
  utilizzando appositi segnali <math|UP,STOP,DOWN> per gestire le priorità
  attraverso un circuito dedicato, e allo stesso tempo andremo a bufferizzare
  la direzione precedente dell'ascensore, sempre in appositi elementi di
  memoria. Infine ci occuperemo della realizzazione degli automi a stati
  finiti, sia per gli stati che per i piani, con annesso il circuito dedicato
  per la gestione del Timer. Iniziamo!

  <subsection|Display a 7 segmenti per i piani>

  Sembra assurdo iniziare la progettazione partendo dalla fine, ma non è
  così. Infatti, come citato precedentemente, non è un scelta causale perchè
  nello stesso modo un cui un utilizzatore medio avrà una lettura
  semplificata dei piani e dello stato dell'ascensore, anche un ingegnere in
  fase di debugging può trarne beneficio. Infatti è semplicissimo sbagliare
  la posizione di <math|1> bit e leggere, ad esempio, il piano
  <math|y<rsub|2>=0,y<rsub|1>=1,y<rsub|0>=0> (piano <math|2>) al posto del
  piano <math|y<rsub|2>=1,y<rsub|1>=0,y<rsub|0>=0>
  (<with|font-shape|italic|piano VIP>). Questo discorso vale anche per gli
  stati naturalmente.

  Pertanto iniziamo la nostra progettazione implementando un display a 7
  segmenti per la visualizzazione dei piani. Per fare ciò è chiaro che
  occorre convertire un input binario (cioè
  <math|y<rsub|2>,y<rsub|1>,y<rsub|0>>) in un numero decimale corrispondente.
  Pertanto possiamo implementare un semplice decodificatore che per
  definizione fa proprio questo. Naturalmente ci conviene implementare il
  circuito combinatorio utilizzando una ROM (Read Only Memory) per rendere la
  progettazione più pulita possibile. Capito questo, è necessario sapere che
  un display a <math|7> segmenti non è altro che un insieme di diodi led
  connessi che vengono accesi in base al valore decodificato di input. In
  generale un display a <math|7> segmenti si presenta come segue:

  <big-figure|<tabular|<tformat|<cwith|1|1|1|-1|cell-halign|c>|<cwith|1|1|1|-1|cell-valign|c>|<table|<row|<cell|<image|imgs/7-segmenti.png|0.3par|||>>|<cell|>|<cell|<image|imgs/led.png|0.07par|||>>>>>>|Display
  a <math|7> segmenti<label|7-seg>>

  In particolare utilizzeremo la configurazione a catodo comune che, come si
  intuisce dal nome, presenta del diodi led che condividono tutti lo stesso
  catodo connesso a GND. Come mostrato in Fig. <reference|7-seg> ogni input
  del display a <math|7> segmenti accenderà uno o più diodi led illuminando
  di conseguenza una o più linee. Pertanto, per rappresentare correttamente
  ogni numero, possiamo fare riferimento alla seguente immagine:

  <big-figure|<image|imgs/7-seg-num.png|0.4par|||>|Codifiche dei numeri per
  un display a 7 segmenti>

  Per esempio per scrivere il numero <math|1> dovremmo settare <math|b=1> e
  <math|c=1>. Quindi, come dicevo precedentemente, dovremmo implementare un
  decodificatore per fare in modo di attivare <math|b,c> o qualsiasi altro
  input utilizzando l'input binario <math|y<rsub|2>,y<rsub|1>,y<rsub|0>>.
  Pertanto possiamo costruire la seguente tabella di verità:

  <big-table|<tabular|<tformat|<table|<row|<cell|<math|<tformat|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|1|-1|1|-1|cell-valign|c>|<cwith|1|4|1|1|cell-halign|c>|<cwith|1|4|1|1|cell-valign|c>|<cwith|1|-1|1|4|cell-background|pastel
  blue>|<cwith|1|-1|5|12|cell-background|pastel
  green>|<cwith|6|6|1|-1|cell-bborder|1ln>|<cwith|1|-1|1|1|cell-lborder|1ln>|<cwith|1|-1|12|12|cell-rborder|1ln>|<cwith|1|1|1|-1|cell-tborder|1ln>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|2|2|1|-1|cell-tborder|1ln>|<cwith|1|1|1|1|cell-lborder|1ln>|<cwith|1|1|12|12|cell-rborder|1ln>|<table|<row|<cell|Piano>|<cell|y<rsub|2>>|<cell|y<rsub|1>>|<cell|y<rsub|0>>|<cell|a>|<cell|b>|<cell|c>|<cell|d>|<cell|e>|<cell|f>|<cell|g>|<cell|HEX>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|<shell|0x7E>>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|<shell|0x30>>>|<row|<cell|2>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|<shell|0x6D>>>|<row|<cell|3>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|<shell|0x79>>>|<row|<cell|PIV>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|<shell|0x33>>>>>>>>>>>|Tabella
  di verità del decodificatore per il display a 7
  segmenti<label|truth-table-7-seg>>

  A questo punto abbiamo tutto il necessario per la realizzazione del
  decodificatore, quindi poichè avremmo <math|3> bit di input e <math|7> bit
  di output dovremmo settare la ROM con le seguenti impostazioni:

  <\big-figure|<image|imgs/settings-rom-7-seg.png|0.3par|||>>
    Impostazioni ROM per il display a 7 segmenti
  </big-figure>

  inserendo nel campo <shell|Data> la colonna HEX presente in Tabella
  <reference|truth-table-7-seg>. Pertanto il circuito finale è il seguente:

  <big-figure|<image|imgs/dec-7-seg.png|0.5par|||>|Decodificatore per il
  display a 7 segmenti>

  Infine l'input \P<math|dp>\Q del display a 7 segmenti gestisce il punto, ma
  dato che non ci serve è stato collegato direttamente a GND.

  <subsection|Display a 16 segmenti per gli stati>

  Questa progettazione è simile alla precedente anche se c'è un fattore
  importante da tenere in considerazione: il numero di bit! Infatti poichè
  dobbiamo implementare <math|4> display a <math|16> segmenti avremmo bisogno
  di <math|16\<cdot\> 4=64> bit. Tuttavia il simulatore Digital riesce a
  realizzare ROM per un massimo di <math|32> bit ciascuna. Pertanto andremo
  ad implementare due <math|ROM>. La prima per la gestione dei primi
  <math|32> bit \Pmeno significativi\Q e la seconda per la gestione degli
  ultimi <math|32> bit \Ppiù significativi\Q. Ma perchè occorre usare
  <math|4> display a <math|16> segmenti? Non basterebbe usare di nuovo un
  display a 7 segmenti? Beh, con un display a <math|7> segmenti
  visualizzeremmo solo i numeri da <math|0> a <math|4> proprio come i piani.
  Ma nel caso degli stati dobbiamo dare qualche informazione in più. Infatti
  possiamo fare la seguente associazione:

  <big-table|<tabular|<tformat|<cwith|1|1|1|1|cell-bborder|0ln>|<cwith|1|1|1|1|cell-lborder|0ln>|<cwith|1|1|1|1|cell-rborder|0ln>|<table|<row|<cell|<math|<tformat|<cwith|1|2|1|2|cell-halign|c>|<cwith|1|2|1|2|cell-valign|c>|<cwith|2|-1|1|-1|cell-halign|c>|<cwith|2|-1|1|-1|cell-valign|c>|<cwith|1|-1|1|1|cell-background|pastel
  blue>|<cwith|1|-1|1|-1|cell-tborder|0ln>|<cwith|1|-1|1|-1|cell-bborder|0ln>|<cwith|1|-1|1|-1|cell-lborder|0ln>|<cwith|1|-1|1|-1|cell-rborder|0ln>|<cwith|6|6|1|-1|cell-bborder|1ln>|<cwith|1|-1|1|1|cell-lborder|1ln>|<cwith|1|-1|5|5|cell-rborder|1ln>|<cwith|1|1|1|-1|cell-halign|c>|<cwith|1|1|1|-1|cell-tborder|1ln>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|2|2|1|-1|cell-tborder|1ln>|<cwith|1|1|1|1|cell-lborder|1ln>|<cwith|1|1|5|5|cell-rborder|1ln>|<cwith|1|-1|2|-1|cell-background|pastel
  green>|<table|<row|<cell|Stato>|<cell|D<rsub|1>>|<cell|D<rsub|2>>|<cell|D<rsub|3>>|<cell|D<rsub|4>>>|<row|<cell|Attesa>|<cell|W>|<cell|A>|<cell|I>|<cell|T>>|<row|<cell|Movimento
  verso l<rprime|'>alto>|<cell|U>|<cell|P>|<cell|>|<cell|>>|<row|<cell|Movimento
  verso il basso>|<cell|D>|<cell|O>|<cell|W>|<cell|N>>|<row|<cell|Porte
  aperte>|<cell|O>|<cell|P>|<cell|E>|<cell|N>>|<row|<cell|Arresto>|<cell|S>|<cell|T>|<cell|O>|<cell|P>>>>>>>>>>|Conversione
  degli stati dell'ascensore nei caratteri rappresentabili nei <math|4>
  display a 16 segmenti>

  Per fortuna <math|<frac|3|4>> degli stati utilizzeranno esattamente tutti e
  4 i display e solo nel caso dello stato <math|UP> si utilizzeranno 2
  display per la rappresentazione dei singoli caratteri. Continuiamo la
  nostra disquisizione tenendo presente che in generale un display a
  <math|16> segmenti si presenta come segue:

  <big-figure|<image|imgs/16-segmenti.png|0.12par|||>|Display a <math|16>
  segmenti>

  quindi per le rappresentazioni corrette dei caratteri possiamo fare
  riferimento alla seguente immagine:

  <big-figure|<image|imgs/numbers.png|0.3par|||>|Codifiche dei caratteri per
  un display a 16 segmenti>

  Siamo pronti per costruire la tabella di verità per i primi 2 display cioè
  per i primi 32 bit \Pmeno significativi\Q:

  <big-table|<tabular|<tformat|<table|<row|<cell|<math|<tformat|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|1|-1|1|-1|cell-valign|c>|<cwith|2|5|1|1|cell-halign|c>|<cwith|2|5|1|1|cell-valign|c>|<cwith|1|-1|1|4|cell-background|pastel
  blue>|<cwith|1|-1|5|22|cell-background|pastel
  green>|<cwith|7|7|1|-1|cell-bborder|1ln>|<cwith|1|-1|1|1|cell-lborder|1ln>|<cwith|1|-1|22|22|cell-rborder|1ln>|<cwith|2|2|1|-1|cell-tborder|1ln>|<cwith|2|2|1|-1|cell-bborder|1ln>|<cwith|3|3|1|-1|cell-tborder|1ln>|<cwith|2|2|1|1|cell-lborder|1ln>|<cwith|2|2|22|22|cell-rborder|1ln>|<cwith|1|1|1|1|cell-row-span|1>|<cwith|1|1|1|1|cell-col-span|22>|<cwith|1|1|1|-1|cell-tborder|1ln>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|2|2|1|1|cell-tborder|1ln>|<cwith|1|1|1|-1|cell-rborder|1ln>|<cwith|1|1|1|-1|cell-lborder|1ln>|<cwith|8|14|1|22|cell-halign|c>|<cwith|8|14|1|22|cell-valign|c>|<cwith|9|12|1|1|cell-halign|c>|<cwith|9|12|1|1|cell-valign|c>|<cwith|8|14|1|4|cell-background|pastel
  blue>|<cwith|8|14|5|22|cell-background|pastel
  green>|<cwith|14|14|1|22|cell-bborder|1ln>|<cwith|8|14|1|1|cell-lborder|1ln>|<cwith|8|14|22|22|cell-rborder|1ln>|<cwith|9|9|1|22|cell-tborder|1ln>|<cwith|9|9|1|22|cell-bborder|1ln>|<cwith|10|10|1|22|cell-tborder|1ln>|<cwith|9|9|1|1|cell-lborder|1ln>|<cwith|9|9|22|22|cell-rborder|1ln>|<cwith|8|8|1|1|cell-row-span|1>|<cwith|8|8|1|1|cell-col-span|22>|<cwith|8|8|1|22|cell-tborder|1ln>|<cwith|8|8|1|22|cell-bborder|1ln>|<cwith|9|9|1|1|cell-tborder|1ln>|<cwith|8|8|1|22|cell-rborder|1ln>|<cwith|8|8|1|22|cell-lborder|1ln>|<cwith|1|1|1|1|cell-background|pastel
  grey>|<cwith|8|8|1|1|cell-background|pastel
  grey>|<cwith|6|6|5|8|cell-halign|c>|<cwith|6|6|5|8|cell-valign|c>|<cwith|6|6|5|8|cell-background|pastel
  green>|<cwith|6|6|9|12|cell-halign|c>|<cwith|6|6|9|12|cell-valign|c>|<cwith|6|6|9|12|cell-background|pastel
  green>|<cwith|6|6|13|16|cell-halign|c>|<cwith|6|6|13|16|cell-valign|c>|<cwith|6|6|13|16|cell-background|pastel
  green>|<cwith|6|6|17|20|cell-halign|c>|<cwith|6|6|17|20|cell-valign|c>|<cwith|6|6|17|20|cell-background|pastel
  green>|<cwith|13|13|5|20|cell-halign|c>|<cwith|13|13|5|20|cell-valign|c>|<cwith|13|13|5|20|cell-background|pastel
  green>|<cwith|13|13|5|20|cell-halign|c>|<cwith|13|13|5|20|cell-valign|c>|<cwith|13|13|5|20|cell-background|pastel
  green>|<cwith|12|12|5|20|cell-halign|c>|<cwith|12|12|5|20|cell-valign|c>|<cwith|12|12|5|20|cell-background|pastel
  green>|<cwith|12|12|5|8|cell-halign|c>|<cwith|12|12|5|8|cell-valign|c>|<cwith|12|12|5|8|cell-background|pastel
  green>|<cwith|12|12|9|12|cell-halign|c>|<cwith|12|12|9|12|cell-valign|c>|<cwith|12|12|9|12|cell-background|pastel
  green>|<cwith|12|12|13|16|cell-halign|c>|<cwith|12|12|13|16|cell-valign|c>|<cwith|12|12|13|16|cell-background|pastel
  green>|<cwith|12|12|17|20|cell-halign|c>|<cwith|12|12|17|20|cell-valign|c>|<cwith|12|12|17|20|cell-background|pastel
  green>|<table|<row|<cell|Display D<rsub|1>>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|Stato>|<cell|z<rsub|2>>|<cell|z<rsub|1>>|<cell|z<rsub|0>>|<cell|a<rsub|1>>|<cell|a<rsub|2>>|<cell|b>|<cell|c>|<cell|d<rsub|2>>|<cell|d<rsub|1>>|<cell|e>|<cell|f>|<cell|g<rsub|1>>|<cell|g<rsub|2>>|<cell|h>|<cell|i>|<cell|j>|<cell|m>|<cell|l>|<cell|k>|<cell|Carattere>|<cell|HEX>>|<row|<cell|WAIT>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|W>|<cell|<shell|0xA8CC>>>|<row|<cell|UP>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|U>|<cell|<shell|0x00FC>>>|<row|<cell|DOWN>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|D>|<cell|<shell|0x483F>>>|<row|<cell|OPEN>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|O>|<cell|<shell|0x00FF>>>|<row|<cell|STOP>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|S>|<cell|<shell|0x063B>>>|<row|<cell|Display
  D<rsub|2>>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|Stato>|<cell|z<rsub|2>>|<cell|z<rsub|1>>|<cell|z<rsub|0>>|<cell|a<rsub|1>>|<cell|a<rsub|2>>|<cell|b>|<cell|c>|<cell|d<rsub|2>>|<cell|d<rsub|1>>|<cell|e>|<cell|f>|<cell|g<rsub|1>>|<cell|g<rsub|2>>|<cell|h>|<cell|i>|<cell|j>|<cell|m>|<cell|l>|<cell|k>|<cell|Carattere>|<cell|HEX>>|<row|<cell|WAIT>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|A>|<cell|<shell|0x03CF>>>|<row|<cell|UP>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|P>|<cell|<shell|0x03C7>>>|<row|<cell|DOWN>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|O>|<cell|<shell|0x00FF>>>|<row|<cell|OPEN>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|P>|<cell|<shell|0x03C7>>>|<row|<cell|STOP>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|T>|<cell|<shell|0x4803>>>>>>>>>>>|Tabella
  di verità del decodificatore per i display <math|D<rsub|1>> e
  <math|D<rsub|2>> a 16 segmenti<label|d1-d2>>

  Si noti che nella conversione da binario ad esadecimale ho considerato la
  sequenza invertita, ossia <math|k,l,m,\<ldots\>> in modo tale che il bit in
  posizione <math|0> sia <math|a<rsub|1>> mentre il bit in posizione
  <math|15> sia <math|k> (considerando sempre gruppi di <math|4> bit nella
  conversione da binario a esadecimale). Questo perchè nel simulatore
  Digital, quando si usa il display a 16 segmenti, il bit in posizione
  <math|0> è proprio <math|a<rsub|1>> pertanto occorre codificare in modo
  opportuno i valori in esadecimale da inserire nella ROM. Continuiamo dunque
  con i restanti 2 display cioè per i secondi 32 bit \Ppiù significativi\Q:

  <big-table|<tabular|<tformat|<table|<row|<cell|<math|<tformat|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|1|-1|1|-1|cell-valign|c>|<cwith|2|5|1|1|cell-halign|c>|<cwith|2|5|1|1|cell-valign|c>|<cwith|1|-1|1|4|cell-background|pastel
  blue>|<cwith|1|-1|5|22|cell-background|pastel
  green>|<cwith|7|7|1|-1|cell-bborder|1ln>|<cwith|1|-1|1|1|cell-lborder|1ln>|<cwith|1|-1|22|22|cell-rborder|1ln>|<cwith|2|2|1|-1|cell-tborder|1ln>|<cwith|2|2|1|-1|cell-bborder|1ln>|<cwith|3|3|1|-1|cell-tborder|1ln>|<cwith|2|2|1|1|cell-lborder|1ln>|<cwith|2|2|22|22|cell-rborder|1ln>|<cwith|1|1|1|1|cell-row-span|1>|<cwith|1|1|1|1|cell-col-span|22>|<cwith|1|1|1|-1|cell-tborder|1ln>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|2|2|1|1|cell-tborder|1ln>|<cwith|1|1|1|-1|cell-rborder|1ln>|<cwith|1|1|1|-1|cell-lborder|1ln>|<cwith|8|14|1|22|cell-halign|c>|<cwith|8|14|1|22|cell-valign|c>|<cwith|9|12|1|1|cell-halign|c>|<cwith|9|12|1|1|cell-valign|c>|<cwith|8|14|1|4|cell-background|pastel
  blue>|<cwith|8|14|5|22|cell-background|pastel
  green>|<cwith|14|14|1|22|cell-bborder|1ln>|<cwith|8|14|1|1|cell-lborder|1ln>|<cwith|8|14|22|22|cell-rborder|1ln>|<cwith|9|9|1|22|cell-tborder|1ln>|<cwith|9|9|1|22|cell-bborder|1ln>|<cwith|10|10|1|22|cell-tborder|1ln>|<cwith|9|9|1|1|cell-lborder|1ln>|<cwith|9|9|22|22|cell-rborder|1ln>|<cwith|8|8|1|1|cell-row-span|1>|<cwith|8|8|1|1|cell-col-span|22>|<cwith|8|8|1|22|cell-tborder|1ln>|<cwith|8|8|1|22|cell-bborder|1ln>|<cwith|9|9|1|1|cell-tborder|1ln>|<cwith|8|8|1|22|cell-rborder|1ln>|<cwith|8|8|1|22|cell-lborder|1ln>|<cwith|1|1|1|1|cell-background|pastel
  grey>|<cwith|8|8|1|1|cell-background|pastel
  grey>|<cwith|11|11|5|20|cell-halign|c>|<cwith|11|11|5|20|cell-valign|c>|<cwith|11|11|5|20|cell-background|pastel
  green>|<cwith|5|5|5|20|cell-halign|c>|<cwith|5|5|5|20|cell-valign|c>|<cwith|5|5|5|20|cell-background|pastel
  green>|<cwith|5|5|5|20|cell-tborder|0ln>|<cwith|4|4|5|20|cell-bborder|0ln>|<cwith|5|5|5|20|cell-bborder|0ln>|<cwith|6|6|5|20|cell-tborder|0ln>|<cwith|5|5|5|5|cell-lborder|0ln>|<cwith|5|5|4|4|cell-rborder|0ln>|<cwith|5|5|20|20|cell-rborder|0ln>|<cwith|5|5|21|21|cell-lborder|0ln>|<cwith|7|7|5|20|cell-halign|c>|<cwith|7|7|5|20|cell-valign|c>|<cwith|7|7|5|20|cell-background|pastel
  green>|<cwith|7|7|5|20|cell-halign|c>|<cwith|7|7|5|20|cell-valign|c>|<cwith|7|7|5|20|cell-background|pastel
  green>|<cwith|7|7|5|20|cell-halign|c>|<cwith|7|7|5|20|cell-valign|c>|<cwith|7|7|5|20|cell-background|pastel
  green>|<cwith|7|7|5|8|cell-halign|c>|<cwith|7|7|5|8|cell-valign|c>|<cwith|7|7|5|8|cell-background|pastel
  green>|<cwith|7|7|9|12|cell-halign|c>|<cwith|7|7|9|12|cell-valign|c>|<cwith|7|7|9|12|cell-background|pastel
  green>|<cwith|7|7|13|16|cell-halign|c>|<cwith|7|7|13|16|cell-valign|c>|<cwith|7|7|13|16|cell-background|pastel
  green>|<cwith|7|7|17|20|cell-halign|c>|<cwith|7|7|17|20|cell-valign|c>|<cwith|7|7|17|20|cell-background|pastel
  green>|<cwith|10|10|5|20|cell-halign|c>|<cwith|10|10|5|20|cell-valign|c>|<cwith|10|10|5|20|cell-background|pastel
  green>|<cwith|10|10|5|20|cell-halign|c>|<cwith|10|10|5|20|cell-valign|c>|<cwith|10|10|5|20|cell-background|pastel
  green>|<cwith|10|10|5|20|cell-tborder|1ln>|<cwith|9|9|5|20|cell-bborder|1ln>|<cwith|10|10|5|20|cell-bborder|0ln>|<cwith|11|11|5|20|cell-tborder|0ln>|<cwith|10|10|5|5|cell-lborder|0ln>|<cwith|10|10|4|4|cell-rborder|0ln>|<cwith|10|10|20|20|cell-rborder|0ln>|<cwith|10|10|21|21|cell-lborder|0ln>|<cwith|14|14|5|20|cell-halign|c>|<cwith|14|14|5|20|cell-valign|c>|<cwith|14|14|5|20|cell-background|pastel
  green>|<cwith|14|14|5|20|cell-halign|c>|<cwith|14|14|5|20|cell-valign|c>|<cwith|14|14|5|20|cell-background|pastel
  green>|<cwith|14|14|5|20|cell-halign|c>|<cwith|14|14|5|20|cell-valign|c>|<cwith|14|14|5|20|cell-background|pastel
  green>|<cwith|14|14|5|20|cell-halign|c>|<cwith|14|14|5|20|cell-valign|c>|<cwith|14|14|5|20|cell-background|pastel
  green>|<cwith|13|13|5|20|cell-halign|c>|<cwith|13|13|5|20|cell-valign|c>|<cwith|13|13|5|20|cell-background|pastel
  green>|<cwith|13|13|5|20|cell-halign|c>|<cwith|13|13|5|20|cell-valign|c>|<cwith|13|13|5|20|cell-background|pastel
  green>|<table|<row|<cell|Display D<rsub|3>>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|Stato>|<cell|z<rsub|2>>|<cell|z<rsub|1>>|<cell|z<rsub|0>>|<cell|a<rsub|1>>|<cell|a<rsub|2>>|<cell|b>|<cell|c>|<cell|d<rsub|2>>|<cell|d<rsub|1>>|<cell|e>|<cell|f>|<cell|g<rsub|1>>|<cell|g<rsub|2>>|<cell|h>|<cell|i>|<cell|j>|<cell|m>|<cell|l>|<cell|k>|<cell|Carattere>|<cell|HEX>>|<row|<cell|WAIT>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|I>|<cell|<shell|0x4833>>>|<row|<cell|UP>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|>|<cell|<shell|0x0000>>>|<row|<cell|DOWN>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|W>|<cell|<shell|0xA8CC>>>|<row|<cell|OPEN>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|E>|<cell|<shell|0x03F3>>>|<row|<cell|STOP>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|O>|<cell|<shell|0x00FF>>>|<row|<cell|Display
  D<rsub|4>>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|Stato>|<cell|z<rsub|2>>|<cell|z<rsub|1>>|<cell|z<rsub|0>>|<cell|a<rsub|1>>|<cell|a<rsub|2>>|<cell|b>|<cell|c>|<cell|d<rsub|2>>|<cell|d<rsub|1>>|<cell|e>|<cell|f>|<cell|g<rsub|1>>|<cell|g<rsub|2>>|<cell|h>|<cell|i>|<cell|j>|<cell|m>|<cell|l>|<cell|k>|<cell|Carattere>|<cell|HEX>>|<row|<cell|WAIT>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|T>|<cell|<shell|0x4803>>>|<row|<cell|UP>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|>|<cell|<shell|0x0000>>>|<row|<cell|DOWN>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|N>|<cell|<shell|0x24CC>>>|<row|<cell|OPEN>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|N>|<cell|<shell|0x24CC>>>|<row|<cell|STOP>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|P>|<cell|<shell|0x03C7>>>>>>>>>>>|Tabella
  di verità del decodificatore per i display <math|D<rsub|3>> e
  <math|D<rsub|4>> a 16 segmenti<label|d3-d4>>

  A questo punto abbiamo tutto il necessario per la realizzazione del
  decodificatore, quindi poichè avremmo <math|3> bit di input e <math|32> bit
  di output dovremmo settare le due ROM con le seguenti impostazioni:

  <\big-figure|<image|imgs/settings-rom-16-seg.png|0.3par|||>>
    Impostazioni ROM per il display a 16 segmenti
  </big-figure>

  inserendo nel campo <shell|Data> la colonna HEX presente sia in Tabella
  <reference|d1-d2> che in Tabella <reference|d3-d4> come segue:

  <big-figure|<tabular|<tformat|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|1|-1|1|-1|cell-valign|c>|<table|<row|<cell|<image|imgs/data-16-seg-d1-d2.png|0.12par|||>>|<cell|>|<cell|<image|imgs/data-16-seg-d3-d4.png|0.12par|||>>>|<row|<cell|ROM
  per <math|D<rsub|1>> e <math|D<rsub|2>>>|<cell|>|<cell|ROM per
  <math|D<rsub|3>> e <math|D<rsub|4>>>>>>>|Campo <shell|Data> delle due ROM>

  come si può notare i valori in esadecimale sono stati disposti in modo tale
  che per il display <math|D<rsub|1>> completiamo i primi <math|16> bit della
  prima ROM e per il display <math|D<rsub|2>> completiamo gli ultimi
  <math|16> bit della prima ROM per un totale di <math|32> bit. Lo stesso
  vale per i display <math|D<rsub|3>> e <math|D<rsub|4>> ma per la seconda
  ROM. Pertanto il circuito finale è il seguente:

  <big-figure|<image|imgs/dec-16-seg.png|0.7par|||>|Decodificatore per il
  display a 16 segmenti>

  Infine l'input \P<math|dp>\Q del display a 16 segmenti gestisce il punto,
  ma dato che non ci serve è stato collegato direttamente a GND.

  <subsection|Bufferizzazione delle richieste in attesa>

  Entriamo nel vivo della progettazione ed in particolare utilizziamo dei
  flip-flop SR per bufferizzare le chiamate <math|P<rsub|x>>. Un flip-flop SR
  è un circuito che si comporta come segue: quando l'ingresso <math|SET=1> e
  l'ingresso <math|RESET=0> ne segue che l'uscita <math|Q=1>, mentre quando
  l'ingresso <math|SET=0> e l'ingresso <math|RESET=1> ne segue che l'uscita
  <math|Q=0>. Infine il caso <math|SET=1> e <math|RESET=1>, nello stesso
  momento, non è ammissibile. Questo tipo di flip-flop è perfetto nel nostro
  caso perchè quando arriva una generica chiamata <math|P<rsub|x>> questa si
  trasforma in una richiesta <math|R<rsub|x>> (quindi <math|Q=R<rsub|x>>) che
  rimane in attesa prima di essere servita (cioè rimane in attesa finchè
  <math|RESET=0>). Pertanto avremmo che tutte le chiamate
  <math|P<rsub|0>,\<ldots\>,P<rsub|3>,P<rsub|VIP>> vengono collegate in
  <math|5> flip-flop SR rispettivamente agli ingressi di <math|SET>, in modo
  che, quando arriva una generica chiamata si attivi la relativa richiesta in
  attesa.

  <big-figure|<image|imgs/pending-requests.png|0.25par|||>|Bufferizzazione
  delle richieste in attesa>

  <subsection|Gestione dei reset>

  Ma chi colleghiamo agli ingressi dei <math|RESET>? Potrebbe venirci in
  mente di collegare gli arrivi <math|A<rsub|0>,\<ldots\>,A<rsub|3>,A<rsub|VIP>>,
  ma questo non va bene perchè gli arrivi si comportano come sensori per la
  rilevazione del passaggio per un generico piano ma non sono indicatori del
  fatto che una generica richiesta <math|R<rsub|x>>, e quindi una generica
  chiamata <math|P<rsub|x>>, sia stata servita o meno. Quindi occorre
  implementare una circuiteria che ci dica se la richiesta è stata servita
  correttamente in modo che si possa procedere all'effettivo reset dei
  flip-flop SR interessati. Ma quand'è che dobbiamo resettare i flip-flop SR?
  O meglio, quand'è che una richiesta viene servita? Beh, una richiesta viene
  servita se siamo arrivati ad un piano <math|x> e se sono passati <math|9>
  secondi nello stato di apertura porte. Pertanto è chiaro che i bit
  <math|y<rsub|2>,y<rsub|1>,y<rsub|0>>, che rappresentano un generico piano,
  sono da mettere in AND (con opportuni ingressi negati) tra di loro ed
  inoltre dobbiamo aggiungere un segnale <math|TIMEOUT> che rappresenta il
  bit di overflow nel momento in cui vengono contati <math|9> secondi. In
  particolare, usando un Timer ed impostando un numero di bit pari a <math|4>
  e come massimo valore di conteggio <math|<around*|(|8|)><rsub|10>=<around*|(|1000|)><rsub|2>>
  nel momento in cui si passa a <math|<around*|(|9|)><rsub|10>=<around*|(|1001|)><rsub|2>>
  ci avanza un bit per generare l'overflow che verrà assegnato al segnale
  <math|TIMEOUT>, ma di questo ne discuteremo meglio più avanti quando verrà
  creato l'automa a stati finiti per la gestione degli stati dell'ascensore.

  <big-figure|<image|imgs/reset-management.png|1par|||>|Gestione dei reset>

  <subsection|Rilevatore per un generico piano>

  In generale sappiamo che i segnali di arrivo
  <math|A<rsub|0>,\<ldots\>,A<rsub|3>,A<rsub|VIP>> differiscono dalle
  chiamate <math|P<rsub|0>,\<ldots\>,P<rsub|3>,P<rsub|VIP>> per il fatto che
  essi sono unici. Infatti non ci possono essere due segnali di arrivo attivi
  nello stesso momento. Pertanto possiamo costruire un rilevatore che si
  attiva solo quando si passa per un generico piano e per farlo è sufficiente
  mettere in OR tutti i segnali di arrivo
  <math|A<rsub|0>,\<ldots\>,A<rsub|3>,A<rsub|VIP>> proprio per la loro
  definizione di unicità.

  <big-figure|<image|imgs/floor-detector.png|0.25par|||>|Rilevatore per un
  generico piano<label|floor-detector>>

  <subsection|Segnale per l'arrivo a destinazione>

  Un altro segnale utile da implementare è <math|DESTINATION>, ossia un
  segnale che vale <math|1> quando l'ascensore arriva a destinazione,
  altrimenti vale <math|0>. Per realizzarlo dovremmo soddisfare una generica
  richiesta <math|R<rsub|x>> in concomitanza di un generico segnale di arrivo
  <math|A<rsub|x>>. Questo si traduce in <math|5> porte AND più l'aggiunta di
  una porta OR (praticamente si tratta di un Multiplexer, però implementando
  singolarmente le <math|6> porte totali si risparmiano input che non
  sarebbero usati, infatti <math|5> non è una potenza di <math|2>). Infatti
  proprio per l'unicità dei segnali <math|A<rsub|x>> solo una delle porte AND
  sarà attivata a rotazione. Naturalmente l'arrivo a destinazione non implica
  che una richiesta <math|R<rsub|x>> sia servita.

  <big-figure|<image|imgs/destination-arrival-signal.png|0.35par|||>|Segnale
  per l'arrivo a destinazione>

  <subsection|Gestione delle richieste>

  Arrivati a questo punto occorre trovare un modo per \Psapere\Q se
  l'ascensore deve andare verso l'alto, verso il basso o rimanere fermo.
  Pertanto sicuramente sappiamo che ci dovranno essere <math|3> segnali,
  ossia <math|UP,STOP> e <math|DOWN>, che, in base ad una generica richiesta
  <math|R<rsub|x>> e sapendo a quale piano è arrivata l'ascensore, verranno
  opportunamente attivati. Ma come facciamo a sapere a che piano è arrivata
  l'ascensore? Beh, semplicemente usando i segnali di arrivo
  <math|A<rsub|0>,\<ldots\>,A<rsub|3>,A<rsub|VIP>> (attenzione a non
  confondere questa logica con la logica del segnale <math|DESTINATION>). Ma
  in che modo? Considerando, per esempio, il segnale <math|UP> sappiamo che
  l'ascensore deve andare verso l'alto solo se
  <math|\<exists\>A<rsub|x>\<gtr\>x\<wedge\>R<rsub|x>=1> (il simbolo
  <math|\<wedge\>> rappresenta la AND logica), cioè solo se mi arriva una
  richiesta <math|R<rsub|x>> e l'ascensore arriva ad un piano <math|x> con un
  segnale <math|A<rsub|x>\<gtr\>x>. Per esempio, se <math|x=0> (piano 0) e mi
  arriva una richiesta <math|R<rsub|1>=1> per sapere se l'ascensore è
  arrivata al piano <math|1> avremmo <math|A<rsub|1>=1> e quindi
  <math|A<rsub|1>\<gtr\>x>. Quindi:

  <\eqnarray>
    <tformat|<table|<row|<cell|UP=1>|<cell|\<Longleftrightarrow\>>|<cell|\<exists\>A<rsub|x>\<gtr\>x\<wedge\>R<rsub|x>=1>>|<row|<cell|STOP=1>|<cell|\<Longleftrightarrow\>>|<cell|\<exists\>A<rsub|x>=x\<wedge\>R<rsub|x>=1>>|<row|<cell|DOWN=1>|<cell|\<Longleftrightarrow\>>|<cell|\<exists\>A<rsub|x>\<less\>x\<wedge\>R<rsub|x>=1>>>>
  </eqnarray>

  Pertanto l'unica rete logica iterativa che ci permette di realizzare i
  confronti <math|A<rsub|x>\<gtr\>x,A<rsub|x>=x,A<rsub|x>\<less\>x> è il
  comparatore che avrà come uscite i segnali <math|UP,STOP,DOWN>. Tale
  comparatore dovrà gestire tutte le possibili richieste <math|R<rsub|x>> in
  base ai piani di arrivo <math|A<rsub|x>> per un totale di
  <math|2<rsup|5>\<cdot\>5=160> casi (infatti abbiamo <math|4> piani più il
  piano terra). Inoltre i segnali di arrivo <math|A<rsub|x>> dovranno essere
  bufferizzati, in funzione della rilevazione di un generico piano, per
  sapere quale segnale attivare tra <math|UP,STOP,DOWN> in base all'arrivo di
  una nuova richiesta <math|R<rsub|x>>. Ed ecco qui che ci viene in aiuto il
  circuito di Fig. <reference|floor-detector>. In particolare usando un
  flip-flop D con segnale di <with|font-shape|italic|clock> <math|CK<rsub|2>>
  possiamo far passare l'ingresso <math|D> in uscita <math|Q> (cioè
  <math|Q=D>) solo quando viene rilevato un nuovo piano. Inoltre per
  semplificarci la vita possiamo codificare i segnali <math|A<rsub|x>>
  passando da <math|5> bit a <math|3> bit. Quest'ultima scelta è molto utile
  per la costruzione delle tabelle di verità del comparatore per fare in modo
  di avere <math|8> bit in input (cioè le <math|5> richeste <math|R<rsub|x>>
  più <math|3> bit della codifica dei segnali di arrivo <math|A<rsub|x>>) e 3
  bit in output (cioè <math|UP,STOP,DOWN>).

  Iniziamo a realizzare il codificatore dei segnali di arrivo
  <math|A<rsub|x>>, che avrà la seguente tabella di verità:

  <big-table|<tabular|<tformat|<table|<row|<cell|<math|<tformat|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|1|-1|1|-1|cell-valign|c>|<cwith|1|-1|6|8|cell-background|pastel
  green>|<cwith|1|-1|1|5|cell-background|pastel
  blue>|<cwith|1|-1|1|-1|cell-tborder|0ln>|<cwith|1|-1|1|-1|cell-bborder|0ln>|<cwith|1|-1|1|-1|cell-lborder|0ln>|<cwith|1|-1|1|-1|cell-rborder|0ln>|<cwith|1|-1|9|9|cell-background|pastel
  green>|<cwith|7|7|1|-1|cell-bborder|1ln>|<cwith|1|-1|1|1|cell-lborder|1ln>|<cwith|1|-1|9|9|cell-rborder|1ln>|<cwith|1|1|1|-1|cell-tborder|1ln>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|2|2|1|-1|cell-tborder|1ln>|<cwith|1|1|1|1|cell-lborder|1ln>|<cwith|1|1|9|9|cell-rborder|1ln>|<table|<row|<cell|A<rsub|VIP>>|<cell|A<rsub|3>>|<cell|A<rsub|2>>|<cell|A<rsub|1>>|<cell|A<rsub|0>>|<cell|a<rsub|2>>|<cell|a<rsub|1>>|<cell|a<rsub|0>>|<cell|HEX>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|<shell|0x0>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|<shell|0x0>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|<shell|0x1>>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|<shell|0x2>>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|<shell|0x3>>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|<shell|0x4>>>>>>>>>>>|Tabella
  di verità del codificatore per i segnali di
  arrivo<label|truth-table-encoder>>

  per implementare il codificatore verrà impiegata una ROM (Read Only Memory)
  pertanto occorre settare le seguenti impostazioni:

  <big-figure|<image|imgs/cod-Ax.png|0.3par|||>|Impostazioni ROM per il
  codificatore>

  inserendo nel campo <shell|Data> la colonna HEX presente in Tabella
  <reference|truth-table-encoder>. Successivamente tutti i bit di uscita
  saranno memorizzati in un flip-flop D, con segnale di
  <with|font-shape|italic|clock> <math|CK<rsub|2>>, con le seguenti
  impostazioni:

  <big-figure|<image|imgs/settings-flip-flop-D.png|0.2par|||>|Impostazioni
  flip-flop D>

  e l'uscita <math|Q>, avente <math|3> bit, verrà usata come input del
  comparatore insieme alle richieste <math|R<rsub|x>>. Al termine di questa
  parte il circuito è il seguente:

  <big-figure|<image|imgs/incomplete-requests-management.png|0.5par|||>|Gestione
  delle richieste incompleta>

  Ora riportiamo le relazioni che legano i segnali di uscita
  <math|UP,STOP,DOWN>, con i relativi ingressi in <math|5> tabelle di verità
  ciascuna composta da <math|32> bit. La prima tabella di verità rappresenta
  le <math|32> possibili richieste <math|R<rsub|x>> nel caso in cui
  <math|a<rsub|2>=0,a<rsub|1>=0,a<rsub|0>=0> (quindi siamo nel caso in cui
  non si attiva nessun segnale di arrivo, oppure si attiva il segnale di
  arrivo <math|A<rsub|0>>):

  <big-table|<tiny|<tabular|<tformat|<table|<row|<cell|<math|<tformat|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|1|-1|1|-1|cell-valign|c>|<cwith|19|33|5|8|cell-halign|c>|<cwith|19|33|5|8|cell-valign|c>|<cwith|19|26|4|4|cell-halign|c>|<cwith|19|26|4|4|cell-valign|c>|<cwith|19|26|4|4|cell-halign|c>|<cwith|19|26|4|4|cell-valign|c>|<cwith|27|34|4|4|cell-halign|c>|<cwith|27|34|4|4|cell-valign|c>|<cwith|27|34|4|4|cell-halign|c>|<cwith|27|34|4|4|cell-valign|c>|<cwith|2|2|1|3|cell-halign|c>|<cwith|2|2|1|3|cell-valign|c>|<cwith|3|3|1|3|cell-halign|c>|<cwith|3|3|1|3|cell-valign|c>|<cwith|4|4|1|3|cell-halign|c>|<cwith|4|4|1|3|cell-valign|c>|<cwith|5|5|1|3|cell-halign|c>|<cwith|5|5|1|3|cell-valign|c>|<cwith|6|6|1|3|cell-halign|c>|<cwith|6|6|1|3|cell-valign|c>|<cwith|7|7|1|3|cell-halign|c>|<cwith|7|7|1|3|cell-valign|c>|<cwith|8|8|1|3|cell-halign|c>|<cwith|8|8|1|3|cell-valign|c>|<cwith|9|15|1|3|cell-halign|c>|<cwith|9|15|1|3|cell-valign|c>|<cwith|9|9|1|3|cell-halign|c>|<cwith|9|9|1|3|cell-valign|c>|<cwith|10|10|1|3|cell-halign|c>|<cwith|10|10|1|3|cell-valign|c>|<cwith|11|11|1|3|cell-halign|c>|<cwith|11|11|1|3|cell-valign|c>|<cwith|12|12|1|3|cell-halign|c>|<cwith|12|12|1|3|cell-valign|c>|<cwith|13|13|1|3|cell-halign|c>|<cwith|13|13|1|3|cell-valign|c>|<cwith|14|14|1|3|cell-halign|c>|<cwith|14|14|1|3|cell-valign|c>|<cwith|15|15|1|3|cell-halign|c>|<cwith|15|15|1|3|cell-valign|c>|<cwith|16|22|1|3|cell-halign|c>|<cwith|16|22|1|3|cell-valign|c>|<cwith|16|16|1|3|cell-halign|c>|<cwith|16|16|1|3|cell-valign|c>|<cwith|17|17|1|3|cell-halign|c>|<cwith|17|17|1|3|cell-valign|c>|<cwith|18|18|1|3|cell-halign|c>|<cwith|18|18|1|3|cell-valign|c>|<cwith|19|19|1|3|cell-halign|c>|<cwith|19|19|1|3|cell-valign|c>|<cwith|20|20|1|3|cell-halign|c>|<cwith|20|20|1|3|cell-valign|c>|<cwith|21|21|1|3|cell-halign|c>|<cwith|21|21|1|3|cell-valign|c>|<cwith|22|22|1|3|cell-halign|c>|<cwith|22|22|1|3|cell-valign|c>|<cwith|23|29|1|3|cell-halign|c>|<cwith|23|29|1|3|cell-valign|c>|<cwith|23|23|1|3|cell-halign|c>|<cwith|23|23|1|3|cell-valign|c>|<cwith|24|24|1|3|cell-halign|c>|<cwith|24|24|1|3|cell-valign|c>|<cwith|25|25|1|3|cell-halign|c>|<cwith|25|25|1|3|cell-valign|c>|<cwith|26|26|1|3|cell-halign|c>|<cwith|26|26|1|3|cell-valign|c>|<cwith|27|27|1|3|cell-halign|c>|<cwith|27|27|1|3|cell-valign|c>|<cwith|28|28|1|3|cell-halign|c>|<cwith|28|28|1|3|cell-valign|c>|<cwith|29|29|1|3|cell-halign|c>|<cwith|29|29|1|3|cell-valign|c>|<cwith|30|32|1|3|cell-halign|c>|<cwith|30|32|1|3|cell-valign|c>|<cwith|30|32|1|3|cell-halign|c>|<cwith|30|32|1|3|cell-valign|c>|<cwith|30|30|1|3|cell-halign|c>|<cwith|30|30|1|3|cell-valign|c>|<cwith|31|31|1|3|cell-halign|c>|<cwith|31|31|1|3|cell-valign|c>|<cwith|32|32|1|3|cell-halign|c>|<cwith|32|32|1|3|cell-valign|c>|<cwith|33|33|1|3|cell-halign|c>|<cwith|33|33|1|3|cell-valign|c>|<cwith|33|33|1|3|cell-halign|c>|<cwith|33|33|1|3|cell-valign|c>|<cwith|33|33|1|3|cell-halign|c>|<cwith|33|33|1|3|cell-valign|c>|<cwith|33|33|1|3|cell-halign|c>|<cwith|33|33|1|3|cell-valign|c>|<cwith|18|33|12|12|cell-halign|c>|<cwith|18|33|12|12|cell-valign|c>|<cwith|4|4|9|11|cell-halign|c>|<cwith|4|4|9|11|cell-valign|c>|<cwith|5|5|9|11|cell-halign|c>|<cwith|5|5|9|11|cell-valign|c>|<cwith|6|6|9|11|cell-halign|c>|<cwith|6|6|9|11|cell-valign|c>|<cwith|7|7|9|11|cell-halign|c>|<cwith|7|7|9|11|cell-valign|c>|<cwith|8|8|9|11|cell-halign|c>|<cwith|8|8|9|11|cell-valign|c>|<cwith|9|9|9|11|cell-halign|c>|<cwith|9|9|9|11|cell-valign|c>|<cwith|10|10|9|11|cell-halign|c>|<cwith|10|10|9|11|cell-valign|c>|<cwith|11|11|9|11|cell-halign|c>|<cwith|11|11|9|11|cell-valign|c>|<cwith|12|12|9|11|cell-halign|c>|<cwith|12|12|9|11|cell-valign|c>|<cwith|13|13|9|11|cell-halign|c>|<cwith|13|13|9|11|cell-valign|c>|<cwith|14|14|9|11|cell-halign|c>|<cwith|14|14|9|11|cell-valign|c>|<cwith|15|15|9|11|cell-halign|c>|<cwith|15|15|9|11|cell-valign|c>|<cwith|16|16|9|11|cell-halign|c>|<cwith|16|16|9|11|cell-valign|c>|<cwith|17|17|9|11|cell-halign|c>|<cwith|17|17|9|11|cell-valign|c>|<cwith|18|18|9|11|cell-halign|c>|<cwith|18|18|9|11|cell-valign|c>|<cwith|3|5|12|12|cell-halign|c>|<cwith|3|5|12|12|cell-valign|c>|<cwith|6|8|12|12|cell-halign|c>|<cwith|6|8|12|12|cell-valign|c>|<cwith|9|11|12|12|cell-halign|c>|<cwith|9|11|12|12|cell-valign|c>|<cwith|12|14|12|12|cell-halign|c>|<cwith|12|14|12|12|cell-valign|c>|<cwith|20|20|9|12|cell-halign|c>|<cwith|20|20|9|12|cell-valign|c>|<cwith|20|20|12|12|cell-halign|c>|<cwith|20|20|12|12|cell-valign|c>|<cwith|21|21|9|12|cell-halign|c>|<cwith|21|21|9|12|cell-valign|c>|<cwith|21|21|12|12|cell-halign|c>|<cwith|21|21|12|12|cell-valign|c>|<cwith|22|22|9|12|cell-halign|c>|<cwith|22|22|9|12|cell-valign|c>|<cwith|22|22|12|12|cell-halign|c>|<cwith|22|22|12|12|cell-valign|c>|<cwith|23|23|9|12|cell-halign|c>|<cwith|23|23|9|12|cell-valign|c>|<cwith|23|23|12|12|cell-halign|c>|<cwith|23|23|12|12|cell-valign|c>|<cwith|24|24|9|12|cell-halign|c>|<cwith|24|24|9|12|cell-valign|c>|<cwith|24|24|12|12|cell-halign|c>|<cwith|24|24|12|12|cell-valign|c>|<cwith|25|25|9|12|cell-halign|c>|<cwith|25|25|9|12|cell-valign|c>|<cwith|25|25|12|12|cell-halign|c>|<cwith|25|25|12|12|cell-valign|c>|<cwith|26|26|9|12|cell-halign|c>|<cwith|26|26|9|12|cell-valign|c>|<cwith|26|26|12|12|cell-halign|c>|<cwith|26|26|12|12|cell-valign|c>|<cwith|27|27|9|12|cell-halign|c>|<cwith|27|27|9|12|cell-valign|c>|<cwith|27|27|12|12|cell-halign|c>|<cwith|27|27|12|12|cell-valign|c>|<cwith|28|28|9|12|cell-halign|c>|<cwith|28|28|9|12|cell-valign|c>|<cwith|28|28|12|12|cell-halign|c>|<cwith|28|28|12|12|cell-valign|c>|<cwith|29|29|9|12|cell-halign|c>|<cwith|29|29|9|12|cell-valign|c>|<cwith|29|29|12|12|cell-halign|c>|<cwith|29|29|12|12|cell-valign|c>|<cwith|30|30|9|12|cell-halign|c>|<cwith|30|30|9|12|cell-valign|c>|<cwith|30|30|12|12|cell-halign|c>|<cwith|30|30|12|12|cell-valign|c>|<cwith|31|31|9|12|cell-halign|c>|<cwith|31|31|9|12|cell-valign|c>|<cwith|31|31|12|12|cell-halign|c>|<cwith|31|31|12|12|cell-valign|c>|<cwith|32|32|9|12|cell-halign|c>|<cwith|32|32|9|12|cell-valign|c>|<cwith|32|32|12|12|cell-halign|c>|<cwith|32|32|12|12|cell-valign|c>|<cwith|33|33|9|12|cell-halign|c>|<cwith|33|33|9|12|cell-valign|c>|<cwith|33|33|12|12|cell-halign|c>|<cwith|33|33|12|12|cell-valign|c>|<cwith|1|-1|9|12|cell-background|pastel
  green>|<cwith|1|-1|1|8|cell-background|pastel
  blue>|<cwith|33|33|1|-1|cell-bborder|1ln>|<cwith|1|-1|1|1|cell-lborder|1ln>|<cwith|1|-1|12|12|cell-rborder|1ln>|<cwith|1|1|1|-1|cell-tborder|1ln>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|2|2|1|-1|cell-tborder|1ln>|<cwith|1|1|1|1|cell-lborder|1ln>|<cwith|1|1|12|12|cell-rborder|1ln>|<table|<row|<cell|a<rsub|2>>|<cell|a<rsub|1>>|<cell|a<rsub|0>>|<cell|R<rsub|0>>|<cell|R<rsub|1>>|<cell|R<rsub|2>>|<cell|R<rsub|3>>|<cell|R<rsub|VIP>>|<cell|UP>|<cell|STOP>|<cell|DOWN>|<cell|HEX>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|<shell|0x0>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|<shell|0x4>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|<shell|0x4>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|<shell|0x4>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|<shell|0x4>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|<shell|0x4>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|<shell|0x4>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<shell|0x4>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|<shell|0x4>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|<shell|0x4>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|<shell|0x4>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<shell|0x4>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|<shell|0x4>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|<shell|0x4>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|<shell|0x4>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|<shell|0x4>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|<shell|0x2>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|<shell|0x6>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|<shell|0x6>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|<shell|0x6>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|<shell|0x6>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|<shell|0x6>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|<shell|0x6>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|<shell|0x6>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|<shell|0x6>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|<shell|0x6>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|<shell|0x6>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|<shell|0x6>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|<shell|0x6>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|<shell|0x6>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|<shell|0x6>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|<shell|0x6>>>>>>>>>>>>|Tabella
  di verità del comparatore per <math|a<rsub|2>=0,a<rsub|1>=0,a<rsub|0>=0>>

  La seconda tabella di verità rappresenta le <math|32> possibili richieste
  <math|R<rsub|x>> nel caso in cui <math|a<rsub|2>=0,a<rsub|1>=0,a<rsub|0>=1>
  (quindi siamo nel caso in cui si attiva il segnale di arrivo
  <math|A<rsub|1>>):

  <big-table|<tiny|<tabular|<tformat|<table|<row|<cell|<math|<tformat|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|1|-1|1|-1|cell-valign|c>|<cwith|19|33|5|8|cell-halign|c>|<cwith|19|33|5|8|cell-valign|c>|<cwith|19|26|4|4|cell-halign|c>|<cwith|19|26|4|4|cell-valign|c>|<cwith|19|26|4|4|cell-halign|c>|<cwith|19|26|4|4|cell-valign|c>|<cwith|27|34|4|4|cell-halign|c>|<cwith|27|34|4|4|cell-valign|c>|<cwith|27|34|4|4|cell-halign|c>|<cwith|27|34|4|4|cell-valign|c>|<cwith|2|2|1|3|cell-halign|c>|<cwith|2|2|1|3|cell-valign|c>|<cwith|3|3|1|3|cell-halign|c>|<cwith|3|3|1|3|cell-valign|c>|<cwith|4|4|1|3|cell-halign|c>|<cwith|4|4|1|3|cell-valign|c>|<cwith|5|5|1|3|cell-halign|c>|<cwith|5|5|1|3|cell-valign|c>|<cwith|6|6|1|3|cell-halign|c>|<cwith|6|6|1|3|cell-valign|c>|<cwith|7|7|1|3|cell-halign|c>|<cwith|7|7|1|3|cell-valign|c>|<cwith|8|8|1|3|cell-halign|c>|<cwith|8|8|1|3|cell-valign|c>|<cwith|9|15|1|3|cell-halign|c>|<cwith|9|15|1|3|cell-valign|c>|<cwith|9|9|1|3|cell-halign|c>|<cwith|9|9|1|3|cell-valign|c>|<cwith|10|10|1|3|cell-halign|c>|<cwith|10|10|1|3|cell-valign|c>|<cwith|11|11|1|3|cell-halign|c>|<cwith|11|11|1|3|cell-valign|c>|<cwith|12|12|1|3|cell-halign|c>|<cwith|12|12|1|3|cell-valign|c>|<cwith|13|13|1|3|cell-halign|c>|<cwith|13|13|1|3|cell-valign|c>|<cwith|14|14|1|3|cell-halign|c>|<cwith|14|14|1|3|cell-valign|c>|<cwith|15|15|1|3|cell-halign|c>|<cwith|15|15|1|3|cell-valign|c>|<cwith|16|22|1|3|cell-halign|c>|<cwith|16|22|1|3|cell-valign|c>|<cwith|16|16|1|3|cell-halign|c>|<cwith|16|16|1|3|cell-valign|c>|<cwith|17|17|1|3|cell-halign|c>|<cwith|17|17|1|3|cell-valign|c>|<cwith|18|18|1|3|cell-halign|c>|<cwith|18|18|1|3|cell-valign|c>|<cwith|19|19|1|3|cell-halign|c>|<cwith|19|19|1|3|cell-valign|c>|<cwith|20|20|1|3|cell-halign|c>|<cwith|20|20|1|3|cell-valign|c>|<cwith|21|21|1|3|cell-halign|c>|<cwith|21|21|1|3|cell-valign|c>|<cwith|22|22|1|3|cell-halign|c>|<cwith|22|22|1|3|cell-valign|c>|<cwith|23|29|1|3|cell-halign|c>|<cwith|23|29|1|3|cell-valign|c>|<cwith|23|23|1|3|cell-halign|c>|<cwith|23|23|1|3|cell-valign|c>|<cwith|24|24|1|3|cell-halign|c>|<cwith|24|24|1|3|cell-valign|c>|<cwith|25|25|1|3|cell-halign|c>|<cwith|25|25|1|3|cell-valign|c>|<cwith|26|26|1|3|cell-halign|c>|<cwith|26|26|1|3|cell-valign|c>|<cwith|27|27|1|3|cell-halign|c>|<cwith|27|27|1|3|cell-valign|c>|<cwith|28|28|1|3|cell-halign|c>|<cwith|28|28|1|3|cell-valign|c>|<cwith|29|29|1|3|cell-halign|c>|<cwith|29|29|1|3|cell-valign|c>|<cwith|30|32|1|3|cell-halign|c>|<cwith|30|32|1|3|cell-valign|c>|<cwith|30|32|1|3|cell-halign|c>|<cwith|30|32|1|3|cell-valign|c>|<cwith|30|30|1|3|cell-halign|c>|<cwith|30|30|1|3|cell-valign|c>|<cwith|31|31|1|3|cell-halign|c>|<cwith|31|31|1|3|cell-valign|c>|<cwith|32|32|1|3|cell-halign|c>|<cwith|32|32|1|3|cell-valign|c>|<cwith|33|33|1|3|cell-halign|c>|<cwith|33|33|1|3|cell-valign|c>|<cwith|33|33|1|3|cell-halign|c>|<cwith|33|33|1|3|cell-valign|c>|<cwith|33|33|1|3|cell-halign|c>|<cwith|33|33|1|3|cell-valign|c>|<cwith|33|33|1|3|cell-halign|c>|<cwith|33|33|1|3|cell-valign|c>|<cwith|1|-1|9|12|cell-background|pastel
  green>|<cwith|1|-1|1|8|cell-background|pastel
  blue>|<cwith|33|33|1|-1|cell-bborder|1ln>|<cwith|1|-1|1|1|cell-lborder|1ln>|<cwith|1|-1|12|12|cell-rborder|1ln>|<cwith|1|1|1|-1|cell-tborder|1ln>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|2|2|1|-1|cell-tborder|1ln>|<cwith|1|1|1|1|cell-lborder|1ln>|<cwith|1|1|12|12|cell-rborder|1ln>|<cwith|6|9|3|3|cell-halign|c>|<cwith|6|9|3|3|cell-valign|c>|<cwith|6|6|3|3|cell-halign|c>|<cwith|6|6|3|3|cell-valign|c>|<cwith|7|7|3|3|cell-halign|c>|<cwith|7|7|3|3|cell-valign|c>|<cwith|8|8|3|3|cell-halign|c>|<cwith|8|8|3|3|cell-valign|c>|<cwith|9|9|3|3|cell-halign|c>|<cwith|9|9|3|3|cell-valign|c>|<cwith|6|9|3|3|cell-background|pastel
  blue>|<cwith|6|6|3|3|cell-bborder|0ln>|<cwith|7|7|3|3|cell-tborder|0ln>|<cwith|5|6|3|3|cell-lborder|0ln>|<cwith|5|6|2|2|cell-rborder|0ln>|<cwith|5|6|3|3|cell-rborder|0ln>|<cwith|5|6|4|4|cell-lborder|0ln>|<cwith|5|5|3|3|cell-tborder|0ln>|<cwith|4|4|3|3|cell-bborder|0ln>|<cwith|5|5|3|3|cell-bborder|0ln>|<cwith|6|6|3|3|cell-tborder|0ln>|<cwith|5|5|3|3|cell-lborder|0ln>|<cwith|5|5|2|2|cell-rborder|0ln>|<cwith|5|5|3|3|cell-rborder|0ln>|<cwith|5|5|4|4|cell-lborder|0ln>|<cwith|10|13|3|3|cell-halign|c>|<cwith|10|13|3|3|cell-valign|c>|<cwith|10|10|3|3|cell-halign|c>|<cwith|10|10|3|3|cell-valign|c>|<cwith|11|11|3|3|cell-halign|c>|<cwith|11|11|3|3|cell-valign|c>|<cwith|12|12|3|3|cell-halign|c>|<cwith|12|12|3|3|cell-valign|c>|<cwith|13|13|3|3|cell-halign|c>|<cwith|13|13|3|3|cell-valign|c>|<cwith|13|13|3|3|cell-halign|c>|<cwith|13|13|3|3|cell-valign|c>|<cwith|10|13|3|3|cell-background|pastel
  blue>|<cwith|10|13|3|3|cell-halign|c>|<cwith|10|13|3|3|cell-valign|c>|<cwith|10|10|3|3|cell-halign|c>|<cwith|10|10|3|3|cell-valign|c>|<cwith|11|11|3|3|cell-halign|c>|<cwith|11|11|3|3|cell-valign|c>|<cwith|12|12|3|3|cell-halign|c>|<cwith|12|12|3|3|cell-valign|c>|<cwith|13|13|3|3|cell-halign|c>|<cwith|13|13|3|3|cell-valign|c>|<cwith|10|13|3|3|cell-background|pastel
  blue>|<cwith|10|10|3|3|cell-bborder|0ln>|<cwith|11|11|3|3|cell-tborder|0ln>|<cwith|10|10|3|3|cell-lborder|0ln>|<cwith|10|10|3|3|cell-rborder|0ln>|<cwith|10|10|3|3|cell-tborder|0ln>|<cwith|14|17|3|3|cell-halign|c>|<cwith|14|17|3|3|cell-valign|c>|<cwith|14|14|3|3|cell-halign|c>|<cwith|14|14|3|3|cell-valign|c>|<cwith|15|15|3|3|cell-halign|c>|<cwith|15|15|3|3|cell-valign|c>|<cwith|16|16|3|3|cell-halign|c>|<cwith|16|16|3|3|cell-valign|c>|<cwith|17|17|3|3|cell-halign|c>|<cwith|17|17|3|3|cell-valign|c>|<cwith|17|17|3|3|cell-halign|c>|<cwith|17|17|3|3|cell-valign|c>|<cwith|14|17|3|3|cell-background|pastel
  blue>|<cwith|14|17|3|3|cell-halign|c>|<cwith|14|17|3|3|cell-valign|c>|<cwith|14|14|3|3|cell-halign|c>|<cwith|14|14|3|3|cell-valign|c>|<cwith|15|15|3|3|cell-halign|c>|<cwith|15|15|3|3|cell-valign|c>|<cwith|16|16|3|3|cell-halign|c>|<cwith|16|16|3|3|cell-valign|c>|<cwith|17|17|3|3|cell-halign|c>|<cwith|17|17|3|3|cell-valign|c>|<cwith|14|17|3|3|cell-background|pastel
  blue>|<cwith|14|14|3|3|cell-bborder|0ln>|<cwith|15|15|3|3|cell-tborder|0ln>|<cwith|14|14|3|3|cell-lborder|0ln>|<cwith|14|14|3|3|cell-rborder|0ln>|<cwith|14|14|3|3|cell-tborder|0ln>|<cwith|18|21|3|3|cell-halign|c>|<cwith|18|21|3|3|cell-valign|c>|<cwith|18|18|3|3|cell-halign|c>|<cwith|18|18|3|3|cell-valign|c>|<cwith|19|19|3|3|cell-halign|c>|<cwith|19|19|3|3|cell-valign|c>|<cwith|20|20|3|3|cell-halign|c>|<cwith|20|20|3|3|cell-valign|c>|<cwith|21|21|3|3|cell-halign|c>|<cwith|21|21|3|3|cell-valign|c>|<cwith|21|21|3|3|cell-halign|c>|<cwith|21|21|3|3|cell-valign|c>|<cwith|18|21|3|3|cell-background|pastel
  blue>|<cwith|18|21|3|3|cell-halign|c>|<cwith|18|21|3|3|cell-valign|c>|<cwith|18|18|3|3|cell-halign|c>|<cwith|18|18|3|3|cell-valign|c>|<cwith|19|19|3|3|cell-halign|c>|<cwith|19|19|3|3|cell-valign|c>|<cwith|20|20|3|3|cell-halign|c>|<cwith|20|20|3|3|cell-valign|c>|<cwith|21|21|3|3|cell-halign|c>|<cwith|21|21|3|3|cell-valign|c>|<cwith|18|21|3|3|cell-background|pastel
  blue>|<cwith|18|18|3|3|cell-bborder|0ln>|<cwith|19|19|3|3|cell-tborder|0ln>|<cwith|18|18|3|3|cell-lborder|0ln>|<cwith|18|18|3|3|cell-rborder|0ln>|<cwith|18|18|3|3|cell-tborder|0ln>|<cwith|22|25|3|3|cell-halign|c>|<cwith|22|25|3|3|cell-valign|c>|<cwith|22|22|3|3|cell-halign|c>|<cwith|22|22|3|3|cell-valign|c>|<cwith|23|23|3|3|cell-halign|c>|<cwith|23|23|3|3|cell-valign|c>|<cwith|24|24|3|3|cell-halign|c>|<cwith|24|24|3|3|cell-valign|c>|<cwith|25|25|3|3|cell-halign|c>|<cwith|25|25|3|3|cell-valign|c>|<cwith|25|25|3|3|cell-halign|c>|<cwith|25|25|3|3|cell-valign|c>|<cwith|22|25|3|3|cell-background|pastel
  blue>|<cwith|22|25|3|3|cell-halign|c>|<cwith|22|25|3|3|cell-valign|c>|<cwith|22|22|3|3|cell-halign|c>|<cwith|22|22|3|3|cell-valign|c>|<cwith|23|23|3|3|cell-halign|c>|<cwith|23|23|3|3|cell-valign|c>|<cwith|24|24|3|3|cell-halign|c>|<cwith|24|24|3|3|cell-valign|c>|<cwith|25|25|3|3|cell-halign|c>|<cwith|25|25|3|3|cell-valign|c>|<cwith|22|25|3|3|cell-background|pastel
  blue>|<cwith|22|22|3|3|cell-bborder|0ln>|<cwith|23|23|3|3|cell-tborder|0ln>|<cwith|22|22|3|3|cell-lborder|0ln>|<cwith|22|22|3|3|cell-rborder|0ln>|<cwith|22|22|3|3|cell-tborder|0ln>|<cwith|26|29|3|3|cell-halign|c>|<cwith|26|29|3|3|cell-valign|c>|<cwith|26|26|3|3|cell-halign|c>|<cwith|26|26|3|3|cell-valign|c>|<cwith|27|27|3|3|cell-halign|c>|<cwith|27|27|3|3|cell-valign|c>|<cwith|28|28|3|3|cell-halign|c>|<cwith|28|28|3|3|cell-valign|c>|<cwith|29|29|3|3|cell-halign|c>|<cwith|29|29|3|3|cell-valign|c>|<cwith|29|29|3|3|cell-halign|c>|<cwith|29|29|3|3|cell-valign|c>|<cwith|26|29|3|3|cell-background|pastel
  blue>|<cwith|26|29|3|3|cell-halign|c>|<cwith|26|29|3|3|cell-valign|c>|<cwith|26|26|3|3|cell-halign|c>|<cwith|26|26|3|3|cell-valign|c>|<cwith|27|27|3|3|cell-halign|c>|<cwith|27|27|3|3|cell-valign|c>|<cwith|28|28|3|3|cell-halign|c>|<cwith|28|28|3|3|cell-valign|c>|<cwith|29|29|3|3|cell-halign|c>|<cwith|29|29|3|3|cell-valign|c>|<cwith|26|29|3|3|cell-background|pastel
  blue>|<cwith|26|26|3|3|cell-bborder|0ln>|<cwith|27|27|3|3|cell-tborder|0ln>|<cwith|26|26|3|3|cell-lborder|0ln>|<cwith|26|26|3|3|cell-rborder|0ln>|<cwith|26|26|3|3|cell-tborder|0ln>|<cwith|30|33|3|3|cell-halign|c>|<cwith|30|33|3|3|cell-valign|c>|<cwith|30|30|3|3|cell-halign|c>|<cwith|30|30|3|3|cell-valign|c>|<cwith|31|31|3|3|cell-halign|c>|<cwith|31|31|3|3|cell-valign|c>|<cwith|32|32|3|3|cell-halign|c>|<cwith|32|32|3|3|cell-valign|c>|<cwith|33|33|3|3|cell-halign|c>|<cwith|33|33|3|3|cell-valign|c>|<cwith|33|33|3|3|cell-halign|c>|<cwith|33|33|3|3|cell-valign|c>|<cwith|30|33|3|3|cell-background|pastel
  blue>|<cwith|30|33|3|3|cell-halign|c>|<cwith|30|33|3|3|cell-valign|c>|<cwith|30|30|3|3|cell-halign|c>|<cwith|30|30|3|3|cell-valign|c>|<cwith|31|31|3|3|cell-halign|c>|<cwith|31|31|3|3|cell-valign|c>|<cwith|32|32|3|3|cell-halign|c>|<cwith|32|32|3|3|cell-valign|c>|<cwith|33|33|3|3|cell-halign|c>|<cwith|33|33|3|3|cell-valign|c>|<cwith|30|33|3|3|cell-background|pastel
  blue>|<cwith|30|30|3|3|cell-bborder|0ln>|<cwith|31|31|3|3|cell-tborder|0ln>|<cwith|30|30|3|3|cell-lborder|0ln>|<cwith|30|30|3|3|cell-rborder|0ln>|<cwith|30|30|3|3|cell-tborder|0ln>|<cwith|4|4|9|11|cell-halign|c>|<cwith|4|4|9|11|cell-valign|c>|<cwith|4|4|9|11|cell-background|pastel
  green>|<cwith|5|5|9|11|cell-halign|c>|<cwith|5|5|9|11|cell-valign|c>|<cwith|5|5|9|11|cell-background|pastel
  green>|<cwith|6|6|9|11|cell-halign|c>|<cwith|6|6|9|11|cell-valign|c>|<cwith|6|6|9|11|cell-background|pastel
  green>|<cwith|7|7|9|11|cell-halign|c>|<cwith|7|7|9|11|cell-valign|c>|<cwith|7|7|9|11|cell-background|pastel
  green>|<cwith|8|8|9|11|cell-halign|c>|<cwith|8|8|9|11|cell-valign|c>|<cwith|8|8|9|11|cell-background|pastel
  green>|<cwith|9|9|9|11|cell-halign|c>|<cwith|9|9|9|11|cell-valign|c>|<cwith|9|9|9|11|cell-background|pastel
  green>|<cwith|12|12|9|11|cell-halign|c>|<cwith|12|12|9|11|cell-valign|c>|<cwith|12|12|9|11|cell-background|pastel
  green>|<cwith|13|13|9|11|cell-halign|c>|<cwith|13|13|9|11|cell-valign|c>|<cwith|13|13|9|11|cell-background|pastel
  green>|<cwith|14|14|9|11|cell-halign|c>|<cwith|14|14|9|11|cell-valign|c>|<cwith|14|14|9|11|cell-background|pastel
  green>|<cwith|15|15|9|11|cell-halign|c>|<cwith|15|15|9|11|cell-valign|c>|<cwith|15|15|9|11|cell-background|pastel
  green>|<cwith|16|16|9|11|cell-halign|c>|<cwith|16|16|9|11|cell-valign|c>|<cwith|16|16|9|11|cell-background|pastel
  green>|<cwith|17|17|9|11|cell-halign|c>|<cwith|17|17|9|11|cell-valign|c>|<cwith|17|17|9|11|cell-background|pastel
  green>|<cwith|20|20|9|11|cell-halign|c>|<cwith|20|20|9|11|cell-valign|c>|<cwith|20|20|9|11|cell-background|pastel
  green>|<cwith|21|21|9|11|cell-halign|c>|<cwith|21|21|9|11|cell-valign|c>|<cwith|21|21|9|11|cell-background|pastel
  green>|<cwith|22|22|9|11|cell-halign|c>|<cwith|22|22|9|11|cell-valign|c>|<cwith|22|22|9|11|cell-background|pastel
  green>|<cwith|23|23|9|11|cell-halign|c>|<cwith|23|23|9|11|cell-valign|c>|<cwith|23|23|9|11|cell-background|pastel
  green>|<cwith|24|24|9|11|cell-halign|c>|<cwith|24|24|9|11|cell-valign|c>|<cwith|24|24|9|11|cell-background|pastel
  green>|<cwith|25|25|9|11|cell-halign|c>|<cwith|25|25|9|11|cell-valign|c>|<cwith|25|25|9|11|cell-background|pastel
  green>|<cwith|28|28|9|11|cell-halign|c>|<cwith|28|28|9|11|cell-valign|c>|<cwith|28|28|9|11|cell-background|pastel
  green>|<cwith|29|29|9|11|cell-halign|c>|<cwith|29|29|9|11|cell-valign|c>|<cwith|29|29|9|11|cell-background|pastel
  green>|<cwith|30|30|9|11|cell-halign|c>|<cwith|30|30|9|11|cell-valign|c>|<cwith|30|30|9|11|cell-background|pastel
  green>|<cwith|31|31|9|11|cell-halign|c>|<cwith|31|31|9|11|cell-valign|c>|<cwith|31|31|9|11|cell-background|pastel
  green>|<cwith|32|32|9|11|cell-halign|c>|<cwith|32|32|9|11|cell-valign|c>|<cwith|32|32|9|11|cell-background|pastel
  green>|<cwith|33|33|9|11|cell-halign|c>|<cwith|33|33|9|11|cell-valign|c>|<cwith|33|33|9|11|cell-background|pastel
  green>|<table|<row|<cell|a<rsub|2>>|<cell|a<rsub|1>>|<cell|a<rsub|0>>|<cell|R<rsub|0>>|<cell|R<rsub|1>>|<cell|R<rsub|2>>|<cell|R<rsub|3>>|<cell|R<rsub|VIP>>|<cell|UP>|<cell|STOP>|<cell|DOWN>|<cell|HEX>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|<shell|0x0>>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|<shell|0x4>>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|<shell|0x4>>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|<shell|0x4>>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|<shell|0x4>>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|<shell|0x4>>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|<shell|0x4>>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<shell|0x4>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|<shell|0x2>>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|<shell|0x6>>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|<shell|0x6>>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<shell|0x6>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|<shell|0x6>>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|<shell|0x6>>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|<shell|0x6>>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|<shell|0x6>>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|<shell|0x1>>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|<shell|0x5>>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|<shell|0x5>>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|<shell|0x5>>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|<shell|0x5>>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|<shell|0x5>>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|<shell|0x5>>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|<shell|0x5>>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|<shell|0x3>>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|<shell|0x7>>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|<shell|0x7>>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|<shell|0x7>>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|<shell|0x7>>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|<shell|0x7>>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|<shell|0x7>>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|<shell|0x7>>>>>>>>>>>>|Tabella
  di verità del comparatore per <math|a<rsub|2>=0,a<rsub|1>=0,a<rsub|0>=1>>

  La terza tabella di verità rappresenta le <math|32> possibili richieste
  <math|R<rsub|x>> nel caso in cui <math|a<rsub|2>=0,a<rsub|1>=1,a<rsub|0>=0>
  (quindi siamo nel caso in cui si attiva il segnale di arrivo
  <math|A<rsub|2>>):

  <big-table|<tiny|<tabular|<tformat|<table|<row|<cell|<math|<tformat|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|1|-1|1|-1|cell-valign|c>|<cwith|19|33|5|8|cell-halign|c>|<cwith|19|33|5|8|cell-valign|c>|<cwith|19|26|4|4|cell-halign|c>|<cwith|19|26|4|4|cell-valign|c>|<cwith|19|26|4|4|cell-halign|c>|<cwith|19|26|4|4|cell-valign|c>|<cwith|27|34|4|4|cell-halign|c>|<cwith|27|34|4|4|cell-valign|c>|<cwith|27|34|4|4|cell-halign|c>|<cwith|27|34|4|4|cell-valign|c>|<cwith|2|2|1|3|cell-halign|c>|<cwith|2|2|1|3|cell-valign|c>|<cwith|3|3|1|3|cell-halign|c>|<cwith|3|3|1|3|cell-valign|c>|<cwith|4|4|1|3|cell-halign|c>|<cwith|4|4|1|3|cell-valign|c>|<cwith|5|5|1|3|cell-halign|c>|<cwith|5|5|1|3|cell-valign|c>|<cwith|6|6|1|3|cell-halign|c>|<cwith|6|6|1|3|cell-valign|c>|<cwith|7|7|1|3|cell-halign|c>|<cwith|7|7|1|3|cell-valign|c>|<cwith|8|8|1|3|cell-halign|c>|<cwith|8|8|1|3|cell-valign|c>|<cwith|9|15|1|3|cell-halign|c>|<cwith|9|15|1|3|cell-valign|c>|<cwith|9|9|1|3|cell-halign|c>|<cwith|9|9|1|3|cell-valign|c>|<cwith|10|10|1|3|cell-halign|c>|<cwith|10|10|1|3|cell-valign|c>|<cwith|11|11|1|3|cell-halign|c>|<cwith|11|11|1|3|cell-valign|c>|<cwith|12|12|1|3|cell-halign|c>|<cwith|12|12|1|3|cell-valign|c>|<cwith|13|13|1|3|cell-halign|c>|<cwith|13|13|1|3|cell-valign|c>|<cwith|14|14|1|3|cell-halign|c>|<cwith|14|14|1|3|cell-valign|c>|<cwith|15|15|1|3|cell-halign|c>|<cwith|15|15|1|3|cell-valign|c>|<cwith|16|22|1|3|cell-halign|c>|<cwith|16|22|1|3|cell-valign|c>|<cwith|16|16|1|3|cell-halign|c>|<cwith|16|16|1|3|cell-valign|c>|<cwith|17|17|1|3|cell-halign|c>|<cwith|17|17|1|3|cell-valign|c>|<cwith|18|18|1|3|cell-halign|c>|<cwith|18|18|1|3|cell-valign|c>|<cwith|19|19|1|3|cell-halign|c>|<cwith|19|19|1|3|cell-valign|c>|<cwith|20|20|1|3|cell-halign|c>|<cwith|20|20|1|3|cell-valign|c>|<cwith|21|21|1|3|cell-halign|c>|<cwith|21|21|1|3|cell-valign|c>|<cwith|22|22|1|3|cell-halign|c>|<cwith|22|22|1|3|cell-valign|c>|<cwith|23|29|1|3|cell-halign|c>|<cwith|23|29|1|3|cell-valign|c>|<cwith|23|23|1|3|cell-halign|c>|<cwith|23|23|1|3|cell-valign|c>|<cwith|24|24|1|3|cell-halign|c>|<cwith|24|24|1|3|cell-valign|c>|<cwith|25|25|1|3|cell-halign|c>|<cwith|25|25|1|3|cell-valign|c>|<cwith|26|26|1|3|cell-halign|c>|<cwith|26|26|1|3|cell-valign|c>|<cwith|27|27|1|3|cell-halign|c>|<cwith|27|27|1|3|cell-valign|c>|<cwith|28|28|1|3|cell-halign|c>|<cwith|28|28|1|3|cell-valign|c>|<cwith|29|29|1|3|cell-halign|c>|<cwith|29|29|1|3|cell-valign|c>|<cwith|30|32|1|3|cell-halign|c>|<cwith|30|32|1|3|cell-valign|c>|<cwith|30|32|1|3|cell-halign|c>|<cwith|30|32|1|3|cell-valign|c>|<cwith|30|30|1|3|cell-halign|c>|<cwith|30|30|1|3|cell-valign|c>|<cwith|31|31|1|3|cell-halign|c>|<cwith|31|31|1|3|cell-valign|c>|<cwith|32|32|1|3|cell-halign|c>|<cwith|32|32|1|3|cell-valign|c>|<cwith|33|33|1|3|cell-halign|c>|<cwith|33|33|1|3|cell-valign|c>|<cwith|33|33|1|3|cell-halign|c>|<cwith|33|33|1|3|cell-valign|c>|<cwith|33|33|1|3|cell-halign|c>|<cwith|33|33|1|3|cell-valign|c>|<cwith|33|33|1|3|cell-halign|c>|<cwith|33|33|1|3|cell-valign|c>|<cwith|1|-1|9|12|cell-background|pastel
  green>|<cwith|1|-1|1|8|cell-background|pastel
  blue>|<cwith|33|33|1|-1|cell-bborder|1ln>|<cwith|1|-1|1|1|cell-lborder|1ln>|<cwith|1|-1|12|12|cell-rborder|1ln>|<cwith|1|1|1|-1|cell-tborder|1ln>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|2|2|1|-1|cell-tborder|1ln>|<cwith|1|1|1|1|cell-lborder|1ln>|<cwith|1|1|12|12|cell-rborder|1ln>|<cwith|6|9|3|3|cell-halign|c>|<cwith|6|9|3|3|cell-valign|c>|<cwith|6|6|3|3|cell-halign|c>|<cwith|6|6|3|3|cell-valign|c>|<cwith|7|7|3|3|cell-halign|c>|<cwith|7|7|3|3|cell-valign|c>|<cwith|8|8|3|3|cell-halign|c>|<cwith|8|8|3|3|cell-valign|c>|<cwith|9|9|3|3|cell-halign|c>|<cwith|9|9|3|3|cell-valign|c>|<cwith|6|9|3|3|cell-background|pastel
  blue>|<cwith|6|6|3|3|cell-bborder|0ln>|<cwith|7|7|3|3|cell-tborder|0ln>|<cwith|5|6|3|3|cell-lborder|0ln>|<cwith|5|6|2|2|cell-rborder|0ln>|<cwith|5|6|3|3|cell-rborder|0ln>|<cwith|5|6|4|4|cell-lborder|0ln>|<cwith|5|5|3|3|cell-tborder|0ln>|<cwith|4|4|3|3|cell-bborder|0ln>|<cwith|5|5|3|3|cell-bborder|0ln>|<cwith|6|6|3|3|cell-tborder|0ln>|<cwith|5|5|3|3|cell-lborder|0ln>|<cwith|5|5|2|2|cell-rborder|0ln>|<cwith|5|5|3|3|cell-rborder|0ln>|<cwith|5|5|4|4|cell-lborder|0ln>|<cwith|10|13|3|3|cell-halign|c>|<cwith|10|13|3|3|cell-valign|c>|<cwith|10|10|3|3|cell-halign|c>|<cwith|10|10|3|3|cell-valign|c>|<cwith|11|11|3|3|cell-halign|c>|<cwith|11|11|3|3|cell-valign|c>|<cwith|12|12|3|3|cell-halign|c>|<cwith|12|12|3|3|cell-valign|c>|<cwith|13|13|3|3|cell-halign|c>|<cwith|13|13|3|3|cell-valign|c>|<cwith|13|13|3|3|cell-halign|c>|<cwith|13|13|3|3|cell-valign|c>|<cwith|10|13|3|3|cell-background|pastel
  blue>|<cwith|10|13|3|3|cell-halign|c>|<cwith|10|13|3|3|cell-valign|c>|<cwith|10|10|3|3|cell-halign|c>|<cwith|10|10|3|3|cell-valign|c>|<cwith|11|11|3|3|cell-halign|c>|<cwith|11|11|3|3|cell-valign|c>|<cwith|12|12|3|3|cell-halign|c>|<cwith|12|12|3|3|cell-valign|c>|<cwith|13|13|3|3|cell-halign|c>|<cwith|13|13|3|3|cell-valign|c>|<cwith|10|13|3|3|cell-background|pastel
  blue>|<cwith|10|10|3|3|cell-bborder|0ln>|<cwith|11|11|3|3|cell-tborder|0ln>|<cwith|10|10|3|3|cell-lborder|0ln>|<cwith|10|10|3|3|cell-rborder|0ln>|<cwith|10|10|3|3|cell-tborder|0ln>|<cwith|14|17|3|3|cell-halign|c>|<cwith|14|17|3|3|cell-valign|c>|<cwith|14|14|3|3|cell-halign|c>|<cwith|14|14|3|3|cell-valign|c>|<cwith|15|15|3|3|cell-halign|c>|<cwith|15|15|3|3|cell-valign|c>|<cwith|16|16|3|3|cell-halign|c>|<cwith|16|16|3|3|cell-valign|c>|<cwith|17|17|3|3|cell-halign|c>|<cwith|17|17|3|3|cell-valign|c>|<cwith|17|17|3|3|cell-halign|c>|<cwith|17|17|3|3|cell-valign|c>|<cwith|14|17|3|3|cell-background|pastel
  blue>|<cwith|14|17|3|3|cell-halign|c>|<cwith|14|17|3|3|cell-valign|c>|<cwith|14|14|3|3|cell-halign|c>|<cwith|14|14|3|3|cell-valign|c>|<cwith|15|15|3|3|cell-halign|c>|<cwith|15|15|3|3|cell-valign|c>|<cwith|16|16|3|3|cell-halign|c>|<cwith|16|16|3|3|cell-valign|c>|<cwith|17|17|3|3|cell-halign|c>|<cwith|17|17|3|3|cell-valign|c>|<cwith|14|17|3|3|cell-background|pastel
  blue>|<cwith|14|14|3|3|cell-bborder|0ln>|<cwith|15|15|3|3|cell-tborder|0ln>|<cwith|14|14|3|3|cell-lborder|0ln>|<cwith|14|14|3|3|cell-rborder|0ln>|<cwith|14|14|3|3|cell-tborder|0ln>|<cwith|18|21|3|3|cell-halign|c>|<cwith|18|21|3|3|cell-valign|c>|<cwith|18|18|3|3|cell-halign|c>|<cwith|18|18|3|3|cell-valign|c>|<cwith|19|19|3|3|cell-halign|c>|<cwith|19|19|3|3|cell-valign|c>|<cwith|20|20|3|3|cell-halign|c>|<cwith|20|20|3|3|cell-valign|c>|<cwith|21|21|3|3|cell-halign|c>|<cwith|21|21|3|3|cell-valign|c>|<cwith|21|21|3|3|cell-halign|c>|<cwith|21|21|3|3|cell-valign|c>|<cwith|18|21|3|3|cell-background|pastel
  blue>|<cwith|18|21|3|3|cell-halign|c>|<cwith|18|21|3|3|cell-valign|c>|<cwith|18|18|3|3|cell-halign|c>|<cwith|18|18|3|3|cell-valign|c>|<cwith|19|19|3|3|cell-halign|c>|<cwith|19|19|3|3|cell-valign|c>|<cwith|20|20|3|3|cell-halign|c>|<cwith|20|20|3|3|cell-valign|c>|<cwith|21|21|3|3|cell-halign|c>|<cwith|21|21|3|3|cell-valign|c>|<cwith|18|21|3|3|cell-background|pastel
  blue>|<cwith|22|25|3|3|cell-halign|c>|<cwith|22|25|3|3|cell-valign|c>|<cwith|22|22|3|3|cell-halign|c>|<cwith|22|22|3|3|cell-valign|c>|<cwith|23|23|3|3|cell-halign|c>|<cwith|23|23|3|3|cell-valign|c>|<cwith|24|24|3|3|cell-halign|c>|<cwith|24|24|3|3|cell-valign|c>|<cwith|25|25|3|3|cell-halign|c>|<cwith|25|25|3|3|cell-valign|c>|<cwith|25|25|3|3|cell-halign|c>|<cwith|25|25|3|3|cell-valign|c>|<cwith|22|25|3|3|cell-background|pastel
  blue>|<cwith|22|25|3|3|cell-halign|c>|<cwith|22|25|3|3|cell-valign|c>|<cwith|22|22|3|3|cell-halign|c>|<cwith|22|22|3|3|cell-valign|c>|<cwith|23|23|3|3|cell-halign|c>|<cwith|23|23|3|3|cell-valign|c>|<cwith|24|24|3|3|cell-halign|c>|<cwith|24|24|3|3|cell-valign|c>|<cwith|25|25|3|3|cell-halign|c>|<cwith|25|25|3|3|cell-valign|c>|<cwith|22|25|3|3|cell-background|pastel
  blue>|<cwith|22|22|3|3|cell-bborder|0ln>|<cwith|23|23|3|3|cell-tborder|0ln>|<cwith|22|22|3|3|cell-lborder|0ln>|<cwith|22|22|3|3|cell-rborder|0ln>|<cwith|22|22|3|3|cell-tborder|0ln>|<cwith|26|29|3|3|cell-halign|c>|<cwith|26|29|3|3|cell-valign|c>|<cwith|26|26|3|3|cell-halign|c>|<cwith|26|26|3|3|cell-valign|c>|<cwith|27|27|3|3|cell-halign|c>|<cwith|27|27|3|3|cell-valign|c>|<cwith|28|28|3|3|cell-halign|c>|<cwith|28|28|3|3|cell-valign|c>|<cwith|29|29|3|3|cell-halign|c>|<cwith|29|29|3|3|cell-valign|c>|<cwith|29|29|3|3|cell-halign|c>|<cwith|29|29|3|3|cell-valign|c>|<cwith|26|29|3|3|cell-background|pastel
  blue>|<cwith|26|29|3|3|cell-halign|c>|<cwith|26|29|3|3|cell-valign|c>|<cwith|26|26|3|3|cell-halign|c>|<cwith|26|26|3|3|cell-valign|c>|<cwith|27|27|3|3|cell-halign|c>|<cwith|27|27|3|3|cell-valign|c>|<cwith|28|28|3|3|cell-halign|c>|<cwith|28|28|3|3|cell-valign|c>|<cwith|29|29|3|3|cell-halign|c>|<cwith|29|29|3|3|cell-valign|c>|<cwith|26|29|3|3|cell-background|pastel
  blue>|<cwith|26|26|3|3|cell-bborder|0ln>|<cwith|27|27|3|3|cell-tborder|0ln>|<cwith|26|26|3|3|cell-lborder|0ln>|<cwith|26|26|3|3|cell-rborder|0ln>|<cwith|26|26|3|3|cell-tborder|0ln>|<cwith|30|33|3|3|cell-halign|c>|<cwith|30|33|3|3|cell-valign|c>|<cwith|30|30|3|3|cell-halign|c>|<cwith|30|30|3|3|cell-valign|c>|<cwith|31|31|3|3|cell-halign|c>|<cwith|31|31|3|3|cell-valign|c>|<cwith|32|32|3|3|cell-halign|c>|<cwith|32|32|3|3|cell-valign|c>|<cwith|33|33|3|3|cell-halign|c>|<cwith|33|33|3|3|cell-valign|c>|<cwith|33|33|3|3|cell-halign|c>|<cwith|33|33|3|3|cell-valign|c>|<cwith|30|33|3|3|cell-background|pastel
  blue>|<cwith|30|33|3|3|cell-halign|c>|<cwith|30|33|3|3|cell-valign|c>|<cwith|30|30|3|3|cell-halign|c>|<cwith|30|30|3|3|cell-valign|c>|<cwith|31|31|3|3|cell-halign|c>|<cwith|31|31|3|3|cell-valign|c>|<cwith|32|32|3|3|cell-halign|c>|<cwith|32|32|3|3|cell-valign|c>|<cwith|33|33|3|3|cell-halign|c>|<cwith|33|33|3|3|cell-valign|c>|<cwith|30|33|3|3|cell-background|pastel
  blue>|<cwith|30|30|3|3|cell-bborder|0ln>|<cwith|31|31|3|3|cell-tborder|0ln>|<cwith|30|30|3|3|cell-lborder|0ln>|<cwith|30|30|3|3|cell-rborder|0ln>|<cwith|30|30|3|3|cell-tborder|0ln>|<cwith|2|33|2|2|cell-halign|c>|<cwith|2|33|2|2|cell-valign|c>|<cwith|2|2|2|2|cell-halign|c>|<cwith|2|2|2|2|cell-valign|c>|<cwith|3|3|2|2|cell-halign|c>|<cwith|3|3|2|2|cell-valign|c>|<cwith|4|4|2|2|cell-halign|c>|<cwith|4|4|2|2|cell-valign|c>|<cwith|5|5|2|2|cell-halign|c>|<cwith|5|5|2|2|cell-valign|c>|<cwith|6|6|2|2|cell-halign|c>|<cwith|6|6|2|2|cell-valign|c>|<cwith|7|7|2|2|cell-halign|c>|<cwith|7|7|2|2|cell-valign|c>|<cwith|8|8|2|2|cell-halign|c>|<cwith|8|8|2|2|cell-valign|c>|<cwith|9|15|2|2|cell-halign|c>|<cwith|9|15|2|2|cell-valign|c>|<cwith|9|9|2|2|cell-halign|c>|<cwith|9|9|2|2|cell-valign|c>|<cwith|10|10|2|2|cell-halign|c>|<cwith|10|10|2|2|cell-valign|c>|<cwith|11|11|2|2|cell-halign|c>|<cwith|11|11|2|2|cell-valign|c>|<cwith|12|12|2|2|cell-halign|c>|<cwith|12|12|2|2|cell-valign|c>|<cwith|13|13|2|2|cell-halign|c>|<cwith|13|13|2|2|cell-valign|c>|<cwith|14|14|2|2|cell-halign|c>|<cwith|14|14|2|2|cell-valign|c>|<cwith|15|15|2|2|cell-halign|c>|<cwith|15|15|2|2|cell-valign|c>|<cwith|16|22|2|2|cell-halign|c>|<cwith|16|22|2|2|cell-valign|c>|<cwith|16|16|2|2|cell-halign|c>|<cwith|16|16|2|2|cell-valign|c>|<cwith|17|17|2|2|cell-halign|c>|<cwith|17|17|2|2|cell-valign|c>|<cwith|18|18|2|2|cell-halign|c>|<cwith|18|18|2|2|cell-valign|c>|<cwith|19|19|2|2|cell-halign|c>|<cwith|19|19|2|2|cell-valign|c>|<cwith|20|20|2|2|cell-halign|c>|<cwith|20|20|2|2|cell-valign|c>|<cwith|21|21|2|2|cell-halign|c>|<cwith|21|21|2|2|cell-valign|c>|<cwith|22|22|2|2|cell-halign|c>|<cwith|22|22|2|2|cell-valign|c>|<cwith|23|29|2|2|cell-halign|c>|<cwith|23|29|2|2|cell-valign|c>|<cwith|23|23|2|2|cell-halign|c>|<cwith|23|23|2|2|cell-valign|c>|<cwith|24|24|2|2|cell-halign|c>|<cwith|24|24|2|2|cell-valign|c>|<cwith|25|25|2|2|cell-halign|c>|<cwith|25|25|2|2|cell-valign|c>|<cwith|26|26|2|2|cell-halign|c>|<cwith|26|26|2|2|cell-valign|c>|<cwith|27|27|2|2|cell-halign|c>|<cwith|27|27|2|2|cell-valign|c>|<cwith|28|28|2|2|cell-halign|c>|<cwith|28|28|2|2|cell-valign|c>|<cwith|29|29|2|2|cell-halign|c>|<cwith|29|29|2|2|cell-valign|c>|<cwith|30|32|2|2|cell-halign|c>|<cwith|30|32|2|2|cell-valign|c>|<cwith|30|32|2|2|cell-halign|c>|<cwith|30|32|2|2|cell-valign|c>|<cwith|30|30|2|2|cell-halign|c>|<cwith|30|30|2|2|cell-valign|c>|<cwith|31|31|2|2|cell-halign|c>|<cwith|31|31|2|2|cell-valign|c>|<cwith|32|32|2|2|cell-halign|c>|<cwith|32|32|2|2|cell-valign|c>|<cwith|33|33|2|2|cell-halign|c>|<cwith|33|33|2|2|cell-valign|c>|<cwith|33|33|2|2|cell-halign|c>|<cwith|33|33|2|2|cell-valign|c>|<cwith|33|33|2|2|cell-halign|c>|<cwith|33|33|2|2|cell-valign|c>|<cwith|33|33|2|2|cell-halign|c>|<cwith|33|33|2|2|cell-valign|c>|<cwith|2|33|2|2|cell-background|pastel
  blue>|<cwith|33|33|2|2|cell-bborder|1ln>|<cwith|2|2|2|2|cell-tborder|1ln>|<cwith|6|9|2|2|cell-halign|c>|<cwith|6|9|2|2|cell-valign|c>|<cwith|6|6|2|2|cell-halign|c>|<cwith|6|6|2|2|cell-valign|c>|<cwith|7|7|2|2|cell-halign|c>|<cwith|7|7|2|2|cell-valign|c>|<cwith|8|8|2|2|cell-halign|c>|<cwith|8|8|2|2|cell-valign|c>|<cwith|9|9|2|2|cell-halign|c>|<cwith|9|9|2|2|cell-valign|c>|<cwith|6|9|2|2|cell-background|pastel
  blue>|<cwith|6|6|2|2|cell-bborder|0ln>|<cwith|7|7|2|2|cell-tborder|0ln>|<cwith|5|6|2|2|cell-lborder|0ln>|<cwith|5|6|2|2|cell-rborder|0ln>|<cwith|5|5|2|2|cell-tborder|0ln>|<cwith|4|4|2|2|cell-bborder|0ln>|<cwith|5|5|2|2|cell-bborder|0ln>|<cwith|6|6|2|2|cell-tborder|0ln>|<cwith|5|5|2|2|cell-lborder|0ln>|<cwith|5|5|2|2|cell-rborder|0ln>|<cwith|10|13|2|2|cell-halign|c>|<cwith|10|13|2|2|cell-valign|c>|<cwith|10|10|2|2|cell-halign|c>|<cwith|10|10|2|2|cell-valign|c>|<cwith|11|11|2|2|cell-halign|c>|<cwith|11|11|2|2|cell-valign|c>|<cwith|12|12|2|2|cell-halign|c>|<cwith|12|12|2|2|cell-valign|c>|<cwith|13|13|2|2|cell-halign|c>|<cwith|13|13|2|2|cell-valign|c>|<cwith|13|13|2|2|cell-halign|c>|<cwith|13|13|2|2|cell-valign|c>|<cwith|10|13|2|2|cell-background|pastel
  blue>|<cwith|10|13|2|2|cell-halign|c>|<cwith|10|13|2|2|cell-valign|c>|<cwith|10|10|2|2|cell-halign|c>|<cwith|10|10|2|2|cell-valign|c>|<cwith|11|11|2|2|cell-halign|c>|<cwith|11|11|2|2|cell-valign|c>|<cwith|12|12|2|2|cell-halign|c>|<cwith|12|12|2|2|cell-valign|c>|<cwith|13|13|2|2|cell-halign|c>|<cwith|13|13|2|2|cell-valign|c>|<cwith|10|13|2|2|cell-background|pastel
  blue>|<cwith|10|10|2|2|cell-bborder|0ln>|<cwith|11|11|2|2|cell-tborder|0ln>|<cwith|10|10|2|2|cell-lborder|0ln>|<cwith|10|10|2|2|cell-rborder|0ln>|<cwith|10|10|2|2|cell-tborder|0ln>|<cwith|14|17|2|2|cell-halign|c>|<cwith|14|17|2|2|cell-valign|c>|<cwith|14|14|2|2|cell-halign|c>|<cwith|14|14|2|2|cell-valign|c>|<cwith|15|15|2|2|cell-halign|c>|<cwith|15|15|2|2|cell-valign|c>|<cwith|16|16|2|2|cell-halign|c>|<cwith|16|16|2|2|cell-valign|c>|<cwith|17|17|2|2|cell-halign|c>|<cwith|17|17|2|2|cell-valign|c>|<cwith|17|17|2|2|cell-halign|c>|<cwith|17|17|2|2|cell-valign|c>|<cwith|14|17|2|2|cell-background|pastel
  blue>|<cwith|14|17|2|2|cell-halign|c>|<cwith|14|17|2|2|cell-valign|c>|<cwith|14|14|2|2|cell-halign|c>|<cwith|14|14|2|2|cell-valign|c>|<cwith|15|15|2|2|cell-halign|c>|<cwith|15|15|2|2|cell-valign|c>|<cwith|16|16|2|2|cell-halign|c>|<cwith|16|16|2|2|cell-valign|c>|<cwith|17|17|2|2|cell-halign|c>|<cwith|17|17|2|2|cell-valign|c>|<cwith|14|17|2|2|cell-background|pastel
  blue>|<cwith|14|14|2|2|cell-bborder|0ln>|<cwith|15|15|2|2|cell-tborder|0ln>|<cwith|14|14|2|2|cell-lborder|0ln>|<cwith|14|14|2|2|cell-rborder|0ln>|<cwith|14|14|2|2|cell-tborder|0ln>|<cwith|18|21|2|2|cell-halign|c>|<cwith|18|21|2|2|cell-valign|c>|<cwith|18|18|2|2|cell-halign|c>|<cwith|18|18|2|2|cell-valign|c>|<cwith|19|19|2|2|cell-halign|c>|<cwith|19|19|2|2|cell-valign|c>|<cwith|20|20|2|2|cell-halign|c>|<cwith|20|20|2|2|cell-valign|c>|<cwith|21|21|2|2|cell-halign|c>|<cwith|21|21|2|2|cell-valign|c>|<cwith|21|21|2|2|cell-halign|c>|<cwith|21|21|2|2|cell-valign|c>|<cwith|18|21|2|2|cell-background|pastel
  blue>|<cwith|18|21|2|2|cell-halign|c>|<cwith|18|21|2|2|cell-valign|c>|<cwith|18|18|2|2|cell-halign|c>|<cwith|18|18|2|2|cell-valign|c>|<cwith|19|19|2|2|cell-halign|c>|<cwith|19|19|2|2|cell-valign|c>|<cwith|20|20|2|2|cell-halign|c>|<cwith|20|20|2|2|cell-valign|c>|<cwith|21|21|2|2|cell-halign|c>|<cwith|21|21|2|2|cell-valign|c>|<cwith|18|21|2|2|cell-background|pastel
  blue>|<cwith|18|18|2|2|cell-bborder|0ln>|<cwith|19|19|2|2|cell-tborder|0ln>|<cwith|18|18|2|2|cell-lborder|0ln>|<cwith|18|18|2|2|cell-tborder|0ln>|<cwith|22|25|2|2|cell-halign|c>|<cwith|22|25|2|2|cell-valign|c>|<cwith|22|22|2|2|cell-halign|c>|<cwith|22|22|2|2|cell-valign|c>|<cwith|23|23|2|2|cell-halign|c>|<cwith|23|23|2|2|cell-valign|c>|<cwith|24|24|2|2|cell-halign|c>|<cwith|24|24|2|2|cell-valign|c>|<cwith|25|25|2|2|cell-halign|c>|<cwith|25|25|2|2|cell-valign|c>|<cwith|25|25|2|2|cell-halign|c>|<cwith|25|25|2|2|cell-valign|c>|<cwith|22|25|2|2|cell-background|pastel
  blue>|<cwith|22|25|2|2|cell-halign|c>|<cwith|22|25|2|2|cell-valign|c>|<cwith|22|22|2|2|cell-halign|c>|<cwith|22|22|2|2|cell-valign|c>|<cwith|23|23|2|2|cell-halign|c>|<cwith|23|23|2|2|cell-valign|c>|<cwith|24|24|2|2|cell-halign|c>|<cwith|24|24|2|2|cell-valign|c>|<cwith|25|25|2|2|cell-halign|c>|<cwith|25|25|2|2|cell-valign|c>|<cwith|22|25|2|2|cell-background|pastel
  blue>|<cwith|22|22|2|2|cell-bborder|0ln>|<cwith|23|23|2|2|cell-tborder|0ln>|<cwith|22|22|2|2|cell-lborder|0ln>|<cwith|22|22|2|2|cell-rborder|0ln>|<cwith|22|22|2|2|cell-tborder|0ln>|<cwith|26|29|2|2|cell-halign|c>|<cwith|26|29|2|2|cell-valign|c>|<cwith|26|26|2|2|cell-halign|c>|<cwith|26|26|2|2|cell-valign|c>|<cwith|27|27|2|2|cell-halign|c>|<cwith|27|27|2|2|cell-valign|c>|<cwith|28|28|2|2|cell-halign|c>|<cwith|28|28|2|2|cell-valign|c>|<cwith|29|29|2|2|cell-halign|c>|<cwith|29|29|2|2|cell-valign|c>|<cwith|29|29|2|2|cell-halign|c>|<cwith|29|29|2|2|cell-valign|c>|<cwith|26|29|2|2|cell-background|pastel
  blue>|<cwith|26|29|2|2|cell-halign|c>|<cwith|26|29|2|2|cell-valign|c>|<cwith|26|26|2|2|cell-halign|c>|<cwith|26|26|2|2|cell-valign|c>|<cwith|27|27|2|2|cell-halign|c>|<cwith|27|27|2|2|cell-valign|c>|<cwith|28|28|2|2|cell-halign|c>|<cwith|28|28|2|2|cell-valign|c>|<cwith|29|29|2|2|cell-halign|c>|<cwith|29|29|2|2|cell-valign|c>|<cwith|26|29|2|2|cell-background|pastel
  blue>|<cwith|26|26|2|2|cell-bborder|0ln>|<cwith|27|27|2|2|cell-tborder|0ln>|<cwith|26|26|2|2|cell-lborder|0ln>|<cwith|26|26|2|2|cell-rborder|0ln>|<cwith|26|26|2|2|cell-tborder|0ln>|<cwith|30|33|2|2|cell-halign|c>|<cwith|30|33|2|2|cell-valign|c>|<cwith|30|30|2|2|cell-halign|c>|<cwith|30|30|2|2|cell-valign|c>|<cwith|31|31|2|2|cell-halign|c>|<cwith|31|31|2|2|cell-valign|c>|<cwith|32|32|2|2|cell-halign|c>|<cwith|32|32|2|2|cell-valign|c>|<cwith|33|33|2|2|cell-halign|c>|<cwith|33|33|2|2|cell-valign|c>|<cwith|33|33|2|2|cell-halign|c>|<cwith|33|33|2|2|cell-valign|c>|<cwith|30|33|2|2|cell-background|pastel
  blue>|<cwith|30|33|2|2|cell-halign|c>|<cwith|30|33|2|2|cell-valign|c>|<cwith|30|30|2|2|cell-halign|c>|<cwith|30|30|2|2|cell-valign|c>|<cwith|31|31|2|2|cell-halign|c>|<cwith|31|31|2|2|cell-valign|c>|<cwith|32|32|2|2|cell-halign|c>|<cwith|32|32|2|2|cell-valign|c>|<cwith|33|33|2|2|cell-halign|c>|<cwith|33|33|2|2|cell-valign|c>|<cwith|30|33|2|2|cell-background|pastel
  blue>|<cwith|30|30|2|2|cell-bborder|0ln>|<cwith|31|31|2|2|cell-tborder|0ln>|<cwith|30|30|2|2|cell-lborder|0ln>|<cwith|30|30|2|2|cell-rborder|0ln>|<cwith|30|30|2|2|cell-tborder|0ln>|<cwith|2|17|3|3|cell-halign|c>|<cwith|2|17|3|3|cell-valign|c>|<cwith|2|17|3|3|cell-background|pastel
  blue>|<cwith|2|2|3|3|cell-tborder|1ln>|<cwith|5|6|3|3|cell-lborder|0ln>|<cwith|5|5|3|3|cell-lborder|0ln>|<cwith|18|33|3|3|cell-halign|c>|<cwith|18|33|3|3|cell-valign|c>|<cwith|18|33|3|3|cell-background|pastel
  blue>|<cwith|21|22|3|3|cell-lborder|0ln>|<cwith|21|21|3|3|cell-lborder|0ln>|<cwith|18|18|3|3|cell-tborder|0ln>|<cwith|17|17|3|3|cell-bborder|0ln>|<cwith|18|18|3|3|cell-bborder|0ln>|<cwith|19|19|3|3|cell-tborder|0ln>|<cwith|18|18|3|3|cell-lborder|0ln>|<cwith|18|18|2|2|cell-rborder|0ln>|<cwith|18|18|3|3|cell-rborder|0ln>|<cwith|18|18|4|4|cell-lborder|0ln>|<cwith|4|4|9|12|cell-halign|c>|<cwith|4|4|9|12|cell-valign|c>|<cwith|4|4|9|12|cell-background|pastel
  green>|<cwith|4|4|12|12|cell-rborder|1ln>|<cwith|5|5|9|12|cell-halign|c>|<cwith|5|5|9|12|cell-valign|c>|<cwith|5|5|9|12|cell-background|pastel
  green>|<cwith|5|5|12|12|cell-rborder|1ln>|<cwith|7|9|9|12|cell-halign|c>|<cwith|7|9|9|12|cell-valign|c>|<cwith|7|9|9|12|cell-background|pastel
  green>|<cwith|7|9|12|12|cell-rborder|1ln>|<cwith|7|7|9|11|cell-halign|c>|<cwith|7|7|9|11|cell-valign|c>|<cwith|7|7|9|11|cell-background|pastel
  green>|<cwith|8|8|9|11|cell-halign|c>|<cwith|8|8|9|11|cell-valign|c>|<cwith|8|8|9|11|cell-background|pastel
  green>|<cwith|9|9|9|11|cell-halign|c>|<cwith|9|9|9|11|cell-valign|c>|<cwith|9|9|9|11|cell-background|pastel
  green>|<cwith|10|10|9|12|cell-halign|c>|<cwith|10|10|9|12|cell-valign|c>|<cwith|10|10|9|12|cell-background|pastel
  green>|<cwith|10|10|12|12|cell-rborder|1ln>|<cwith|11|13|9|12|cell-halign|c>|<cwith|11|13|9|12|cell-valign|c>|<cwith|11|13|9|12|cell-background|pastel
  green>|<cwith|11|13|12|12|cell-rborder|1ln>|<cwith|11|11|9|11|cell-halign|c>|<cwith|11|11|9|11|cell-valign|c>|<cwith|11|11|9|11|cell-background|pastel
  green>|<cwith|12|12|9|11|cell-halign|c>|<cwith|12|12|9|11|cell-valign|c>|<cwith|12|12|9|11|cell-background|pastel
  green>|<cwith|13|13|9|11|cell-halign|c>|<cwith|13|13|9|11|cell-valign|c>|<cwith|13|13|9|11|cell-background|pastel
  green>|<cwith|14|17|9|12|cell-halign|c>|<cwith|14|17|9|12|cell-valign|c>|<cwith|14|17|9|12|cell-background|pastel
  green>|<cwith|14|17|12|12|cell-rborder|1ln>|<cwith|16|16|9|11|cell-halign|c>|<cwith|16|16|9|11|cell-valign|c>|<cwith|16|16|9|11|cell-background|pastel
  green>|<cwith|17|17|9|11|cell-halign|c>|<cwith|17|17|9|11|cell-valign|c>|<cwith|17|17|9|11|cell-background|pastel
  green>|<cwith|18|18|9|12|cell-halign|c>|<cwith|18|18|9|12|cell-valign|c>|<cwith|18|18|9|12|cell-background|pastel
  green>|<cwith|18|18|12|12|cell-rborder|1ln>|<cwith|18|18|9|12|cell-halign|c>|<cwith|18|18|9|12|cell-valign|c>|<cwith|18|18|9|12|cell-background|pastel
  green>|<cwith|18|18|12|12|cell-rborder|1ln>|<cwith|19|21|9|12|cell-halign|c>|<cwith|19|21|9|12|cell-valign|c>|<cwith|19|21|9|12|cell-background|pastel
  green>|<cwith|19|21|12|12|cell-rborder|1ln>|<cwith|19|21|9|12|cell-halign|c>|<cwith|19|21|9|12|cell-valign|c>|<cwith|19|21|9|12|cell-background|pastel
  green>|<cwith|19|21|12|12|cell-rborder|1ln>|<cwith|19|19|9|11|cell-halign|c>|<cwith|19|19|9|11|cell-valign|c>|<cwith|19|19|9|11|cell-background|pastel
  green>|<cwith|20|20|9|11|cell-halign|c>|<cwith|20|20|9|11|cell-valign|c>|<cwith|20|20|9|11|cell-background|pastel
  green>|<cwith|21|21|9|11|cell-halign|c>|<cwith|21|21|9|11|cell-valign|c>|<cwith|21|21|9|11|cell-background|pastel
  green>|<cwith|22|25|9|12|cell-halign|c>|<cwith|22|25|9|12|cell-valign|c>|<cwith|22|25|9|12|cell-background|pastel
  green>|<cwith|22|25|12|12|cell-rborder|1ln>|<cwith|22|25|9|12|cell-halign|c>|<cwith|22|25|9|12|cell-valign|c>|<cwith|22|25|9|12|cell-background|pastel
  green>|<cwith|22|25|12|12|cell-rborder|1ln>|<cwith|24|24|9|11|cell-halign|c>|<cwith|24|24|9|11|cell-valign|c>|<cwith|24|24|9|11|cell-background|pastel
  green>|<cwith|25|25|9|11|cell-halign|c>|<cwith|25|25|9|11|cell-valign|c>|<cwith|25|25|9|11|cell-background|pastel
  green>|<cwith|26|29|9|12|cell-halign|c>|<cwith|26|29|9|12|cell-valign|c>|<cwith|26|29|9|12|cell-background|pastel
  green>|<cwith|26|29|12|12|cell-rborder|1ln>|<cwith|26|26|9|12|cell-halign|c>|<cwith|26|26|9|12|cell-valign|c>|<cwith|26|26|9|12|cell-background|pastel
  green>|<cwith|26|26|12|12|cell-rborder|1ln>|<cwith|26|26|9|12|cell-halign|c>|<cwith|26|26|9|12|cell-valign|c>|<cwith|26|26|9|12|cell-background|pastel
  green>|<cwith|26|26|12|12|cell-rborder|1ln>|<cwith|27|29|9|12|cell-halign|c>|<cwith|27|29|9|12|cell-valign|c>|<cwith|27|29|9|12|cell-background|pastel
  green>|<cwith|27|29|12|12|cell-rborder|1ln>|<cwith|27|29|9|12|cell-halign|c>|<cwith|27|29|9|12|cell-valign|c>|<cwith|27|29|9|12|cell-background|pastel
  green>|<cwith|27|29|12|12|cell-rborder|1ln>|<cwith|27|27|9|11|cell-halign|c>|<cwith|27|27|9|11|cell-valign|c>|<cwith|27|27|9|11|cell-background|pastel
  green>|<cwith|28|28|9|11|cell-halign|c>|<cwith|28|28|9|11|cell-valign|c>|<cwith|28|28|9|11|cell-background|pastel
  green>|<cwith|29|29|9|11|cell-halign|c>|<cwith|29|29|9|11|cell-valign|c>|<cwith|29|29|9|11|cell-background|pastel
  green>|<cwith|30|33|9|12|cell-halign|c>|<cwith|30|33|9|12|cell-valign|c>|<cwith|30|33|9|12|cell-background|pastel
  green>|<cwith|30|33|12|12|cell-rborder|1ln>|<cwith|30|33|9|12|cell-halign|c>|<cwith|30|33|9|12|cell-valign|c>|<cwith|30|33|9|12|cell-background|pastel
  green>|<cwith|30|33|12|12|cell-rborder|1ln>|<cwith|30|33|9|12|cell-halign|c>|<cwith|30|33|9|12|cell-valign|c>|<cwith|30|33|9|12|cell-background|pastel
  green>|<cwith|30|33|12|12|cell-rborder|1ln>|<cwith|32|32|9|11|cell-halign|c>|<cwith|32|32|9|11|cell-valign|c>|<cwith|32|32|9|11|cell-background|pastel
  green>|<cwith|33|33|9|11|cell-halign|c>|<cwith|33|33|9|11|cell-valign|c>|<cwith|33|33|9|11|cell-background|pastel
  green>|<table|<row|<cell|a<rsub|2>>|<cell|a<rsub|1>>|<cell|a<rsub|0>>|<cell|R<rsub|0>>|<cell|R<rsub|1>>|<cell|R<rsub|2>>|<cell|R<rsub|3>>|<cell|R<rsub|VIP>>|<cell|UP>|<cell|STOP>|<cell|DOWN>|<cell|HEX>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|<shell|0x0>>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|<shell|0x4>>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|<shell|0x4>>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|<shell|0x4>>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|<shell|0x2>>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|<shell|0x6>>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|<shell|0x6>>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<shell|0x6>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|<shell|0x1>>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|<shell|0x5>>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|<shell|0x5>>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<shell|0x5>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|<shell|0x3>>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|<shell|0x7>>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|<shell|0x7>>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|<shell|0x7>>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|<shell|0x1>>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|<shell|0x5>>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|<shell|0x5>>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|<shell|0x5>>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|<shell|0x3>>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|<shell|0x7>>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|<shell|0x7>>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|<shell|0x7>>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|<shell|0x1>>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|<shell|0x5>>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|<shell|0x5>>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|<shell|0x5>>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|<shell|0x3>>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|<shell|0x7>>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|<shell|0x7>>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|<shell|0x7>>>>>>>>>>>>|Tabella
  di verità del comparatore per <math|a<rsub|2>=0,a<rsub|1>=1,a<rsub|0>=0>>

  La quarta tabella di verità rappresenta le <math|32> possibili richieste
  <math|R<rsub|x>> nel caso in cui <math|a<rsub|2>=0,a<rsub|1>=1,a<rsub|0>=1>
  (quindi siamo nel caso in cui si attiva il segnale di arrivo
  <math|A<rsub|3>>):

  <big-table|<tiny|<tabular|<tformat|<table|<row|<cell|<math|<tformat|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|1|-1|1|-1|cell-valign|c>|<cwith|19|33|5|8|cell-halign|c>|<cwith|19|33|5|8|cell-valign|c>|<cwith|19|26|4|4|cell-halign|c>|<cwith|19|26|4|4|cell-valign|c>|<cwith|19|26|4|4|cell-halign|c>|<cwith|19|26|4|4|cell-valign|c>|<cwith|27|34|4|4|cell-halign|c>|<cwith|27|34|4|4|cell-valign|c>|<cwith|27|34|4|4|cell-halign|c>|<cwith|27|34|4|4|cell-valign|c>|<cwith|2|2|1|3|cell-halign|c>|<cwith|2|2|1|3|cell-valign|c>|<cwith|3|3|1|3|cell-halign|c>|<cwith|3|3|1|3|cell-valign|c>|<cwith|4|4|1|3|cell-halign|c>|<cwith|4|4|1|3|cell-valign|c>|<cwith|5|5|1|3|cell-halign|c>|<cwith|5|5|1|3|cell-valign|c>|<cwith|6|6|1|3|cell-halign|c>|<cwith|6|6|1|3|cell-valign|c>|<cwith|7|7|1|3|cell-halign|c>|<cwith|7|7|1|3|cell-valign|c>|<cwith|8|8|1|3|cell-halign|c>|<cwith|8|8|1|3|cell-valign|c>|<cwith|9|15|1|3|cell-halign|c>|<cwith|9|15|1|3|cell-valign|c>|<cwith|9|9|1|3|cell-halign|c>|<cwith|9|9|1|3|cell-valign|c>|<cwith|10|10|1|3|cell-halign|c>|<cwith|10|10|1|3|cell-valign|c>|<cwith|11|11|1|3|cell-halign|c>|<cwith|11|11|1|3|cell-valign|c>|<cwith|12|12|1|3|cell-halign|c>|<cwith|12|12|1|3|cell-valign|c>|<cwith|13|13|1|3|cell-halign|c>|<cwith|13|13|1|3|cell-valign|c>|<cwith|14|14|1|3|cell-halign|c>|<cwith|14|14|1|3|cell-valign|c>|<cwith|15|15|1|3|cell-halign|c>|<cwith|15|15|1|3|cell-valign|c>|<cwith|16|22|1|3|cell-halign|c>|<cwith|16|22|1|3|cell-valign|c>|<cwith|16|16|1|3|cell-halign|c>|<cwith|16|16|1|3|cell-valign|c>|<cwith|17|17|1|3|cell-halign|c>|<cwith|17|17|1|3|cell-valign|c>|<cwith|18|18|1|3|cell-halign|c>|<cwith|18|18|1|3|cell-valign|c>|<cwith|19|19|1|3|cell-halign|c>|<cwith|19|19|1|3|cell-valign|c>|<cwith|20|20|1|3|cell-halign|c>|<cwith|20|20|1|3|cell-valign|c>|<cwith|21|21|1|3|cell-halign|c>|<cwith|21|21|1|3|cell-valign|c>|<cwith|22|22|1|3|cell-halign|c>|<cwith|22|22|1|3|cell-valign|c>|<cwith|23|29|1|3|cell-halign|c>|<cwith|23|29|1|3|cell-valign|c>|<cwith|23|23|1|3|cell-halign|c>|<cwith|23|23|1|3|cell-valign|c>|<cwith|24|24|1|3|cell-halign|c>|<cwith|24|24|1|3|cell-valign|c>|<cwith|25|25|1|3|cell-halign|c>|<cwith|25|25|1|3|cell-valign|c>|<cwith|26|26|1|3|cell-halign|c>|<cwith|26|26|1|3|cell-valign|c>|<cwith|27|27|1|3|cell-halign|c>|<cwith|27|27|1|3|cell-valign|c>|<cwith|28|28|1|3|cell-halign|c>|<cwith|28|28|1|3|cell-valign|c>|<cwith|29|29|1|3|cell-halign|c>|<cwith|29|29|1|3|cell-valign|c>|<cwith|30|32|1|3|cell-halign|c>|<cwith|30|32|1|3|cell-valign|c>|<cwith|30|32|1|3|cell-halign|c>|<cwith|30|32|1|3|cell-valign|c>|<cwith|30|30|1|3|cell-halign|c>|<cwith|30|30|1|3|cell-valign|c>|<cwith|31|31|1|3|cell-halign|c>|<cwith|31|31|1|3|cell-valign|c>|<cwith|32|32|1|3|cell-halign|c>|<cwith|32|32|1|3|cell-valign|c>|<cwith|33|33|1|3|cell-halign|c>|<cwith|33|33|1|3|cell-valign|c>|<cwith|33|33|1|3|cell-halign|c>|<cwith|33|33|1|3|cell-valign|c>|<cwith|33|33|1|3|cell-halign|c>|<cwith|33|33|1|3|cell-valign|c>|<cwith|33|33|1|3|cell-halign|c>|<cwith|33|33|1|3|cell-valign|c>|<cwith|1|-1|9|12|cell-background|pastel
  green>|<cwith|1|-1|1|8|cell-background|pastel
  blue>|<cwith|33|33|1|-1|cell-bborder|1ln>|<cwith|1|-1|1|1|cell-lborder|1ln>|<cwith|1|-1|12|12|cell-rborder|1ln>|<cwith|1|1|1|-1|cell-tborder|1ln>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|2|2|1|-1|cell-tborder|1ln>|<cwith|1|1|1|1|cell-lborder|1ln>|<cwith|1|1|12|12|cell-rborder|1ln>|<cwith|6|9|3|3|cell-halign|c>|<cwith|6|9|3|3|cell-valign|c>|<cwith|6|6|3|3|cell-halign|c>|<cwith|6|6|3|3|cell-valign|c>|<cwith|7|7|3|3|cell-halign|c>|<cwith|7|7|3|3|cell-valign|c>|<cwith|8|8|3|3|cell-halign|c>|<cwith|8|8|3|3|cell-valign|c>|<cwith|9|9|3|3|cell-halign|c>|<cwith|9|9|3|3|cell-valign|c>|<cwith|6|9|3|3|cell-background|pastel
  blue>|<cwith|6|6|3|3|cell-bborder|0ln>|<cwith|7|7|3|3|cell-tborder|0ln>|<cwith|5|6|3|3|cell-lborder|0ln>|<cwith|5|6|2|2|cell-rborder|0ln>|<cwith|5|6|3|3|cell-rborder|0ln>|<cwith|5|6|4|4|cell-lborder|0ln>|<cwith|5|5|3|3|cell-tborder|0ln>|<cwith|4|4|3|3|cell-bborder|0ln>|<cwith|5|5|3|3|cell-bborder|0ln>|<cwith|6|6|3|3|cell-tborder|0ln>|<cwith|5|5|3|3|cell-lborder|0ln>|<cwith|5|5|2|2|cell-rborder|0ln>|<cwith|5|5|3|3|cell-rborder|0ln>|<cwith|5|5|4|4|cell-lborder|0ln>|<cwith|10|13|3|3|cell-halign|c>|<cwith|10|13|3|3|cell-valign|c>|<cwith|10|10|3|3|cell-halign|c>|<cwith|10|10|3|3|cell-valign|c>|<cwith|11|11|3|3|cell-halign|c>|<cwith|11|11|3|3|cell-valign|c>|<cwith|12|12|3|3|cell-halign|c>|<cwith|12|12|3|3|cell-valign|c>|<cwith|13|13|3|3|cell-halign|c>|<cwith|13|13|3|3|cell-valign|c>|<cwith|13|13|3|3|cell-halign|c>|<cwith|13|13|3|3|cell-valign|c>|<cwith|10|13|3|3|cell-background|pastel
  blue>|<cwith|10|13|3|3|cell-halign|c>|<cwith|10|13|3|3|cell-valign|c>|<cwith|10|10|3|3|cell-halign|c>|<cwith|10|10|3|3|cell-valign|c>|<cwith|11|11|3|3|cell-halign|c>|<cwith|11|11|3|3|cell-valign|c>|<cwith|12|12|3|3|cell-halign|c>|<cwith|12|12|3|3|cell-valign|c>|<cwith|13|13|3|3|cell-halign|c>|<cwith|13|13|3|3|cell-valign|c>|<cwith|10|13|3|3|cell-background|pastel
  blue>|<cwith|10|10|3|3|cell-bborder|0ln>|<cwith|11|11|3|3|cell-tborder|0ln>|<cwith|10|10|3|3|cell-lborder|0ln>|<cwith|10|10|3|3|cell-rborder|0ln>|<cwith|10|10|3|3|cell-tborder|0ln>|<cwith|14|17|3|3|cell-halign|c>|<cwith|14|17|3|3|cell-valign|c>|<cwith|14|14|3|3|cell-halign|c>|<cwith|14|14|3|3|cell-valign|c>|<cwith|15|15|3|3|cell-halign|c>|<cwith|15|15|3|3|cell-valign|c>|<cwith|16|16|3|3|cell-halign|c>|<cwith|16|16|3|3|cell-valign|c>|<cwith|17|17|3|3|cell-halign|c>|<cwith|17|17|3|3|cell-valign|c>|<cwith|17|17|3|3|cell-halign|c>|<cwith|17|17|3|3|cell-valign|c>|<cwith|14|17|3|3|cell-background|pastel
  blue>|<cwith|14|17|3|3|cell-halign|c>|<cwith|14|17|3|3|cell-valign|c>|<cwith|14|14|3|3|cell-halign|c>|<cwith|14|14|3|3|cell-valign|c>|<cwith|15|15|3|3|cell-halign|c>|<cwith|15|15|3|3|cell-valign|c>|<cwith|16|16|3|3|cell-halign|c>|<cwith|16|16|3|3|cell-valign|c>|<cwith|17|17|3|3|cell-halign|c>|<cwith|17|17|3|3|cell-valign|c>|<cwith|14|17|3|3|cell-background|pastel
  blue>|<cwith|14|14|3|3|cell-bborder|0ln>|<cwith|15|15|3|3|cell-tborder|0ln>|<cwith|14|14|3|3|cell-lborder|0ln>|<cwith|14|14|3|3|cell-rborder|0ln>|<cwith|14|14|3|3|cell-tborder|0ln>|<cwith|18|21|3|3|cell-halign|c>|<cwith|18|21|3|3|cell-valign|c>|<cwith|18|18|3|3|cell-halign|c>|<cwith|18|18|3|3|cell-valign|c>|<cwith|19|19|3|3|cell-halign|c>|<cwith|19|19|3|3|cell-valign|c>|<cwith|20|20|3|3|cell-halign|c>|<cwith|20|20|3|3|cell-valign|c>|<cwith|21|21|3|3|cell-halign|c>|<cwith|21|21|3|3|cell-valign|c>|<cwith|21|21|3|3|cell-halign|c>|<cwith|21|21|3|3|cell-valign|c>|<cwith|18|21|3|3|cell-background|pastel
  blue>|<cwith|18|21|3|3|cell-halign|c>|<cwith|18|21|3|3|cell-valign|c>|<cwith|18|18|3|3|cell-halign|c>|<cwith|18|18|3|3|cell-valign|c>|<cwith|19|19|3|3|cell-halign|c>|<cwith|19|19|3|3|cell-valign|c>|<cwith|20|20|3|3|cell-halign|c>|<cwith|20|20|3|3|cell-valign|c>|<cwith|21|21|3|3|cell-halign|c>|<cwith|21|21|3|3|cell-valign|c>|<cwith|18|21|3|3|cell-background|pastel
  blue>|<cwith|22|25|3|3|cell-halign|c>|<cwith|22|25|3|3|cell-valign|c>|<cwith|22|22|3|3|cell-halign|c>|<cwith|22|22|3|3|cell-valign|c>|<cwith|23|23|3|3|cell-halign|c>|<cwith|23|23|3|3|cell-valign|c>|<cwith|24|24|3|3|cell-halign|c>|<cwith|24|24|3|3|cell-valign|c>|<cwith|25|25|3|3|cell-halign|c>|<cwith|25|25|3|3|cell-valign|c>|<cwith|25|25|3|3|cell-halign|c>|<cwith|25|25|3|3|cell-valign|c>|<cwith|22|25|3|3|cell-background|pastel
  blue>|<cwith|22|25|3|3|cell-halign|c>|<cwith|22|25|3|3|cell-valign|c>|<cwith|22|22|3|3|cell-halign|c>|<cwith|22|22|3|3|cell-valign|c>|<cwith|23|23|3|3|cell-halign|c>|<cwith|23|23|3|3|cell-valign|c>|<cwith|24|24|3|3|cell-halign|c>|<cwith|24|24|3|3|cell-valign|c>|<cwith|25|25|3|3|cell-halign|c>|<cwith|25|25|3|3|cell-valign|c>|<cwith|22|25|3|3|cell-background|pastel
  blue>|<cwith|22|22|3|3|cell-bborder|0ln>|<cwith|23|23|3|3|cell-tborder|0ln>|<cwith|22|22|3|3|cell-lborder|0ln>|<cwith|22|22|3|3|cell-rborder|0ln>|<cwith|22|22|3|3|cell-tborder|0ln>|<cwith|26|29|3|3|cell-halign|c>|<cwith|26|29|3|3|cell-valign|c>|<cwith|26|26|3|3|cell-halign|c>|<cwith|26|26|3|3|cell-valign|c>|<cwith|27|27|3|3|cell-halign|c>|<cwith|27|27|3|3|cell-valign|c>|<cwith|28|28|3|3|cell-halign|c>|<cwith|28|28|3|3|cell-valign|c>|<cwith|29|29|3|3|cell-halign|c>|<cwith|29|29|3|3|cell-valign|c>|<cwith|29|29|3|3|cell-halign|c>|<cwith|29|29|3|3|cell-valign|c>|<cwith|26|29|3|3|cell-background|pastel
  blue>|<cwith|26|29|3|3|cell-halign|c>|<cwith|26|29|3|3|cell-valign|c>|<cwith|26|26|3|3|cell-halign|c>|<cwith|26|26|3|3|cell-valign|c>|<cwith|27|27|3|3|cell-halign|c>|<cwith|27|27|3|3|cell-valign|c>|<cwith|28|28|3|3|cell-halign|c>|<cwith|28|28|3|3|cell-valign|c>|<cwith|29|29|3|3|cell-halign|c>|<cwith|29|29|3|3|cell-valign|c>|<cwith|26|29|3|3|cell-background|pastel
  blue>|<cwith|26|26|3|3|cell-bborder|0ln>|<cwith|27|27|3|3|cell-tborder|0ln>|<cwith|26|26|3|3|cell-lborder|0ln>|<cwith|26|26|3|3|cell-rborder|0ln>|<cwith|26|26|3|3|cell-tborder|0ln>|<cwith|30|33|3|3|cell-halign|c>|<cwith|30|33|3|3|cell-valign|c>|<cwith|30|30|3|3|cell-halign|c>|<cwith|30|30|3|3|cell-valign|c>|<cwith|31|31|3|3|cell-halign|c>|<cwith|31|31|3|3|cell-valign|c>|<cwith|32|32|3|3|cell-halign|c>|<cwith|32|32|3|3|cell-valign|c>|<cwith|33|33|3|3|cell-halign|c>|<cwith|33|33|3|3|cell-valign|c>|<cwith|33|33|3|3|cell-halign|c>|<cwith|33|33|3|3|cell-valign|c>|<cwith|30|33|3|3|cell-background|pastel
  blue>|<cwith|30|33|3|3|cell-halign|c>|<cwith|30|33|3|3|cell-valign|c>|<cwith|30|30|3|3|cell-halign|c>|<cwith|30|30|3|3|cell-valign|c>|<cwith|31|31|3|3|cell-halign|c>|<cwith|31|31|3|3|cell-valign|c>|<cwith|32|32|3|3|cell-halign|c>|<cwith|32|32|3|3|cell-valign|c>|<cwith|33|33|3|3|cell-halign|c>|<cwith|33|33|3|3|cell-valign|c>|<cwith|30|33|3|3|cell-background|pastel
  blue>|<cwith|30|30|3|3|cell-bborder|0ln>|<cwith|31|31|3|3|cell-tborder|0ln>|<cwith|30|30|3|3|cell-lborder|0ln>|<cwith|30|30|3|3|cell-rborder|0ln>|<cwith|30|30|3|3|cell-tborder|0ln>|<cwith|2|33|2|2|cell-halign|c>|<cwith|2|33|2|2|cell-valign|c>|<cwith|2|2|2|2|cell-halign|c>|<cwith|2|2|2|2|cell-valign|c>|<cwith|3|3|2|2|cell-halign|c>|<cwith|3|3|2|2|cell-valign|c>|<cwith|4|4|2|2|cell-halign|c>|<cwith|4|4|2|2|cell-valign|c>|<cwith|5|5|2|2|cell-halign|c>|<cwith|5|5|2|2|cell-valign|c>|<cwith|6|6|2|2|cell-halign|c>|<cwith|6|6|2|2|cell-valign|c>|<cwith|7|7|2|2|cell-halign|c>|<cwith|7|7|2|2|cell-valign|c>|<cwith|8|8|2|2|cell-halign|c>|<cwith|8|8|2|2|cell-valign|c>|<cwith|9|15|2|2|cell-halign|c>|<cwith|9|15|2|2|cell-valign|c>|<cwith|9|9|2|2|cell-halign|c>|<cwith|9|9|2|2|cell-valign|c>|<cwith|10|10|2|2|cell-halign|c>|<cwith|10|10|2|2|cell-valign|c>|<cwith|11|11|2|2|cell-halign|c>|<cwith|11|11|2|2|cell-valign|c>|<cwith|12|12|2|2|cell-halign|c>|<cwith|12|12|2|2|cell-valign|c>|<cwith|13|13|2|2|cell-halign|c>|<cwith|13|13|2|2|cell-valign|c>|<cwith|14|14|2|2|cell-halign|c>|<cwith|14|14|2|2|cell-valign|c>|<cwith|15|15|2|2|cell-halign|c>|<cwith|15|15|2|2|cell-valign|c>|<cwith|16|22|2|2|cell-halign|c>|<cwith|16|22|2|2|cell-valign|c>|<cwith|16|16|2|2|cell-halign|c>|<cwith|16|16|2|2|cell-valign|c>|<cwith|17|17|2|2|cell-halign|c>|<cwith|17|17|2|2|cell-valign|c>|<cwith|18|18|2|2|cell-halign|c>|<cwith|18|18|2|2|cell-valign|c>|<cwith|19|19|2|2|cell-halign|c>|<cwith|19|19|2|2|cell-valign|c>|<cwith|20|20|2|2|cell-halign|c>|<cwith|20|20|2|2|cell-valign|c>|<cwith|21|21|2|2|cell-halign|c>|<cwith|21|21|2|2|cell-valign|c>|<cwith|22|22|2|2|cell-halign|c>|<cwith|22|22|2|2|cell-valign|c>|<cwith|23|29|2|2|cell-halign|c>|<cwith|23|29|2|2|cell-valign|c>|<cwith|23|23|2|2|cell-halign|c>|<cwith|23|23|2|2|cell-valign|c>|<cwith|24|24|2|2|cell-halign|c>|<cwith|24|24|2|2|cell-valign|c>|<cwith|25|25|2|2|cell-halign|c>|<cwith|25|25|2|2|cell-valign|c>|<cwith|26|26|2|2|cell-halign|c>|<cwith|26|26|2|2|cell-valign|c>|<cwith|27|27|2|2|cell-halign|c>|<cwith|27|27|2|2|cell-valign|c>|<cwith|28|28|2|2|cell-halign|c>|<cwith|28|28|2|2|cell-valign|c>|<cwith|29|29|2|2|cell-halign|c>|<cwith|29|29|2|2|cell-valign|c>|<cwith|30|32|2|2|cell-halign|c>|<cwith|30|32|2|2|cell-valign|c>|<cwith|30|32|2|2|cell-halign|c>|<cwith|30|32|2|2|cell-valign|c>|<cwith|30|30|2|2|cell-halign|c>|<cwith|30|30|2|2|cell-valign|c>|<cwith|31|31|2|2|cell-halign|c>|<cwith|31|31|2|2|cell-valign|c>|<cwith|32|32|2|2|cell-halign|c>|<cwith|32|32|2|2|cell-valign|c>|<cwith|33|33|2|2|cell-halign|c>|<cwith|33|33|2|2|cell-valign|c>|<cwith|33|33|2|2|cell-halign|c>|<cwith|33|33|2|2|cell-valign|c>|<cwith|33|33|2|2|cell-halign|c>|<cwith|33|33|2|2|cell-valign|c>|<cwith|33|33|2|2|cell-halign|c>|<cwith|33|33|2|2|cell-valign|c>|<cwith|2|33|2|2|cell-background|pastel
  blue>|<cwith|33|33|2|2|cell-bborder|1ln>|<cwith|2|2|2|2|cell-tborder|1ln>|<cwith|6|9|2|2|cell-halign|c>|<cwith|6|9|2|2|cell-valign|c>|<cwith|6|6|2|2|cell-halign|c>|<cwith|6|6|2|2|cell-valign|c>|<cwith|7|7|2|2|cell-halign|c>|<cwith|7|7|2|2|cell-valign|c>|<cwith|8|8|2|2|cell-halign|c>|<cwith|8|8|2|2|cell-valign|c>|<cwith|9|9|2|2|cell-halign|c>|<cwith|9|9|2|2|cell-valign|c>|<cwith|6|9|2|2|cell-background|pastel
  blue>|<cwith|6|6|2|2|cell-bborder|0ln>|<cwith|7|7|2|2|cell-tborder|0ln>|<cwith|5|6|2|2|cell-lborder|0ln>|<cwith|5|6|2|2|cell-rborder|0ln>|<cwith|5|5|2|2|cell-tborder|0ln>|<cwith|4|4|2|2|cell-bborder|0ln>|<cwith|5|5|2|2|cell-bborder|0ln>|<cwith|6|6|2|2|cell-tborder|0ln>|<cwith|5|5|2|2|cell-lborder|0ln>|<cwith|5|5|2|2|cell-rborder|0ln>|<cwith|10|13|2|2|cell-halign|c>|<cwith|10|13|2|2|cell-valign|c>|<cwith|10|10|2|2|cell-halign|c>|<cwith|10|10|2|2|cell-valign|c>|<cwith|11|11|2|2|cell-halign|c>|<cwith|11|11|2|2|cell-valign|c>|<cwith|12|12|2|2|cell-halign|c>|<cwith|12|12|2|2|cell-valign|c>|<cwith|13|13|2|2|cell-halign|c>|<cwith|13|13|2|2|cell-valign|c>|<cwith|13|13|2|2|cell-halign|c>|<cwith|13|13|2|2|cell-valign|c>|<cwith|10|13|2|2|cell-background|pastel
  blue>|<cwith|10|13|2|2|cell-halign|c>|<cwith|10|13|2|2|cell-valign|c>|<cwith|10|10|2|2|cell-halign|c>|<cwith|10|10|2|2|cell-valign|c>|<cwith|11|11|2|2|cell-halign|c>|<cwith|11|11|2|2|cell-valign|c>|<cwith|12|12|2|2|cell-halign|c>|<cwith|12|12|2|2|cell-valign|c>|<cwith|13|13|2|2|cell-halign|c>|<cwith|13|13|2|2|cell-valign|c>|<cwith|10|13|2|2|cell-background|pastel
  blue>|<cwith|10|10|2|2|cell-bborder|0ln>|<cwith|11|11|2|2|cell-tborder|0ln>|<cwith|10|10|2|2|cell-lborder|0ln>|<cwith|10|10|2|2|cell-rborder|0ln>|<cwith|10|10|2|2|cell-tborder|0ln>|<cwith|14|17|2|2|cell-halign|c>|<cwith|14|17|2|2|cell-valign|c>|<cwith|14|14|2|2|cell-halign|c>|<cwith|14|14|2|2|cell-valign|c>|<cwith|15|15|2|2|cell-halign|c>|<cwith|15|15|2|2|cell-valign|c>|<cwith|16|16|2|2|cell-halign|c>|<cwith|16|16|2|2|cell-valign|c>|<cwith|17|17|2|2|cell-halign|c>|<cwith|17|17|2|2|cell-valign|c>|<cwith|17|17|2|2|cell-halign|c>|<cwith|17|17|2|2|cell-valign|c>|<cwith|14|17|2|2|cell-background|pastel
  blue>|<cwith|14|17|2|2|cell-halign|c>|<cwith|14|17|2|2|cell-valign|c>|<cwith|14|14|2|2|cell-halign|c>|<cwith|14|14|2|2|cell-valign|c>|<cwith|15|15|2|2|cell-halign|c>|<cwith|15|15|2|2|cell-valign|c>|<cwith|16|16|2|2|cell-halign|c>|<cwith|16|16|2|2|cell-valign|c>|<cwith|17|17|2|2|cell-halign|c>|<cwith|17|17|2|2|cell-valign|c>|<cwith|14|17|2|2|cell-background|pastel
  blue>|<cwith|14|14|2|2|cell-bborder|0ln>|<cwith|15|15|2|2|cell-tborder|0ln>|<cwith|14|14|2|2|cell-lborder|0ln>|<cwith|14|14|2|2|cell-rborder|0ln>|<cwith|14|14|2|2|cell-tborder|0ln>|<cwith|18|21|2|2|cell-halign|c>|<cwith|18|21|2|2|cell-valign|c>|<cwith|18|18|2|2|cell-halign|c>|<cwith|18|18|2|2|cell-valign|c>|<cwith|19|19|2|2|cell-halign|c>|<cwith|19|19|2|2|cell-valign|c>|<cwith|20|20|2|2|cell-halign|c>|<cwith|20|20|2|2|cell-valign|c>|<cwith|21|21|2|2|cell-halign|c>|<cwith|21|21|2|2|cell-valign|c>|<cwith|21|21|2|2|cell-halign|c>|<cwith|21|21|2|2|cell-valign|c>|<cwith|18|21|2|2|cell-background|pastel
  blue>|<cwith|18|21|2|2|cell-halign|c>|<cwith|18|21|2|2|cell-valign|c>|<cwith|18|18|2|2|cell-halign|c>|<cwith|18|18|2|2|cell-valign|c>|<cwith|19|19|2|2|cell-halign|c>|<cwith|19|19|2|2|cell-valign|c>|<cwith|20|20|2|2|cell-halign|c>|<cwith|20|20|2|2|cell-valign|c>|<cwith|21|21|2|2|cell-halign|c>|<cwith|21|21|2|2|cell-valign|c>|<cwith|18|21|2|2|cell-background|pastel
  blue>|<cwith|18|18|2|2|cell-bborder|0ln>|<cwith|19|19|2|2|cell-tborder|0ln>|<cwith|18|18|2|2|cell-lborder|0ln>|<cwith|18|18|2|2|cell-tborder|0ln>|<cwith|22|25|2|2|cell-halign|c>|<cwith|22|25|2|2|cell-valign|c>|<cwith|22|22|2|2|cell-halign|c>|<cwith|22|22|2|2|cell-valign|c>|<cwith|23|23|2|2|cell-halign|c>|<cwith|23|23|2|2|cell-valign|c>|<cwith|24|24|2|2|cell-halign|c>|<cwith|24|24|2|2|cell-valign|c>|<cwith|25|25|2|2|cell-halign|c>|<cwith|25|25|2|2|cell-valign|c>|<cwith|25|25|2|2|cell-halign|c>|<cwith|25|25|2|2|cell-valign|c>|<cwith|22|25|2|2|cell-background|pastel
  blue>|<cwith|22|25|2|2|cell-halign|c>|<cwith|22|25|2|2|cell-valign|c>|<cwith|22|22|2|2|cell-halign|c>|<cwith|22|22|2|2|cell-valign|c>|<cwith|23|23|2|2|cell-halign|c>|<cwith|23|23|2|2|cell-valign|c>|<cwith|24|24|2|2|cell-halign|c>|<cwith|24|24|2|2|cell-valign|c>|<cwith|25|25|2|2|cell-halign|c>|<cwith|25|25|2|2|cell-valign|c>|<cwith|22|25|2|2|cell-background|pastel
  blue>|<cwith|22|22|2|2|cell-bborder|0ln>|<cwith|23|23|2|2|cell-tborder|0ln>|<cwith|22|22|2|2|cell-lborder|0ln>|<cwith|22|22|2|2|cell-rborder|0ln>|<cwith|22|22|2|2|cell-tborder|0ln>|<cwith|26|29|2|2|cell-halign|c>|<cwith|26|29|2|2|cell-valign|c>|<cwith|26|26|2|2|cell-halign|c>|<cwith|26|26|2|2|cell-valign|c>|<cwith|27|27|2|2|cell-halign|c>|<cwith|27|27|2|2|cell-valign|c>|<cwith|28|28|2|2|cell-halign|c>|<cwith|28|28|2|2|cell-valign|c>|<cwith|29|29|2|2|cell-halign|c>|<cwith|29|29|2|2|cell-valign|c>|<cwith|29|29|2|2|cell-halign|c>|<cwith|29|29|2|2|cell-valign|c>|<cwith|26|29|2|2|cell-background|pastel
  blue>|<cwith|26|29|2|2|cell-halign|c>|<cwith|26|29|2|2|cell-valign|c>|<cwith|26|26|2|2|cell-halign|c>|<cwith|26|26|2|2|cell-valign|c>|<cwith|27|27|2|2|cell-halign|c>|<cwith|27|27|2|2|cell-valign|c>|<cwith|28|28|2|2|cell-halign|c>|<cwith|28|28|2|2|cell-valign|c>|<cwith|29|29|2|2|cell-halign|c>|<cwith|29|29|2|2|cell-valign|c>|<cwith|26|29|2|2|cell-background|pastel
  blue>|<cwith|26|26|2|2|cell-bborder|0ln>|<cwith|27|27|2|2|cell-tborder|0ln>|<cwith|26|26|2|2|cell-lborder|0ln>|<cwith|26|26|2|2|cell-rborder|0ln>|<cwith|26|26|2|2|cell-tborder|0ln>|<cwith|30|33|2|2|cell-halign|c>|<cwith|30|33|2|2|cell-valign|c>|<cwith|30|30|2|2|cell-halign|c>|<cwith|30|30|2|2|cell-valign|c>|<cwith|31|31|2|2|cell-halign|c>|<cwith|31|31|2|2|cell-valign|c>|<cwith|32|32|2|2|cell-halign|c>|<cwith|32|32|2|2|cell-valign|c>|<cwith|33|33|2|2|cell-halign|c>|<cwith|33|33|2|2|cell-valign|c>|<cwith|33|33|2|2|cell-halign|c>|<cwith|33|33|2|2|cell-valign|c>|<cwith|30|33|2|2|cell-background|pastel
  blue>|<cwith|30|33|2|2|cell-halign|c>|<cwith|30|33|2|2|cell-valign|c>|<cwith|30|30|2|2|cell-halign|c>|<cwith|30|30|2|2|cell-valign|c>|<cwith|31|31|2|2|cell-halign|c>|<cwith|31|31|2|2|cell-valign|c>|<cwith|32|32|2|2|cell-halign|c>|<cwith|32|32|2|2|cell-valign|c>|<cwith|33|33|2|2|cell-halign|c>|<cwith|33|33|2|2|cell-valign|c>|<cwith|30|33|2|2|cell-background|pastel
  blue>|<cwith|30|30|2|2|cell-bborder|0ln>|<cwith|31|31|2|2|cell-tborder|0ln>|<cwith|30|30|2|2|cell-lborder|0ln>|<cwith|30|30|2|2|cell-rborder|0ln>|<cwith|30|30|2|2|cell-tborder|0ln>|<cwith|2|17|3|3|cell-halign|c>|<cwith|2|17|3|3|cell-valign|c>|<cwith|2|17|3|3|cell-background|pastel
  blue>|<cwith|2|2|3|3|cell-tborder|1ln>|<cwith|5|6|3|3|cell-lborder|0ln>|<cwith|5|5|3|3|cell-lborder|0ln>|<cwith|18|33|3|3|cell-halign|c>|<cwith|18|33|3|3|cell-valign|c>|<cwith|18|33|3|3|cell-background|pastel
  blue>|<cwith|21|22|3|3|cell-lborder|0ln>|<cwith|21|21|3|3|cell-lborder|0ln>|<cwith|18|18|3|3|cell-tborder|0ln>|<cwith|17|17|3|3|cell-bborder|0ln>|<cwith|18|18|3|3|cell-bborder|0ln>|<cwith|19|19|3|3|cell-tborder|0ln>|<cwith|18|18|3|3|cell-lborder|0ln>|<cwith|18|18|2|2|cell-rborder|0ln>|<cwith|18|18|3|3|cell-rborder|0ln>|<cwith|18|18|4|4|cell-lborder|0ln>|<cwith|2|33|3|3|cell-halign|c>|<cwith|2|33|3|3|cell-valign|c>|<cwith|2|2|3|3|cell-halign|c>|<cwith|2|2|3|3|cell-valign|c>|<cwith|3|3|3|3|cell-halign|c>|<cwith|3|3|3|3|cell-valign|c>|<cwith|4|4|3|3|cell-halign|c>|<cwith|4|4|3|3|cell-valign|c>|<cwith|5|5|3|3|cell-halign|c>|<cwith|5|5|3|3|cell-valign|c>|<cwith|6|6|3|3|cell-halign|c>|<cwith|6|6|3|3|cell-valign|c>|<cwith|7|7|3|3|cell-halign|c>|<cwith|7|7|3|3|cell-valign|c>|<cwith|8|8|3|3|cell-halign|c>|<cwith|8|8|3|3|cell-valign|c>|<cwith|9|15|3|3|cell-halign|c>|<cwith|9|15|3|3|cell-valign|c>|<cwith|9|9|3|3|cell-halign|c>|<cwith|9|9|3|3|cell-valign|c>|<cwith|10|10|3|3|cell-halign|c>|<cwith|10|10|3|3|cell-valign|c>|<cwith|11|11|3|3|cell-halign|c>|<cwith|11|11|3|3|cell-valign|c>|<cwith|12|12|3|3|cell-halign|c>|<cwith|12|12|3|3|cell-valign|c>|<cwith|13|13|3|3|cell-halign|c>|<cwith|13|13|3|3|cell-valign|c>|<cwith|14|14|3|3|cell-halign|c>|<cwith|14|14|3|3|cell-valign|c>|<cwith|15|15|3|3|cell-halign|c>|<cwith|15|15|3|3|cell-valign|c>|<cwith|16|22|3|3|cell-halign|c>|<cwith|16|22|3|3|cell-valign|c>|<cwith|16|16|3|3|cell-halign|c>|<cwith|16|16|3|3|cell-valign|c>|<cwith|17|17|3|3|cell-halign|c>|<cwith|17|17|3|3|cell-valign|c>|<cwith|18|18|3|3|cell-halign|c>|<cwith|18|18|3|3|cell-valign|c>|<cwith|19|19|3|3|cell-halign|c>|<cwith|19|19|3|3|cell-valign|c>|<cwith|20|20|3|3|cell-halign|c>|<cwith|20|20|3|3|cell-valign|c>|<cwith|21|21|3|3|cell-halign|c>|<cwith|21|21|3|3|cell-valign|c>|<cwith|22|22|3|3|cell-halign|c>|<cwith|22|22|3|3|cell-valign|c>|<cwith|23|29|3|3|cell-halign|c>|<cwith|23|29|3|3|cell-valign|c>|<cwith|23|23|3|3|cell-halign|c>|<cwith|23|23|3|3|cell-valign|c>|<cwith|24|24|3|3|cell-halign|c>|<cwith|24|24|3|3|cell-valign|c>|<cwith|25|25|3|3|cell-halign|c>|<cwith|25|25|3|3|cell-valign|c>|<cwith|26|26|3|3|cell-halign|c>|<cwith|26|26|3|3|cell-valign|c>|<cwith|27|27|3|3|cell-halign|c>|<cwith|27|27|3|3|cell-valign|c>|<cwith|28|28|3|3|cell-halign|c>|<cwith|28|28|3|3|cell-valign|c>|<cwith|29|29|3|3|cell-halign|c>|<cwith|29|29|3|3|cell-valign|c>|<cwith|30|32|3|3|cell-halign|c>|<cwith|30|32|3|3|cell-valign|c>|<cwith|30|32|3|3|cell-halign|c>|<cwith|30|32|3|3|cell-valign|c>|<cwith|30|30|3|3|cell-halign|c>|<cwith|30|30|3|3|cell-valign|c>|<cwith|31|31|3|3|cell-halign|c>|<cwith|31|31|3|3|cell-valign|c>|<cwith|32|32|3|3|cell-halign|c>|<cwith|32|32|3|3|cell-valign|c>|<cwith|33|33|3|3|cell-halign|c>|<cwith|33|33|3|3|cell-valign|c>|<cwith|33|33|3|3|cell-halign|c>|<cwith|33|33|3|3|cell-valign|c>|<cwith|33|33|3|3|cell-halign|c>|<cwith|33|33|3|3|cell-valign|c>|<cwith|33|33|3|3|cell-halign|c>|<cwith|33|33|3|3|cell-valign|c>|<cwith|2|33|3|3|cell-background|pastel
  blue>|<cwith|33|33|3|3|cell-bborder|1ln>|<cwith|2|2|3|3|cell-tborder|1ln>|<cwith|5|6|3|3|cell-rborder|0ln>|<cwith|5|5|3|3|cell-rborder|0ln>|<cwith|2|33|3|3|cell-halign|c>|<cwith|2|33|3|3|cell-valign|c>|<cwith|2|2|3|3|cell-halign|c>|<cwith|2|2|3|3|cell-valign|c>|<cwith|3|3|3|3|cell-halign|c>|<cwith|3|3|3|3|cell-valign|c>|<cwith|4|4|3|3|cell-halign|c>|<cwith|4|4|3|3|cell-valign|c>|<cwith|5|5|3|3|cell-halign|c>|<cwith|5|5|3|3|cell-valign|c>|<cwith|6|6|3|3|cell-halign|c>|<cwith|6|6|3|3|cell-valign|c>|<cwith|7|7|3|3|cell-halign|c>|<cwith|7|7|3|3|cell-valign|c>|<cwith|8|8|3|3|cell-halign|c>|<cwith|8|8|3|3|cell-valign|c>|<cwith|9|15|3|3|cell-halign|c>|<cwith|9|15|3|3|cell-valign|c>|<cwith|9|9|3|3|cell-halign|c>|<cwith|9|9|3|3|cell-valign|c>|<cwith|10|10|3|3|cell-halign|c>|<cwith|10|10|3|3|cell-valign|c>|<cwith|11|11|3|3|cell-halign|c>|<cwith|11|11|3|3|cell-valign|c>|<cwith|12|12|3|3|cell-halign|c>|<cwith|12|12|3|3|cell-valign|c>|<cwith|13|13|3|3|cell-halign|c>|<cwith|13|13|3|3|cell-valign|c>|<cwith|14|14|3|3|cell-halign|c>|<cwith|14|14|3|3|cell-valign|c>|<cwith|15|15|3|3|cell-halign|c>|<cwith|15|15|3|3|cell-valign|c>|<cwith|16|22|3|3|cell-halign|c>|<cwith|16|22|3|3|cell-valign|c>|<cwith|16|16|3|3|cell-halign|c>|<cwith|16|16|3|3|cell-valign|c>|<cwith|17|17|3|3|cell-halign|c>|<cwith|17|17|3|3|cell-valign|c>|<cwith|18|18|3|3|cell-halign|c>|<cwith|18|18|3|3|cell-valign|c>|<cwith|19|19|3|3|cell-halign|c>|<cwith|19|19|3|3|cell-valign|c>|<cwith|20|20|3|3|cell-halign|c>|<cwith|20|20|3|3|cell-valign|c>|<cwith|21|21|3|3|cell-halign|c>|<cwith|21|21|3|3|cell-valign|c>|<cwith|22|22|3|3|cell-halign|c>|<cwith|22|22|3|3|cell-valign|c>|<cwith|23|29|3|3|cell-halign|c>|<cwith|23|29|3|3|cell-valign|c>|<cwith|23|23|3|3|cell-halign|c>|<cwith|23|23|3|3|cell-valign|c>|<cwith|24|24|3|3|cell-halign|c>|<cwith|24|24|3|3|cell-valign|c>|<cwith|25|25|3|3|cell-halign|c>|<cwith|25|25|3|3|cell-valign|c>|<cwith|26|26|3|3|cell-halign|c>|<cwith|26|26|3|3|cell-valign|c>|<cwith|27|27|3|3|cell-halign|c>|<cwith|27|27|3|3|cell-valign|c>|<cwith|28|28|3|3|cell-halign|c>|<cwith|28|28|3|3|cell-valign|c>|<cwith|29|29|3|3|cell-halign|c>|<cwith|29|29|3|3|cell-valign|c>|<cwith|30|32|3|3|cell-halign|c>|<cwith|30|32|3|3|cell-valign|c>|<cwith|30|32|3|3|cell-halign|c>|<cwith|30|32|3|3|cell-valign|c>|<cwith|30|30|3|3|cell-halign|c>|<cwith|30|30|3|3|cell-valign|c>|<cwith|31|31|3|3|cell-halign|c>|<cwith|31|31|3|3|cell-valign|c>|<cwith|32|32|3|3|cell-halign|c>|<cwith|32|32|3|3|cell-valign|c>|<cwith|33|33|3|3|cell-halign|c>|<cwith|33|33|3|3|cell-valign|c>|<cwith|33|33|3|3|cell-halign|c>|<cwith|33|33|3|3|cell-valign|c>|<cwith|33|33|3|3|cell-halign|c>|<cwith|33|33|3|3|cell-valign|c>|<cwith|33|33|3|3|cell-halign|c>|<cwith|33|33|3|3|cell-valign|c>|<cwith|2|33|3|3|cell-background|pastel
  blue>|<cwith|33|33|3|3|cell-bborder|1ln>|<cwith|2|2|3|3|cell-tborder|1ln>|<cwith|6|9|3|3|cell-halign|c>|<cwith|6|9|3|3|cell-valign|c>|<cwith|6|6|3|3|cell-halign|c>|<cwith|6|6|3|3|cell-valign|c>|<cwith|7|7|3|3|cell-halign|c>|<cwith|7|7|3|3|cell-valign|c>|<cwith|8|8|3|3|cell-halign|c>|<cwith|8|8|3|3|cell-valign|c>|<cwith|9|9|3|3|cell-halign|c>|<cwith|9|9|3|3|cell-valign|c>|<cwith|6|9|3|3|cell-background|pastel
  blue>|<cwith|6|6|3|3|cell-bborder|0ln>|<cwith|7|7|3|3|cell-tborder|0ln>|<cwith|5|6|3|3|cell-lborder|0ln>|<cwith|5|6|3|3|cell-rborder|0ln>|<cwith|5|5|3|3|cell-tborder|0ln>|<cwith|4|4|3|3|cell-bborder|0ln>|<cwith|5|5|3|3|cell-bborder|0ln>|<cwith|6|6|3|3|cell-tborder|0ln>|<cwith|5|5|3|3|cell-lborder|0ln>|<cwith|5|5|3|3|cell-rborder|0ln>|<cwith|10|13|3|3|cell-halign|c>|<cwith|10|13|3|3|cell-valign|c>|<cwith|10|10|3|3|cell-halign|c>|<cwith|10|10|3|3|cell-valign|c>|<cwith|11|11|3|3|cell-halign|c>|<cwith|11|11|3|3|cell-valign|c>|<cwith|12|12|3|3|cell-halign|c>|<cwith|12|12|3|3|cell-valign|c>|<cwith|13|13|3|3|cell-halign|c>|<cwith|13|13|3|3|cell-valign|c>|<cwith|13|13|3|3|cell-halign|c>|<cwith|13|13|3|3|cell-valign|c>|<cwith|10|13|3|3|cell-background|pastel
  blue>|<cwith|10|13|3|3|cell-halign|c>|<cwith|10|13|3|3|cell-valign|c>|<cwith|10|10|3|3|cell-halign|c>|<cwith|10|10|3|3|cell-valign|c>|<cwith|11|11|3|3|cell-halign|c>|<cwith|11|11|3|3|cell-valign|c>|<cwith|12|12|3|3|cell-halign|c>|<cwith|12|12|3|3|cell-valign|c>|<cwith|13|13|3|3|cell-halign|c>|<cwith|13|13|3|3|cell-valign|c>|<cwith|10|13|3|3|cell-background|pastel
  blue>|<cwith|10|10|3|3|cell-bborder|0ln>|<cwith|11|11|3|3|cell-tborder|0ln>|<cwith|10|10|3|3|cell-lborder|0ln>|<cwith|10|10|3|3|cell-rborder|0ln>|<cwith|10|10|3|3|cell-tborder|0ln>|<cwith|14|17|3|3|cell-halign|c>|<cwith|14|17|3|3|cell-valign|c>|<cwith|14|14|3|3|cell-halign|c>|<cwith|14|14|3|3|cell-valign|c>|<cwith|15|15|3|3|cell-halign|c>|<cwith|15|15|3|3|cell-valign|c>|<cwith|16|16|3|3|cell-halign|c>|<cwith|16|16|3|3|cell-valign|c>|<cwith|17|17|3|3|cell-halign|c>|<cwith|17|17|3|3|cell-valign|c>|<cwith|17|17|3|3|cell-halign|c>|<cwith|17|17|3|3|cell-valign|c>|<cwith|14|17|3|3|cell-background|pastel
  blue>|<cwith|14|17|3|3|cell-halign|c>|<cwith|14|17|3|3|cell-valign|c>|<cwith|14|14|3|3|cell-halign|c>|<cwith|14|14|3|3|cell-valign|c>|<cwith|15|15|3|3|cell-halign|c>|<cwith|15|15|3|3|cell-valign|c>|<cwith|16|16|3|3|cell-halign|c>|<cwith|16|16|3|3|cell-valign|c>|<cwith|17|17|3|3|cell-halign|c>|<cwith|17|17|3|3|cell-valign|c>|<cwith|14|17|3|3|cell-background|pastel
  blue>|<cwith|14|14|3|3|cell-bborder|0ln>|<cwith|15|15|3|3|cell-tborder|0ln>|<cwith|14|14|3|3|cell-lborder|0ln>|<cwith|14|14|3|3|cell-rborder|0ln>|<cwith|14|14|3|3|cell-tborder|0ln>|<cwith|18|21|3|3|cell-halign|c>|<cwith|18|21|3|3|cell-valign|c>|<cwith|18|18|3|3|cell-halign|c>|<cwith|18|18|3|3|cell-valign|c>|<cwith|19|19|3|3|cell-halign|c>|<cwith|19|19|3|3|cell-valign|c>|<cwith|20|20|3|3|cell-halign|c>|<cwith|20|20|3|3|cell-valign|c>|<cwith|21|21|3|3|cell-halign|c>|<cwith|21|21|3|3|cell-valign|c>|<cwith|21|21|3|3|cell-halign|c>|<cwith|21|21|3|3|cell-valign|c>|<cwith|18|21|3|3|cell-background|pastel
  blue>|<cwith|18|21|3|3|cell-halign|c>|<cwith|18|21|3|3|cell-valign|c>|<cwith|18|18|3|3|cell-halign|c>|<cwith|18|18|3|3|cell-valign|c>|<cwith|19|19|3|3|cell-halign|c>|<cwith|19|19|3|3|cell-valign|c>|<cwith|20|20|3|3|cell-halign|c>|<cwith|20|20|3|3|cell-valign|c>|<cwith|21|21|3|3|cell-halign|c>|<cwith|21|21|3|3|cell-valign|c>|<cwith|18|21|3|3|cell-background|pastel
  blue>|<cwith|18|18|3|3|cell-bborder|0ln>|<cwith|19|19|3|3|cell-tborder|0ln>|<cwith|18|18|3|3|cell-lborder|0ln>|<cwith|18|18|3|3|cell-tborder|0ln>|<cwith|22|25|3|3|cell-halign|c>|<cwith|22|25|3|3|cell-valign|c>|<cwith|22|22|3|3|cell-halign|c>|<cwith|22|22|3|3|cell-valign|c>|<cwith|23|23|3|3|cell-halign|c>|<cwith|23|23|3|3|cell-valign|c>|<cwith|24|24|3|3|cell-halign|c>|<cwith|24|24|3|3|cell-valign|c>|<cwith|25|25|3|3|cell-halign|c>|<cwith|25|25|3|3|cell-valign|c>|<cwith|25|25|3|3|cell-halign|c>|<cwith|25|25|3|3|cell-valign|c>|<cwith|22|25|3|3|cell-background|pastel
  blue>|<cwith|22|25|3|3|cell-halign|c>|<cwith|22|25|3|3|cell-valign|c>|<cwith|22|22|3|3|cell-halign|c>|<cwith|22|22|3|3|cell-valign|c>|<cwith|23|23|3|3|cell-halign|c>|<cwith|23|23|3|3|cell-valign|c>|<cwith|24|24|3|3|cell-halign|c>|<cwith|24|24|3|3|cell-valign|c>|<cwith|25|25|3|3|cell-halign|c>|<cwith|25|25|3|3|cell-valign|c>|<cwith|22|25|3|3|cell-background|pastel
  blue>|<cwith|22|22|3|3|cell-bborder|0ln>|<cwith|23|23|3|3|cell-tborder|0ln>|<cwith|22|22|3|3|cell-lborder|0ln>|<cwith|22|22|3|3|cell-rborder|0ln>|<cwith|22|22|3|3|cell-tborder|0ln>|<cwith|26|29|3|3|cell-halign|c>|<cwith|26|29|3|3|cell-valign|c>|<cwith|26|26|3|3|cell-halign|c>|<cwith|26|26|3|3|cell-valign|c>|<cwith|27|27|3|3|cell-halign|c>|<cwith|27|27|3|3|cell-valign|c>|<cwith|28|28|3|3|cell-halign|c>|<cwith|28|28|3|3|cell-valign|c>|<cwith|29|29|3|3|cell-halign|c>|<cwith|29|29|3|3|cell-valign|c>|<cwith|29|29|3|3|cell-halign|c>|<cwith|29|29|3|3|cell-valign|c>|<cwith|26|29|3|3|cell-background|pastel
  blue>|<cwith|26|29|3|3|cell-halign|c>|<cwith|26|29|3|3|cell-valign|c>|<cwith|26|26|3|3|cell-halign|c>|<cwith|26|26|3|3|cell-valign|c>|<cwith|27|27|3|3|cell-halign|c>|<cwith|27|27|3|3|cell-valign|c>|<cwith|28|28|3|3|cell-halign|c>|<cwith|28|28|3|3|cell-valign|c>|<cwith|29|29|3|3|cell-halign|c>|<cwith|29|29|3|3|cell-valign|c>|<cwith|26|29|3|3|cell-background|pastel
  blue>|<cwith|26|26|3|3|cell-bborder|0ln>|<cwith|27|27|3|3|cell-tborder|0ln>|<cwith|26|26|3|3|cell-lborder|0ln>|<cwith|26|26|3|3|cell-rborder|0ln>|<cwith|26|26|3|3|cell-tborder|0ln>|<cwith|30|33|3|3|cell-halign|c>|<cwith|30|33|3|3|cell-valign|c>|<cwith|30|30|3|3|cell-halign|c>|<cwith|30|30|3|3|cell-valign|c>|<cwith|31|31|3|3|cell-halign|c>|<cwith|31|31|3|3|cell-valign|c>|<cwith|32|32|3|3|cell-halign|c>|<cwith|32|32|3|3|cell-valign|c>|<cwith|33|33|3|3|cell-halign|c>|<cwith|33|33|3|3|cell-valign|c>|<cwith|33|33|3|3|cell-halign|c>|<cwith|33|33|3|3|cell-valign|c>|<cwith|30|33|3|3|cell-background|pastel
  blue>|<cwith|30|33|3|3|cell-halign|c>|<cwith|30|33|3|3|cell-valign|c>|<cwith|30|30|3|3|cell-halign|c>|<cwith|30|30|3|3|cell-valign|c>|<cwith|31|31|3|3|cell-halign|c>|<cwith|31|31|3|3|cell-valign|c>|<cwith|32|32|3|3|cell-halign|c>|<cwith|32|32|3|3|cell-valign|c>|<cwith|33|33|3|3|cell-halign|c>|<cwith|33|33|3|3|cell-valign|c>|<cwith|30|33|3|3|cell-background|pastel
  blue>|<cwith|30|30|3|3|cell-bborder|0ln>|<cwith|31|31|3|3|cell-tborder|0ln>|<cwith|30|30|3|3|cell-lborder|0ln>|<cwith|30|30|3|3|cell-rborder|0ln>|<cwith|30|30|3|3|cell-tborder|0ln>|<cwith|18|18|3|3|cell-rborder|0ln>|<cwith|2|3|9|12|cell-halign|c>|<cwith|2|3|9|12|cell-valign|c>|<cwith|2|3|9|12|cell-background|pastel
  green>|<cwith|2|3|12|12|cell-rborder|1ln>|<cwith|2|2|9|12|cell-tborder|1ln>|<cwith|4|5|9|12|cell-halign|c>|<cwith|4|5|9|12|cell-valign|c>|<cwith|4|5|9|12|cell-background|pastel
  green>|<cwith|4|5|12|12|cell-rborder|1ln>|<cwith|5|5|9|12|cell-halign|c>|<cwith|5|5|9|12|cell-valign|c>|<cwith|5|5|9|12|cell-background|pastel
  green>|<cwith|5|5|12|12|cell-rborder|1ln>|<cwith|5|5|9|11|cell-halign|c>|<cwith|5|5|9|11|cell-valign|c>|<cwith|5|5|9|11|cell-background|pastel
  green>|<cwith|6|7|9|12|cell-halign|c>|<cwith|6|7|9|12|cell-valign|c>|<cwith|6|7|9|12|cell-background|pastel
  green>|<cwith|6|7|12|12|cell-rborder|1ln>|<cwith|6|6|9|12|cell-halign|c>|<cwith|6|6|9|12|cell-valign|c>|<cwith|6|6|9|12|cell-background|pastel
  green>|<cwith|6|6|12|12|cell-rborder|1ln>|<cwith|7|7|9|12|cell-halign|c>|<cwith|7|7|9|12|cell-valign|c>|<cwith|7|7|9|12|cell-background|pastel
  green>|<cwith|7|7|12|12|cell-rborder|1ln>|<cwith|7|7|9|11|cell-halign|c>|<cwith|7|7|9|11|cell-valign|c>|<cwith|7|7|9|11|cell-background|pastel
  green>|<cwith|8|9|9|12|cell-halign|c>|<cwith|8|9|9|12|cell-valign|c>|<cwith|8|9|9|12|cell-background|pastel
  green>|<cwith|8|9|12|12|cell-rborder|1ln>|<cwith|8|9|9|12|cell-halign|c>|<cwith|8|9|9|12|cell-valign|c>|<cwith|8|9|9|12|cell-background|pastel
  green>|<cwith|8|9|12|12|cell-rborder|1ln>|<cwith|8|9|9|12|cell-halign|c>|<cwith|8|9|9|12|cell-valign|c>|<cwith|8|9|9|12|cell-background|pastel
  green>|<cwith|8|9|12|12|cell-rborder|1ln>|<cwith|8|9|9|12|cell-halign|c>|<cwith|8|9|9|12|cell-valign|c>|<cwith|8|9|9|12|cell-background|pastel
  green>|<cwith|8|9|12|12|cell-rborder|1ln>|<cwith|10|10|9|12|cell-halign|c>|<cwith|10|10|9|12|cell-valign|c>|<cwith|10|10|9|12|cell-background|pastel
  green>|<cwith|10|10|12|12|cell-rborder|1ln>|<cwith|10|10|9|12|cell-halign|c>|<cwith|10|10|9|12|cell-valign|c>|<cwith|10|10|9|12|cell-background|pastel
  green>|<cwith|10|10|12|12|cell-rborder|1ln>|<cwith|10|10|9|12|cell-halign|c>|<cwith|10|10|9|12|cell-valign|c>|<cwith|10|10|9|12|cell-background|pastel
  green>|<cwith|10|10|12|12|cell-rborder|1ln>|<cwith|11|12|9|12|cell-halign|c>|<cwith|11|12|9|12|cell-valign|c>|<cwith|11|12|9|12|cell-background|pastel
  green>|<cwith|11|12|12|12|cell-rborder|1ln>|<cwith|11|11|9|12|cell-halign|c>|<cwith|11|11|9|12|cell-valign|c>|<cwith|11|11|9|12|cell-background|pastel
  green>|<cwith|11|11|12|12|cell-rborder|1ln>|<cwith|11|11|9|12|cell-halign|c>|<cwith|11|11|9|12|cell-valign|c>|<cwith|11|11|9|12|cell-background|pastel
  green>|<cwith|11|11|12|12|cell-rborder|1ln>|<cwith|11|11|9|11|cell-halign|c>|<cwith|11|11|9|11|cell-valign|c>|<cwith|11|11|9|11|cell-background|pastel
  green>|<cwith|12|12|9|12|cell-halign|c>|<cwith|12|12|9|12|cell-valign|c>|<cwith|12|12|9|12|cell-background|pastel
  green>|<cwith|12|12|12|12|cell-rborder|1ln>|<cwith|12|12|9|12|cell-halign|c>|<cwith|12|12|9|12|cell-valign|c>|<cwith|12|12|9|12|cell-background|pastel
  green>|<cwith|12|12|12|12|cell-rborder|1ln>|<cwith|12|12|9|12|cell-halign|c>|<cwith|12|12|9|12|cell-valign|c>|<cwith|12|12|9|12|cell-background|pastel
  green>|<cwith|12|12|12|12|cell-rborder|1ln>|<cwith|12|12|9|12|cell-halign|c>|<cwith|12|12|9|12|cell-valign|c>|<cwith|12|12|9|12|cell-background|pastel
  green>|<cwith|12|12|12|12|cell-rborder|1ln>|<cwith|13|16|9|12|cell-halign|c>|<cwith|13|16|9|12|cell-valign|c>|<cwith|13|16|9|12|cell-background|pastel
  green>|<cwith|13|16|12|12|cell-rborder|1ln>|<cwith|13|13|9|12|cell-halign|c>|<cwith|13|13|9|12|cell-valign|c>|<cwith|13|13|9|12|cell-background|pastel
  green>|<cwith|13|13|12|12|cell-rborder|1ln>|<cwith|13|13|9|12|cell-halign|c>|<cwith|13|13|9|12|cell-valign|c>|<cwith|13|13|9|12|cell-background|pastel
  green>|<cwith|13|13|12|12|cell-rborder|1ln>|<cwith|13|13|9|12|cell-halign|c>|<cwith|13|13|9|12|cell-valign|c>|<cwith|13|13|9|12|cell-background|pastel
  green>|<cwith|13|13|12|12|cell-rborder|1ln>|<cwith|13|13|9|12|cell-halign|c>|<cwith|13|13|9|12|cell-valign|c>|<cwith|13|13|9|12|cell-background|pastel
  green>|<cwith|13|13|12|12|cell-rborder|1ln>|<cwith|14|14|9|12|cell-halign|c>|<cwith|14|14|9|12|cell-valign|c>|<cwith|14|14|9|12|cell-background|pastel
  green>|<cwith|14|14|12|12|cell-rborder|1ln>|<cwith|14|14|9|12|cell-halign|c>|<cwith|14|14|9|12|cell-valign|c>|<cwith|14|14|9|12|cell-background|pastel
  green>|<cwith|14|14|12|12|cell-rborder|1ln>|<cwith|14|14|9|12|cell-halign|c>|<cwith|14|14|9|12|cell-valign|c>|<cwith|14|14|9|12|cell-background|pastel
  green>|<cwith|14|14|12|12|cell-rborder|1ln>|<cwith|15|16|9|12|cell-halign|c>|<cwith|15|16|9|12|cell-valign|c>|<cwith|15|16|9|12|cell-background|pastel
  green>|<cwith|15|16|12|12|cell-rborder|1ln>|<cwith|15|15|9|12|cell-halign|c>|<cwith|15|15|9|12|cell-valign|c>|<cwith|15|15|9|12|cell-background|pastel
  green>|<cwith|15|15|12|12|cell-rborder|1ln>|<cwith|15|15|9|12|cell-halign|c>|<cwith|15|15|9|12|cell-valign|c>|<cwith|15|15|9|12|cell-background|pastel
  green>|<cwith|15|15|12|12|cell-rborder|1ln>|<cwith|15|15|9|11|cell-halign|c>|<cwith|15|15|9|11|cell-valign|c>|<cwith|15|15|9|11|cell-background|pastel
  green>|<cwith|16|16|9|12|cell-halign|c>|<cwith|16|16|9|12|cell-valign|c>|<cwith|16|16|9|12|cell-background|pastel
  green>|<cwith|16|16|12|12|cell-rborder|1ln>|<cwith|16|16|9|12|cell-halign|c>|<cwith|16|16|9|12|cell-valign|c>|<cwith|16|16|9|12|cell-background|pastel
  green>|<cwith|16|16|12|12|cell-rborder|1ln>|<cwith|16|16|9|12|cell-halign|c>|<cwith|16|16|9|12|cell-valign|c>|<cwith|16|16|9|12|cell-background|pastel
  green>|<cwith|16|16|12|12|cell-rborder|1ln>|<cwith|16|16|9|12|cell-halign|c>|<cwith|16|16|9|12|cell-valign|c>|<cwith|16|16|9|12|cell-background|pastel
  green>|<cwith|16|16|12|12|cell-rborder|1ln>|<cwith|17|17|9|12|cell-halign|c>|<cwith|17|17|9|12|cell-valign|c>|<cwith|17|17|9|12|cell-background|pastel
  green>|<cwith|17|17|12|12|cell-rborder|1ln>|<cwith|17|17|9|12|cell-halign|c>|<cwith|17|17|9|12|cell-valign|c>|<cwith|17|17|9|12|cell-background|pastel
  green>|<cwith|17|17|12|12|cell-rborder|1ln>|<cwith|17|17|9|12|cell-halign|c>|<cwith|17|17|9|12|cell-valign|c>|<cwith|17|17|9|12|cell-background|pastel
  green>|<cwith|17|17|12|12|cell-rborder|1ln>|<cwith|17|17|9|12|cell-halign|c>|<cwith|17|17|9|12|cell-valign|c>|<cwith|17|17|9|12|cell-background|pastel
  green>|<cwith|17|17|12|12|cell-rborder|1ln>|<cwith|17|17|9|12|cell-halign|c>|<cwith|17|17|9|12|cell-valign|c>|<cwith|17|17|9|12|cell-background|pastel
  green>|<cwith|17|17|12|12|cell-rborder|1ln>|<cwith|17|17|9|12|cell-halign|c>|<cwith|17|17|9|12|cell-valign|c>|<cwith|17|17|9|12|cell-background|pastel
  green>|<cwith|17|17|12|12|cell-rborder|1ln>|<cwith|18|21|9|12|cell-halign|c>|<cwith|18|21|9|12|cell-valign|c>|<cwith|18|21|9|12|cell-background|pastel
  green>|<cwith|18|21|12|12|cell-rborder|1ln>|<cwith|18|20|9|12|cell-halign|c>|<cwith|18|20|9|12|cell-valign|c>|<cwith|18|20|9|12|cell-background|pastel
  green>|<cwith|18|20|12|12|cell-rborder|1ln>|<cwith|18|18|9|12|cell-halign|c>|<cwith|18|18|9|12|cell-valign|c>|<cwith|18|18|9|12|cell-background|pastel
  green>|<cwith|18|18|12|12|cell-rborder|1ln>|<cwith|18|18|9|12|cell-halign|c>|<cwith|18|18|9|12|cell-valign|c>|<cwith|18|18|9|12|cell-background|pastel
  green>|<cwith|18|18|12|12|cell-rborder|1ln>|<cwith|18|18|9|12|cell-halign|c>|<cwith|18|18|9|12|cell-valign|c>|<cwith|18|18|9|12|cell-background|pastel
  green>|<cwith|18|18|12|12|cell-rborder|1ln>|<cwith|19|20|9|12|cell-halign|c>|<cwith|19|20|9|12|cell-valign|c>|<cwith|19|20|9|12|cell-background|pastel
  green>|<cwith|19|20|12|12|cell-rborder|1ln>|<cwith|19|19|9|12|cell-halign|c>|<cwith|19|19|9|12|cell-valign|c>|<cwith|19|19|9|12|cell-background|pastel
  green>|<cwith|19|19|12|12|cell-rborder|1ln>|<cwith|19|19|9|12|cell-halign|c>|<cwith|19|19|9|12|cell-valign|c>|<cwith|19|19|9|12|cell-background|pastel
  green>|<cwith|19|19|12|12|cell-rborder|1ln>|<cwith|19|19|9|11|cell-halign|c>|<cwith|19|19|9|11|cell-valign|c>|<cwith|19|19|9|11|cell-background|pastel
  green>|<cwith|20|20|9|12|cell-halign|c>|<cwith|20|20|9|12|cell-valign|c>|<cwith|20|20|9|12|cell-background|pastel
  green>|<cwith|20|20|12|12|cell-rborder|1ln>|<cwith|20|20|9|12|cell-halign|c>|<cwith|20|20|9|12|cell-valign|c>|<cwith|20|20|9|12|cell-background|pastel
  green>|<cwith|20|20|12|12|cell-rborder|1ln>|<cwith|20|20|9|12|cell-halign|c>|<cwith|20|20|9|12|cell-valign|c>|<cwith|20|20|9|12|cell-background|pastel
  green>|<cwith|20|20|12|12|cell-rborder|1ln>|<cwith|20|20|9|12|cell-halign|c>|<cwith|20|20|9|12|cell-valign|c>|<cwith|20|20|9|12|cell-background|pastel
  green>|<cwith|20|20|12|12|cell-rborder|1ln>|<cwith|21|21|9|12|cell-halign|c>|<cwith|21|21|9|12|cell-valign|c>|<cwith|21|21|9|12|cell-background|pastel
  green>|<cwith|21|21|12|12|cell-rborder|1ln>|<cwith|21|21|9|12|cell-halign|c>|<cwith|21|21|9|12|cell-valign|c>|<cwith|21|21|9|12|cell-background|pastel
  green>|<cwith|21|21|12|12|cell-rborder|1ln>|<cwith|21|21|9|12|cell-halign|c>|<cwith|21|21|9|12|cell-valign|c>|<cwith|21|21|9|12|cell-background|pastel
  green>|<cwith|21|21|12|12|cell-rborder|1ln>|<cwith|21|21|9|12|cell-halign|c>|<cwith|21|21|9|12|cell-valign|c>|<cwith|21|21|9|12|cell-background|pastel
  green>|<cwith|21|21|12|12|cell-rborder|1ln>|<cwith|21|21|9|12|cell-halign|c>|<cwith|21|21|9|12|cell-valign|c>|<cwith|21|21|9|12|cell-background|pastel
  green>|<cwith|21|21|12|12|cell-rborder|1ln>|<cwith|21|21|9|12|cell-halign|c>|<cwith|21|21|9|12|cell-valign|c>|<cwith|21|21|9|12|cell-background|pastel
  green>|<cwith|21|21|12|12|cell-rborder|1ln>|<cwith|22|25|9|12|cell-halign|c>|<cwith|22|25|9|12|cell-valign|c>|<cwith|22|25|9|12|cell-background|pastel
  green>|<cwith|22|25|12|12|cell-rborder|1ln>|<cwith|22|24|9|12|cell-halign|c>|<cwith|22|24|9|12|cell-valign|c>|<cwith|22|24|9|12|cell-background|pastel
  green>|<cwith|22|24|12|12|cell-rborder|1ln>|<cwith|22|22|9|12|cell-halign|c>|<cwith|22|22|9|12|cell-valign|c>|<cwith|22|22|9|12|cell-background|pastel
  green>|<cwith|22|22|12|12|cell-rborder|1ln>|<cwith|22|22|9|12|cell-halign|c>|<cwith|22|22|9|12|cell-valign|c>|<cwith|22|22|9|12|cell-background|pastel
  green>|<cwith|22|22|12|12|cell-rborder|1ln>|<cwith|22|22|9|12|cell-halign|c>|<cwith|22|22|9|12|cell-valign|c>|<cwith|22|22|9|12|cell-background|pastel
  green>|<cwith|22|22|12|12|cell-rborder|1ln>|<cwith|23|24|9|12|cell-halign|c>|<cwith|23|24|9|12|cell-valign|c>|<cwith|23|24|9|12|cell-background|pastel
  green>|<cwith|23|24|12|12|cell-rborder|1ln>|<cwith|23|23|9|12|cell-halign|c>|<cwith|23|23|9|12|cell-valign|c>|<cwith|23|23|9|12|cell-background|pastel
  green>|<cwith|23|23|12|12|cell-rborder|1ln>|<cwith|23|23|9|12|cell-halign|c>|<cwith|23|23|9|12|cell-valign|c>|<cwith|23|23|9|12|cell-background|pastel
  green>|<cwith|23|23|12|12|cell-rborder|1ln>|<cwith|23|23|9|11|cell-halign|c>|<cwith|23|23|9|11|cell-valign|c>|<cwith|23|23|9|11|cell-background|pastel
  green>|<cwith|24|24|9|12|cell-halign|c>|<cwith|24|24|9|12|cell-valign|c>|<cwith|24|24|9|12|cell-background|pastel
  green>|<cwith|24|24|12|12|cell-rborder|1ln>|<cwith|24|24|9|12|cell-halign|c>|<cwith|24|24|9|12|cell-valign|c>|<cwith|24|24|9|12|cell-background|pastel
  green>|<cwith|24|24|12|12|cell-rborder|1ln>|<cwith|24|24|9|12|cell-halign|c>|<cwith|24|24|9|12|cell-valign|c>|<cwith|24|24|9|12|cell-background|pastel
  green>|<cwith|24|24|12|12|cell-rborder|1ln>|<cwith|24|24|9|12|cell-halign|c>|<cwith|24|24|9|12|cell-valign|c>|<cwith|24|24|9|12|cell-background|pastel
  green>|<cwith|24|24|12|12|cell-rborder|1ln>|<cwith|25|25|9|12|cell-halign|c>|<cwith|25|25|9|12|cell-valign|c>|<cwith|25|25|9|12|cell-background|pastel
  green>|<cwith|25|25|12|12|cell-rborder|1ln>|<cwith|25|25|9|12|cell-halign|c>|<cwith|25|25|9|12|cell-valign|c>|<cwith|25|25|9|12|cell-background|pastel
  green>|<cwith|25|25|12|12|cell-rborder|1ln>|<cwith|25|25|9|12|cell-halign|c>|<cwith|25|25|9|12|cell-valign|c>|<cwith|25|25|9|12|cell-background|pastel
  green>|<cwith|25|25|12|12|cell-rborder|1ln>|<cwith|25|25|9|12|cell-halign|c>|<cwith|25|25|9|12|cell-valign|c>|<cwith|25|25|9|12|cell-background|pastel
  green>|<cwith|25|25|12|12|cell-rborder|1ln>|<cwith|25|25|9|12|cell-halign|c>|<cwith|25|25|9|12|cell-valign|c>|<cwith|25|25|9|12|cell-background|pastel
  green>|<cwith|25|25|12|12|cell-rborder|1ln>|<cwith|25|25|9|12|cell-halign|c>|<cwith|25|25|9|12|cell-valign|c>|<cwith|25|25|9|12|cell-background|pastel
  green>|<cwith|25|25|12|12|cell-rborder|1ln>|<cwith|26|29|9|12|cell-halign|c>|<cwith|26|29|9|12|cell-valign|c>|<cwith|26|29|9|12|cell-background|pastel
  green>|<cwith|26|29|12|12|cell-rborder|1ln>|<cwith|26|28|9|12|cell-halign|c>|<cwith|26|28|9|12|cell-valign|c>|<cwith|26|28|9|12|cell-background|pastel
  green>|<cwith|26|28|12|12|cell-rborder|1ln>|<cwith|26|26|9|12|cell-halign|c>|<cwith|26|26|9|12|cell-valign|c>|<cwith|26|26|9|12|cell-background|pastel
  green>|<cwith|26|26|12|12|cell-rborder|1ln>|<cwith|26|26|9|12|cell-halign|c>|<cwith|26|26|9|12|cell-valign|c>|<cwith|26|26|9|12|cell-background|pastel
  green>|<cwith|26|26|12|12|cell-rborder|1ln>|<cwith|26|26|9|12|cell-halign|c>|<cwith|26|26|9|12|cell-valign|c>|<cwith|26|26|9|12|cell-background|pastel
  green>|<cwith|26|26|12|12|cell-rborder|1ln>|<cwith|27|28|9|12|cell-halign|c>|<cwith|27|28|9|12|cell-valign|c>|<cwith|27|28|9|12|cell-background|pastel
  green>|<cwith|27|28|12|12|cell-rborder|1ln>|<cwith|27|27|9|12|cell-halign|c>|<cwith|27|27|9|12|cell-valign|c>|<cwith|27|27|9|12|cell-background|pastel
  green>|<cwith|27|27|12|12|cell-rborder|1ln>|<cwith|27|27|9|12|cell-halign|c>|<cwith|27|27|9|12|cell-valign|c>|<cwith|27|27|9|12|cell-background|pastel
  green>|<cwith|27|27|12|12|cell-rborder|1ln>|<cwith|27|27|9|11|cell-halign|c>|<cwith|27|27|9|11|cell-valign|c>|<cwith|27|27|9|11|cell-background|pastel
  green>|<cwith|28|28|9|12|cell-halign|c>|<cwith|28|28|9|12|cell-valign|c>|<cwith|28|28|9|12|cell-background|pastel
  green>|<cwith|28|28|12|12|cell-rborder|1ln>|<cwith|28|28|9|12|cell-halign|c>|<cwith|28|28|9|12|cell-valign|c>|<cwith|28|28|9|12|cell-background|pastel
  green>|<cwith|28|28|12|12|cell-rborder|1ln>|<cwith|28|28|9|12|cell-halign|c>|<cwith|28|28|9|12|cell-valign|c>|<cwith|28|28|9|12|cell-background|pastel
  green>|<cwith|28|28|12|12|cell-rborder|1ln>|<cwith|28|28|9|12|cell-halign|c>|<cwith|28|28|9|12|cell-valign|c>|<cwith|28|28|9|12|cell-background|pastel
  green>|<cwith|28|28|12|12|cell-rborder|1ln>|<cwith|29|29|9|12|cell-halign|c>|<cwith|29|29|9|12|cell-valign|c>|<cwith|29|29|9|12|cell-background|pastel
  green>|<cwith|29|29|12|12|cell-rborder|1ln>|<cwith|29|29|9|12|cell-halign|c>|<cwith|29|29|9|12|cell-valign|c>|<cwith|29|29|9|12|cell-background|pastel
  green>|<cwith|29|29|12|12|cell-rborder|1ln>|<cwith|29|29|9|12|cell-halign|c>|<cwith|29|29|9|12|cell-valign|c>|<cwith|29|29|9|12|cell-background|pastel
  green>|<cwith|29|29|12|12|cell-rborder|1ln>|<cwith|29|29|9|12|cell-halign|c>|<cwith|29|29|9|12|cell-valign|c>|<cwith|29|29|9|12|cell-background|pastel
  green>|<cwith|29|29|12|12|cell-rborder|1ln>|<cwith|29|29|9|12|cell-halign|c>|<cwith|29|29|9|12|cell-valign|c>|<cwith|29|29|9|12|cell-background|pastel
  green>|<cwith|29|29|12|12|cell-rborder|1ln>|<cwith|29|29|9|12|cell-halign|c>|<cwith|29|29|9|12|cell-valign|c>|<cwith|29|29|9|12|cell-background|pastel
  green>|<cwith|29|29|12|12|cell-rborder|1ln>|<cwith|30|33|9|12|cell-halign|c>|<cwith|30|33|9|12|cell-valign|c>|<cwith|30|33|9|12|cell-background|pastel
  green>|<cwith|30|33|12|12|cell-rborder|1ln>|<cwith|30|32|9|12|cell-halign|c>|<cwith|30|32|9|12|cell-valign|c>|<cwith|30|32|9|12|cell-background|pastel
  green>|<cwith|30|32|12|12|cell-rborder|1ln>|<cwith|30|30|9|12|cell-halign|c>|<cwith|30|30|9|12|cell-valign|c>|<cwith|30|30|9|12|cell-background|pastel
  green>|<cwith|30|30|12|12|cell-rborder|1ln>|<cwith|30|30|9|12|cell-halign|c>|<cwith|30|30|9|12|cell-valign|c>|<cwith|30|30|9|12|cell-background|pastel
  green>|<cwith|30|30|12|12|cell-rborder|1ln>|<cwith|30|30|9|12|cell-halign|c>|<cwith|30|30|9|12|cell-valign|c>|<cwith|30|30|9|12|cell-background|pastel
  green>|<cwith|30|30|12|12|cell-rborder|1ln>|<cwith|31|32|9|12|cell-halign|c>|<cwith|31|32|9|12|cell-valign|c>|<cwith|31|32|9|12|cell-background|pastel
  green>|<cwith|31|32|12|12|cell-rborder|1ln>|<cwith|31|31|9|12|cell-halign|c>|<cwith|31|31|9|12|cell-valign|c>|<cwith|31|31|9|12|cell-background|pastel
  green>|<cwith|31|31|12|12|cell-rborder|1ln>|<cwith|31|31|9|12|cell-halign|c>|<cwith|31|31|9|12|cell-valign|c>|<cwith|31|31|9|12|cell-background|pastel
  green>|<cwith|31|31|12|12|cell-rborder|1ln>|<cwith|31|31|9|11|cell-halign|c>|<cwith|31|31|9|11|cell-valign|c>|<cwith|31|31|9|11|cell-background|pastel
  green>|<cwith|32|32|9|12|cell-halign|c>|<cwith|32|32|9|12|cell-valign|c>|<cwith|32|32|9|12|cell-background|pastel
  green>|<cwith|32|32|12|12|cell-rborder|1ln>|<cwith|32|32|9|12|cell-halign|c>|<cwith|32|32|9|12|cell-valign|c>|<cwith|32|32|9|12|cell-background|pastel
  green>|<cwith|32|32|12|12|cell-rborder|1ln>|<cwith|32|32|9|12|cell-halign|c>|<cwith|32|32|9|12|cell-valign|c>|<cwith|32|32|9|12|cell-background|pastel
  green>|<cwith|32|32|12|12|cell-rborder|1ln>|<cwith|32|32|9|12|cell-halign|c>|<cwith|32|32|9|12|cell-valign|c>|<cwith|32|32|9|12|cell-background|pastel
  green>|<cwith|32|32|12|12|cell-rborder|1ln>|<cwith|33|33|9|12|cell-halign|c>|<cwith|33|33|9|12|cell-valign|c>|<cwith|33|33|9|12|cell-background|pastel
  green>|<cwith|33|33|12|12|cell-rborder|1ln>|<cwith|33|33|9|12|cell-halign|c>|<cwith|33|33|9|12|cell-valign|c>|<cwith|33|33|9|12|cell-background|pastel
  green>|<cwith|33|33|12|12|cell-rborder|1ln>|<cwith|33|33|9|12|cell-halign|c>|<cwith|33|33|9|12|cell-valign|c>|<cwith|33|33|9|12|cell-background|pastel
  green>|<cwith|33|33|12|12|cell-rborder|1ln>|<cwith|33|33|9|12|cell-halign|c>|<cwith|33|33|9|12|cell-valign|c>|<cwith|33|33|9|12|cell-background|pastel
  green>|<cwith|33|33|12|12|cell-rborder|1ln>|<cwith|33|33|9|12|cell-halign|c>|<cwith|33|33|9|12|cell-valign|c>|<cwith|33|33|9|12|cell-background|pastel
  green>|<cwith|33|33|12|12|cell-rborder|1ln>|<cwith|33|33|9|12|cell-halign|c>|<cwith|33|33|9|12|cell-valign|c>|<cwith|33|33|9|12|cell-background|pastel
  green>|<cwith|33|33|12|12|cell-rborder|1ln>|<table|<row|<cell|a<rsub|2>>|<cell|a<rsub|1>>|<cell|a<rsub|0>>|<cell|R<rsub|0>>|<cell|R<rsub|1>>|<cell|R<rsub|2>>|<cell|R<rsub|3>>|<cell|R<rsub|VIP>>|<cell|UP>|<cell|STOP>|<cell|DOWN>|<cell|HEX>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|<shell|0x0>>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|<shell|0x4>>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|<shell|0x2>>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|<shell|0x6>>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|<shell|0x1>>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|<shell|0x5>>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|<shell|0x3>>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<shell|0x7>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|<shell|0x1>>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|<shell|0x5>>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|<shell|0x3>>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<shell|0x7>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|<shell|0x1>>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|<shell|0x5>>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|<shell|0x3>>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|<shell|0x7>>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|<shell|0x1>>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|<shell|0x5>>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|<shell|0x3>>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|<shell|0x7>>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|<shell|0x1>>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|<shell|0x5>>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|<shell|0x3>>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|<shell|0x7>>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|<shell|0x1>>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|<shell|0x5>>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|<shell|0x3>>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|<shell|0x7>>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|<shell|0x1>>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|<shell|0x5>>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|<shell|0x3>>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|<shell|0x7>>>>>>>>>>>>|Tabella
  di verità del comparatore per <math|a<rsub|2>=0,a<rsub|1>=1,a<rsub|0>=1>>

  La quinta tabella di verità rappresenta le <math|32> possibili richieste
  <math|R<rsub|x>> nel caso in cui <math|a<rsub|2>=1,a<rsub|1>=0,a<rsub|0>=0>
  (quindi siamo nel caso in cui si attiva il segnale di arrivo
  <math|A<rsub|VIP>>):

  <big-table|<tiny|<tabular|<tformat|<table|<row|<cell|<math|<tformat|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|1|-1|1|-1|cell-valign|c>|<cwith|19|33|5|8|cell-halign|c>|<cwith|19|33|5|8|cell-valign|c>|<cwith|19|26|4|4|cell-halign|c>|<cwith|19|26|4|4|cell-valign|c>|<cwith|19|26|4|4|cell-halign|c>|<cwith|19|26|4|4|cell-valign|c>|<cwith|27|34|4|4|cell-halign|c>|<cwith|27|34|4|4|cell-valign|c>|<cwith|27|34|4|4|cell-halign|c>|<cwith|27|34|4|4|cell-valign|c>|<cwith|2|2|1|3|cell-halign|c>|<cwith|2|2|1|3|cell-valign|c>|<cwith|3|3|1|3|cell-halign|c>|<cwith|3|3|1|3|cell-valign|c>|<cwith|4|4|1|3|cell-halign|c>|<cwith|4|4|1|3|cell-valign|c>|<cwith|5|5|1|3|cell-halign|c>|<cwith|5|5|1|3|cell-valign|c>|<cwith|6|6|1|3|cell-halign|c>|<cwith|6|6|1|3|cell-valign|c>|<cwith|7|7|1|3|cell-halign|c>|<cwith|7|7|1|3|cell-valign|c>|<cwith|8|8|1|3|cell-halign|c>|<cwith|8|8|1|3|cell-valign|c>|<cwith|9|15|1|3|cell-halign|c>|<cwith|9|15|1|3|cell-valign|c>|<cwith|9|9|1|3|cell-halign|c>|<cwith|9|9|1|3|cell-valign|c>|<cwith|10|10|1|3|cell-halign|c>|<cwith|10|10|1|3|cell-valign|c>|<cwith|11|11|1|3|cell-halign|c>|<cwith|11|11|1|3|cell-valign|c>|<cwith|12|12|1|3|cell-halign|c>|<cwith|12|12|1|3|cell-valign|c>|<cwith|13|13|1|3|cell-halign|c>|<cwith|13|13|1|3|cell-valign|c>|<cwith|14|14|1|3|cell-halign|c>|<cwith|14|14|1|3|cell-valign|c>|<cwith|15|15|1|3|cell-halign|c>|<cwith|15|15|1|3|cell-valign|c>|<cwith|16|22|1|3|cell-halign|c>|<cwith|16|22|1|3|cell-valign|c>|<cwith|16|16|1|3|cell-halign|c>|<cwith|16|16|1|3|cell-valign|c>|<cwith|17|17|1|3|cell-halign|c>|<cwith|17|17|1|3|cell-valign|c>|<cwith|18|18|1|3|cell-halign|c>|<cwith|18|18|1|3|cell-valign|c>|<cwith|19|19|1|3|cell-halign|c>|<cwith|19|19|1|3|cell-valign|c>|<cwith|20|20|1|3|cell-halign|c>|<cwith|20|20|1|3|cell-valign|c>|<cwith|21|21|1|3|cell-halign|c>|<cwith|21|21|1|3|cell-valign|c>|<cwith|22|22|1|3|cell-halign|c>|<cwith|22|22|1|3|cell-valign|c>|<cwith|23|29|1|3|cell-halign|c>|<cwith|23|29|1|3|cell-valign|c>|<cwith|23|23|1|3|cell-halign|c>|<cwith|23|23|1|3|cell-valign|c>|<cwith|24|24|1|3|cell-halign|c>|<cwith|24|24|1|3|cell-valign|c>|<cwith|25|25|1|3|cell-halign|c>|<cwith|25|25|1|3|cell-valign|c>|<cwith|26|26|1|3|cell-halign|c>|<cwith|26|26|1|3|cell-valign|c>|<cwith|27|27|1|3|cell-halign|c>|<cwith|27|27|1|3|cell-valign|c>|<cwith|28|28|1|3|cell-halign|c>|<cwith|28|28|1|3|cell-valign|c>|<cwith|29|29|1|3|cell-halign|c>|<cwith|29|29|1|3|cell-valign|c>|<cwith|30|32|1|3|cell-halign|c>|<cwith|30|32|1|3|cell-valign|c>|<cwith|30|32|1|3|cell-halign|c>|<cwith|30|32|1|3|cell-valign|c>|<cwith|30|30|1|3|cell-halign|c>|<cwith|30|30|1|3|cell-valign|c>|<cwith|31|31|1|3|cell-halign|c>|<cwith|31|31|1|3|cell-valign|c>|<cwith|32|32|1|3|cell-halign|c>|<cwith|32|32|1|3|cell-valign|c>|<cwith|33|33|1|3|cell-halign|c>|<cwith|33|33|1|3|cell-valign|c>|<cwith|33|33|1|3|cell-halign|c>|<cwith|33|33|1|3|cell-valign|c>|<cwith|33|33|1|3|cell-halign|c>|<cwith|33|33|1|3|cell-valign|c>|<cwith|33|33|1|3|cell-halign|c>|<cwith|33|33|1|3|cell-valign|c>|<cwith|1|-1|9|12|cell-background|pastel
  green>|<cwith|1|-1|1|8|cell-background|pastel
  blue>|<cwith|33|33|1|-1|cell-bborder|1ln>|<cwith|1|-1|1|1|cell-lborder|1ln>|<cwith|1|-1|12|12|cell-rborder|1ln>|<cwith|1|1|1|-1|cell-tborder|1ln>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|2|2|1|-1|cell-tborder|1ln>|<cwith|1|1|1|1|cell-lborder|1ln>|<cwith|1|1|12|12|cell-rborder|1ln>|<cwith|6|9|3|3|cell-halign|c>|<cwith|6|9|3|3|cell-valign|c>|<cwith|6|6|3|3|cell-halign|c>|<cwith|6|6|3|3|cell-valign|c>|<cwith|7|7|3|3|cell-halign|c>|<cwith|7|7|3|3|cell-valign|c>|<cwith|8|8|3|3|cell-halign|c>|<cwith|8|8|3|3|cell-valign|c>|<cwith|9|9|3|3|cell-halign|c>|<cwith|9|9|3|3|cell-valign|c>|<cwith|6|9|3|3|cell-background|pastel
  blue>|<cwith|6|6|3|3|cell-bborder|0ln>|<cwith|7|7|3|3|cell-tborder|0ln>|<cwith|5|6|3|3|cell-rborder|0ln>|<cwith|5|6|4|4|cell-lborder|0ln>|<cwith|5|5|3|3|cell-tborder|0ln>|<cwith|4|4|3|3|cell-bborder|0ln>|<cwith|5|5|3|3|cell-bborder|0ln>|<cwith|6|6|3|3|cell-tborder|0ln>|<cwith|5|5|3|3|cell-rborder|0ln>|<cwith|5|5|4|4|cell-lborder|0ln>|<cwith|10|13|3|3|cell-halign|c>|<cwith|10|13|3|3|cell-valign|c>|<cwith|10|10|3|3|cell-halign|c>|<cwith|10|10|3|3|cell-valign|c>|<cwith|11|11|3|3|cell-halign|c>|<cwith|11|11|3|3|cell-valign|c>|<cwith|12|12|3|3|cell-halign|c>|<cwith|12|12|3|3|cell-valign|c>|<cwith|13|13|3|3|cell-halign|c>|<cwith|13|13|3|3|cell-valign|c>|<cwith|13|13|3|3|cell-halign|c>|<cwith|13|13|3|3|cell-valign|c>|<cwith|10|13|3|3|cell-background|pastel
  blue>|<cwith|10|13|3|3|cell-halign|c>|<cwith|10|13|3|3|cell-valign|c>|<cwith|10|10|3|3|cell-halign|c>|<cwith|10|10|3|3|cell-valign|c>|<cwith|11|11|3|3|cell-halign|c>|<cwith|11|11|3|3|cell-valign|c>|<cwith|12|12|3|3|cell-halign|c>|<cwith|12|12|3|3|cell-valign|c>|<cwith|13|13|3|3|cell-halign|c>|<cwith|13|13|3|3|cell-valign|c>|<cwith|10|13|3|3|cell-background|pastel
  blue>|<cwith|10|10|3|3|cell-bborder|0ln>|<cwith|11|11|3|3|cell-tborder|0ln>|<cwith|10|10|3|3|cell-rborder|0ln>|<cwith|10|10|3|3|cell-tborder|0ln>|<cwith|14|17|3|3|cell-halign|c>|<cwith|14|17|3|3|cell-valign|c>|<cwith|14|14|3|3|cell-halign|c>|<cwith|14|14|3|3|cell-valign|c>|<cwith|15|15|3|3|cell-halign|c>|<cwith|15|15|3|3|cell-valign|c>|<cwith|16|16|3|3|cell-halign|c>|<cwith|16|16|3|3|cell-valign|c>|<cwith|17|17|3|3|cell-halign|c>|<cwith|17|17|3|3|cell-valign|c>|<cwith|17|17|3|3|cell-halign|c>|<cwith|17|17|3|3|cell-valign|c>|<cwith|14|17|3|3|cell-background|pastel
  blue>|<cwith|14|17|3|3|cell-halign|c>|<cwith|14|17|3|3|cell-valign|c>|<cwith|14|14|3|3|cell-halign|c>|<cwith|14|14|3|3|cell-valign|c>|<cwith|15|15|3|3|cell-halign|c>|<cwith|15|15|3|3|cell-valign|c>|<cwith|16|16|3|3|cell-halign|c>|<cwith|16|16|3|3|cell-valign|c>|<cwith|17|17|3|3|cell-halign|c>|<cwith|17|17|3|3|cell-valign|c>|<cwith|14|17|3|3|cell-background|pastel
  blue>|<cwith|14|14|3|3|cell-bborder|0ln>|<cwith|15|15|3|3|cell-tborder|0ln>|<cwith|14|14|3|3|cell-rborder|0ln>|<cwith|14|14|3|3|cell-tborder|0ln>|<cwith|18|21|3|3|cell-halign|c>|<cwith|18|21|3|3|cell-valign|c>|<cwith|18|18|3|3|cell-halign|c>|<cwith|18|18|3|3|cell-valign|c>|<cwith|19|19|3|3|cell-halign|c>|<cwith|19|19|3|3|cell-valign|c>|<cwith|20|20|3|3|cell-halign|c>|<cwith|20|20|3|3|cell-valign|c>|<cwith|21|21|3|3|cell-halign|c>|<cwith|21|21|3|3|cell-valign|c>|<cwith|21|21|3|3|cell-halign|c>|<cwith|21|21|3|3|cell-valign|c>|<cwith|18|21|3|3|cell-background|pastel
  blue>|<cwith|18|21|3|3|cell-halign|c>|<cwith|18|21|3|3|cell-valign|c>|<cwith|18|18|3|3|cell-halign|c>|<cwith|18|18|3|3|cell-valign|c>|<cwith|19|19|3|3|cell-halign|c>|<cwith|19|19|3|3|cell-valign|c>|<cwith|20|20|3|3|cell-halign|c>|<cwith|20|20|3|3|cell-valign|c>|<cwith|21|21|3|3|cell-halign|c>|<cwith|21|21|3|3|cell-valign|c>|<cwith|18|21|3|3|cell-background|pastel
  blue>|<cwith|22|25|3|3|cell-halign|c>|<cwith|22|25|3|3|cell-valign|c>|<cwith|22|22|3|3|cell-halign|c>|<cwith|22|22|3|3|cell-valign|c>|<cwith|23|23|3|3|cell-halign|c>|<cwith|23|23|3|3|cell-valign|c>|<cwith|24|24|3|3|cell-halign|c>|<cwith|24|24|3|3|cell-valign|c>|<cwith|25|25|3|3|cell-halign|c>|<cwith|25|25|3|3|cell-valign|c>|<cwith|25|25|3|3|cell-halign|c>|<cwith|25|25|3|3|cell-valign|c>|<cwith|22|25|3|3|cell-background|pastel
  blue>|<cwith|22|25|3|3|cell-halign|c>|<cwith|22|25|3|3|cell-valign|c>|<cwith|22|22|3|3|cell-halign|c>|<cwith|22|22|3|3|cell-valign|c>|<cwith|23|23|3|3|cell-halign|c>|<cwith|23|23|3|3|cell-valign|c>|<cwith|24|24|3|3|cell-halign|c>|<cwith|24|24|3|3|cell-valign|c>|<cwith|25|25|3|3|cell-halign|c>|<cwith|25|25|3|3|cell-valign|c>|<cwith|22|25|3|3|cell-background|pastel
  blue>|<cwith|22|22|3|3|cell-bborder|0ln>|<cwith|23|23|3|3|cell-tborder|0ln>|<cwith|22|22|3|3|cell-rborder|0ln>|<cwith|22|22|3|3|cell-tborder|0ln>|<cwith|26|29|3|3|cell-halign|c>|<cwith|26|29|3|3|cell-valign|c>|<cwith|26|26|3|3|cell-halign|c>|<cwith|26|26|3|3|cell-valign|c>|<cwith|27|27|3|3|cell-halign|c>|<cwith|27|27|3|3|cell-valign|c>|<cwith|28|28|3|3|cell-halign|c>|<cwith|28|28|3|3|cell-valign|c>|<cwith|29|29|3|3|cell-halign|c>|<cwith|29|29|3|3|cell-valign|c>|<cwith|29|29|3|3|cell-halign|c>|<cwith|29|29|3|3|cell-valign|c>|<cwith|26|29|3|3|cell-background|pastel
  blue>|<cwith|26|29|3|3|cell-halign|c>|<cwith|26|29|3|3|cell-valign|c>|<cwith|26|26|3|3|cell-halign|c>|<cwith|26|26|3|3|cell-valign|c>|<cwith|27|27|3|3|cell-halign|c>|<cwith|27|27|3|3|cell-valign|c>|<cwith|28|28|3|3|cell-halign|c>|<cwith|28|28|3|3|cell-valign|c>|<cwith|29|29|3|3|cell-halign|c>|<cwith|29|29|3|3|cell-valign|c>|<cwith|26|29|3|3|cell-background|pastel
  blue>|<cwith|26|26|3|3|cell-bborder|0ln>|<cwith|27|27|3|3|cell-tborder|0ln>|<cwith|26|26|3|3|cell-rborder|0ln>|<cwith|26|26|3|3|cell-tborder|0ln>|<cwith|30|33|3|3|cell-halign|c>|<cwith|30|33|3|3|cell-valign|c>|<cwith|30|30|3|3|cell-halign|c>|<cwith|30|30|3|3|cell-valign|c>|<cwith|31|31|3|3|cell-halign|c>|<cwith|31|31|3|3|cell-valign|c>|<cwith|32|32|3|3|cell-halign|c>|<cwith|32|32|3|3|cell-valign|c>|<cwith|33|33|3|3|cell-halign|c>|<cwith|33|33|3|3|cell-valign|c>|<cwith|33|33|3|3|cell-halign|c>|<cwith|33|33|3|3|cell-valign|c>|<cwith|30|33|3|3|cell-background|pastel
  blue>|<cwith|30|33|3|3|cell-halign|c>|<cwith|30|33|3|3|cell-valign|c>|<cwith|30|30|3|3|cell-halign|c>|<cwith|30|30|3|3|cell-valign|c>|<cwith|31|31|3|3|cell-halign|c>|<cwith|31|31|3|3|cell-valign|c>|<cwith|32|32|3|3|cell-halign|c>|<cwith|32|32|3|3|cell-valign|c>|<cwith|33|33|3|3|cell-halign|c>|<cwith|33|33|3|3|cell-valign|c>|<cwith|30|33|3|3|cell-background|pastel
  blue>|<cwith|30|30|3|3|cell-bborder|0ln>|<cwith|31|31|3|3|cell-tborder|0ln>|<cwith|30|30|3|3|cell-rborder|0ln>|<cwith|30|30|3|3|cell-tborder|0ln>|<cwith|2|33|2|2|cell-halign|c>|<cwith|2|33|2|2|cell-valign|c>|<cwith|2|2|2|2|cell-halign|c>|<cwith|2|2|2|2|cell-valign|c>|<cwith|3|3|2|2|cell-halign|c>|<cwith|3|3|2|2|cell-valign|c>|<cwith|4|4|2|2|cell-halign|c>|<cwith|4|4|2|2|cell-valign|c>|<cwith|5|5|2|2|cell-halign|c>|<cwith|5|5|2|2|cell-valign|c>|<cwith|6|6|2|2|cell-halign|c>|<cwith|6|6|2|2|cell-valign|c>|<cwith|7|7|2|2|cell-halign|c>|<cwith|7|7|2|2|cell-valign|c>|<cwith|8|8|2|2|cell-halign|c>|<cwith|8|8|2|2|cell-valign|c>|<cwith|9|15|2|2|cell-halign|c>|<cwith|9|15|2|2|cell-valign|c>|<cwith|9|9|2|2|cell-halign|c>|<cwith|9|9|2|2|cell-valign|c>|<cwith|10|10|2|2|cell-halign|c>|<cwith|10|10|2|2|cell-valign|c>|<cwith|11|11|2|2|cell-halign|c>|<cwith|11|11|2|2|cell-valign|c>|<cwith|12|12|2|2|cell-halign|c>|<cwith|12|12|2|2|cell-valign|c>|<cwith|13|13|2|2|cell-halign|c>|<cwith|13|13|2|2|cell-valign|c>|<cwith|14|14|2|2|cell-halign|c>|<cwith|14|14|2|2|cell-valign|c>|<cwith|15|15|2|2|cell-halign|c>|<cwith|15|15|2|2|cell-valign|c>|<cwith|16|22|2|2|cell-halign|c>|<cwith|16|22|2|2|cell-valign|c>|<cwith|16|16|2|2|cell-halign|c>|<cwith|16|16|2|2|cell-valign|c>|<cwith|17|17|2|2|cell-halign|c>|<cwith|17|17|2|2|cell-valign|c>|<cwith|18|18|2|2|cell-halign|c>|<cwith|18|18|2|2|cell-valign|c>|<cwith|19|19|2|2|cell-halign|c>|<cwith|19|19|2|2|cell-valign|c>|<cwith|20|20|2|2|cell-halign|c>|<cwith|20|20|2|2|cell-valign|c>|<cwith|21|21|2|2|cell-halign|c>|<cwith|21|21|2|2|cell-valign|c>|<cwith|22|22|2|2|cell-halign|c>|<cwith|22|22|2|2|cell-valign|c>|<cwith|23|29|2|2|cell-halign|c>|<cwith|23|29|2|2|cell-valign|c>|<cwith|23|23|2|2|cell-halign|c>|<cwith|23|23|2|2|cell-valign|c>|<cwith|24|24|2|2|cell-halign|c>|<cwith|24|24|2|2|cell-valign|c>|<cwith|25|25|2|2|cell-halign|c>|<cwith|25|25|2|2|cell-valign|c>|<cwith|26|26|2|2|cell-halign|c>|<cwith|26|26|2|2|cell-valign|c>|<cwith|27|27|2|2|cell-halign|c>|<cwith|27|27|2|2|cell-valign|c>|<cwith|28|28|2|2|cell-halign|c>|<cwith|28|28|2|2|cell-valign|c>|<cwith|29|29|2|2|cell-halign|c>|<cwith|29|29|2|2|cell-valign|c>|<cwith|30|32|2|2|cell-halign|c>|<cwith|30|32|2|2|cell-valign|c>|<cwith|30|32|2|2|cell-halign|c>|<cwith|30|32|2|2|cell-valign|c>|<cwith|30|30|2|2|cell-halign|c>|<cwith|30|30|2|2|cell-valign|c>|<cwith|31|31|2|2|cell-halign|c>|<cwith|31|31|2|2|cell-valign|c>|<cwith|32|32|2|2|cell-halign|c>|<cwith|32|32|2|2|cell-valign|c>|<cwith|33|33|2|2|cell-halign|c>|<cwith|33|33|2|2|cell-valign|c>|<cwith|33|33|2|2|cell-halign|c>|<cwith|33|33|2|2|cell-valign|c>|<cwith|33|33|2|2|cell-halign|c>|<cwith|33|33|2|2|cell-valign|c>|<cwith|33|33|2|2|cell-halign|c>|<cwith|33|33|2|2|cell-valign|c>|<cwith|2|33|2|2|cell-background|pastel
  blue>|<cwith|6|9|2|2|cell-halign|c>|<cwith|6|9|2|2|cell-valign|c>|<cwith|6|6|2|2|cell-halign|c>|<cwith|6|6|2|2|cell-valign|c>|<cwith|7|7|2|2|cell-halign|c>|<cwith|7|7|2|2|cell-valign|c>|<cwith|8|8|2|2|cell-halign|c>|<cwith|8|8|2|2|cell-valign|c>|<cwith|9|9|2|2|cell-halign|c>|<cwith|9|9|2|2|cell-valign|c>|<cwith|6|9|2|2|cell-background|pastel
  blue>|<cwith|6|6|2|2|cell-bborder|0ln>|<cwith|7|7|2|2|cell-tborder|0ln>|<cwith|5|5|2|2|cell-tborder|0ln>|<cwith|4|4|2|2|cell-bborder|0ln>|<cwith|5|5|2|2|cell-bborder|0ln>|<cwith|6|6|2|2|cell-tborder|0ln>|<cwith|10|13|2|2|cell-halign|c>|<cwith|10|13|2|2|cell-valign|c>|<cwith|10|10|2|2|cell-halign|c>|<cwith|10|10|2|2|cell-valign|c>|<cwith|11|11|2|2|cell-halign|c>|<cwith|11|11|2|2|cell-valign|c>|<cwith|12|12|2|2|cell-halign|c>|<cwith|12|12|2|2|cell-valign|c>|<cwith|13|13|2|2|cell-halign|c>|<cwith|13|13|2|2|cell-valign|c>|<cwith|13|13|2|2|cell-halign|c>|<cwith|13|13|2|2|cell-valign|c>|<cwith|10|13|2|2|cell-background|pastel
  blue>|<cwith|10|13|2|2|cell-halign|c>|<cwith|10|13|2|2|cell-valign|c>|<cwith|10|10|2|2|cell-halign|c>|<cwith|10|10|2|2|cell-valign|c>|<cwith|11|11|2|2|cell-halign|c>|<cwith|11|11|2|2|cell-valign|c>|<cwith|12|12|2|2|cell-halign|c>|<cwith|12|12|2|2|cell-valign|c>|<cwith|13|13|2|2|cell-halign|c>|<cwith|13|13|2|2|cell-valign|c>|<cwith|10|13|2|2|cell-background|pastel
  blue>|<cwith|10|10|2|2|cell-bborder|0ln>|<cwith|11|11|2|2|cell-tborder|0ln>|<cwith|10|10|2|2|cell-tborder|0ln>|<cwith|14|17|2|2|cell-halign|c>|<cwith|14|17|2|2|cell-valign|c>|<cwith|14|14|2|2|cell-halign|c>|<cwith|14|14|2|2|cell-valign|c>|<cwith|15|15|2|2|cell-halign|c>|<cwith|15|15|2|2|cell-valign|c>|<cwith|16|16|2|2|cell-halign|c>|<cwith|16|16|2|2|cell-valign|c>|<cwith|17|17|2|2|cell-halign|c>|<cwith|17|17|2|2|cell-valign|c>|<cwith|17|17|2|2|cell-halign|c>|<cwith|17|17|2|2|cell-valign|c>|<cwith|14|17|2|2|cell-background|pastel
  blue>|<cwith|14|17|2|2|cell-halign|c>|<cwith|14|17|2|2|cell-valign|c>|<cwith|14|14|2|2|cell-halign|c>|<cwith|14|14|2|2|cell-valign|c>|<cwith|15|15|2|2|cell-halign|c>|<cwith|15|15|2|2|cell-valign|c>|<cwith|16|16|2|2|cell-halign|c>|<cwith|16|16|2|2|cell-valign|c>|<cwith|17|17|2|2|cell-halign|c>|<cwith|17|17|2|2|cell-valign|c>|<cwith|14|17|2|2|cell-background|pastel
  blue>|<cwith|14|14|2|2|cell-bborder|0ln>|<cwith|15|15|2|2|cell-tborder|0ln>|<cwith|14|14|2|2|cell-tborder|0ln>|<cwith|18|21|2|2|cell-halign|c>|<cwith|18|21|2|2|cell-valign|c>|<cwith|18|18|2|2|cell-halign|c>|<cwith|18|18|2|2|cell-valign|c>|<cwith|19|19|2|2|cell-halign|c>|<cwith|19|19|2|2|cell-valign|c>|<cwith|20|20|2|2|cell-halign|c>|<cwith|20|20|2|2|cell-valign|c>|<cwith|21|21|2|2|cell-halign|c>|<cwith|21|21|2|2|cell-valign|c>|<cwith|21|21|2|2|cell-halign|c>|<cwith|21|21|2|2|cell-valign|c>|<cwith|18|21|2|2|cell-background|pastel
  blue>|<cwith|18|21|2|2|cell-halign|c>|<cwith|18|21|2|2|cell-valign|c>|<cwith|18|18|2|2|cell-halign|c>|<cwith|18|18|2|2|cell-valign|c>|<cwith|19|19|2|2|cell-halign|c>|<cwith|19|19|2|2|cell-valign|c>|<cwith|20|20|2|2|cell-halign|c>|<cwith|20|20|2|2|cell-valign|c>|<cwith|21|21|2|2|cell-halign|c>|<cwith|21|21|2|2|cell-valign|c>|<cwith|18|21|2|2|cell-background|pastel
  blue>|<cwith|18|18|2|2|cell-bborder|0ln>|<cwith|19|19|2|2|cell-tborder|0ln>|<cwith|18|18|2|2|cell-tborder|0ln>|<cwith|22|25|2|2|cell-halign|c>|<cwith|22|25|2|2|cell-valign|c>|<cwith|22|22|2|2|cell-halign|c>|<cwith|22|22|2|2|cell-valign|c>|<cwith|23|23|2|2|cell-halign|c>|<cwith|23|23|2|2|cell-valign|c>|<cwith|24|24|2|2|cell-halign|c>|<cwith|24|24|2|2|cell-valign|c>|<cwith|25|25|2|2|cell-halign|c>|<cwith|25|25|2|2|cell-valign|c>|<cwith|25|25|2|2|cell-halign|c>|<cwith|25|25|2|2|cell-valign|c>|<cwith|22|25|2|2|cell-background|pastel
  blue>|<cwith|22|25|2|2|cell-halign|c>|<cwith|22|25|2|2|cell-valign|c>|<cwith|22|22|2|2|cell-halign|c>|<cwith|22|22|2|2|cell-valign|c>|<cwith|23|23|2|2|cell-halign|c>|<cwith|23|23|2|2|cell-valign|c>|<cwith|24|24|2|2|cell-halign|c>|<cwith|24|24|2|2|cell-valign|c>|<cwith|25|25|2|2|cell-halign|c>|<cwith|25|25|2|2|cell-valign|c>|<cwith|22|25|2|2|cell-background|pastel
  blue>|<cwith|22|22|2|2|cell-bborder|0ln>|<cwith|23|23|2|2|cell-tborder|0ln>|<cwith|22|22|2|2|cell-tborder|0ln>|<cwith|26|29|2|2|cell-halign|c>|<cwith|26|29|2|2|cell-valign|c>|<cwith|26|26|2|2|cell-halign|c>|<cwith|26|26|2|2|cell-valign|c>|<cwith|27|27|2|2|cell-halign|c>|<cwith|27|27|2|2|cell-valign|c>|<cwith|28|28|2|2|cell-halign|c>|<cwith|28|28|2|2|cell-valign|c>|<cwith|29|29|2|2|cell-halign|c>|<cwith|29|29|2|2|cell-valign|c>|<cwith|29|29|2|2|cell-halign|c>|<cwith|29|29|2|2|cell-valign|c>|<cwith|26|29|2|2|cell-background|pastel
  blue>|<cwith|26|29|2|2|cell-halign|c>|<cwith|26|29|2|2|cell-valign|c>|<cwith|26|26|2|2|cell-halign|c>|<cwith|26|26|2|2|cell-valign|c>|<cwith|27|27|2|2|cell-halign|c>|<cwith|27|27|2|2|cell-valign|c>|<cwith|28|28|2|2|cell-halign|c>|<cwith|28|28|2|2|cell-valign|c>|<cwith|29|29|2|2|cell-halign|c>|<cwith|29|29|2|2|cell-valign|c>|<cwith|26|29|2|2|cell-background|pastel
  blue>|<cwith|26|26|2|2|cell-bborder|0ln>|<cwith|27|27|2|2|cell-tborder|0ln>|<cwith|26|26|2|2|cell-tborder|0ln>|<cwith|30|33|2|2|cell-halign|c>|<cwith|30|33|2|2|cell-valign|c>|<cwith|30|30|2|2|cell-halign|c>|<cwith|30|30|2|2|cell-valign|c>|<cwith|31|31|2|2|cell-halign|c>|<cwith|31|31|2|2|cell-valign|c>|<cwith|32|32|2|2|cell-halign|c>|<cwith|32|32|2|2|cell-valign|c>|<cwith|33|33|2|2|cell-halign|c>|<cwith|33|33|2|2|cell-valign|c>|<cwith|33|33|2|2|cell-halign|c>|<cwith|33|33|2|2|cell-valign|c>|<cwith|30|33|2|2|cell-background|pastel
  blue>|<cwith|30|33|2|2|cell-halign|c>|<cwith|30|33|2|2|cell-valign|c>|<cwith|30|30|2|2|cell-halign|c>|<cwith|30|30|2|2|cell-valign|c>|<cwith|31|31|2|2|cell-halign|c>|<cwith|31|31|2|2|cell-valign|c>|<cwith|32|32|2|2|cell-halign|c>|<cwith|32|32|2|2|cell-valign|c>|<cwith|33|33|2|2|cell-halign|c>|<cwith|33|33|2|2|cell-valign|c>|<cwith|30|33|2|2|cell-background|pastel
  blue>|<cwith|30|30|2|2|cell-bborder|0ln>|<cwith|31|31|2|2|cell-tborder|0ln>|<cwith|30|30|2|2|cell-tborder|0ln>|<cwith|2|17|3|3|cell-halign|c>|<cwith|2|17|3|3|cell-valign|c>|<cwith|2|17|3|3|cell-background|pastel
  blue>|<cwith|2|2|3|3|cell-tborder|1ln>|<cwith|18|33|3|3|cell-halign|c>|<cwith|18|33|3|3|cell-valign|c>|<cwith|18|33|3|3|cell-background|pastel
  blue>|<cwith|18|18|3|3|cell-tborder|0ln>|<cwith|17|17|3|3|cell-bborder|0ln>|<cwith|18|18|3|3|cell-bborder|0ln>|<cwith|19|19|3|3|cell-tborder|0ln>|<cwith|18|18|3|3|cell-rborder|0ln>|<cwith|18|18|4|4|cell-lborder|0ln>|<cwith|2|33|3|3|cell-halign|c>|<cwith|2|33|3|3|cell-valign|c>|<cwith|2|2|3|3|cell-halign|c>|<cwith|2|2|3|3|cell-valign|c>|<cwith|3|3|3|3|cell-halign|c>|<cwith|3|3|3|3|cell-valign|c>|<cwith|4|4|3|3|cell-halign|c>|<cwith|4|4|3|3|cell-valign|c>|<cwith|5|5|3|3|cell-halign|c>|<cwith|5|5|3|3|cell-valign|c>|<cwith|6|6|3|3|cell-halign|c>|<cwith|6|6|3|3|cell-valign|c>|<cwith|7|7|3|3|cell-halign|c>|<cwith|7|7|3|3|cell-valign|c>|<cwith|8|8|3|3|cell-halign|c>|<cwith|8|8|3|3|cell-valign|c>|<cwith|9|15|3|3|cell-halign|c>|<cwith|9|15|3|3|cell-valign|c>|<cwith|9|9|3|3|cell-halign|c>|<cwith|9|9|3|3|cell-valign|c>|<cwith|10|10|3|3|cell-halign|c>|<cwith|10|10|3|3|cell-valign|c>|<cwith|11|11|3|3|cell-halign|c>|<cwith|11|11|3|3|cell-valign|c>|<cwith|12|12|3|3|cell-halign|c>|<cwith|12|12|3|3|cell-valign|c>|<cwith|13|13|3|3|cell-halign|c>|<cwith|13|13|3|3|cell-valign|c>|<cwith|14|14|3|3|cell-halign|c>|<cwith|14|14|3|3|cell-valign|c>|<cwith|15|15|3|3|cell-halign|c>|<cwith|15|15|3|3|cell-valign|c>|<cwith|16|22|3|3|cell-halign|c>|<cwith|16|22|3|3|cell-valign|c>|<cwith|16|16|3|3|cell-halign|c>|<cwith|16|16|3|3|cell-valign|c>|<cwith|17|17|3|3|cell-halign|c>|<cwith|17|17|3|3|cell-valign|c>|<cwith|18|18|3|3|cell-halign|c>|<cwith|18|18|3|3|cell-valign|c>|<cwith|19|19|3|3|cell-halign|c>|<cwith|19|19|3|3|cell-valign|c>|<cwith|20|20|3|3|cell-halign|c>|<cwith|20|20|3|3|cell-valign|c>|<cwith|21|21|3|3|cell-halign|c>|<cwith|21|21|3|3|cell-valign|c>|<cwith|22|22|3|3|cell-halign|c>|<cwith|22|22|3|3|cell-valign|c>|<cwith|23|29|3|3|cell-halign|c>|<cwith|23|29|3|3|cell-valign|c>|<cwith|23|23|3|3|cell-halign|c>|<cwith|23|23|3|3|cell-valign|c>|<cwith|24|24|3|3|cell-halign|c>|<cwith|24|24|3|3|cell-valign|c>|<cwith|25|25|3|3|cell-halign|c>|<cwith|25|25|3|3|cell-valign|c>|<cwith|26|26|3|3|cell-halign|c>|<cwith|26|26|3|3|cell-valign|c>|<cwith|27|27|3|3|cell-halign|c>|<cwith|27|27|3|3|cell-valign|c>|<cwith|28|28|3|3|cell-halign|c>|<cwith|28|28|3|3|cell-valign|c>|<cwith|29|29|3|3|cell-halign|c>|<cwith|29|29|3|3|cell-valign|c>|<cwith|30|32|3|3|cell-halign|c>|<cwith|30|32|3|3|cell-valign|c>|<cwith|30|32|3|3|cell-halign|c>|<cwith|30|32|3|3|cell-valign|c>|<cwith|30|30|3|3|cell-halign|c>|<cwith|30|30|3|3|cell-valign|c>|<cwith|31|31|3|3|cell-halign|c>|<cwith|31|31|3|3|cell-valign|c>|<cwith|32|32|3|3|cell-halign|c>|<cwith|32|32|3|3|cell-valign|c>|<cwith|33|33|3|3|cell-halign|c>|<cwith|33|33|3|3|cell-valign|c>|<cwith|33|33|3|3|cell-halign|c>|<cwith|33|33|3|3|cell-valign|c>|<cwith|33|33|3|3|cell-halign|c>|<cwith|33|33|3|3|cell-valign|c>|<cwith|33|33|3|3|cell-halign|c>|<cwith|33|33|3|3|cell-valign|c>|<cwith|2|33|3|3|cell-background|pastel
  blue>|<cwith|33|33|3|3|cell-bborder|1ln>|<cwith|2|2|3|3|cell-tborder|1ln>|<cwith|5|6|3|3|cell-rborder|0ln>|<cwith|5|5|3|3|cell-rborder|0ln>|<cwith|2|33|3|3|cell-halign|c>|<cwith|2|33|3|3|cell-valign|c>|<cwith|2|2|3|3|cell-halign|c>|<cwith|2|2|3|3|cell-valign|c>|<cwith|3|3|3|3|cell-halign|c>|<cwith|3|3|3|3|cell-valign|c>|<cwith|4|4|3|3|cell-halign|c>|<cwith|4|4|3|3|cell-valign|c>|<cwith|5|5|3|3|cell-halign|c>|<cwith|5|5|3|3|cell-valign|c>|<cwith|6|6|3|3|cell-halign|c>|<cwith|6|6|3|3|cell-valign|c>|<cwith|7|7|3|3|cell-halign|c>|<cwith|7|7|3|3|cell-valign|c>|<cwith|8|8|3|3|cell-halign|c>|<cwith|8|8|3|3|cell-valign|c>|<cwith|9|15|3|3|cell-halign|c>|<cwith|9|15|3|3|cell-valign|c>|<cwith|9|9|3|3|cell-halign|c>|<cwith|9|9|3|3|cell-valign|c>|<cwith|10|10|3|3|cell-halign|c>|<cwith|10|10|3|3|cell-valign|c>|<cwith|11|11|3|3|cell-halign|c>|<cwith|11|11|3|3|cell-valign|c>|<cwith|12|12|3|3|cell-halign|c>|<cwith|12|12|3|3|cell-valign|c>|<cwith|13|13|3|3|cell-halign|c>|<cwith|13|13|3|3|cell-valign|c>|<cwith|14|14|3|3|cell-halign|c>|<cwith|14|14|3|3|cell-valign|c>|<cwith|15|15|3|3|cell-halign|c>|<cwith|15|15|3|3|cell-valign|c>|<cwith|16|22|3|3|cell-halign|c>|<cwith|16|22|3|3|cell-valign|c>|<cwith|16|16|3|3|cell-halign|c>|<cwith|16|16|3|3|cell-valign|c>|<cwith|17|17|3|3|cell-halign|c>|<cwith|17|17|3|3|cell-valign|c>|<cwith|18|18|3|3|cell-halign|c>|<cwith|18|18|3|3|cell-valign|c>|<cwith|19|19|3|3|cell-halign|c>|<cwith|19|19|3|3|cell-valign|c>|<cwith|20|20|3|3|cell-halign|c>|<cwith|20|20|3|3|cell-valign|c>|<cwith|21|21|3|3|cell-halign|c>|<cwith|21|21|3|3|cell-valign|c>|<cwith|22|22|3|3|cell-halign|c>|<cwith|22|22|3|3|cell-valign|c>|<cwith|23|29|3|3|cell-halign|c>|<cwith|23|29|3|3|cell-valign|c>|<cwith|23|23|3|3|cell-halign|c>|<cwith|23|23|3|3|cell-valign|c>|<cwith|24|24|3|3|cell-halign|c>|<cwith|24|24|3|3|cell-valign|c>|<cwith|25|25|3|3|cell-halign|c>|<cwith|25|25|3|3|cell-valign|c>|<cwith|26|26|3|3|cell-halign|c>|<cwith|26|26|3|3|cell-valign|c>|<cwith|27|27|3|3|cell-halign|c>|<cwith|27|27|3|3|cell-valign|c>|<cwith|28|28|3|3|cell-halign|c>|<cwith|28|28|3|3|cell-valign|c>|<cwith|29|29|3|3|cell-halign|c>|<cwith|29|29|3|3|cell-valign|c>|<cwith|30|32|3|3|cell-halign|c>|<cwith|30|32|3|3|cell-valign|c>|<cwith|30|32|3|3|cell-halign|c>|<cwith|30|32|3|3|cell-valign|c>|<cwith|30|30|3|3|cell-halign|c>|<cwith|30|30|3|3|cell-valign|c>|<cwith|31|31|3|3|cell-halign|c>|<cwith|31|31|3|3|cell-valign|c>|<cwith|32|32|3|3|cell-halign|c>|<cwith|32|32|3|3|cell-valign|c>|<cwith|33|33|3|3|cell-halign|c>|<cwith|33|33|3|3|cell-valign|c>|<cwith|33|33|3|3|cell-halign|c>|<cwith|33|33|3|3|cell-valign|c>|<cwith|33|33|3|3|cell-halign|c>|<cwith|33|33|3|3|cell-valign|c>|<cwith|33|33|3|3|cell-halign|c>|<cwith|33|33|3|3|cell-valign|c>|<cwith|2|33|3|3|cell-background|pastel
  blue>|<cwith|33|33|3|3|cell-bborder|1ln>|<cwith|2|2|3|3|cell-tborder|1ln>|<cwith|6|9|3|3|cell-halign|c>|<cwith|6|9|3|3|cell-valign|c>|<cwith|6|6|3|3|cell-halign|c>|<cwith|6|6|3|3|cell-valign|c>|<cwith|7|7|3|3|cell-halign|c>|<cwith|7|7|3|3|cell-valign|c>|<cwith|8|8|3|3|cell-halign|c>|<cwith|8|8|3|3|cell-valign|c>|<cwith|9|9|3|3|cell-halign|c>|<cwith|9|9|3|3|cell-valign|c>|<cwith|6|9|3|3|cell-background|pastel
  blue>|<cwith|6|6|3|3|cell-bborder|0ln>|<cwith|7|7|3|3|cell-tborder|0ln>|<cwith|5|6|3|3|cell-rborder|0ln>|<cwith|5|5|3|3|cell-tborder|0ln>|<cwith|4|4|3|3|cell-bborder|0ln>|<cwith|5|5|3|3|cell-bborder|0ln>|<cwith|6|6|3|3|cell-tborder|0ln>|<cwith|5|5|3|3|cell-rborder|0ln>|<cwith|10|13|3|3|cell-halign|c>|<cwith|10|13|3|3|cell-valign|c>|<cwith|10|10|3|3|cell-halign|c>|<cwith|10|10|3|3|cell-valign|c>|<cwith|11|11|3|3|cell-halign|c>|<cwith|11|11|3|3|cell-valign|c>|<cwith|12|12|3|3|cell-halign|c>|<cwith|12|12|3|3|cell-valign|c>|<cwith|13|13|3|3|cell-halign|c>|<cwith|13|13|3|3|cell-valign|c>|<cwith|13|13|3|3|cell-halign|c>|<cwith|13|13|3|3|cell-valign|c>|<cwith|10|13|3|3|cell-background|pastel
  blue>|<cwith|10|13|3|3|cell-halign|c>|<cwith|10|13|3|3|cell-valign|c>|<cwith|10|10|3|3|cell-halign|c>|<cwith|10|10|3|3|cell-valign|c>|<cwith|11|11|3|3|cell-halign|c>|<cwith|11|11|3|3|cell-valign|c>|<cwith|12|12|3|3|cell-halign|c>|<cwith|12|12|3|3|cell-valign|c>|<cwith|13|13|3|3|cell-halign|c>|<cwith|13|13|3|3|cell-valign|c>|<cwith|10|13|3|3|cell-background|pastel
  blue>|<cwith|10|10|3|3|cell-bborder|0ln>|<cwith|11|11|3|3|cell-tborder|0ln>|<cwith|10|10|3|3|cell-rborder|0ln>|<cwith|10|10|3|3|cell-tborder|0ln>|<cwith|14|17|3|3|cell-halign|c>|<cwith|14|17|3|3|cell-valign|c>|<cwith|14|14|3|3|cell-halign|c>|<cwith|14|14|3|3|cell-valign|c>|<cwith|15|15|3|3|cell-halign|c>|<cwith|15|15|3|3|cell-valign|c>|<cwith|16|16|3|3|cell-halign|c>|<cwith|16|16|3|3|cell-valign|c>|<cwith|17|17|3|3|cell-halign|c>|<cwith|17|17|3|3|cell-valign|c>|<cwith|17|17|3|3|cell-halign|c>|<cwith|17|17|3|3|cell-valign|c>|<cwith|14|17|3|3|cell-background|pastel
  blue>|<cwith|14|17|3|3|cell-halign|c>|<cwith|14|17|3|3|cell-valign|c>|<cwith|14|14|3|3|cell-halign|c>|<cwith|14|14|3|3|cell-valign|c>|<cwith|15|15|3|3|cell-halign|c>|<cwith|15|15|3|3|cell-valign|c>|<cwith|16|16|3|3|cell-halign|c>|<cwith|16|16|3|3|cell-valign|c>|<cwith|17|17|3|3|cell-halign|c>|<cwith|17|17|3|3|cell-valign|c>|<cwith|14|17|3|3|cell-background|pastel
  blue>|<cwith|14|14|3|3|cell-bborder|0ln>|<cwith|15|15|3|3|cell-tborder|0ln>|<cwith|14|14|3|3|cell-rborder|0ln>|<cwith|14|14|3|3|cell-tborder|0ln>|<cwith|18|21|3|3|cell-halign|c>|<cwith|18|21|3|3|cell-valign|c>|<cwith|18|18|3|3|cell-halign|c>|<cwith|18|18|3|3|cell-valign|c>|<cwith|19|19|3|3|cell-halign|c>|<cwith|19|19|3|3|cell-valign|c>|<cwith|20|20|3|3|cell-halign|c>|<cwith|20|20|3|3|cell-valign|c>|<cwith|21|21|3|3|cell-halign|c>|<cwith|21|21|3|3|cell-valign|c>|<cwith|21|21|3|3|cell-halign|c>|<cwith|21|21|3|3|cell-valign|c>|<cwith|18|21|3|3|cell-background|pastel
  blue>|<cwith|18|21|3|3|cell-halign|c>|<cwith|18|21|3|3|cell-valign|c>|<cwith|18|18|3|3|cell-halign|c>|<cwith|18|18|3|3|cell-valign|c>|<cwith|19|19|3|3|cell-halign|c>|<cwith|19|19|3|3|cell-valign|c>|<cwith|20|20|3|3|cell-halign|c>|<cwith|20|20|3|3|cell-valign|c>|<cwith|21|21|3|3|cell-halign|c>|<cwith|21|21|3|3|cell-valign|c>|<cwith|18|21|3|3|cell-background|pastel
  blue>|<cwith|18|18|3|3|cell-bborder|0ln>|<cwith|19|19|3|3|cell-tborder|0ln>|<cwith|18|18|3|3|cell-tborder|0ln>|<cwith|22|25|3|3|cell-halign|c>|<cwith|22|25|3|3|cell-valign|c>|<cwith|22|22|3|3|cell-halign|c>|<cwith|22|22|3|3|cell-valign|c>|<cwith|23|23|3|3|cell-halign|c>|<cwith|23|23|3|3|cell-valign|c>|<cwith|24|24|3|3|cell-halign|c>|<cwith|24|24|3|3|cell-valign|c>|<cwith|25|25|3|3|cell-halign|c>|<cwith|25|25|3|3|cell-valign|c>|<cwith|25|25|3|3|cell-halign|c>|<cwith|25|25|3|3|cell-valign|c>|<cwith|22|25|3|3|cell-background|pastel
  blue>|<cwith|22|25|3|3|cell-halign|c>|<cwith|22|25|3|3|cell-valign|c>|<cwith|22|22|3|3|cell-halign|c>|<cwith|22|22|3|3|cell-valign|c>|<cwith|23|23|3|3|cell-halign|c>|<cwith|23|23|3|3|cell-valign|c>|<cwith|24|24|3|3|cell-halign|c>|<cwith|24|24|3|3|cell-valign|c>|<cwith|25|25|3|3|cell-halign|c>|<cwith|25|25|3|3|cell-valign|c>|<cwith|22|25|3|3|cell-background|pastel
  blue>|<cwith|22|22|3|3|cell-bborder|0ln>|<cwith|23|23|3|3|cell-tborder|0ln>|<cwith|22|22|3|3|cell-rborder|0ln>|<cwith|22|22|3|3|cell-tborder|0ln>|<cwith|26|29|3|3|cell-halign|c>|<cwith|26|29|3|3|cell-valign|c>|<cwith|26|26|3|3|cell-halign|c>|<cwith|26|26|3|3|cell-valign|c>|<cwith|27|27|3|3|cell-halign|c>|<cwith|27|27|3|3|cell-valign|c>|<cwith|28|28|3|3|cell-halign|c>|<cwith|28|28|3|3|cell-valign|c>|<cwith|29|29|3|3|cell-halign|c>|<cwith|29|29|3|3|cell-valign|c>|<cwith|29|29|3|3|cell-halign|c>|<cwith|29|29|3|3|cell-valign|c>|<cwith|26|29|3|3|cell-background|pastel
  blue>|<cwith|26|29|3|3|cell-halign|c>|<cwith|26|29|3|3|cell-valign|c>|<cwith|26|26|3|3|cell-halign|c>|<cwith|26|26|3|3|cell-valign|c>|<cwith|27|27|3|3|cell-halign|c>|<cwith|27|27|3|3|cell-valign|c>|<cwith|28|28|3|3|cell-halign|c>|<cwith|28|28|3|3|cell-valign|c>|<cwith|29|29|3|3|cell-halign|c>|<cwith|29|29|3|3|cell-valign|c>|<cwith|26|29|3|3|cell-background|pastel
  blue>|<cwith|26|26|3|3|cell-bborder|0ln>|<cwith|27|27|3|3|cell-tborder|0ln>|<cwith|26|26|3|3|cell-rborder|0ln>|<cwith|26|26|3|3|cell-tborder|0ln>|<cwith|30|33|3|3|cell-halign|c>|<cwith|30|33|3|3|cell-valign|c>|<cwith|30|30|3|3|cell-halign|c>|<cwith|30|30|3|3|cell-valign|c>|<cwith|31|31|3|3|cell-halign|c>|<cwith|31|31|3|3|cell-valign|c>|<cwith|32|32|3|3|cell-halign|c>|<cwith|32|32|3|3|cell-valign|c>|<cwith|33|33|3|3|cell-halign|c>|<cwith|33|33|3|3|cell-valign|c>|<cwith|33|33|3|3|cell-halign|c>|<cwith|33|33|3|3|cell-valign|c>|<cwith|30|33|3|3|cell-background|pastel
  blue>|<cwith|30|33|3|3|cell-halign|c>|<cwith|30|33|3|3|cell-valign|c>|<cwith|30|30|3|3|cell-halign|c>|<cwith|30|30|3|3|cell-valign|c>|<cwith|31|31|3|3|cell-halign|c>|<cwith|31|31|3|3|cell-valign|c>|<cwith|32|32|3|3|cell-halign|c>|<cwith|32|32|3|3|cell-valign|c>|<cwith|33|33|3|3|cell-halign|c>|<cwith|33|33|3|3|cell-valign|c>|<cwith|30|33|3|3|cell-background|pastel
  blue>|<cwith|30|30|3|3|cell-bborder|0ln>|<cwith|31|31|3|3|cell-tborder|0ln>|<cwith|30|30|3|3|cell-rborder|0ln>|<cwith|30|30|3|3|cell-tborder|0ln>|<cwith|18|18|3|3|cell-rborder|0ln>|<cwith|2|33|3|3|cell-halign|c>|<cwith|2|33|3|3|cell-valign|c>|<cwith|2|2|3|3|cell-halign|c>|<cwith|2|2|3|3|cell-valign|c>|<cwith|3|3|3|3|cell-halign|c>|<cwith|3|3|3|3|cell-valign|c>|<cwith|4|4|3|3|cell-halign|c>|<cwith|4|4|3|3|cell-valign|c>|<cwith|5|5|3|3|cell-halign|c>|<cwith|5|5|3|3|cell-valign|c>|<cwith|6|6|3|3|cell-halign|c>|<cwith|6|6|3|3|cell-valign|c>|<cwith|7|7|3|3|cell-halign|c>|<cwith|7|7|3|3|cell-valign|c>|<cwith|8|8|3|3|cell-halign|c>|<cwith|8|8|3|3|cell-valign|c>|<cwith|9|15|3|3|cell-halign|c>|<cwith|9|15|3|3|cell-valign|c>|<cwith|9|9|3|3|cell-halign|c>|<cwith|9|9|3|3|cell-valign|c>|<cwith|10|10|3|3|cell-halign|c>|<cwith|10|10|3|3|cell-valign|c>|<cwith|11|11|3|3|cell-halign|c>|<cwith|11|11|3|3|cell-valign|c>|<cwith|12|12|3|3|cell-halign|c>|<cwith|12|12|3|3|cell-valign|c>|<cwith|13|13|3|3|cell-halign|c>|<cwith|13|13|3|3|cell-valign|c>|<cwith|14|14|3|3|cell-halign|c>|<cwith|14|14|3|3|cell-valign|c>|<cwith|15|15|3|3|cell-halign|c>|<cwith|15|15|3|3|cell-valign|c>|<cwith|16|22|3|3|cell-halign|c>|<cwith|16|22|3|3|cell-valign|c>|<cwith|16|16|3|3|cell-halign|c>|<cwith|16|16|3|3|cell-valign|c>|<cwith|17|17|3|3|cell-halign|c>|<cwith|17|17|3|3|cell-valign|c>|<cwith|18|18|3|3|cell-halign|c>|<cwith|18|18|3|3|cell-valign|c>|<cwith|19|19|3|3|cell-halign|c>|<cwith|19|19|3|3|cell-valign|c>|<cwith|20|20|3|3|cell-halign|c>|<cwith|20|20|3|3|cell-valign|c>|<cwith|21|21|3|3|cell-halign|c>|<cwith|21|21|3|3|cell-valign|c>|<cwith|22|22|3|3|cell-halign|c>|<cwith|22|22|3|3|cell-valign|c>|<cwith|23|29|3|3|cell-halign|c>|<cwith|23|29|3|3|cell-valign|c>|<cwith|23|23|3|3|cell-halign|c>|<cwith|23|23|3|3|cell-valign|c>|<cwith|24|24|3|3|cell-halign|c>|<cwith|24|24|3|3|cell-valign|c>|<cwith|25|25|3|3|cell-halign|c>|<cwith|25|25|3|3|cell-valign|c>|<cwith|26|26|3|3|cell-halign|c>|<cwith|26|26|3|3|cell-valign|c>|<cwith|27|27|3|3|cell-halign|c>|<cwith|27|27|3|3|cell-valign|c>|<cwith|28|28|3|3|cell-halign|c>|<cwith|28|28|3|3|cell-valign|c>|<cwith|29|29|3|3|cell-halign|c>|<cwith|29|29|3|3|cell-valign|c>|<cwith|30|32|3|3|cell-halign|c>|<cwith|30|32|3|3|cell-valign|c>|<cwith|30|32|3|3|cell-halign|c>|<cwith|30|32|3|3|cell-valign|c>|<cwith|30|30|3|3|cell-halign|c>|<cwith|30|30|3|3|cell-valign|c>|<cwith|31|31|3|3|cell-halign|c>|<cwith|31|31|3|3|cell-valign|c>|<cwith|32|32|3|3|cell-halign|c>|<cwith|32|32|3|3|cell-valign|c>|<cwith|33|33|3|3|cell-halign|c>|<cwith|33|33|3|3|cell-valign|c>|<cwith|33|33|3|3|cell-halign|c>|<cwith|33|33|3|3|cell-valign|c>|<cwith|33|33|3|3|cell-halign|c>|<cwith|33|33|3|3|cell-valign|c>|<cwith|33|33|3|3|cell-halign|c>|<cwith|33|33|3|3|cell-valign|c>|<cwith|2|33|3|3|cell-background|pastel
  blue>|<cwith|33|33|3|3|cell-bborder|1ln>|<cwith|2|2|3|3|cell-tborder|1ln>|<cwith|2|2|2|2|cell-tborder|1ln>|<cwith|1|1|2|2|cell-bborder|1ln>|<cwith|33|33|2|2|cell-bborder|1ln>|<cwith|2|-1|2|2|cell-rborder|0ln>|<cwith|2|-1|3|3|cell-lborder|0ln>|<cwith|2|33|1|1|cell-halign|c>|<cwith|2|33|1|1|cell-valign|c>|<cwith|2|2|1|1|cell-halign|c>|<cwith|2|2|1|1|cell-valign|c>|<cwith|3|3|1|1|cell-halign|c>|<cwith|3|3|1|1|cell-valign|c>|<cwith|4|4|1|1|cell-halign|c>|<cwith|4|4|1|1|cell-valign|c>|<cwith|5|5|1|1|cell-halign|c>|<cwith|5|5|1|1|cell-valign|c>|<cwith|6|6|1|1|cell-halign|c>|<cwith|6|6|1|1|cell-valign|c>|<cwith|7|7|1|1|cell-halign|c>|<cwith|7|7|1|1|cell-valign|c>|<cwith|8|8|1|1|cell-halign|c>|<cwith|8|8|1|1|cell-valign|c>|<cwith|9|15|1|1|cell-halign|c>|<cwith|9|15|1|1|cell-valign|c>|<cwith|9|9|1|1|cell-halign|c>|<cwith|9|9|1|1|cell-valign|c>|<cwith|10|10|1|1|cell-halign|c>|<cwith|10|10|1|1|cell-valign|c>|<cwith|11|11|1|1|cell-halign|c>|<cwith|11|11|1|1|cell-valign|c>|<cwith|12|12|1|1|cell-halign|c>|<cwith|12|12|1|1|cell-valign|c>|<cwith|13|13|1|1|cell-halign|c>|<cwith|13|13|1|1|cell-valign|c>|<cwith|14|14|1|1|cell-halign|c>|<cwith|14|14|1|1|cell-valign|c>|<cwith|15|15|1|1|cell-halign|c>|<cwith|15|15|1|1|cell-valign|c>|<cwith|16|22|1|1|cell-halign|c>|<cwith|16|22|1|1|cell-valign|c>|<cwith|16|16|1|1|cell-halign|c>|<cwith|16|16|1|1|cell-valign|c>|<cwith|17|17|1|1|cell-halign|c>|<cwith|17|17|1|1|cell-valign|c>|<cwith|18|18|1|1|cell-halign|c>|<cwith|18|18|1|1|cell-valign|c>|<cwith|19|19|1|1|cell-halign|c>|<cwith|19|19|1|1|cell-valign|c>|<cwith|20|20|1|1|cell-halign|c>|<cwith|20|20|1|1|cell-valign|c>|<cwith|21|21|1|1|cell-halign|c>|<cwith|21|21|1|1|cell-valign|c>|<cwith|22|22|1|1|cell-halign|c>|<cwith|22|22|1|1|cell-valign|c>|<cwith|23|29|1|1|cell-halign|c>|<cwith|23|29|1|1|cell-valign|c>|<cwith|23|23|1|1|cell-halign|c>|<cwith|23|23|1|1|cell-valign|c>|<cwith|24|24|1|1|cell-halign|c>|<cwith|24|24|1|1|cell-valign|c>|<cwith|25|25|1|1|cell-halign|c>|<cwith|25|25|1|1|cell-valign|c>|<cwith|26|26|1|1|cell-halign|c>|<cwith|26|26|1|1|cell-valign|c>|<cwith|27|27|1|1|cell-halign|c>|<cwith|27|27|1|1|cell-valign|c>|<cwith|28|28|1|1|cell-halign|c>|<cwith|28|28|1|1|cell-valign|c>|<cwith|29|29|1|1|cell-halign|c>|<cwith|29|29|1|1|cell-valign|c>|<cwith|30|32|1|1|cell-halign|c>|<cwith|30|32|1|1|cell-valign|c>|<cwith|30|32|1|1|cell-halign|c>|<cwith|30|32|1|1|cell-valign|c>|<cwith|30|30|1|1|cell-halign|c>|<cwith|30|30|1|1|cell-valign|c>|<cwith|31|31|1|1|cell-halign|c>|<cwith|31|31|1|1|cell-valign|c>|<cwith|32|32|1|1|cell-halign|c>|<cwith|32|32|1|1|cell-valign|c>|<cwith|33|33|1|1|cell-halign|c>|<cwith|33|33|1|1|cell-valign|c>|<cwith|33|33|1|1|cell-halign|c>|<cwith|33|33|1|1|cell-valign|c>|<cwith|33|33|1|1|cell-halign|c>|<cwith|33|33|1|1|cell-valign|c>|<cwith|33|33|1|1|cell-halign|c>|<cwith|33|33|1|1|cell-valign|c>|<cwith|2|33|1|1|cell-background|pastel
  blue>|<cwith|2|33|1|1|cell-halign|c>|<cwith|2|33|1|1|cell-valign|c>|<cwith|2|2|1|1|cell-halign|c>|<cwith|2|2|1|1|cell-valign|c>|<cwith|3|3|1|1|cell-halign|c>|<cwith|3|3|1|1|cell-valign|c>|<cwith|4|4|1|1|cell-halign|c>|<cwith|4|4|1|1|cell-valign|c>|<cwith|5|5|1|1|cell-halign|c>|<cwith|5|5|1|1|cell-valign|c>|<cwith|6|6|1|1|cell-halign|c>|<cwith|6|6|1|1|cell-valign|c>|<cwith|7|7|1|1|cell-halign|c>|<cwith|7|7|1|1|cell-valign|c>|<cwith|8|8|1|1|cell-halign|c>|<cwith|8|8|1|1|cell-valign|c>|<cwith|9|15|1|1|cell-halign|c>|<cwith|9|15|1|1|cell-valign|c>|<cwith|9|9|1|1|cell-halign|c>|<cwith|9|9|1|1|cell-valign|c>|<cwith|10|10|1|1|cell-halign|c>|<cwith|10|10|1|1|cell-valign|c>|<cwith|11|11|1|1|cell-halign|c>|<cwith|11|11|1|1|cell-valign|c>|<cwith|12|12|1|1|cell-halign|c>|<cwith|12|12|1|1|cell-valign|c>|<cwith|13|13|1|1|cell-halign|c>|<cwith|13|13|1|1|cell-valign|c>|<cwith|14|14|1|1|cell-halign|c>|<cwith|14|14|1|1|cell-valign|c>|<cwith|15|15|1|1|cell-halign|c>|<cwith|15|15|1|1|cell-valign|c>|<cwith|16|22|1|1|cell-halign|c>|<cwith|16|22|1|1|cell-valign|c>|<cwith|16|16|1|1|cell-halign|c>|<cwith|16|16|1|1|cell-valign|c>|<cwith|17|17|1|1|cell-halign|c>|<cwith|17|17|1|1|cell-valign|c>|<cwith|18|18|1|1|cell-halign|c>|<cwith|18|18|1|1|cell-valign|c>|<cwith|19|19|1|1|cell-halign|c>|<cwith|19|19|1|1|cell-valign|c>|<cwith|20|20|1|1|cell-halign|c>|<cwith|20|20|1|1|cell-valign|c>|<cwith|21|21|1|1|cell-halign|c>|<cwith|21|21|1|1|cell-valign|c>|<cwith|22|22|1|1|cell-halign|c>|<cwith|22|22|1|1|cell-valign|c>|<cwith|23|29|1|1|cell-halign|c>|<cwith|23|29|1|1|cell-valign|c>|<cwith|23|23|1|1|cell-halign|c>|<cwith|23|23|1|1|cell-valign|c>|<cwith|24|24|1|1|cell-halign|c>|<cwith|24|24|1|1|cell-valign|c>|<cwith|25|25|1|1|cell-halign|c>|<cwith|25|25|1|1|cell-valign|c>|<cwith|26|26|1|1|cell-halign|c>|<cwith|26|26|1|1|cell-valign|c>|<cwith|27|27|1|1|cell-halign|c>|<cwith|27|27|1|1|cell-valign|c>|<cwith|28|28|1|1|cell-halign|c>|<cwith|28|28|1|1|cell-valign|c>|<cwith|29|29|1|1|cell-halign|c>|<cwith|29|29|1|1|cell-valign|c>|<cwith|30|32|1|1|cell-halign|c>|<cwith|30|32|1|1|cell-valign|c>|<cwith|30|32|1|1|cell-halign|c>|<cwith|30|32|1|1|cell-valign|c>|<cwith|30|30|1|1|cell-halign|c>|<cwith|30|30|1|1|cell-valign|c>|<cwith|31|31|1|1|cell-halign|c>|<cwith|31|31|1|1|cell-valign|c>|<cwith|32|32|1|1|cell-halign|c>|<cwith|32|32|1|1|cell-valign|c>|<cwith|33|33|1|1|cell-halign|c>|<cwith|33|33|1|1|cell-valign|c>|<cwith|33|33|1|1|cell-halign|c>|<cwith|33|33|1|1|cell-valign|c>|<cwith|33|33|1|1|cell-halign|c>|<cwith|33|33|1|1|cell-valign|c>|<cwith|33|33|1|1|cell-halign|c>|<cwith|33|33|1|1|cell-valign|c>|<cwith|2|33|1|1|cell-background|pastel
  blue>|<cwith|6|9|1|1|cell-halign|c>|<cwith|6|9|1|1|cell-valign|c>|<cwith|6|6|1|1|cell-halign|c>|<cwith|6|6|1|1|cell-valign|c>|<cwith|7|7|1|1|cell-halign|c>|<cwith|7|7|1|1|cell-valign|c>|<cwith|8|8|1|1|cell-halign|c>|<cwith|8|8|1|1|cell-valign|c>|<cwith|9|9|1|1|cell-halign|c>|<cwith|9|9|1|1|cell-valign|c>|<cwith|6|9|1|1|cell-background|pastel
  blue>|<cwith|6|6|1|1|cell-bborder|0ln>|<cwith|7|7|1|1|cell-tborder|0ln>|<cwith|5|5|1|1|cell-tborder|0ln>|<cwith|4|4|1|1|cell-bborder|0ln>|<cwith|5|5|1|1|cell-bborder|0ln>|<cwith|6|6|1|1|cell-tborder|0ln>|<cwith|10|13|1|1|cell-halign|c>|<cwith|10|13|1|1|cell-valign|c>|<cwith|10|10|1|1|cell-halign|c>|<cwith|10|10|1|1|cell-valign|c>|<cwith|11|11|1|1|cell-halign|c>|<cwith|11|11|1|1|cell-valign|c>|<cwith|12|12|1|1|cell-halign|c>|<cwith|12|12|1|1|cell-valign|c>|<cwith|13|13|1|1|cell-halign|c>|<cwith|13|13|1|1|cell-valign|c>|<cwith|13|13|1|1|cell-halign|c>|<cwith|13|13|1|1|cell-valign|c>|<cwith|10|13|1|1|cell-background|pastel
  blue>|<cwith|10|13|1|1|cell-halign|c>|<cwith|10|13|1|1|cell-valign|c>|<cwith|10|10|1|1|cell-halign|c>|<cwith|10|10|1|1|cell-valign|c>|<cwith|11|11|1|1|cell-halign|c>|<cwith|11|11|1|1|cell-valign|c>|<cwith|12|12|1|1|cell-halign|c>|<cwith|12|12|1|1|cell-valign|c>|<cwith|13|13|1|1|cell-halign|c>|<cwith|13|13|1|1|cell-valign|c>|<cwith|10|13|1|1|cell-background|pastel
  blue>|<cwith|10|10|1|1|cell-bborder|0ln>|<cwith|11|11|1|1|cell-tborder|0ln>|<cwith|10|10|1|1|cell-tborder|0ln>|<cwith|14|17|1|1|cell-halign|c>|<cwith|14|17|1|1|cell-valign|c>|<cwith|14|14|1|1|cell-halign|c>|<cwith|14|14|1|1|cell-valign|c>|<cwith|15|15|1|1|cell-halign|c>|<cwith|15|15|1|1|cell-valign|c>|<cwith|16|16|1|1|cell-halign|c>|<cwith|16|16|1|1|cell-valign|c>|<cwith|17|17|1|1|cell-halign|c>|<cwith|17|17|1|1|cell-valign|c>|<cwith|17|17|1|1|cell-halign|c>|<cwith|17|17|1|1|cell-valign|c>|<cwith|14|17|1|1|cell-background|pastel
  blue>|<cwith|14|17|1|1|cell-halign|c>|<cwith|14|17|1|1|cell-valign|c>|<cwith|14|14|1|1|cell-halign|c>|<cwith|14|14|1|1|cell-valign|c>|<cwith|15|15|1|1|cell-halign|c>|<cwith|15|15|1|1|cell-valign|c>|<cwith|16|16|1|1|cell-halign|c>|<cwith|16|16|1|1|cell-valign|c>|<cwith|17|17|1|1|cell-halign|c>|<cwith|17|17|1|1|cell-valign|c>|<cwith|14|17|1|1|cell-background|pastel
  blue>|<cwith|14|14|1|1|cell-bborder|0ln>|<cwith|15|15|1|1|cell-tborder|0ln>|<cwith|14|14|1|1|cell-tborder|0ln>|<cwith|18|21|1|1|cell-halign|c>|<cwith|18|21|1|1|cell-valign|c>|<cwith|18|18|1|1|cell-halign|c>|<cwith|18|18|1|1|cell-valign|c>|<cwith|19|19|1|1|cell-halign|c>|<cwith|19|19|1|1|cell-valign|c>|<cwith|20|20|1|1|cell-halign|c>|<cwith|20|20|1|1|cell-valign|c>|<cwith|21|21|1|1|cell-halign|c>|<cwith|21|21|1|1|cell-valign|c>|<cwith|21|21|1|1|cell-halign|c>|<cwith|21|21|1|1|cell-valign|c>|<cwith|18|21|1|1|cell-background|pastel
  blue>|<cwith|18|21|1|1|cell-halign|c>|<cwith|18|21|1|1|cell-valign|c>|<cwith|18|18|1|1|cell-halign|c>|<cwith|18|18|1|1|cell-valign|c>|<cwith|19|19|1|1|cell-halign|c>|<cwith|19|19|1|1|cell-valign|c>|<cwith|20|20|1|1|cell-halign|c>|<cwith|20|20|1|1|cell-valign|c>|<cwith|21|21|1|1|cell-halign|c>|<cwith|21|21|1|1|cell-valign|c>|<cwith|18|21|1|1|cell-background|pastel
  blue>|<cwith|18|18|1|1|cell-bborder|0ln>|<cwith|19|19|1|1|cell-tborder|0ln>|<cwith|18|18|1|1|cell-tborder|0ln>|<cwith|22|25|1|1|cell-halign|c>|<cwith|22|25|1|1|cell-valign|c>|<cwith|22|22|1|1|cell-halign|c>|<cwith|22|22|1|1|cell-valign|c>|<cwith|23|23|1|1|cell-halign|c>|<cwith|23|23|1|1|cell-valign|c>|<cwith|24|24|1|1|cell-halign|c>|<cwith|24|24|1|1|cell-valign|c>|<cwith|25|25|1|1|cell-halign|c>|<cwith|25|25|1|1|cell-valign|c>|<cwith|25|25|1|1|cell-halign|c>|<cwith|25|25|1|1|cell-valign|c>|<cwith|22|25|1|1|cell-background|pastel
  blue>|<cwith|22|25|1|1|cell-halign|c>|<cwith|22|25|1|1|cell-valign|c>|<cwith|22|22|1|1|cell-halign|c>|<cwith|22|22|1|1|cell-valign|c>|<cwith|23|23|1|1|cell-halign|c>|<cwith|23|23|1|1|cell-valign|c>|<cwith|24|24|1|1|cell-halign|c>|<cwith|24|24|1|1|cell-valign|c>|<cwith|25|25|1|1|cell-halign|c>|<cwith|25|25|1|1|cell-valign|c>|<cwith|22|25|1|1|cell-background|pastel
  blue>|<cwith|22|22|1|1|cell-bborder|0ln>|<cwith|23|23|1|1|cell-tborder|0ln>|<cwith|22|22|1|1|cell-tborder|0ln>|<cwith|26|29|1|1|cell-halign|c>|<cwith|26|29|1|1|cell-valign|c>|<cwith|26|26|1|1|cell-halign|c>|<cwith|26|26|1|1|cell-valign|c>|<cwith|27|27|1|1|cell-halign|c>|<cwith|27|27|1|1|cell-valign|c>|<cwith|28|28|1|1|cell-halign|c>|<cwith|28|28|1|1|cell-valign|c>|<cwith|29|29|1|1|cell-halign|c>|<cwith|29|29|1|1|cell-valign|c>|<cwith|29|29|1|1|cell-halign|c>|<cwith|29|29|1|1|cell-valign|c>|<cwith|26|29|1|1|cell-background|pastel
  blue>|<cwith|26|29|1|1|cell-halign|c>|<cwith|26|29|1|1|cell-valign|c>|<cwith|26|26|1|1|cell-halign|c>|<cwith|26|26|1|1|cell-valign|c>|<cwith|27|27|1|1|cell-halign|c>|<cwith|27|27|1|1|cell-valign|c>|<cwith|28|28|1|1|cell-halign|c>|<cwith|28|28|1|1|cell-valign|c>|<cwith|29|29|1|1|cell-halign|c>|<cwith|29|29|1|1|cell-valign|c>|<cwith|26|29|1|1|cell-background|pastel
  blue>|<cwith|26|26|1|1|cell-bborder|0ln>|<cwith|27|27|1|1|cell-tborder|0ln>|<cwith|26|26|1|1|cell-tborder|0ln>|<cwith|30|33|1|1|cell-halign|c>|<cwith|30|33|1|1|cell-valign|c>|<cwith|30|30|1|1|cell-halign|c>|<cwith|30|30|1|1|cell-valign|c>|<cwith|31|31|1|1|cell-halign|c>|<cwith|31|31|1|1|cell-valign|c>|<cwith|32|32|1|1|cell-halign|c>|<cwith|32|32|1|1|cell-valign|c>|<cwith|33|33|1|1|cell-halign|c>|<cwith|33|33|1|1|cell-valign|c>|<cwith|33|33|1|1|cell-halign|c>|<cwith|33|33|1|1|cell-valign|c>|<cwith|30|33|1|1|cell-background|pastel
  blue>|<cwith|30|33|1|1|cell-halign|c>|<cwith|30|33|1|1|cell-valign|c>|<cwith|30|30|1|1|cell-halign|c>|<cwith|30|30|1|1|cell-valign|c>|<cwith|31|31|1|1|cell-halign|c>|<cwith|31|31|1|1|cell-valign|c>|<cwith|32|32|1|1|cell-halign|c>|<cwith|32|32|1|1|cell-valign|c>|<cwith|33|33|1|1|cell-halign|c>|<cwith|33|33|1|1|cell-valign|c>|<cwith|30|33|1|1|cell-background|pastel
  blue>|<cwith|30|30|1|1|cell-bborder|0ln>|<cwith|31|31|1|1|cell-tborder|0ln>|<cwith|30|30|1|1|cell-tborder|0ln>|<cwith|2|33|2|2|cell-halign|c>|<cwith|2|33|2|2|cell-valign|c>|<cwith|2|2|2|2|cell-halign|c>|<cwith|2|2|2|2|cell-valign|c>|<cwith|3|3|2|2|cell-halign|c>|<cwith|3|3|2|2|cell-valign|c>|<cwith|4|4|2|2|cell-halign|c>|<cwith|4|4|2|2|cell-valign|c>|<cwith|5|5|2|2|cell-halign|c>|<cwith|5|5|2|2|cell-valign|c>|<cwith|6|6|2|2|cell-halign|c>|<cwith|6|6|2|2|cell-valign|c>|<cwith|7|7|2|2|cell-halign|c>|<cwith|7|7|2|2|cell-valign|c>|<cwith|8|8|2|2|cell-halign|c>|<cwith|8|8|2|2|cell-valign|c>|<cwith|9|15|2|2|cell-halign|c>|<cwith|9|15|2|2|cell-valign|c>|<cwith|9|9|2|2|cell-halign|c>|<cwith|9|9|2|2|cell-valign|c>|<cwith|10|10|2|2|cell-halign|c>|<cwith|10|10|2|2|cell-valign|c>|<cwith|11|11|2|2|cell-halign|c>|<cwith|11|11|2|2|cell-valign|c>|<cwith|12|12|2|2|cell-halign|c>|<cwith|12|12|2|2|cell-valign|c>|<cwith|13|13|2|2|cell-halign|c>|<cwith|13|13|2|2|cell-valign|c>|<cwith|14|14|2|2|cell-halign|c>|<cwith|14|14|2|2|cell-valign|c>|<cwith|15|15|2|2|cell-halign|c>|<cwith|15|15|2|2|cell-valign|c>|<cwith|16|22|2|2|cell-halign|c>|<cwith|16|22|2|2|cell-valign|c>|<cwith|16|16|2|2|cell-halign|c>|<cwith|16|16|2|2|cell-valign|c>|<cwith|17|17|2|2|cell-halign|c>|<cwith|17|17|2|2|cell-valign|c>|<cwith|18|18|2|2|cell-halign|c>|<cwith|18|18|2|2|cell-valign|c>|<cwith|19|19|2|2|cell-halign|c>|<cwith|19|19|2|2|cell-valign|c>|<cwith|20|20|2|2|cell-halign|c>|<cwith|20|20|2|2|cell-valign|c>|<cwith|21|21|2|2|cell-halign|c>|<cwith|21|21|2|2|cell-valign|c>|<cwith|22|22|2|2|cell-halign|c>|<cwith|22|22|2|2|cell-valign|c>|<cwith|23|29|2|2|cell-halign|c>|<cwith|23|29|2|2|cell-valign|c>|<cwith|23|23|2|2|cell-halign|c>|<cwith|23|23|2|2|cell-valign|c>|<cwith|24|24|2|2|cell-halign|c>|<cwith|24|24|2|2|cell-valign|c>|<cwith|25|25|2|2|cell-halign|c>|<cwith|25|25|2|2|cell-valign|c>|<cwith|26|26|2|2|cell-halign|c>|<cwith|26|26|2|2|cell-valign|c>|<cwith|27|27|2|2|cell-halign|c>|<cwith|27|27|2|2|cell-valign|c>|<cwith|28|28|2|2|cell-halign|c>|<cwith|28|28|2|2|cell-valign|c>|<cwith|29|29|2|2|cell-halign|c>|<cwith|29|29|2|2|cell-valign|c>|<cwith|30|32|2|2|cell-halign|c>|<cwith|30|32|2|2|cell-valign|c>|<cwith|30|32|2|2|cell-halign|c>|<cwith|30|32|2|2|cell-valign|c>|<cwith|30|30|2|2|cell-halign|c>|<cwith|30|30|2|2|cell-valign|c>|<cwith|31|31|2|2|cell-halign|c>|<cwith|31|31|2|2|cell-valign|c>|<cwith|32|32|2|2|cell-halign|c>|<cwith|32|32|2|2|cell-valign|c>|<cwith|33|33|2|2|cell-halign|c>|<cwith|33|33|2|2|cell-valign|c>|<cwith|33|33|2|2|cell-halign|c>|<cwith|33|33|2|2|cell-valign|c>|<cwith|33|33|2|2|cell-halign|c>|<cwith|33|33|2|2|cell-valign|c>|<cwith|33|33|2|2|cell-halign|c>|<cwith|33|33|2|2|cell-valign|c>|<cwith|2|33|2|2|cell-background|pastel
  blue>|<cwith|33|33|2|2|cell-bborder|1ln>|<cwith|2|2|2|2|cell-tborder|1ln>|<cwith|6|9|2|2|cell-halign|c>|<cwith|6|9|2|2|cell-valign|c>|<cwith|6|6|2|2|cell-halign|c>|<cwith|6|6|2|2|cell-valign|c>|<cwith|7|7|2|2|cell-halign|c>|<cwith|7|7|2|2|cell-valign|c>|<cwith|8|8|2|2|cell-halign|c>|<cwith|8|8|2|2|cell-valign|c>|<cwith|9|9|2|2|cell-halign|c>|<cwith|9|9|2|2|cell-valign|c>|<cwith|6|9|2|2|cell-background|pastel
  blue>|<cwith|6|6|2|2|cell-bborder|0ln>|<cwith|7|7|2|2|cell-tborder|0ln>|<cwith|5|6|2|2|cell-rborder|0ln>|<cwith|5|5|2|2|cell-tborder|0ln>|<cwith|4|4|2|2|cell-bborder|0ln>|<cwith|5|5|2|2|cell-bborder|0ln>|<cwith|6|6|2|2|cell-tborder|0ln>|<cwith|5|5|2|2|cell-rborder|0ln>|<cwith|10|13|2|2|cell-halign|c>|<cwith|10|13|2|2|cell-valign|c>|<cwith|10|10|2|2|cell-halign|c>|<cwith|10|10|2|2|cell-valign|c>|<cwith|11|11|2|2|cell-halign|c>|<cwith|11|11|2|2|cell-valign|c>|<cwith|12|12|2|2|cell-halign|c>|<cwith|12|12|2|2|cell-valign|c>|<cwith|13|13|2|2|cell-halign|c>|<cwith|13|13|2|2|cell-valign|c>|<cwith|13|13|2|2|cell-halign|c>|<cwith|13|13|2|2|cell-valign|c>|<cwith|10|13|2|2|cell-background|pastel
  blue>|<cwith|10|13|2|2|cell-halign|c>|<cwith|10|13|2|2|cell-valign|c>|<cwith|10|10|2|2|cell-halign|c>|<cwith|10|10|2|2|cell-valign|c>|<cwith|11|11|2|2|cell-halign|c>|<cwith|11|11|2|2|cell-valign|c>|<cwith|12|12|2|2|cell-halign|c>|<cwith|12|12|2|2|cell-valign|c>|<cwith|13|13|2|2|cell-halign|c>|<cwith|13|13|2|2|cell-valign|c>|<cwith|10|13|2|2|cell-background|pastel
  blue>|<cwith|10|10|2|2|cell-bborder|0ln>|<cwith|11|11|2|2|cell-tborder|0ln>|<cwith|10|10|2|2|cell-rborder|0ln>|<cwith|10|10|2|2|cell-tborder|0ln>|<cwith|14|17|2|2|cell-halign|c>|<cwith|14|17|2|2|cell-valign|c>|<cwith|14|14|2|2|cell-halign|c>|<cwith|14|14|2|2|cell-valign|c>|<cwith|15|15|2|2|cell-halign|c>|<cwith|15|15|2|2|cell-valign|c>|<cwith|16|16|2|2|cell-halign|c>|<cwith|16|16|2|2|cell-valign|c>|<cwith|17|17|2|2|cell-halign|c>|<cwith|17|17|2|2|cell-valign|c>|<cwith|17|17|2|2|cell-halign|c>|<cwith|17|17|2|2|cell-valign|c>|<cwith|14|17|2|2|cell-background|pastel
  blue>|<cwith|14|17|2|2|cell-halign|c>|<cwith|14|17|2|2|cell-valign|c>|<cwith|14|14|2|2|cell-halign|c>|<cwith|14|14|2|2|cell-valign|c>|<cwith|15|15|2|2|cell-halign|c>|<cwith|15|15|2|2|cell-valign|c>|<cwith|16|16|2|2|cell-halign|c>|<cwith|16|16|2|2|cell-valign|c>|<cwith|17|17|2|2|cell-halign|c>|<cwith|17|17|2|2|cell-valign|c>|<cwith|14|17|2|2|cell-background|pastel
  blue>|<cwith|14|14|2|2|cell-bborder|0ln>|<cwith|15|15|2|2|cell-tborder|0ln>|<cwith|14|14|2|2|cell-rborder|0ln>|<cwith|14|14|2|2|cell-tborder|0ln>|<cwith|18|21|2|2|cell-halign|c>|<cwith|18|21|2|2|cell-valign|c>|<cwith|18|18|2|2|cell-halign|c>|<cwith|18|18|2|2|cell-valign|c>|<cwith|19|19|2|2|cell-halign|c>|<cwith|19|19|2|2|cell-valign|c>|<cwith|20|20|2|2|cell-halign|c>|<cwith|20|20|2|2|cell-valign|c>|<cwith|21|21|2|2|cell-halign|c>|<cwith|21|21|2|2|cell-valign|c>|<cwith|21|21|2|2|cell-halign|c>|<cwith|21|21|2|2|cell-valign|c>|<cwith|18|21|2|2|cell-background|pastel
  blue>|<cwith|18|21|2|2|cell-halign|c>|<cwith|18|21|2|2|cell-valign|c>|<cwith|18|18|2|2|cell-halign|c>|<cwith|18|18|2|2|cell-valign|c>|<cwith|19|19|2|2|cell-halign|c>|<cwith|19|19|2|2|cell-valign|c>|<cwith|20|20|2|2|cell-halign|c>|<cwith|20|20|2|2|cell-valign|c>|<cwith|21|21|2|2|cell-halign|c>|<cwith|21|21|2|2|cell-valign|c>|<cwith|18|21|2|2|cell-background|pastel
  blue>|<cwith|22|25|2|2|cell-halign|c>|<cwith|22|25|2|2|cell-valign|c>|<cwith|22|22|2|2|cell-halign|c>|<cwith|22|22|2|2|cell-valign|c>|<cwith|23|23|2|2|cell-halign|c>|<cwith|23|23|2|2|cell-valign|c>|<cwith|24|24|2|2|cell-halign|c>|<cwith|24|24|2|2|cell-valign|c>|<cwith|25|25|2|2|cell-halign|c>|<cwith|25|25|2|2|cell-valign|c>|<cwith|25|25|2|2|cell-halign|c>|<cwith|25|25|2|2|cell-valign|c>|<cwith|22|25|2|2|cell-background|pastel
  blue>|<cwith|22|25|2|2|cell-halign|c>|<cwith|22|25|2|2|cell-valign|c>|<cwith|22|22|2|2|cell-halign|c>|<cwith|22|22|2|2|cell-valign|c>|<cwith|23|23|2|2|cell-halign|c>|<cwith|23|23|2|2|cell-valign|c>|<cwith|24|24|2|2|cell-halign|c>|<cwith|24|24|2|2|cell-valign|c>|<cwith|25|25|2|2|cell-halign|c>|<cwith|25|25|2|2|cell-valign|c>|<cwith|22|25|2|2|cell-background|pastel
  blue>|<cwith|22|22|2|2|cell-bborder|0ln>|<cwith|23|23|2|2|cell-tborder|0ln>|<cwith|22|22|2|2|cell-rborder|0ln>|<cwith|22|22|2|2|cell-tborder|0ln>|<cwith|26|29|2|2|cell-halign|c>|<cwith|26|29|2|2|cell-valign|c>|<cwith|26|26|2|2|cell-halign|c>|<cwith|26|26|2|2|cell-valign|c>|<cwith|27|27|2|2|cell-halign|c>|<cwith|27|27|2|2|cell-valign|c>|<cwith|28|28|2|2|cell-halign|c>|<cwith|28|28|2|2|cell-valign|c>|<cwith|29|29|2|2|cell-halign|c>|<cwith|29|29|2|2|cell-valign|c>|<cwith|29|29|2|2|cell-halign|c>|<cwith|29|29|2|2|cell-valign|c>|<cwith|26|29|2|2|cell-background|pastel
  blue>|<cwith|26|29|2|2|cell-halign|c>|<cwith|26|29|2|2|cell-valign|c>|<cwith|26|26|2|2|cell-halign|c>|<cwith|26|26|2|2|cell-valign|c>|<cwith|27|27|2|2|cell-halign|c>|<cwith|27|27|2|2|cell-valign|c>|<cwith|28|28|2|2|cell-halign|c>|<cwith|28|28|2|2|cell-valign|c>|<cwith|29|29|2|2|cell-halign|c>|<cwith|29|29|2|2|cell-valign|c>|<cwith|26|29|2|2|cell-background|pastel
  blue>|<cwith|26|26|2|2|cell-bborder|0ln>|<cwith|27|27|2|2|cell-tborder|0ln>|<cwith|26|26|2|2|cell-rborder|0ln>|<cwith|26|26|2|2|cell-tborder|0ln>|<cwith|30|33|2|2|cell-halign|c>|<cwith|30|33|2|2|cell-valign|c>|<cwith|30|30|2|2|cell-halign|c>|<cwith|30|30|2|2|cell-valign|c>|<cwith|31|31|2|2|cell-halign|c>|<cwith|31|31|2|2|cell-valign|c>|<cwith|32|32|2|2|cell-halign|c>|<cwith|32|32|2|2|cell-valign|c>|<cwith|33|33|2|2|cell-halign|c>|<cwith|33|33|2|2|cell-valign|c>|<cwith|33|33|2|2|cell-halign|c>|<cwith|33|33|2|2|cell-valign|c>|<cwith|30|33|2|2|cell-background|pastel
  blue>|<cwith|30|33|2|2|cell-halign|c>|<cwith|30|33|2|2|cell-valign|c>|<cwith|30|30|2|2|cell-halign|c>|<cwith|30|30|2|2|cell-valign|c>|<cwith|31|31|2|2|cell-halign|c>|<cwith|31|31|2|2|cell-valign|c>|<cwith|32|32|2|2|cell-halign|c>|<cwith|32|32|2|2|cell-valign|c>|<cwith|33|33|2|2|cell-halign|c>|<cwith|33|33|2|2|cell-valign|c>|<cwith|30|33|2|2|cell-background|pastel
  blue>|<cwith|30|30|2|2|cell-bborder|0ln>|<cwith|31|31|2|2|cell-tborder|0ln>|<cwith|30|30|2|2|cell-rborder|0ln>|<cwith|30|30|2|2|cell-tborder|0ln>|<cwith|2|17|2|2|cell-halign|c>|<cwith|2|17|2|2|cell-valign|c>|<cwith|2|17|2|2|cell-background|pastel
  blue>|<cwith|2|2|2|2|cell-tborder|1ln>|<cwith|18|33|2|2|cell-halign|c>|<cwith|18|33|2|2|cell-valign|c>|<cwith|18|33|2|2|cell-background|pastel
  blue>|<cwith|18|18|2|2|cell-tborder|0ln>|<cwith|17|17|2|2|cell-bborder|0ln>|<cwith|18|18|2|2|cell-bborder|0ln>|<cwith|19|19|2|2|cell-tborder|0ln>|<cwith|18|18|2|2|cell-rborder|0ln>|<cwith|2|33|2|2|cell-halign|c>|<cwith|2|33|2|2|cell-valign|c>|<cwith|2|2|2|2|cell-halign|c>|<cwith|2|2|2|2|cell-valign|c>|<cwith|3|3|2|2|cell-halign|c>|<cwith|3|3|2|2|cell-valign|c>|<cwith|4|4|2|2|cell-halign|c>|<cwith|4|4|2|2|cell-valign|c>|<cwith|5|5|2|2|cell-halign|c>|<cwith|5|5|2|2|cell-valign|c>|<cwith|6|6|2|2|cell-halign|c>|<cwith|6|6|2|2|cell-valign|c>|<cwith|7|7|2|2|cell-halign|c>|<cwith|7|7|2|2|cell-valign|c>|<cwith|8|8|2|2|cell-halign|c>|<cwith|8|8|2|2|cell-valign|c>|<cwith|9|15|2|2|cell-halign|c>|<cwith|9|15|2|2|cell-valign|c>|<cwith|9|9|2|2|cell-halign|c>|<cwith|9|9|2|2|cell-valign|c>|<cwith|10|10|2|2|cell-halign|c>|<cwith|10|10|2|2|cell-valign|c>|<cwith|11|11|2|2|cell-halign|c>|<cwith|11|11|2|2|cell-valign|c>|<cwith|12|12|2|2|cell-halign|c>|<cwith|12|12|2|2|cell-valign|c>|<cwith|13|13|2|2|cell-halign|c>|<cwith|13|13|2|2|cell-valign|c>|<cwith|14|14|2|2|cell-halign|c>|<cwith|14|14|2|2|cell-valign|c>|<cwith|15|15|2|2|cell-halign|c>|<cwith|15|15|2|2|cell-valign|c>|<cwith|16|22|2|2|cell-halign|c>|<cwith|16|22|2|2|cell-valign|c>|<cwith|16|16|2|2|cell-halign|c>|<cwith|16|16|2|2|cell-valign|c>|<cwith|17|17|2|2|cell-halign|c>|<cwith|17|17|2|2|cell-valign|c>|<cwith|18|18|2|2|cell-halign|c>|<cwith|18|18|2|2|cell-valign|c>|<cwith|19|19|2|2|cell-halign|c>|<cwith|19|19|2|2|cell-valign|c>|<cwith|20|20|2|2|cell-halign|c>|<cwith|20|20|2|2|cell-valign|c>|<cwith|21|21|2|2|cell-halign|c>|<cwith|21|21|2|2|cell-valign|c>|<cwith|22|22|2|2|cell-halign|c>|<cwith|22|22|2|2|cell-valign|c>|<cwith|23|29|2|2|cell-halign|c>|<cwith|23|29|2|2|cell-valign|c>|<cwith|23|23|2|2|cell-halign|c>|<cwith|23|23|2|2|cell-valign|c>|<cwith|24|24|2|2|cell-halign|c>|<cwith|24|24|2|2|cell-valign|c>|<cwith|25|25|2|2|cell-halign|c>|<cwith|25|25|2|2|cell-valign|c>|<cwith|26|26|2|2|cell-halign|c>|<cwith|26|26|2|2|cell-valign|c>|<cwith|27|27|2|2|cell-halign|c>|<cwith|27|27|2|2|cell-valign|c>|<cwith|28|28|2|2|cell-halign|c>|<cwith|28|28|2|2|cell-valign|c>|<cwith|29|29|2|2|cell-halign|c>|<cwith|29|29|2|2|cell-valign|c>|<cwith|30|32|2|2|cell-halign|c>|<cwith|30|32|2|2|cell-valign|c>|<cwith|30|32|2|2|cell-halign|c>|<cwith|30|32|2|2|cell-valign|c>|<cwith|30|30|2|2|cell-halign|c>|<cwith|30|30|2|2|cell-valign|c>|<cwith|31|31|2|2|cell-halign|c>|<cwith|31|31|2|2|cell-valign|c>|<cwith|32|32|2|2|cell-halign|c>|<cwith|32|32|2|2|cell-valign|c>|<cwith|33|33|2|2|cell-halign|c>|<cwith|33|33|2|2|cell-valign|c>|<cwith|33|33|2|2|cell-halign|c>|<cwith|33|33|2|2|cell-valign|c>|<cwith|33|33|2|2|cell-halign|c>|<cwith|33|33|2|2|cell-valign|c>|<cwith|33|33|2|2|cell-halign|c>|<cwith|33|33|2|2|cell-valign|c>|<cwith|2|33|2|2|cell-background|pastel
  blue>|<cwith|33|33|2|2|cell-bborder|1ln>|<cwith|2|2|2|2|cell-tborder|1ln>|<cwith|5|6|2|2|cell-rborder|0ln>|<cwith|5|5|2|2|cell-rborder|0ln>|<cwith|2|33|2|2|cell-halign|c>|<cwith|2|33|2|2|cell-valign|c>|<cwith|2|2|2|2|cell-halign|c>|<cwith|2|2|2|2|cell-valign|c>|<cwith|3|3|2|2|cell-halign|c>|<cwith|3|3|2|2|cell-valign|c>|<cwith|4|4|2|2|cell-halign|c>|<cwith|4|4|2|2|cell-valign|c>|<cwith|5|5|2|2|cell-halign|c>|<cwith|5|5|2|2|cell-valign|c>|<cwith|6|6|2|2|cell-halign|c>|<cwith|6|6|2|2|cell-valign|c>|<cwith|7|7|2|2|cell-halign|c>|<cwith|7|7|2|2|cell-valign|c>|<cwith|8|8|2|2|cell-halign|c>|<cwith|8|8|2|2|cell-valign|c>|<cwith|9|15|2|2|cell-halign|c>|<cwith|9|15|2|2|cell-valign|c>|<cwith|9|9|2|2|cell-halign|c>|<cwith|9|9|2|2|cell-valign|c>|<cwith|10|10|2|2|cell-halign|c>|<cwith|10|10|2|2|cell-valign|c>|<cwith|11|11|2|2|cell-halign|c>|<cwith|11|11|2|2|cell-valign|c>|<cwith|12|12|2|2|cell-halign|c>|<cwith|12|12|2|2|cell-valign|c>|<cwith|13|13|2|2|cell-halign|c>|<cwith|13|13|2|2|cell-valign|c>|<cwith|14|14|2|2|cell-halign|c>|<cwith|14|14|2|2|cell-valign|c>|<cwith|15|15|2|2|cell-halign|c>|<cwith|15|15|2|2|cell-valign|c>|<cwith|16|22|2|2|cell-halign|c>|<cwith|16|22|2|2|cell-valign|c>|<cwith|16|16|2|2|cell-halign|c>|<cwith|16|16|2|2|cell-valign|c>|<cwith|17|17|2|2|cell-halign|c>|<cwith|17|17|2|2|cell-valign|c>|<cwith|18|18|2|2|cell-halign|c>|<cwith|18|18|2|2|cell-valign|c>|<cwith|19|19|2|2|cell-halign|c>|<cwith|19|19|2|2|cell-valign|c>|<cwith|20|20|2|2|cell-halign|c>|<cwith|20|20|2|2|cell-valign|c>|<cwith|21|21|2|2|cell-halign|c>|<cwith|21|21|2|2|cell-valign|c>|<cwith|22|22|2|2|cell-halign|c>|<cwith|22|22|2|2|cell-valign|c>|<cwith|23|29|2|2|cell-halign|c>|<cwith|23|29|2|2|cell-valign|c>|<cwith|23|23|2|2|cell-halign|c>|<cwith|23|23|2|2|cell-valign|c>|<cwith|24|24|2|2|cell-halign|c>|<cwith|24|24|2|2|cell-valign|c>|<cwith|25|25|2|2|cell-halign|c>|<cwith|25|25|2|2|cell-valign|c>|<cwith|26|26|2|2|cell-halign|c>|<cwith|26|26|2|2|cell-valign|c>|<cwith|27|27|2|2|cell-halign|c>|<cwith|27|27|2|2|cell-valign|c>|<cwith|28|28|2|2|cell-halign|c>|<cwith|28|28|2|2|cell-valign|c>|<cwith|29|29|2|2|cell-halign|c>|<cwith|29|29|2|2|cell-valign|c>|<cwith|30|32|2|2|cell-halign|c>|<cwith|30|32|2|2|cell-valign|c>|<cwith|30|32|2|2|cell-halign|c>|<cwith|30|32|2|2|cell-valign|c>|<cwith|30|30|2|2|cell-halign|c>|<cwith|30|30|2|2|cell-valign|c>|<cwith|31|31|2|2|cell-halign|c>|<cwith|31|31|2|2|cell-valign|c>|<cwith|32|32|2|2|cell-halign|c>|<cwith|32|32|2|2|cell-valign|c>|<cwith|33|33|2|2|cell-halign|c>|<cwith|33|33|2|2|cell-valign|c>|<cwith|33|33|2|2|cell-halign|c>|<cwith|33|33|2|2|cell-valign|c>|<cwith|33|33|2|2|cell-halign|c>|<cwith|33|33|2|2|cell-valign|c>|<cwith|33|33|2|2|cell-halign|c>|<cwith|33|33|2|2|cell-valign|c>|<cwith|2|33|2|2|cell-background|pastel
  blue>|<cwith|33|33|2|2|cell-bborder|1ln>|<cwith|2|2|2|2|cell-tborder|1ln>|<cwith|6|9|2|2|cell-halign|c>|<cwith|6|9|2|2|cell-valign|c>|<cwith|6|6|2|2|cell-halign|c>|<cwith|6|6|2|2|cell-valign|c>|<cwith|7|7|2|2|cell-halign|c>|<cwith|7|7|2|2|cell-valign|c>|<cwith|8|8|2|2|cell-halign|c>|<cwith|8|8|2|2|cell-valign|c>|<cwith|9|9|2|2|cell-halign|c>|<cwith|9|9|2|2|cell-valign|c>|<cwith|6|9|2|2|cell-background|pastel
  blue>|<cwith|6|6|2|2|cell-bborder|0ln>|<cwith|7|7|2|2|cell-tborder|0ln>|<cwith|5|6|2|2|cell-rborder|0ln>|<cwith|5|5|2|2|cell-tborder|0ln>|<cwith|4|4|2|2|cell-bborder|0ln>|<cwith|5|5|2|2|cell-bborder|0ln>|<cwith|6|6|2|2|cell-tborder|0ln>|<cwith|5|5|2|2|cell-rborder|0ln>|<cwith|10|13|2|2|cell-halign|c>|<cwith|10|13|2|2|cell-valign|c>|<cwith|10|10|2|2|cell-halign|c>|<cwith|10|10|2|2|cell-valign|c>|<cwith|11|11|2|2|cell-halign|c>|<cwith|11|11|2|2|cell-valign|c>|<cwith|12|12|2|2|cell-halign|c>|<cwith|12|12|2|2|cell-valign|c>|<cwith|13|13|2|2|cell-halign|c>|<cwith|13|13|2|2|cell-valign|c>|<cwith|13|13|2|2|cell-halign|c>|<cwith|13|13|2|2|cell-valign|c>|<cwith|10|13|2|2|cell-background|pastel
  blue>|<cwith|10|13|2|2|cell-halign|c>|<cwith|10|13|2|2|cell-valign|c>|<cwith|10|10|2|2|cell-halign|c>|<cwith|10|10|2|2|cell-valign|c>|<cwith|11|11|2|2|cell-halign|c>|<cwith|11|11|2|2|cell-valign|c>|<cwith|12|12|2|2|cell-halign|c>|<cwith|12|12|2|2|cell-valign|c>|<cwith|13|13|2|2|cell-halign|c>|<cwith|13|13|2|2|cell-valign|c>|<cwith|10|13|2|2|cell-background|pastel
  blue>|<cwith|10|10|2|2|cell-bborder|0ln>|<cwith|11|11|2|2|cell-tborder|0ln>|<cwith|10|10|2|2|cell-rborder|0ln>|<cwith|10|10|2|2|cell-tborder|0ln>|<cwith|14|17|2|2|cell-halign|c>|<cwith|14|17|2|2|cell-valign|c>|<cwith|14|14|2|2|cell-halign|c>|<cwith|14|14|2|2|cell-valign|c>|<cwith|15|15|2|2|cell-halign|c>|<cwith|15|15|2|2|cell-valign|c>|<cwith|16|16|2|2|cell-halign|c>|<cwith|16|16|2|2|cell-valign|c>|<cwith|17|17|2|2|cell-halign|c>|<cwith|17|17|2|2|cell-valign|c>|<cwith|17|17|2|2|cell-halign|c>|<cwith|17|17|2|2|cell-valign|c>|<cwith|14|17|2|2|cell-background|pastel
  blue>|<cwith|14|17|2|2|cell-halign|c>|<cwith|14|17|2|2|cell-valign|c>|<cwith|14|14|2|2|cell-halign|c>|<cwith|14|14|2|2|cell-valign|c>|<cwith|15|15|2|2|cell-halign|c>|<cwith|15|15|2|2|cell-valign|c>|<cwith|16|16|2|2|cell-halign|c>|<cwith|16|16|2|2|cell-valign|c>|<cwith|17|17|2|2|cell-halign|c>|<cwith|17|17|2|2|cell-valign|c>|<cwith|14|17|2|2|cell-background|pastel
  blue>|<cwith|14|14|2|2|cell-bborder|0ln>|<cwith|15|15|2|2|cell-tborder|0ln>|<cwith|14|14|2|2|cell-rborder|0ln>|<cwith|14|14|2|2|cell-tborder|0ln>|<cwith|18|21|2|2|cell-halign|c>|<cwith|18|21|2|2|cell-valign|c>|<cwith|18|18|2|2|cell-halign|c>|<cwith|18|18|2|2|cell-valign|c>|<cwith|19|19|2|2|cell-halign|c>|<cwith|19|19|2|2|cell-valign|c>|<cwith|20|20|2|2|cell-halign|c>|<cwith|20|20|2|2|cell-valign|c>|<cwith|21|21|2|2|cell-halign|c>|<cwith|21|21|2|2|cell-valign|c>|<cwith|21|21|2|2|cell-halign|c>|<cwith|21|21|2|2|cell-valign|c>|<cwith|18|21|2|2|cell-background|pastel
  blue>|<cwith|18|21|2|2|cell-halign|c>|<cwith|18|21|2|2|cell-valign|c>|<cwith|18|18|2|2|cell-halign|c>|<cwith|18|18|2|2|cell-valign|c>|<cwith|19|19|2|2|cell-halign|c>|<cwith|19|19|2|2|cell-valign|c>|<cwith|20|20|2|2|cell-halign|c>|<cwith|20|20|2|2|cell-valign|c>|<cwith|21|21|2|2|cell-halign|c>|<cwith|21|21|2|2|cell-valign|c>|<cwith|18|21|2|2|cell-background|pastel
  blue>|<cwith|18|18|2|2|cell-bborder|0ln>|<cwith|19|19|2|2|cell-tborder|0ln>|<cwith|18|18|2|2|cell-tborder|0ln>|<cwith|22|25|2|2|cell-halign|c>|<cwith|22|25|2|2|cell-valign|c>|<cwith|22|22|2|2|cell-halign|c>|<cwith|22|22|2|2|cell-valign|c>|<cwith|23|23|2|2|cell-halign|c>|<cwith|23|23|2|2|cell-valign|c>|<cwith|24|24|2|2|cell-halign|c>|<cwith|24|24|2|2|cell-valign|c>|<cwith|25|25|2|2|cell-halign|c>|<cwith|25|25|2|2|cell-valign|c>|<cwith|25|25|2|2|cell-halign|c>|<cwith|25|25|2|2|cell-valign|c>|<cwith|22|25|2|2|cell-background|pastel
  blue>|<cwith|22|25|2|2|cell-halign|c>|<cwith|22|25|2|2|cell-valign|c>|<cwith|22|22|2|2|cell-halign|c>|<cwith|22|22|2|2|cell-valign|c>|<cwith|23|23|2|2|cell-halign|c>|<cwith|23|23|2|2|cell-valign|c>|<cwith|24|24|2|2|cell-halign|c>|<cwith|24|24|2|2|cell-valign|c>|<cwith|25|25|2|2|cell-halign|c>|<cwith|25|25|2|2|cell-valign|c>|<cwith|22|25|2|2|cell-background|pastel
  blue>|<cwith|22|22|2|2|cell-bborder|0ln>|<cwith|23|23|2|2|cell-tborder|0ln>|<cwith|22|22|2|2|cell-rborder|0ln>|<cwith|22|22|2|2|cell-tborder|0ln>|<cwith|26|29|2|2|cell-halign|c>|<cwith|26|29|2|2|cell-valign|c>|<cwith|26|26|2|2|cell-halign|c>|<cwith|26|26|2|2|cell-valign|c>|<cwith|27|27|2|2|cell-halign|c>|<cwith|27|27|2|2|cell-valign|c>|<cwith|28|28|2|2|cell-halign|c>|<cwith|28|28|2|2|cell-valign|c>|<cwith|29|29|2|2|cell-halign|c>|<cwith|29|29|2|2|cell-valign|c>|<cwith|29|29|2|2|cell-halign|c>|<cwith|29|29|2|2|cell-valign|c>|<cwith|26|29|2|2|cell-background|pastel
  blue>|<cwith|26|29|2|2|cell-halign|c>|<cwith|26|29|2|2|cell-valign|c>|<cwith|26|26|2|2|cell-halign|c>|<cwith|26|26|2|2|cell-valign|c>|<cwith|27|27|2|2|cell-halign|c>|<cwith|27|27|2|2|cell-valign|c>|<cwith|28|28|2|2|cell-halign|c>|<cwith|28|28|2|2|cell-valign|c>|<cwith|29|29|2|2|cell-halign|c>|<cwith|29|29|2|2|cell-valign|c>|<cwith|26|29|2|2|cell-background|pastel
  blue>|<cwith|26|26|2|2|cell-bborder|0ln>|<cwith|27|27|2|2|cell-tborder|0ln>|<cwith|26|26|2|2|cell-rborder|0ln>|<cwith|26|26|2|2|cell-tborder|0ln>|<cwith|30|33|2|2|cell-halign|c>|<cwith|30|33|2|2|cell-valign|c>|<cwith|30|30|2|2|cell-halign|c>|<cwith|30|30|2|2|cell-valign|c>|<cwith|31|31|2|2|cell-halign|c>|<cwith|31|31|2|2|cell-valign|c>|<cwith|32|32|2|2|cell-halign|c>|<cwith|32|32|2|2|cell-valign|c>|<cwith|33|33|2|2|cell-halign|c>|<cwith|33|33|2|2|cell-valign|c>|<cwith|33|33|2|2|cell-halign|c>|<cwith|33|33|2|2|cell-valign|c>|<cwith|30|33|2|2|cell-background|pastel
  blue>|<cwith|30|33|2|2|cell-halign|c>|<cwith|30|33|2|2|cell-valign|c>|<cwith|30|30|2|2|cell-halign|c>|<cwith|30|30|2|2|cell-valign|c>|<cwith|31|31|2|2|cell-halign|c>|<cwith|31|31|2|2|cell-valign|c>|<cwith|32|32|2|2|cell-halign|c>|<cwith|32|32|2|2|cell-valign|c>|<cwith|33|33|2|2|cell-halign|c>|<cwith|33|33|2|2|cell-valign|c>|<cwith|30|33|2|2|cell-background|pastel
  blue>|<cwith|30|30|2|2|cell-bborder|0ln>|<cwith|31|31|2|2|cell-tborder|0ln>|<cwith|30|30|2|2|cell-rborder|0ln>|<cwith|30|30|2|2|cell-tborder|0ln>|<cwith|18|18|2|2|cell-rborder|0ln>|<cwith|2|33|2|2|cell-halign|c>|<cwith|2|33|2|2|cell-valign|c>|<cwith|2|2|2|2|cell-halign|c>|<cwith|2|2|2|2|cell-valign|c>|<cwith|3|3|2|2|cell-halign|c>|<cwith|3|3|2|2|cell-valign|c>|<cwith|4|4|2|2|cell-halign|c>|<cwith|4|4|2|2|cell-valign|c>|<cwith|5|5|2|2|cell-halign|c>|<cwith|5|5|2|2|cell-valign|c>|<cwith|6|6|2|2|cell-halign|c>|<cwith|6|6|2|2|cell-valign|c>|<cwith|7|7|2|2|cell-halign|c>|<cwith|7|7|2|2|cell-valign|c>|<cwith|8|8|2|2|cell-halign|c>|<cwith|8|8|2|2|cell-valign|c>|<cwith|9|15|2|2|cell-halign|c>|<cwith|9|15|2|2|cell-valign|c>|<cwith|9|9|2|2|cell-halign|c>|<cwith|9|9|2|2|cell-valign|c>|<cwith|10|10|2|2|cell-halign|c>|<cwith|10|10|2|2|cell-valign|c>|<cwith|11|11|2|2|cell-halign|c>|<cwith|11|11|2|2|cell-valign|c>|<cwith|12|12|2|2|cell-halign|c>|<cwith|12|12|2|2|cell-valign|c>|<cwith|13|13|2|2|cell-halign|c>|<cwith|13|13|2|2|cell-valign|c>|<cwith|14|14|2|2|cell-halign|c>|<cwith|14|14|2|2|cell-valign|c>|<cwith|15|15|2|2|cell-halign|c>|<cwith|15|15|2|2|cell-valign|c>|<cwith|16|22|2|2|cell-halign|c>|<cwith|16|22|2|2|cell-valign|c>|<cwith|16|16|2|2|cell-halign|c>|<cwith|16|16|2|2|cell-valign|c>|<cwith|17|17|2|2|cell-halign|c>|<cwith|17|17|2|2|cell-valign|c>|<cwith|18|18|2|2|cell-halign|c>|<cwith|18|18|2|2|cell-valign|c>|<cwith|19|19|2|2|cell-halign|c>|<cwith|19|19|2|2|cell-valign|c>|<cwith|20|20|2|2|cell-halign|c>|<cwith|20|20|2|2|cell-valign|c>|<cwith|21|21|2|2|cell-halign|c>|<cwith|21|21|2|2|cell-valign|c>|<cwith|22|22|2|2|cell-halign|c>|<cwith|22|22|2|2|cell-valign|c>|<cwith|23|29|2|2|cell-halign|c>|<cwith|23|29|2|2|cell-valign|c>|<cwith|23|23|2|2|cell-halign|c>|<cwith|23|23|2|2|cell-valign|c>|<cwith|24|24|2|2|cell-halign|c>|<cwith|24|24|2|2|cell-valign|c>|<cwith|25|25|2|2|cell-halign|c>|<cwith|25|25|2|2|cell-valign|c>|<cwith|26|26|2|2|cell-halign|c>|<cwith|26|26|2|2|cell-valign|c>|<cwith|27|27|2|2|cell-halign|c>|<cwith|27|27|2|2|cell-valign|c>|<cwith|28|28|2|2|cell-halign|c>|<cwith|28|28|2|2|cell-valign|c>|<cwith|29|29|2|2|cell-halign|c>|<cwith|29|29|2|2|cell-valign|c>|<cwith|30|32|2|2|cell-halign|c>|<cwith|30|32|2|2|cell-valign|c>|<cwith|30|32|2|2|cell-halign|c>|<cwith|30|32|2|2|cell-valign|c>|<cwith|30|30|2|2|cell-halign|c>|<cwith|30|30|2|2|cell-valign|c>|<cwith|31|31|2|2|cell-halign|c>|<cwith|31|31|2|2|cell-valign|c>|<cwith|32|32|2|2|cell-halign|c>|<cwith|32|32|2|2|cell-valign|c>|<cwith|33|33|2|2|cell-halign|c>|<cwith|33|33|2|2|cell-valign|c>|<cwith|33|33|2|2|cell-halign|c>|<cwith|33|33|2|2|cell-valign|c>|<cwith|33|33|2|2|cell-halign|c>|<cwith|33|33|2|2|cell-valign|c>|<cwith|33|33|2|2|cell-halign|c>|<cwith|33|33|2|2|cell-valign|c>|<cwith|2|33|2|2|cell-background|pastel
  blue>|<cwith|33|33|2|2|cell-bborder|1ln>|<cwith|2|2|2|2|cell-tborder|1ln>|<cwith|2|2|9|12|cell-halign|c>|<cwith|2|2|9|12|cell-valign|c>|<cwith|2|2|9|12|cell-background|pastel
  green>|<cwith|2|2|12|12|cell-rborder|1ln>|<cwith|2|2|9|12|cell-tborder|1ln>|<cwith|2|2|9|12|cell-halign|c>|<cwith|2|2|9|12|cell-valign|c>|<cwith|2|2|9|12|cell-background|pastel
  green>|<cwith|2|2|12|12|cell-rborder|1ln>|<cwith|2|2|9|12|cell-tborder|1ln>|<cwith|3|3|9|12|cell-halign|c>|<cwith|3|3|9|12|cell-valign|c>|<cwith|3|3|9|12|cell-background|pastel
  green>|<cwith|3|3|12|12|cell-rborder|1ln>|<cwith|3|3|9|12|cell-halign|c>|<cwith|3|3|9|12|cell-valign|c>|<cwith|3|3|9|12|cell-background|pastel
  green>|<cwith|3|3|12|12|cell-rborder|1ln>|<cwith|4|4|9|12|cell-halign|c>|<cwith|4|4|9|12|cell-valign|c>|<cwith|4|4|9|12|cell-background|pastel
  green>|<cwith|4|4|12|12|cell-rborder|1ln>|<cwith|4|4|9|12|cell-halign|c>|<cwith|4|4|9|12|cell-valign|c>|<cwith|4|4|9|12|cell-background|pastel
  green>|<cwith|4|4|12|12|cell-rborder|1ln>|<cwith|4|4|9|12|cell-halign|c>|<cwith|4|4|9|12|cell-valign|c>|<cwith|4|4|9|12|cell-background|pastel
  green>|<cwith|4|4|12|12|cell-rborder|1ln>|<cwith|5|5|9|12|cell-halign|c>|<cwith|5|5|9|12|cell-valign|c>|<cwith|5|5|9|12|cell-background|pastel
  green>|<cwith|5|5|12|12|cell-rborder|1ln>|<cwith|5|5|9|12|cell-halign|c>|<cwith|5|5|9|12|cell-valign|c>|<cwith|5|5|9|12|cell-background|pastel
  green>|<cwith|5|5|12|12|cell-rborder|1ln>|<cwith|5|5|9|12|cell-halign|c>|<cwith|5|5|9|12|cell-valign|c>|<cwith|5|5|9|12|cell-background|pastel
  green>|<cwith|5|5|12|12|cell-rborder|1ln>|<cwith|5|5|9|12|cell-halign|c>|<cwith|5|5|9|12|cell-valign|c>|<cwith|5|5|9|12|cell-background|pastel
  green>|<cwith|5|5|12|12|cell-rborder|1ln>|<cwith|5|5|9|12|cell-halign|c>|<cwith|5|5|9|12|cell-valign|c>|<cwith|5|5|9|12|cell-background|pastel
  green>|<cwith|5|5|12|12|cell-rborder|1ln>|<cwith|5|5|9|12|cell-halign|c>|<cwith|5|5|9|12|cell-valign|c>|<cwith|5|5|9|12|cell-background|pastel
  green>|<cwith|5|5|12|12|cell-rborder|1ln>|<cwith|5|5|9|12|cell-halign|c>|<cwith|5|5|9|12|cell-valign|c>|<cwith|5|5|9|12|cell-background|pastel
  green>|<cwith|5|5|12|12|cell-rborder|1ln>|<cwith|5|5|9|12|cell-halign|c>|<cwith|5|5|9|12|cell-valign|c>|<cwith|5|5|9|12|cell-background|pastel
  green>|<cwith|5|5|12|12|cell-rborder|1ln>|<cwith|6|7|9|12|cell-halign|c>|<cwith|6|7|9|12|cell-valign|c>|<cwith|6|7|9|12|cell-background|pastel
  green>|<cwith|6|7|12|12|cell-rborder|1ln>|<cwith|6|6|9|12|cell-halign|c>|<cwith|6|6|9|12|cell-valign|c>|<cwith|6|6|9|12|cell-background|pastel
  green>|<cwith|6|6|12|12|cell-rborder|1ln>|<cwith|6|6|9|12|cell-halign|c>|<cwith|6|6|9|12|cell-valign|c>|<cwith|6|6|9|12|cell-background|pastel
  green>|<cwith|6|6|12|12|cell-rborder|1ln>|<cwith|6|6|9|12|cell-halign|c>|<cwith|6|6|9|12|cell-valign|c>|<cwith|6|6|9|12|cell-background|pastel
  green>|<cwith|6|6|12|12|cell-rborder|1ln>|<cwith|7|7|9|12|cell-halign|c>|<cwith|7|7|9|12|cell-valign|c>|<cwith|7|7|9|12|cell-background|pastel
  green>|<cwith|7|7|12|12|cell-rborder|1ln>|<cwith|7|7|9|12|cell-halign|c>|<cwith|7|7|9|12|cell-valign|c>|<cwith|7|7|9|12|cell-background|pastel
  green>|<cwith|7|7|12|12|cell-rborder|1ln>|<cwith|7|7|9|12|cell-halign|c>|<cwith|7|7|9|12|cell-valign|c>|<cwith|7|7|9|12|cell-background|pastel
  green>|<cwith|7|7|12|12|cell-rborder|1ln>|<cwith|7|7|9|12|cell-halign|c>|<cwith|7|7|9|12|cell-valign|c>|<cwith|7|7|9|12|cell-background|pastel
  green>|<cwith|7|7|12|12|cell-rborder|1ln>|<cwith|7|7|9|12|cell-halign|c>|<cwith|7|7|9|12|cell-valign|c>|<cwith|7|7|9|12|cell-background|pastel
  green>|<cwith|7|7|12|12|cell-rborder|1ln>|<cwith|7|7|9|12|cell-halign|c>|<cwith|7|7|9|12|cell-valign|c>|<cwith|7|7|9|12|cell-background|pastel
  green>|<cwith|7|7|12|12|cell-rborder|1ln>|<cwith|7|7|9|12|cell-halign|c>|<cwith|7|7|9|12|cell-valign|c>|<cwith|7|7|9|12|cell-background|pastel
  green>|<cwith|7|7|12|12|cell-rborder|1ln>|<cwith|7|7|9|12|cell-halign|c>|<cwith|7|7|9|12|cell-valign|c>|<cwith|7|7|9|12|cell-background|pastel
  green>|<cwith|7|7|12|12|cell-rborder|1ln>|<cwith|8|9|9|12|cell-halign|c>|<cwith|8|9|9|12|cell-valign|c>|<cwith|8|9|9|12|cell-background|pastel
  green>|<cwith|8|9|12|12|cell-rborder|1ln>|<cwith|8|8|9|12|cell-halign|c>|<cwith|8|8|9|12|cell-valign|c>|<cwith|8|8|9|12|cell-background|pastel
  green>|<cwith|8|8|12|12|cell-rborder|1ln>|<cwith|8|8|9|12|cell-halign|c>|<cwith|8|8|9|12|cell-valign|c>|<cwith|8|8|9|12|cell-background|pastel
  green>|<cwith|8|8|12|12|cell-rborder|1ln>|<cwith|8|8|9|12|cell-halign|c>|<cwith|8|8|9|12|cell-valign|c>|<cwith|8|8|9|12|cell-background|pastel
  green>|<cwith|8|8|12|12|cell-rborder|1ln>|<cwith|9|9|9|12|cell-halign|c>|<cwith|9|9|9|12|cell-valign|c>|<cwith|9|9|9|12|cell-background|pastel
  green>|<cwith|9|9|12|12|cell-rborder|1ln>|<cwith|9|9|9|12|cell-halign|c>|<cwith|9|9|9|12|cell-valign|c>|<cwith|9|9|9|12|cell-background|pastel
  green>|<cwith|9|9|12|12|cell-rborder|1ln>|<cwith|9|9|9|12|cell-halign|c>|<cwith|9|9|9|12|cell-valign|c>|<cwith|9|9|9|12|cell-background|pastel
  green>|<cwith|9|9|12|12|cell-rborder|1ln>|<cwith|9|9|9|12|cell-halign|c>|<cwith|9|9|9|12|cell-valign|c>|<cwith|9|9|9|12|cell-background|pastel
  green>|<cwith|9|9|12|12|cell-rborder|1ln>|<cwith|9|9|9|12|cell-halign|c>|<cwith|9|9|9|12|cell-valign|c>|<cwith|9|9|9|12|cell-background|pastel
  green>|<cwith|9|9|12|12|cell-rborder|1ln>|<cwith|9|9|9|12|cell-halign|c>|<cwith|9|9|9|12|cell-valign|c>|<cwith|9|9|9|12|cell-background|pastel
  green>|<cwith|9|9|12|12|cell-rborder|1ln>|<cwith|9|9|9|12|cell-halign|c>|<cwith|9|9|9|12|cell-valign|c>|<cwith|9|9|9|12|cell-background|pastel
  green>|<cwith|9|9|12|12|cell-rborder|1ln>|<cwith|9|9|9|12|cell-halign|c>|<cwith|9|9|9|12|cell-valign|c>|<cwith|9|9|9|12|cell-background|pastel
  green>|<cwith|9|9|12|12|cell-rborder|1ln>|<cwith|10|11|9|12|cell-halign|c>|<cwith|10|11|9|12|cell-valign|c>|<cwith|10|11|9|12|cell-background|pastel
  green>|<cwith|10|11|12|12|cell-rborder|1ln>|<cwith|10|10|9|12|cell-halign|c>|<cwith|10|10|9|12|cell-valign|c>|<cwith|10|10|9|12|cell-background|pastel
  green>|<cwith|10|10|12|12|cell-rborder|1ln>|<cwith|10|10|9|12|cell-halign|c>|<cwith|10|10|9|12|cell-valign|c>|<cwith|10|10|9|12|cell-background|pastel
  green>|<cwith|10|10|12|12|cell-rborder|1ln>|<cwith|10|10|9|12|cell-halign|c>|<cwith|10|10|9|12|cell-valign|c>|<cwith|10|10|9|12|cell-background|pastel
  green>|<cwith|10|10|12|12|cell-rborder|1ln>|<cwith|11|11|9|12|cell-halign|c>|<cwith|11|11|9|12|cell-valign|c>|<cwith|11|11|9|12|cell-background|pastel
  green>|<cwith|11|11|12|12|cell-rborder|1ln>|<cwith|11|11|9|12|cell-halign|c>|<cwith|11|11|9|12|cell-valign|c>|<cwith|11|11|9|12|cell-background|pastel
  green>|<cwith|11|11|12|12|cell-rborder|1ln>|<cwith|11|11|9|12|cell-halign|c>|<cwith|11|11|9|12|cell-valign|c>|<cwith|11|11|9|12|cell-background|pastel
  green>|<cwith|11|11|12|12|cell-rborder|1ln>|<cwith|11|11|9|12|cell-halign|c>|<cwith|11|11|9|12|cell-valign|c>|<cwith|11|11|9|12|cell-background|pastel
  green>|<cwith|11|11|12|12|cell-rborder|1ln>|<cwith|11|11|9|12|cell-halign|c>|<cwith|11|11|9|12|cell-valign|c>|<cwith|11|11|9|12|cell-background|pastel
  green>|<cwith|11|11|12|12|cell-rborder|1ln>|<cwith|11|11|9|12|cell-halign|c>|<cwith|11|11|9|12|cell-valign|c>|<cwith|11|11|9|12|cell-background|pastel
  green>|<cwith|11|11|12|12|cell-rborder|1ln>|<cwith|11|11|9|12|cell-halign|c>|<cwith|11|11|9|12|cell-valign|c>|<cwith|11|11|9|12|cell-background|pastel
  green>|<cwith|11|11|12|12|cell-rborder|1ln>|<cwith|11|11|9|12|cell-halign|c>|<cwith|11|11|9|12|cell-valign|c>|<cwith|11|11|9|12|cell-background|pastel
  green>|<cwith|11|11|12|12|cell-rborder|1ln>|<cwith|12|13|9|12|cell-halign|c>|<cwith|12|13|9|12|cell-valign|c>|<cwith|12|13|9|12|cell-background|pastel
  green>|<cwith|12|13|12|12|cell-rborder|1ln>|<cwith|12|12|9|12|cell-halign|c>|<cwith|12|12|9|12|cell-valign|c>|<cwith|12|12|9|12|cell-background|pastel
  green>|<cwith|12|12|12|12|cell-rborder|1ln>|<cwith|12|12|9|12|cell-halign|c>|<cwith|12|12|9|12|cell-valign|c>|<cwith|12|12|9|12|cell-background|pastel
  green>|<cwith|12|12|12|12|cell-rborder|1ln>|<cwith|12|12|9|12|cell-halign|c>|<cwith|12|12|9|12|cell-valign|c>|<cwith|12|12|9|12|cell-background|pastel
  green>|<cwith|12|12|12|12|cell-rborder|1ln>|<cwith|13|13|9|12|cell-halign|c>|<cwith|13|13|9|12|cell-valign|c>|<cwith|13|13|9|12|cell-background|pastel
  green>|<cwith|13|13|12|12|cell-rborder|1ln>|<cwith|13|13|9|12|cell-halign|c>|<cwith|13|13|9|12|cell-valign|c>|<cwith|13|13|9|12|cell-background|pastel
  green>|<cwith|13|13|12|12|cell-rborder|1ln>|<cwith|13|13|9|12|cell-halign|c>|<cwith|13|13|9|12|cell-valign|c>|<cwith|13|13|9|12|cell-background|pastel
  green>|<cwith|13|13|12|12|cell-rborder|1ln>|<cwith|13|13|9|12|cell-halign|c>|<cwith|13|13|9|12|cell-valign|c>|<cwith|13|13|9|12|cell-background|pastel
  green>|<cwith|13|13|12|12|cell-rborder|1ln>|<cwith|13|13|9|12|cell-halign|c>|<cwith|13|13|9|12|cell-valign|c>|<cwith|13|13|9|12|cell-background|pastel
  green>|<cwith|13|13|12|12|cell-rborder|1ln>|<cwith|13|13|9|12|cell-halign|c>|<cwith|13|13|9|12|cell-valign|c>|<cwith|13|13|9|12|cell-background|pastel
  green>|<cwith|13|13|12|12|cell-rborder|1ln>|<cwith|13|13|9|12|cell-halign|c>|<cwith|13|13|9|12|cell-valign|c>|<cwith|13|13|9|12|cell-background|pastel
  green>|<cwith|13|13|12|12|cell-rborder|1ln>|<cwith|13|13|9|12|cell-halign|c>|<cwith|13|13|9|12|cell-valign|c>|<cwith|13|13|9|12|cell-background|pastel
  green>|<cwith|13|13|12|12|cell-rborder|1ln>|<cwith|14|15|9|12|cell-halign|c>|<cwith|14|15|9|12|cell-valign|c>|<cwith|14|15|9|12|cell-background|pastel
  green>|<cwith|14|15|12|12|cell-rborder|1ln>|<cwith|14|14|9|12|cell-halign|c>|<cwith|14|14|9|12|cell-valign|c>|<cwith|14|14|9|12|cell-background|pastel
  green>|<cwith|14|14|12|12|cell-rborder|1ln>|<cwith|14|14|9|12|cell-halign|c>|<cwith|14|14|9|12|cell-valign|c>|<cwith|14|14|9|12|cell-background|pastel
  green>|<cwith|14|14|12|12|cell-rborder|1ln>|<cwith|14|14|9|12|cell-halign|c>|<cwith|14|14|9|12|cell-valign|c>|<cwith|14|14|9|12|cell-background|pastel
  green>|<cwith|14|14|12|12|cell-rborder|1ln>|<cwith|15|15|9|12|cell-halign|c>|<cwith|15|15|9|12|cell-valign|c>|<cwith|15|15|9|12|cell-background|pastel
  green>|<cwith|15|15|12|12|cell-rborder|1ln>|<cwith|15|15|9|12|cell-halign|c>|<cwith|15|15|9|12|cell-valign|c>|<cwith|15|15|9|12|cell-background|pastel
  green>|<cwith|15|15|12|12|cell-rborder|1ln>|<cwith|15|15|9|12|cell-halign|c>|<cwith|15|15|9|12|cell-valign|c>|<cwith|15|15|9|12|cell-background|pastel
  green>|<cwith|15|15|12|12|cell-rborder|1ln>|<cwith|15|15|9|12|cell-halign|c>|<cwith|15|15|9|12|cell-valign|c>|<cwith|15|15|9|12|cell-background|pastel
  green>|<cwith|15|15|12|12|cell-rborder|1ln>|<cwith|15|15|9|12|cell-halign|c>|<cwith|15|15|9|12|cell-valign|c>|<cwith|15|15|9|12|cell-background|pastel
  green>|<cwith|15|15|12|12|cell-rborder|1ln>|<cwith|15|15|9|12|cell-halign|c>|<cwith|15|15|9|12|cell-valign|c>|<cwith|15|15|9|12|cell-background|pastel
  green>|<cwith|15|15|12|12|cell-rborder|1ln>|<cwith|15|15|9|12|cell-halign|c>|<cwith|15|15|9|12|cell-valign|c>|<cwith|15|15|9|12|cell-background|pastel
  green>|<cwith|15|15|12|12|cell-rborder|1ln>|<cwith|15|15|9|12|cell-halign|c>|<cwith|15|15|9|12|cell-valign|c>|<cwith|15|15|9|12|cell-background|pastel
  green>|<cwith|15|15|12|12|cell-rborder|1ln>|<cwith|16|17|9|12|cell-halign|c>|<cwith|16|17|9|12|cell-valign|c>|<cwith|16|17|9|12|cell-background|pastel
  green>|<cwith|16|17|12|12|cell-rborder|1ln>|<cwith|16|16|9|12|cell-halign|c>|<cwith|16|16|9|12|cell-valign|c>|<cwith|16|16|9|12|cell-background|pastel
  green>|<cwith|16|16|12|12|cell-rborder|1ln>|<cwith|16|16|9|12|cell-halign|c>|<cwith|16|16|9|12|cell-valign|c>|<cwith|16|16|9|12|cell-background|pastel
  green>|<cwith|16|16|12|12|cell-rborder|1ln>|<cwith|16|16|9|12|cell-halign|c>|<cwith|16|16|9|12|cell-valign|c>|<cwith|16|16|9|12|cell-background|pastel
  green>|<cwith|16|16|12|12|cell-rborder|1ln>|<cwith|17|17|9|12|cell-halign|c>|<cwith|17|17|9|12|cell-valign|c>|<cwith|17|17|9|12|cell-background|pastel
  green>|<cwith|17|17|12|12|cell-rborder|1ln>|<cwith|17|17|9|12|cell-halign|c>|<cwith|17|17|9|12|cell-valign|c>|<cwith|17|17|9|12|cell-background|pastel
  green>|<cwith|17|17|12|12|cell-rborder|1ln>|<cwith|17|17|9|12|cell-halign|c>|<cwith|17|17|9|12|cell-valign|c>|<cwith|17|17|9|12|cell-background|pastel
  green>|<cwith|17|17|12|12|cell-rborder|1ln>|<cwith|17|17|9|12|cell-halign|c>|<cwith|17|17|9|12|cell-valign|c>|<cwith|17|17|9|12|cell-background|pastel
  green>|<cwith|17|17|12|12|cell-rborder|1ln>|<cwith|17|17|9|12|cell-halign|c>|<cwith|17|17|9|12|cell-valign|c>|<cwith|17|17|9|12|cell-background|pastel
  green>|<cwith|17|17|12|12|cell-rborder|1ln>|<cwith|17|17|9|12|cell-halign|c>|<cwith|17|17|9|12|cell-valign|c>|<cwith|17|17|9|12|cell-background|pastel
  green>|<cwith|17|17|12|12|cell-rborder|1ln>|<cwith|17|17|9|12|cell-halign|c>|<cwith|17|17|9|12|cell-valign|c>|<cwith|17|17|9|12|cell-background|pastel
  green>|<cwith|17|17|12|12|cell-rborder|1ln>|<cwith|17|17|9|12|cell-halign|c>|<cwith|17|17|9|12|cell-valign|c>|<cwith|17|17|9|12|cell-background|pastel
  green>|<cwith|17|17|12|12|cell-rborder|1ln>|<cwith|18|19|9|12|cell-halign|c>|<cwith|18|19|9|12|cell-valign|c>|<cwith|18|19|9|12|cell-background|pastel
  green>|<cwith|18|19|12|12|cell-rborder|1ln>|<cwith|18|18|9|12|cell-halign|c>|<cwith|18|18|9|12|cell-valign|c>|<cwith|18|18|9|12|cell-background|pastel
  green>|<cwith|18|18|12|12|cell-rborder|1ln>|<cwith|18|18|9|12|cell-halign|c>|<cwith|18|18|9|12|cell-valign|c>|<cwith|18|18|9|12|cell-background|pastel
  green>|<cwith|18|18|12|12|cell-rborder|1ln>|<cwith|18|18|9|12|cell-halign|c>|<cwith|18|18|9|12|cell-valign|c>|<cwith|18|18|9|12|cell-background|pastel
  green>|<cwith|18|18|12|12|cell-rborder|1ln>|<cwith|19|19|9|12|cell-halign|c>|<cwith|19|19|9|12|cell-valign|c>|<cwith|19|19|9|12|cell-background|pastel
  green>|<cwith|19|19|12|12|cell-rborder|1ln>|<cwith|19|19|9|12|cell-halign|c>|<cwith|19|19|9|12|cell-valign|c>|<cwith|19|19|9|12|cell-background|pastel
  green>|<cwith|19|19|12|12|cell-rborder|1ln>|<cwith|19|19|9|12|cell-halign|c>|<cwith|19|19|9|12|cell-valign|c>|<cwith|19|19|9|12|cell-background|pastel
  green>|<cwith|19|19|12|12|cell-rborder|1ln>|<cwith|19|19|9|12|cell-halign|c>|<cwith|19|19|9|12|cell-valign|c>|<cwith|19|19|9|12|cell-background|pastel
  green>|<cwith|19|19|12|12|cell-rborder|1ln>|<cwith|19|19|9|12|cell-halign|c>|<cwith|19|19|9|12|cell-valign|c>|<cwith|19|19|9|12|cell-background|pastel
  green>|<cwith|19|19|12|12|cell-rborder|1ln>|<cwith|19|19|9|12|cell-halign|c>|<cwith|19|19|9|12|cell-valign|c>|<cwith|19|19|9|12|cell-background|pastel
  green>|<cwith|19|19|12|12|cell-rborder|1ln>|<cwith|19|19|9|12|cell-halign|c>|<cwith|19|19|9|12|cell-valign|c>|<cwith|19|19|9|12|cell-background|pastel
  green>|<cwith|19|19|12|12|cell-rborder|1ln>|<cwith|19|19|9|12|cell-halign|c>|<cwith|19|19|9|12|cell-valign|c>|<cwith|19|19|9|12|cell-background|pastel
  green>|<cwith|19|19|12|12|cell-rborder|1ln>|<cwith|20|21|9|12|cell-halign|c>|<cwith|20|21|9|12|cell-valign|c>|<cwith|20|21|9|12|cell-background|pastel
  green>|<cwith|20|21|12|12|cell-rborder|1ln>|<cwith|20|20|9|12|cell-halign|c>|<cwith|20|20|9|12|cell-valign|c>|<cwith|20|20|9|12|cell-background|pastel
  green>|<cwith|20|20|12|12|cell-rborder|1ln>|<cwith|20|20|9|12|cell-halign|c>|<cwith|20|20|9|12|cell-valign|c>|<cwith|20|20|9|12|cell-background|pastel
  green>|<cwith|20|20|12|12|cell-rborder|1ln>|<cwith|20|20|9|12|cell-halign|c>|<cwith|20|20|9|12|cell-valign|c>|<cwith|20|20|9|12|cell-background|pastel
  green>|<cwith|20|20|12|12|cell-rborder|1ln>|<cwith|21|21|9|12|cell-halign|c>|<cwith|21|21|9|12|cell-valign|c>|<cwith|21|21|9|12|cell-background|pastel
  green>|<cwith|21|21|12|12|cell-rborder|1ln>|<cwith|21|21|9|12|cell-halign|c>|<cwith|21|21|9|12|cell-valign|c>|<cwith|21|21|9|12|cell-background|pastel
  green>|<cwith|21|21|12|12|cell-rborder|1ln>|<cwith|21|21|9|12|cell-halign|c>|<cwith|21|21|9|12|cell-valign|c>|<cwith|21|21|9|12|cell-background|pastel
  green>|<cwith|21|21|12|12|cell-rborder|1ln>|<cwith|21|21|9|12|cell-halign|c>|<cwith|21|21|9|12|cell-valign|c>|<cwith|21|21|9|12|cell-background|pastel
  green>|<cwith|21|21|12|12|cell-rborder|1ln>|<cwith|21|21|9|12|cell-halign|c>|<cwith|21|21|9|12|cell-valign|c>|<cwith|21|21|9|12|cell-background|pastel
  green>|<cwith|21|21|12|12|cell-rborder|1ln>|<cwith|21|21|9|12|cell-halign|c>|<cwith|21|21|9|12|cell-valign|c>|<cwith|21|21|9|12|cell-background|pastel
  green>|<cwith|21|21|12|12|cell-rborder|1ln>|<cwith|21|21|9|12|cell-halign|c>|<cwith|21|21|9|12|cell-valign|c>|<cwith|21|21|9|12|cell-background|pastel
  green>|<cwith|21|21|12|12|cell-rborder|1ln>|<cwith|21|21|9|12|cell-halign|c>|<cwith|21|21|9|12|cell-valign|c>|<cwith|21|21|9|12|cell-background|pastel
  green>|<cwith|21|21|12|12|cell-rborder|1ln>|<cwith|22|23|9|12|cell-halign|c>|<cwith|22|23|9|12|cell-valign|c>|<cwith|22|23|9|12|cell-background|pastel
  green>|<cwith|22|23|12|12|cell-rborder|1ln>|<cwith|22|22|9|12|cell-halign|c>|<cwith|22|22|9|12|cell-valign|c>|<cwith|22|22|9|12|cell-background|pastel
  green>|<cwith|22|22|12|12|cell-rborder|1ln>|<cwith|22|22|9|12|cell-halign|c>|<cwith|22|22|9|12|cell-valign|c>|<cwith|22|22|9|12|cell-background|pastel
  green>|<cwith|22|22|12|12|cell-rborder|1ln>|<cwith|22|22|9|12|cell-halign|c>|<cwith|22|22|9|12|cell-valign|c>|<cwith|22|22|9|12|cell-background|pastel
  green>|<cwith|22|22|12|12|cell-rborder|1ln>|<cwith|23|23|9|12|cell-halign|c>|<cwith|23|23|9|12|cell-valign|c>|<cwith|23|23|9|12|cell-background|pastel
  green>|<cwith|23|23|12|12|cell-rborder|1ln>|<cwith|23|23|9|12|cell-halign|c>|<cwith|23|23|9|12|cell-valign|c>|<cwith|23|23|9|12|cell-background|pastel
  green>|<cwith|23|23|12|12|cell-rborder|1ln>|<cwith|23|23|9|12|cell-halign|c>|<cwith|23|23|9|12|cell-valign|c>|<cwith|23|23|9|12|cell-background|pastel
  green>|<cwith|23|23|12|12|cell-rborder|1ln>|<cwith|23|23|9|12|cell-halign|c>|<cwith|23|23|9|12|cell-valign|c>|<cwith|23|23|9|12|cell-background|pastel
  green>|<cwith|23|23|12|12|cell-rborder|1ln>|<cwith|23|23|9|12|cell-halign|c>|<cwith|23|23|9|12|cell-valign|c>|<cwith|23|23|9|12|cell-background|pastel
  green>|<cwith|23|23|12|12|cell-rborder|1ln>|<cwith|23|23|9|12|cell-halign|c>|<cwith|23|23|9|12|cell-valign|c>|<cwith|23|23|9|12|cell-background|pastel
  green>|<cwith|23|23|12|12|cell-rborder|1ln>|<cwith|23|23|9|12|cell-halign|c>|<cwith|23|23|9|12|cell-valign|c>|<cwith|23|23|9|12|cell-background|pastel
  green>|<cwith|23|23|12|12|cell-rborder|1ln>|<cwith|23|23|9|12|cell-halign|c>|<cwith|23|23|9|12|cell-valign|c>|<cwith|23|23|9|12|cell-background|pastel
  green>|<cwith|23|23|12|12|cell-rborder|1ln>|<cwith|24|25|9|12|cell-halign|c>|<cwith|24|25|9|12|cell-valign|c>|<cwith|24|25|9|12|cell-background|pastel
  green>|<cwith|24|25|12|12|cell-rborder|1ln>|<cwith|24|24|9|12|cell-halign|c>|<cwith|24|24|9|12|cell-valign|c>|<cwith|24|24|9|12|cell-background|pastel
  green>|<cwith|24|24|12|12|cell-rborder|1ln>|<cwith|24|24|9|12|cell-halign|c>|<cwith|24|24|9|12|cell-valign|c>|<cwith|24|24|9|12|cell-background|pastel
  green>|<cwith|24|24|12|12|cell-rborder|1ln>|<cwith|24|24|9|12|cell-halign|c>|<cwith|24|24|9|12|cell-valign|c>|<cwith|24|24|9|12|cell-background|pastel
  green>|<cwith|24|24|12|12|cell-rborder|1ln>|<cwith|25|25|9|12|cell-halign|c>|<cwith|25|25|9|12|cell-valign|c>|<cwith|25|25|9|12|cell-background|pastel
  green>|<cwith|25|25|12|12|cell-rborder|1ln>|<cwith|25|25|9|12|cell-halign|c>|<cwith|25|25|9|12|cell-valign|c>|<cwith|25|25|9|12|cell-background|pastel
  green>|<cwith|25|25|12|12|cell-rborder|1ln>|<cwith|25|25|9|12|cell-halign|c>|<cwith|25|25|9|12|cell-valign|c>|<cwith|25|25|9|12|cell-background|pastel
  green>|<cwith|25|25|12|12|cell-rborder|1ln>|<cwith|25|25|9|12|cell-halign|c>|<cwith|25|25|9|12|cell-valign|c>|<cwith|25|25|9|12|cell-background|pastel
  green>|<cwith|25|25|12|12|cell-rborder|1ln>|<cwith|25|25|9|12|cell-halign|c>|<cwith|25|25|9|12|cell-valign|c>|<cwith|25|25|9|12|cell-background|pastel
  green>|<cwith|25|25|12|12|cell-rborder|1ln>|<cwith|25|25|9|12|cell-halign|c>|<cwith|25|25|9|12|cell-valign|c>|<cwith|25|25|9|12|cell-background|pastel
  green>|<cwith|25|25|12|12|cell-rborder|1ln>|<cwith|25|25|9|12|cell-halign|c>|<cwith|25|25|9|12|cell-valign|c>|<cwith|25|25|9|12|cell-background|pastel
  green>|<cwith|25|25|12|12|cell-rborder|1ln>|<cwith|25|25|9|12|cell-halign|c>|<cwith|25|25|9|12|cell-valign|c>|<cwith|25|25|9|12|cell-background|pastel
  green>|<cwith|25|25|12|12|cell-rborder|1ln>|<cwith|26|27|9|12|cell-halign|c>|<cwith|26|27|9|12|cell-valign|c>|<cwith|26|27|9|12|cell-background|pastel
  green>|<cwith|26|27|12|12|cell-rborder|1ln>|<cwith|26|26|9|12|cell-halign|c>|<cwith|26|26|9|12|cell-valign|c>|<cwith|26|26|9|12|cell-background|pastel
  green>|<cwith|26|26|12|12|cell-rborder|1ln>|<cwith|26|26|9|12|cell-halign|c>|<cwith|26|26|9|12|cell-valign|c>|<cwith|26|26|9|12|cell-background|pastel
  green>|<cwith|26|26|12|12|cell-rborder|1ln>|<cwith|26|26|9|12|cell-halign|c>|<cwith|26|26|9|12|cell-valign|c>|<cwith|26|26|9|12|cell-background|pastel
  green>|<cwith|26|26|12|12|cell-rborder|1ln>|<cwith|27|27|9|12|cell-halign|c>|<cwith|27|27|9|12|cell-valign|c>|<cwith|27|27|9|12|cell-background|pastel
  green>|<cwith|27|27|12|12|cell-rborder|1ln>|<cwith|27|27|9|12|cell-halign|c>|<cwith|27|27|9|12|cell-valign|c>|<cwith|27|27|9|12|cell-background|pastel
  green>|<cwith|27|27|12|12|cell-rborder|1ln>|<cwith|27|27|9|12|cell-halign|c>|<cwith|27|27|9|12|cell-valign|c>|<cwith|27|27|9|12|cell-background|pastel
  green>|<cwith|27|27|12|12|cell-rborder|1ln>|<cwith|27|27|9|12|cell-halign|c>|<cwith|27|27|9|12|cell-valign|c>|<cwith|27|27|9|12|cell-background|pastel
  green>|<cwith|27|27|12|12|cell-rborder|1ln>|<cwith|27|27|9|12|cell-halign|c>|<cwith|27|27|9|12|cell-valign|c>|<cwith|27|27|9|12|cell-background|pastel
  green>|<cwith|27|27|12|12|cell-rborder|1ln>|<cwith|27|27|9|12|cell-halign|c>|<cwith|27|27|9|12|cell-valign|c>|<cwith|27|27|9|12|cell-background|pastel
  green>|<cwith|27|27|12|12|cell-rborder|1ln>|<cwith|27|27|9|12|cell-halign|c>|<cwith|27|27|9|12|cell-valign|c>|<cwith|27|27|9|12|cell-background|pastel
  green>|<cwith|27|27|12|12|cell-rborder|1ln>|<cwith|27|27|9|12|cell-halign|c>|<cwith|27|27|9|12|cell-valign|c>|<cwith|27|27|9|12|cell-background|pastel
  green>|<cwith|27|27|12|12|cell-rborder|1ln>|<cwith|28|29|9|12|cell-halign|c>|<cwith|28|29|9|12|cell-valign|c>|<cwith|28|29|9|12|cell-background|pastel
  green>|<cwith|28|29|12|12|cell-rborder|1ln>|<cwith|28|28|9|12|cell-halign|c>|<cwith|28|28|9|12|cell-valign|c>|<cwith|28|28|9|12|cell-background|pastel
  green>|<cwith|28|28|12|12|cell-rborder|1ln>|<cwith|28|28|9|12|cell-halign|c>|<cwith|28|28|9|12|cell-valign|c>|<cwith|28|28|9|12|cell-background|pastel
  green>|<cwith|28|28|12|12|cell-rborder|1ln>|<cwith|28|28|9|12|cell-halign|c>|<cwith|28|28|9|12|cell-valign|c>|<cwith|28|28|9|12|cell-background|pastel
  green>|<cwith|28|28|12|12|cell-rborder|1ln>|<cwith|29|29|9|12|cell-halign|c>|<cwith|29|29|9|12|cell-valign|c>|<cwith|29|29|9|12|cell-background|pastel
  green>|<cwith|29|29|12|12|cell-rborder|1ln>|<cwith|29|29|9|12|cell-halign|c>|<cwith|29|29|9|12|cell-valign|c>|<cwith|29|29|9|12|cell-background|pastel
  green>|<cwith|29|29|12|12|cell-rborder|1ln>|<cwith|29|29|9|12|cell-halign|c>|<cwith|29|29|9|12|cell-valign|c>|<cwith|29|29|9|12|cell-background|pastel
  green>|<cwith|29|29|12|12|cell-rborder|1ln>|<cwith|29|29|9|12|cell-halign|c>|<cwith|29|29|9|12|cell-valign|c>|<cwith|29|29|9|12|cell-background|pastel
  green>|<cwith|29|29|12|12|cell-rborder|1ln>|<cwith|29|29|9|12|cell-halign|c>|<cwith|29|29|9|12|cell-valign|c>|<cwith|29|29|9|12|cell-background|pastel
  green>|<cwith|29|29|12|12|cell-rborder|1ln>|<cwith|29|29|9|12|cell-halign|c>|<cwith|29|29|9|12|cell-valign|c>|<cwith|29|29|9|12|cell-background|pastel
  green>|<cwith|29|29|12|12|cell-rborder|1ln>|<cwith|29|29|9|12|cell-halign|c>|<cwith|29|29|9|12|cell-valign|c>|<cwith|29|29|9|12|cell-background|pastel
  green>|<cwith|29|29|12|12|cell-rborder|1ln>|<cwith|29|29|9|12|cell-halign|c>|<cwith|29|29|9|12|cell-valign|c>|<cwith|29|29|9|12|cell-background|pastel
  green>|<cwith|29|29|12|12|cell-rborder|1ln>|<cwith|30|31|9|12|cell-halign|c>|<cwith|30|31|9|12|cell-valign|c>|<cwith|30|31|9|12|cell-background|pastel
  green>|<cwith|30|31|12|12|cell-rborder|1ln>|<cwith|30|30|9|12|cell-halign|c>|<cwith|30|30|9|12|cell-valign|c>|<cwith|30|30|9|12|cell-background|pastel
  green>|<cwith|30|30|12|12|cell-rborder|1ln>|<cwith|30|30|9|12|cell-halign|c>|<cwith|30|30|9|12|cell-valign|c>|<cwith|30|30|9|12|cell-background|pastel
  green>|<cwith|30|30|12|12|cell-rborder|1ln>|<cwith|30|30|9|12|cell-halign|c>|<cwith|30|30|9|12|cell-valign|c>|<cwith|30|30|9|12|cell-background|pastel
  green>|<cwith|30|30|12|12|cell-rborder|1ln>|<cwith|31|31|9|12|cell-halign|c>|<cwith|31|31|9|12|cell-valign|c>|<cwith|31|31|9|12|cell-background|pastel
  green>|<cwith|31|31|12|12|cell-rborder|1ln>|<cwith|31|31|9|12|cell-halign|c>|<cwith|31|31|9|12|cell-valign|c>|<cwith|31|31|9|12|cell-background|pastel
  green>|<cwith|31|31|12|12|cell-rborder|1ln>|<cwith|31|31|9|12|cell-halign|c>|<cwith|31|31|9|12|cell-valign|c>|<cwith|31|31|9|12|cell-background|pastel
  green>|<cwith|31|31|12|12|cell-rborder|1ln>|<cwith|31|31|9|12|cell-halign|c>|<cwith|31|31|9|12|cell-valign|c>|<cwith|31|31|9|12|cell-background|pastel
  green>|<cwith|31|31|12|12|cell-rborder|1ln>|<cwith|31|31|9|12|cell-halign|c>|<cwith|31|31|9|12|cell-valign|c>|<cwith|31|31|9|12|cell-background|pastel
  green>|<cwith|31|31|12|12|cell-rborder|1ln>|<cwith|31|31|9|12|cell-halign|c>|<cwith|31|31|9|12|cell-valign|c>|<cwith|31|31|9|12|cell-background|pastel
  green>|<cwith|31|31|12|12|cell-rborder|1ln>|<cwith|31|31|9|12|cell-halign|c>|<cwith|31|31|9|12|cell-valign|c>|<cwith|31|31|9|12|cell-background|pastel
  green>|<cwith|31|31|12|12|cell-rborder|1ln>|<cwith|31|31|9|12|cell-halign|c>|<cwith|31|31|9|12|cell-valign|c>|<cwith|31|31|9|12|cell-background|pastel
  green>|<cwith|31|31|12|12|cell-rborder|1ln>|<cwith|32|33|9|12|cell-halign|c>|<cwith|32|33|9|12|cell-valign|c>|<cwith|32|33|9|12|cell-background|pastel
  green>|<cwith|32|33|12|12|cell-rborder|1ln>|<cwith|32|32|9|12|cell-halign|c>|<cwith|32|32|9|12|cell-valign|c>|<cwith|32|32|9|12|cell-background|pastel
  green>|<cwith|32|32|12|12|cell-rborder|1ln>|<cwith|32|32|9|12|cell-halign|c>|<cwith|32|32|9|12|cell-valign|c>|<cwith|32|32|9|12|cell-background|pastel
  green>|<cwith|32|32|12|12|cell-rborder|1ln>|<cwith|32|32|9|12|cell-halign|c>|<cwith|32|32|9|12|cell-valign|c>|<cwith|32|32|9|12|cell-background|pastel
  green>|<cwith|32|32|12|12|cell-rborder|1ln>|<cwith|33|33|9|12|cell-halign|c>|<cwith|33|33|9|12|cell-valign|c>|<cwith|33|33|9|12|cell-background|pastel
  green>|<cwith|33|33|12|12|cell-rborder|1ln>|<cwith|33|33|9|12|cell-halign|c>|<cwith|33|33|9|12|cell-valign|c>|<cwith|33|33|9|12|cell-background|pastel
  green>|<cwith|33|33|12|12|cell-rborder|1ln>|<cwith|33|33|9|12|cell-halign|c>|<cwith|33|33|9|12|cell-valign|c>|<cwith|33|33|9|12|cell-background|pastel
  green>|<cwith|33|33|12|12|cell-rborder|1ln>|<cwith|33|33|9|12|cell-halign|c>|<cwith|33|33|9|12|cell-valign|c>|<cwith|33|33|9|12|cell-background|pastel
  green>|<cwith|33|33|12|12|cell-rborder|1ln>|<cwith|33|33|9|12|cell-halign|c>|<cwith|33|33|9|12|cell-valign|c>|<cwith|33|33|9|12|cell-background|pastel
  green>|<cwith|33|33|12|12|cell-rborder|1ln>|<cwith|33|33|9|12|cell-halign|c>|<cwith|33|33|9|12|cell-valign|c>|<cwith|33|33|9|12|cell-background|pastel
  green>|<cwith|33|33|12|12|cell-rborder|1ln>|<cwith|33|33|9|12|cell-halign|c>|<cwith|33|33|9|12|cell-valign|c>|<cwith|33|33|9|12|cell-background|pastel
  green>|<cwith|33|33|12|12|cell-rborder|1ln>|<cwith|33|33|9|12|cell-halign|c>|<cwith|33|33|9|12|cell-valign|c>|<cwith|33|33|9|12|cell-background|pastel
  green>|<cwith|33|33|12|12|cell-rborder|1ln>|<cwith|2|2|1|1|cell-tborder|1ln>|<cwith|1|1|1|1|cell-bborder|1ln>|<cwith|33|33|1|1|cell-bborder|1ln>|<cwith|2|-1|1|1|cell-lborder|1ln>|<cwith|2|-1|1|1|cell-rborder|0ln>|<cwith|2|-1|2|2|cell-lborder|0ln>|<table|<row|<cell|a<rsub|2>>|<cell|a<rsub|1>>|<cell|a<rsub|0>>|<cell|R<rsub|0>>|<cell|R<rsub|1>>|<cell|R<rsub|2>>|<cell|R<rsub|3>>|<cell|R<rsub|VIP>>|<cell|UP>|<cell|STOP>|<cell|DOWN>|<cell|HEX>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|<shell|0x0>>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|<shell|0x2>>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|<shell|0x1>>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|<shell|0x3>>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|<shell|0x1>>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|<shell|0x3>>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|<shell|0x1>>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<shell|0x3>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|<shell|0x1>>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|<shell|0x3>>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|<shell|0x1>>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<shell|0x3>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|<shell|0x1>>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|<shell|0x3>>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|<shell|0x1>>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|<shell|0x3>>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|<shell|0x1>>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|<shell|0x3>>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|<shell|0x1>>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|<shell|0x3>>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|<shell|0x1>>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|<shell|0x3>>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|<shell|0x1>>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|<shell|0x3>>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|<shell|0x1>>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|<shell|0x3>>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|<shell|0x1>>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|<shell|0x3>>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|<shell|0x1>>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|<shell|0x3>>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|<shell|0x1>>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|<shell|0x3>>>>>>>>>>>>|Tabella
  di verità del comparatore per <math|a<rsub|2>=1,a<rsub|1>=0,a<rsub|0>=0>>

  per implementare il comparatore verrà impiegata una ROM (Read Only Memory)
  pertanto occorre settare le seguenti impostazioni:

  <big-figure|<image|imgs/settings-rom-comparator.png|0.3par|||>|Impostazioni
  ROM per il comparatore>

  inserendo nel campo <shell|Data> la colonna HEX delle precedenti <math|5>
  tabelle. Pertanto il circuito finale è il seguente:

  <big-figure|<image|imgs/requests-management.png|0.8par|||>|Gestione delle
  richieste<label|requests-management>>

  <subsection|Bufferizzazione della direzione>

  A questo punto la questione è un po' delicata. Dobbiamo trovare un modo per
  memorizzare (e già questo ci dà un'indicazione importante) da quale
  direzione l'ascensore arriva ad un generico piano <math|x>. Cioè se è
  arrivata dai piani alti oppure dai piani bassi. O meglio, se una volta
  arrivata ad un piano <math|x> essa era ad un piano <math|x+i> oppure
  <math|x-i>, con <math|i\<in\><around*|[|0,4|]>> (dove l'estremo superiore
  <math|4> sarebbe il <with|font-shape|italic|piano VIP>). Quindi ci serve un
  segnale che deve essere attivato e memorizzato quando la direzione è verso
  il basso (il caso verso l'alto si manifesta per dualità perchè se
  l'ascensore non ha la direzione verso il basso deve per forza averla verso
  l'alto), per indicare al piano di arrivo che ci siamo arrivati andando
  verso il basso. Tale segnale, che indicheremo con <math|WAS<rsub|DOWN>>,
  può essere memorizzato in un flip-flop SR, ma da chi viene settato e/o
  resettato? Avremo bisogno di altri due segnali dedicati. Il segnale che si
  occuperà di settare <math|WAS<rsub|DOWN>=1> dovrà essere è
  <math|DIR<rsub|DOWN>> che dipenderà dall'automa a stati finiti degli stati
  dell'ascensore, quindi ne parleremo più avanti. Mentre il segnale che si
  occuperà di settare <math|WAS<rsub|DOWN>=0> (cioè di resettarlo) è proprio
  il segnale <math|DOWN> che abbiamo creato in Fig.
  <reference|requests-management>, il quale è sempre settato a <math|0>
  tranne nel caso in cui avviene una richiesta <math|R<rsub|x>> verso il
  basso. Questo vuol dire che il flip-flop SR dovrà avere l'ingresso di
  <math|RESET> negato.

  <big-figure|<image|imgs/direction-storage.png|0.25par|||>|Bufferizzazione
  della direzione<label|direction-storage>>

  <subsection|Automa a stati finiti per la gestione degli stati>

  Una volta creati tutti i segnali di cui abbiamo discusso finora è chiaro
  che essi vadano inseriti come input per l'automa a stati finiti dedicato
  alla gestione degli stati dell'ascensore. Quindi, ricapitolando, avremmo in
  input i segnali <math|CK<rsub|2>,DESTINATION,UP,STOP,DOWN,WAS<rsub|DOWN>>
  più il segnale <math|TIMEOUT>, che non abbiamo trattato ancora in modo
  approfondito, e infine il segnale di richiesta <math|R<rsub|VIP>> per la
  gestione dedicata al <with|font-shape|italic|piano VIP>. Naturalmente a
  questi si aggiungono le transizioni <math|z<rsub|2>,z<rsub|1>,z<rsub|0>>
  che rientrano in input per definizione. Tuttavia, anche se l'ascensore non
  ha un output esplicito, possiamo comunque fare in modo che l'automa a stati
  finiti generi degli output per noi. In particolare nel circuito di Fig.
  <reference|direction-storage> parlavamo del segnale <math|DIR<rsub|DOWN>>.
  Tale segnale sarà un output dell'automa a stati finiti insieme al segnale
  <math|DIR<rsub|UP>>, che ci tornerà utile per la creazione dell'automa a
  stati finiti per la gestione dei piani dell'ascensore. Dunque, come si
  intuisce, è chiaro che gli stati dell'automa a stati finiti per la gestione
  degli stati dell'ascensore ha come stati proprio la codifica che troviamo
  in Tabella <reference|elevator-states>. Pertanto possiamo costruire una
  relazione tra questi stati utilizzando il seguente automa a stati finiti:

  <big-figure|<image|imgs/FSM-states.png|1par|||>|Automa a stati finiti per
  la gestione degli stati>

  consultabile direttamente dal file <shell|FSM-states.fsm> attraverso il
  simulatore Digital. Pertanto, andando nell'apposito menù <shell|Create
  \<gtr\> State Transition Table> e successivamente, sempre dall'apposito
  menù, su <shell|Create \<gtr\> Circuit Variants \<gtr\> Circuit with LUTs>
  si ottiene il seguente circuito sequenziale:

  <big-figure|<image|imgs/states-seq-circuit-incomplete.png|0.5par|||>|Circuito
  sequenziale (incompleto) dell'automa a stati finiti per la gestione degli
  stati<label|states-seq-circuit-incomplete>>

  Il circuito mostrato in Fig. <reference|states-seq-circuit-incomplete> è
  stato leggermente modificato rispetto a quello generato automaticamente da
  Digital. In particolare sono stati tolti i bottoni di input e di output,
  perchè utilizziamo il componente <with|font-shape|italic|tunnel> per
  portare un determinato dato da una parte all'altra del circuito.

  <subsubsection|Display a 7 segmenti per il timer>

  Anche in questo caso andremo ad implementare un decodificatore per mostrare
  il conteggio del Timer su un display a 7 segmenti a catodo comune. La
  progettazione è molto simile a quella già precedentemente realizzata per la
  visualizzazione del piano corrente però, in questo caso, ancora una volta,
  cambia il numero di bit da decodificare. Pertanto possiamo costruire la
  seguente tabella di verità (si noti che partendo da <math|0> e arrivando ad
  <math|8> sono passati effettivamente <math|9> secondi):

  <big-table|<tabular|<tformat|<table|<row|<cell|<math|<tformat|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|1|-1|1|-1|cell-valign|c>|<cwith|1|4|1|1|cell-halign|c>|<cwith|1|4|1|1|cell-valign|c>|<cwith|1|-1|1|5|cell-background|pastel
  blue>|<cwith|1|-1|6|13|cell-background|pastel
  green>|<cwith|1|-1|1|1|cell-lborder|1ln>|<cwith|1|-1|13|13|cell-rborder|1ln>|<cwith|1|1|1|-1|cell-tborder|1ln>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|2|2|1|-1|cell-tborder|1ln>|<cwith|1|1|1|1|cell-lborder|1ln>|<cwith|1|1|13|13|cell-rborder|1ln>|<cwith|6|6|1|-1|cell-tborder|0ln>|<cwith|5|5|1|-1|cell-bborder|0ln>|<cwith|6|6|1|-1|cell-bborder|0ln>|<cwith|7|7|1|-1|cell-tborder|0ln>|<cwith|6|6|1|1|cell-lborder|1ln>|<cwith|2|6|13|13|cell-halign|c>|<cwith|2|6|13|13|cell-valign|c>|<cwith|2|6|13|13|cell-background|pastel
  green>|<cwith|2|6|13|13|cell-rborder|1ln>|<cwith|2|2|13|13|cell-tborder|1ln>|<cwith|6|6|13|13|cell-tborder|0ln>|<cwith|5|5|13|13|cell-bborder|0ln>|<cwith|6|6|13|13|cell-bborder|0ln>|<cwith|7|7|13|13|cell-tborder|0ln>|<cwith|6|6|13|13|cell-lborder|0ln>|<cwith|6|6|12|12|cell-rborder|0ln>|<cwith|6|6|13|13|cell-rborder|1ln>|<cwith|10|10|1|-1|cell-tborder|0ln>|<cwith|9|9|1|-1|cell-bborder|0ln>|<cwith|10|10|1|-1|cell-bborder|1ln>|<cwith|10|10|1|1|cell-lborder|1ln>|<cwith|10|10|13|13|cell-rborder|1ln>|<table|<row|<cell|Secondi>|<cell|t<rsub|3>>|<cell|t<rsub|2>>|<cell|t<rsub|1>>|<cell|t<rsub|0>>|<cell|a<rsub|t>>|<cell|b<rsub|t>>|<cell|c<rsub|t>>|<cell|d<rsub|t>>|<cell|e<rsub|t>>|<cell|f<rsub|t>>|<cell|g<rsub|t>>|<cell|HEX>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|<shell|0x7E>>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|<shell|0x30>>>|<row|<cell|2>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|<shell|0x6D>>>|<row|<cell|3>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|<shell|0x79>>>|<row|<cell|4>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|<shell|0x33>>>|<row|<cell|5>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|<shell|0x5B>>>|<row|<cell|6>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|<shell|0x5F>>>|<row|<cell|7>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|<shell|0x70>>>|<row|<cell|8>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|<shell|0x7F>>>>>>>>>>>|Tabella
  di verità del decodificatore per il display a 7 segmenti<label|dec-timer>>

  A questo punto abbiamo tutto il necessario per la realizzazione del
  decodificatore, quindi poichè avremmo <math|4> bit di input e <math|7> bit
  di output dovremmo settare la ROM con le seguenti impostazioni:

  <\big-figure|<image|imgs/settings-rom-timer.png|0.3par|||>>
    Impostazioni ROM per il display a 7 segmenti
  </big-figure>

  inserendo nel campo <shell|Data> la colonna HEX presente in Tabella
  <reference|dec-timer>. Pertanto il circuito finale è il seguente:

  <big-figure|<image|imgs/timer-7-seg.png|0.5par|||>|Decodificatore per il
  display a 7 segmenti>

  Infine l'input \P<math|dp>\Q del display a 7 segmenti gestisce il punto, ma
  dato che non ci serve è stato collegato direttamente a GND.

  <subsubsection|Gestione del timer>

  Ma quand'è che si deve attivare il Timer? Beh, solo nello stato di apertura
  porte (cioè <math|OPEN>) che corrisponde a
  <math|z<rsub|2>=0,z<rsub|1>=1,z<rsub|0>=1>. Quindi possiamo creare il
  seguente circuito che si collega direttamente al precedente:

  <big-figure|<image|imgs/timer-circuit.png|0.3par|||>|Gestione del timer
  nell'automa a stati finiti per la gestione degli stati dell'ascensore>

  Pertanto il circuito sequenziale completo per la gestione degli stati
  dell'ascensore è il seguente:

  <big-figure|<image|imgs/states-seq-circuit-complete.png|0.5par|||>|Circuito
  sequenziale completo dell'automa a stati finiti per la gestione degli
  stati>

  collegando opportunamente l'uscita di overflow del Timer al segnale
  <math|TIMEOUT>. Quindi in caso di overflow, cioè quando il Timer arriva a
  contare <math|<around*|(|9|)><rsub|10>>, avremo <math|TIMEOUT=1>.

  <subsection|Automa a stati finiti per la gestione dei piani>

  Siamo quasi giunti al termine della nostra progettazione. Ci rimane solo la
  realizzazione dell'automa a stati finiti per la gestione dei piani
  dell'ascensore. Esso avrà in input il segnale <math|CK<rsub|2>> insieme
  agli output generati dall'automa a stati finiti per la gestione degli stati
  dell'ascensore, ossia <math|DIR<rsub|DOWN>> e <math|DIR<rsub|UP>>.
  Naturalmente a questi si aggiungono le transizioni
  <math|y<rsub|2>,y<rsub|1>,y<rsub|0>> che rientrano in input per
  definizione. Dunque, come si intuisce, è chiaro che gli stati dell'automa a
  stati finiti per la gestione dei piani dell'ascensore ha come stati proprio
  la codifica che troviamo in Tabella <reference|elevator-floor>. Pertanto
  possiamo costruire una relazione tra questi stati utilizzando il seguente
  automa a stati finiti:

  <big-figure|<image|imgs/FSM-floor.png|1par|||>|Automa a stati finiti per la
  gestione dei piani>

  consultabile direttamente dal file <shell|FSM-floor.fsm> attraverso il
  simulatore Digital. Pertanto, andando nell'apposito menù <shell|Create
  \<gtr\> State Transition Table> (consiglio di modificare le variabili da
  <math|z<rsub|\<ast\>>> ad <math|y<rsub|\<ast\>>> con un click destro del
  mouse sul nome) e successivamente, sempre dall'apposito menù, su
  <shell|Create \<gtr\> Circuit Variants \<gtr\> Circuit with LUTs> si
  ottiene il seguente circuito sequenziale:

  <big-figure|<image|imgs/floor-seq-circuit.png|0.5par|||>|Circuito
  sequenziale completo dell'automa a stati finiti per la gestione dei
  piani<label|floor-seq-circuit>>

  Anche in questo caso il circuito mostrato in Fig.
  <reference|floor-seq-circuit> è stato leggermente modificato rispetto a
  quello generato automaticamente da Digital. In particolare sono stati tolti
  i bottoni di input e di output, perchè utilizziamo il componente
  <with|font-shape|italic|tunnel> per portare un determinato dato da una
  parte all'altra del circuito.

  <subsection|Conclusione>

  Innanzitutto concludo mostrando il circuito finale completo che realizza il
  sistema di controllo per l'ascensore:

  <big-figure|<image|imgs/final-circuit.png|1par|||>|Circuito completo per la
  gestione di un sistema di controllo di un'ascensore>

  consultabile direttamente dal file <shell|circuit.dig> attraverso il
  simulatore Digital. Infine voglio precisare che una progettazione del
  genere al giorno d'oggi è molto \Pold school\Q nel senso che probabilmente,
  sia per una questione di costi che per una questione di tempo, è più facile
  impiegare delle schede embedded programmabili. Tuttavia ammetto che si
  tratta comunque di un esercizio per pensare fuori dagli schemi canonici,
  esattamente ciò che un ingegnere deve saper fare. Sarebbe interessante
  portare avanti la progettazione cercando di ottimizzare al minimo il numero
  di porte per poi prototipare l'intero progetto su PCB utilizzando software
  come KiCAD, aggiungendo dei veri sensori, al posto dei segnali
  <math|A<rsub|0>,\<ldots\>A<rsub|3>,A<rsub|VIP>>, dei motori, e in generale
  tutto ciò che serve per la realizzazione di un'ascensore.

  \;
</body>

<\initial>
  <\collection>
    <associate|font-base-size|10>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|7-seg|<tuple|1|4>>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-10|<tuple|2|3>>
    <associate|auto-11|<tuple|2.1|3>>
    <associate|auto-12|<tuple|2.2|4>>
    <associate|auto-13|<tuple|2.3|4>>
    <associate|auto-14|<tuple|1|4>>
    <associate|auto-15|<tuple|2|5>>
    <associate|auto-16|<tuple|3|5>>
    <associate|auto-17|<tuple|3|5>>
    <associate|auto-18|<tuple|4|6>>
    <associate|auto-19|<tuple|2.4|6>>
    <associate|auto-2|<tuple|1.1|1>>
    <associate|auto-20|<tuple|4|6>>
    <associate|auto-21|<tuple|5|6>>
    <associate|auto-22|<tuple|6|7>>
    <associate|auto-23|<tuple|5|7>>
    <associate|auto-24|<tuple|6|7>>
    <associate|auto-25|<tuple|7|8>>
    <associate|auto-26|<tuple|8|8>>
    <associate|auto-27|<tuple|9|8>>
    <associate|auto-28|<tuple|2.5|8>>
    <associate|auto-29|<tuple|10|9>>
    <associate|auto-3|<tuple|1.2|2>>
    <associate|auto-30|<tuple|2.6|9>>
    <associate|auto-31|<tuple|11|9>>
    <associate|auto-32|<tuple|2.7|9>>
    <associate|auto-33|<tuple|12|10>>
    <associate|auto-34|<tuple|2.8|10>>
    <associate|auto-35|<tuple|13|10>>
    <associate|auto-36|<tuple|2.9|10>>
    <associate|auto-37|<tuple|7|11>>
    <associate|auto-38|<tuple|14|11>>
    <associate|auto-39|<tuple|15|11>>
    <associate|auto-4|<tuple|1.3|2>>
    <associate|auto-40|<tuple|16|11>>
    <associate|auto-41|<tuple|8|12>>
    <associate|auto-42|<tuple|9|12>>
    <associate|auto-43|<tuple|10|13>>
    <associate|auto-44|<tuple|11|13>>
    <associate|auto-45|<tuple|12|14>>
    <associate|auto-46|<tuple|17|14>>
    <associate|auto-47|<tuple|18|14>>
    <associate|auto-48|<tuple|2.10|14>>
    <associate|auto-49|<tuple|19|15>>
    <associate|auto-5|<tuple|1|2>>
    <associate|auto-50|<tuple|2.11|15>>
    <associate|auto-51|<tuple|20|15>>
    <associate|auto-52|<tuple|21|16>>
    <associate|auto-53|<tuple|2.11.1|16>>
    <associate|auto-54|<tuple|13|16>>
    <associate|auto-55|<tuple|22|17>>
    <associate|auto-56|<tuple|23|17>>
    <associate|auto-57|<tuple|2.11.2|17>>
    <associate|auto-58|<tuple|24|17>>
    <associate|auto-59|<tuple|25|18>>
    <associate|auto-6|<tuple|2|2>>
    <associate|auto-60|<tuple|2.12|18>>
    <associate|auto-61|<tuple|26|18>>
    <associate|auto-62|<tuple|27|19>>
    <associate|auto-63|<tuple|2.13|19>>
    <associate|auto-64|<tuple|28|19>>
    <associate|auto-7|<tuple|1.4|3>>
    <associate|auto-8|<tuple|1.5|3>>
    <associate|auto-9|<tuple|1.6|3>>
    <associate|d1-d2|<tuple|5|7>>
    <associate|d3-d4|<tuple|6|7>>
    <associate|dec-timer|<tuple|13|16>>
    <associate|direction-storage|<tuple|19|15>>
    <associate|elevator-floor|<tuple|2|2>>
    <associate|elevator-states|<tuple|1|2>>
    <associate|floor-detector|<tuple|12|10>>
    <associate|floor-seq-circuit|<tuple|27|19>>
    <associate|requests-management|<tuple|18|14>>
    <associate|states-seq-circuit-incomplete|<tuple|21|16>>
    <associate|truth-table-7-seg|<tuple|3|5>>
    <associate|truth-table-encoder|<tuple|7|11>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|figure>
      <tuple|normal|<surround|<hidden-binding|<tuple>|1>||Display a
      <with|mode|<quote|math>|7> segmenti>|<pageref|auto-14>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|2>||Codifiche dei
      numeri per un display a 7 segmenti>|<pageref|auto-15>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|3>|>
        Impostazioni ROM per il display a 7 segmenti
      </surround>|<pageref|auto-17>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|4>||Decodificatore per
      il display a 7 segmenti>|<pageref|auto-18>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|5>||Display a
      <with|mode|<quote|math>|16> segmenti>|<pageref|auto-21>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|6>||Codifiche dei
      caratteri per un display a 16 segmenti>|<pageref|auto-22>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|7>|>
        Impostazioni ROM per il display a 16 segmenti
      </surround>|<pageref|auto-25>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|8>||Campo
      <with|mode|<quote|prog>|prog-language|<quote|shell>|font-family|<quote|rm>|Data>
      delle due ROM>|<pageref|auto-26>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|9>||Decodificatore per
      il display a 16 segmenti>|<pageref|auto-27>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|10>||Bufferizzazione
      delle richieste in attesa>|<pageref|auto-29>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|11>||Gestione dei
      reset>|<pageref|auto-31>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|12>||Rilevatore per un
      generico piano>|<pageref|auto-33>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|13>||Segnale per
      l'arrivo a destinazione>|<pageref|auto-35>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|14>||Impostazioni ROM
      per il codificatore>|<pageref|auto-38>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|15>||Impostazioni
      flip-flop D>|<pageref|auto-39>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|16>||Gestione delle
      richieste incompleta>|<pageref|auto-40>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|17>||Impostazioni ROM
      per il comparatore>|<pageref|auto-46>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|18>||Gestione delle
      richieste>|<pageref|auto-47>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|19>||Bufferizzazione
      della direzione>|<pageref|auto-49>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|20>||Automa a stati
      finiti per la gestione degli stati>|<pageref|auto-51>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|21>||Circuito
      sequenziale (incompleto) dell'automa a stati finiti per la gestione
      degli stati>|<pageref|auto-52>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|22>|>
        Impostazioni ROM per il display a 7 segmenti
      </surround>|<pageref|auto-55>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|23>||Decodificatore per
      il display a 7 segmenti>|<pageref|auto-56>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|24>||Gestione del timer
      nell'automa a stati finiti per la gestione degli stati
      dell'ascensore>|<pageref|auto-58>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|25>||Circuito
      sequenziale completo dell'automa a stati finiti per la gestione degli
      stati>|<pageref|auto-59>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|26>||Automa a stati
      finiti per la gestione dei piani>|<pageref|auto-61>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|27>||Circuito
      sequenziale completo dell'automa a stati finiti per la gestione dei
      piani>|<pageref|auto-62>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|28>||Circuito completo
      per la gestione di un sistema di controllo di
      un'ascensore>|<pageref|auto-64>>
    </associate>
    <\associate|table>
      <tuple|normal|<surround|<hidden-binding|<tuple>|1>||Codifica degli
      stati dell'ascensore>|<pageref|auto-5>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|2>||Codifica dei piani
      dell'ascensore>|<pageref|auto-6>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|3>||Tabella di verità
      del decodificatore per il display a 7 segmenti>|<pageref|auto-16>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|4>||Conversione degli
      stati dell'ascensore nei caratteri rappresentabili nei
      <with|mode|<quote|math>|4> display a 16 segmenti>|<pageref|auto-20>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|5>||Tabella di verità
      del decodificatore per i display <with|mode|<quote|math>|D<rsub|1>> e
      <with|mode|<quote|math>|D<rsub|2>> a 16 segmenti>|<pageref|auto-23>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|6>||Tabella di verità
      del decodificatore per i display <with|mode|<quote|math>|D<rsub|3>> e
      <with|mode|<quote|math>|D<rsub|4>> a 16 segmenti>|<pageref|auto-24>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|7>||Tabella di verità
      del codificatore per i segnali di arrivo>|<pageref|auto-37>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|8>||Tabella di verità
      del comparatore per <with|mode|<quote|math>|a<rsub|2>=0,a<rsub|1>=0,a<rsub|0>=0>>|<pageref|auto-41>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|9>||Tabella di verità
      del comparatore per <with|mode|<quote|math>|a<rsub|2>=0,a<rsub|1>=0,a<rsub|0>=1>>|<pageref|auto-42>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|10>||Tabella di verità
      del comparatore per <with|mode|<quote|math>|a<rsub|2>=0,a<rsub|1>=1,a<rsub|0>=0>>|<pageref|auto-43>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|11>||Tabella di verità
      del comparatore per <with|mode|<quote|math>|a<rsub|2>=0,a<rsub|1>=1,a<rsub|0>=1>>|<pageref|auto-44>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|12>||Tabella di verità
      del comparatore per <with|mode|<quote|math>|a<rsub|2>=1,a<rsub|1>=0,a<rsub|0>=0>>|<pageref|auto-45>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|13>||Tabella di verità
      del decodificatore per il display a 7 segmenti>|<pageref|auto-54>>
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Homework>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <with|par-left|<quote|1tab>|1.1<space|2spc>Introduzione
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|1tab>|1.2<space|2spc>Gestione delle chiamate ai
      piani e movimento <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|1.3<space|2spc>Codifiche
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|1tab>|1.4<space|2spc>Ingressi
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|1tab>|1.5<space|2spc>Come realizzare il circuito
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|1tab>|1.6<space|2spc>Suggerimenti
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Soluzione>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10><vspace|0.5fn>

      <with|par-left|<quote|1tab>|2.1<space|2spc>Introduzione
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>>

      <with|par-left|<quote|1tab>|2.2<space|2spc>Scelte progettuali
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12>>

      <with|par-left|<quote|1tab>|2.3<space|2spc>Display a 7 segmenti per i
      piani <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13>>

      <with|par-left|<quote|1tab>|2.4<space|2spc>Display a 16 segmenti per
      gli stati <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-19>>

      <with|par-left|<quote|1tab>|2.5<space|2spc>Bufferizzazione delle
      richieste in attesa <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-28>>

      <with|par-left|<quote|1tab>|2.6<space|2spc>Gestione dei reset
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-30>>

      <with|par-left|<quote|1tab>|2.7<space|2spc>Rilevatore per un generico
      piano <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-32>>

      <with|par-left|<quote|1tab>|2.8<space|2spc>Segnale per l'arrivo a
      destinazione <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-34>>

      <with|par-left|<quote|1tab>|2.9<space|2spc>Gestione delle richieste
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-36>>

      <with|par-left|<quote|1tab>|2.10<space|2spc>Bufferizzazione della
      direzione <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-48>>

      <with|par-left|<quote|1tab>|2.11<space|2spc>Automa a stati finiti per
      la gestione degli stati <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-50>>

      <with|par-left|<quote|2tab>|2.11.1<space|2spc>Display a 7 segmenti per
      il timer <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-53>>

      <with|par-left|<quote|2tab>|2.11.2<space|2spc>Gestione del timer
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-57>>

      <with|par-left|<quote|1tab>|2.12<space|2spc>Automa a stati finiti per
      la gestione dei piani <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-60>>

      <with|par-left|<quote|1tab>|2.13<space|2spc>Conclusione
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-63>>
    </associate>
  </collection>
</auxiliary>