# :bomb: Disinnescare una Bomba Binaria

## Introduzione

Il malvagio _Dr. Male_ ha piantato una sfilza di "bombe binarie" sulle macchine del nostro dipartimento. Una bomba binaria è un programma che consiste in una sequenza di fasi. Ciascuna fase richiede l'inserimento su `stdin` di una certa stringa. Se viene inserita la stringa corretta, allora la fase viene
_disinnescata_ e la bomba avanza alla fase successiva. Altrimenti, la bomba _esplode_ stampando `BOOM!!!` e successivamente terminando.    
La bomba è disinnescata quando tutte le fasi sono disinnescate.

Sono state installate troppe bombe e noi da soli non riusciamo a gestirle. Per questo motivo diamo una bomba da disinnescare a ciascuno studente. La tua missione, che non puoi rifiutare, è quella di disinnescare la tua bomba prima della data in cui essa scadrà. Buona fortuna, e benvenuto nella _bomb squad_!

![](.github/artwork/bomb.png)

## Fase 1: Scarica la tua bomba

Per ottenere la tua bomba, _devi effettuare un commit in questo repository_. Modifica il file `get_bomb.txt` inserendo la tua matricola. Verrà attivata una Action su GitHub che aggiungerà al repository un archivio chiamato `bomb.zip`. Viene fornita una versione per Linux, Windows e MacOS: puoi usare quella che preferisci, sono equivalenti.

Se si verifica un errore nel recupero della bomba, verrà inserito nel file `ERRORE.TXT` una descrizione dell'errore.

**Attenzione**: la bomba è per processori x86, se hai quindi un Mac con M1 o M2, devi entrare in un terminale configurato per x86:

```bash
env /usr/bin/arch -x86_64 /bin/zsh --login
```

In questo ambiente la bomba non è stata testata, quindi non è garantito il suo funzionamento.

## Fase 2: Disinnesca la bomba (e ottieni punti bonus)

Il tuo compito per questo compito è quello di disinnescare la tua bomba. Il computer su cui
esegui la bomba deve essere connesso ad Internet, altrimenti il professore non potrà valutare
la tua soluzione ed assegnarti i punti bonus. Fai attenzione perché siamo stati 
informati che il Dr. Male è veramente malvagio ed ha inserito nella bomba alcuni dispositivi
che si accorgono se la bomba è stata manomessa.

Nonostante questo avvertimento, puoi fare davvero quello che vuoi con la tua bomba. Ricorda solo
che questa verrà valutata in base a quello che riceviamo, non a quello che ci racconterai di aver
fatto sul tuo computer. In altre parole: al termine del compito, verranno verificati gli input che hai inserito per disinnescare le varie fasi.

Puoi usare vari strumenti per disinnescare la tua bomba. Leggi la sezione _suggerimenti_ per dei consigli e delle idee.

Ogni volta che la bomba esplode vengono tolti 2 punti dal punteggio. Ogni fase disinnescata dà 10 punti. Ci sono poi dei punti aggiuntivi nascosti all'interno della bomba che potete provare a trovare.

Le fasi diventano progressivamente più difficili, anche se l'esperienza accumulata nelle fasi precedenti dovrebbe comunque rendere le fasi successive più semplici. L'ultima fase è comunque sfidante anche per i migliori, quindi cerca di non ridurti all'ultimo minuto.

La bomba ignora le linee vuote in input. Se esegui la bomba con un argomento a linea di comando, ad esempio:

```bash
./bomba soluzione.txt
```

essa leggerà le linee dal file `soluzione.txt` fino a `EOF` (end of file) e poi passerà a leggere da `stdin`. In un momento di debolezza, il Dr. Male ha introdotto questa funzionalità, quindi non avrai bisogno di riscrivere ogni volta le soluzioni alle fasi che hai già disinnescato.

Per evitare di far detonare accidentalmente la bomba, dovrai imparare a muoverti passo passo nel codice disassemblato e ad utilizzare in maniera estensiva i breakpoint. Dovrai anche imparare ad ispezionare lo stato dei registri e della memoria. Uno degli effetti collaterali di questo homework è che diventerai piuttosto bravo ad usare il debugger. È un'abilità che ti tornerà piuttosto utile quando dovrai sviluppare codice per questo corso ed in tutta la tua carriera.

## Logistica

Questo homework è un progetto individuale. La consegna è elettronica e per i punti bonus vale soltanto la graduatoria e quello che riceviamo sui nostri server. Il professore si riserva il diritto di non assegnare i punti bonus a sua completa discrezione durante la correzione della tua soluzione. Eventuali chiarimenti e correzioni verranno annunciati sulla bacheca del corso su Teams.

## Consegna

Non c'è alcuna consegna esplicita. La bomba continuerà ad aggiornare i tuoi progressi mentre ci lavori. Alla scadenza, la bomba smetterà semplicemente di funzionare correttamente.

Puoi tenere traccia dei tuoi progressi e di quelli degli altri studenti andando alla pagina della [classifica](https://bombs.alessandropellegrini.it/2425).
Questa pagina si aggiorna in tempo reale per mostrare lo stato di tutte le bombe.

## Suggerimenti (leggi bene!)

Ci sono vari modi per disinnescare la tua bomba. Puoi esaminare il codice assembly nei dettagli senza mai eseguirla per capire esattamente come si comporta. Questa tecnica è molto utile, ma non è sempre facile. Puoi anche eseguire la bomba all'interno di un debugger, osservando cosa fa passo passo, usando le informazioni che raccogli per disinnescarla. Probabilmente questa è la tecnica più rapida.

Ti chiediamo, tuttavia, di evitare di adottare una tecnica di _attacco a forza bruta_: potresti scrivere un programma che testi tutte le possibilità per trovare la soluzione giusta per ogni fase. Questo approccio però non va bene per più di un motivo:

* Ogni volta che la bomba scoppia, perdi due punti. La probabilità di arrivare ultimo è del 100%.

* Non sai quanto sono lunghe le stringhe da fornire in input, né sai da quali caratteri sono composte. Anche se facessi l'ipotesi (_sbagliata_) che le stringhe sono lunghe al più 80 caratteri e contengono solo lettere minuscole, dovresti provare $26^{80}$ combinazioni per ciascuna fase. Anche con un computer moderno, non finiresti prima della data di consegna.

* Mentre interagisci con la bomba, questa contatta i nostri server per aggiornare la classifica in tempo reale. Anche se il Dr. Male è stato previdente ed ha implementato una forma di throttling delle richieste, potresti facilmente saturare la banda del server, creando un disservizio a tutta la classe.

Ci sono vari strumenti che sono stati progettati per aiutarti a capire come funziona un programma e cosa c'è che non va quando non funziona. Qui di seguito c'è un elenco di alcuni strumenti che potresti trovare utili per analizzare la bomba, con delle indicazioni su come utilizzarli. Molti di questi sono disponibili per tutti i sistemi operativi, devi solo trovarli.

* `gdb`/`lldb`: si tratta di debugger a riga di comando, disponibili praticamente su qualsiasi piattaforma. Puoi spostarti all'interno del programma riga per riga, esaminare la memoria ed i registri, osservare sia il codice sorgente sia il codice assembly (purtroppo il Dr. Male non ci ha lasciato i sorgenti...), impostare breakpoint, impostare watchpoint in memoria, e addirittura scrivere script in python.

* `objdump -t`: il comando `objdump` consente di estrarre varie informazioni da un binario compilato. Utilizzandolo con il flag `-t` esso stamperà la tabella dei simboli. La tabella dei simboli contiene i nomi di tutte le funzioni e di tutte le variabili globali presenti nella bomba, i nomi di tutte le funzioni che la bomba chiama, così come i loro indirizzi. Puoi scoprire qualcosa guardando i nomi delle funzioni!

* `objdump -d`: con questo flag il comando disassembla la bomba. Puoi guardare anche singole funzioni. Leggere il codice assembly ti può far capire come funziona la bomba.    
Anche se `objdump -d` ti darà un sacco di informazioni, non è in grado di raccontarti tutta la storia come `gdb`. Infatti, molte succedono cose "magiche" dopo che un programma è stato avviato, perché tra il _programma_ ed il _processo_ c'è un gran lavoro complesso che fanno di concerto il sistema operativo e la libreria standard. Tutto questo lo scoprirete nei corsi futuri, ma l'effetto è che in alcuni casi una chiamata a `scanf` può diventare qualcosa di criptico come:
```
8048c36:  e8 99 fc ff ff  call   80488d4 <_init+0x1a0> 
```

* `strings`: questo strumento mostra tutte le stringhe stampabili che sono presenti nella bomba.

Sei in cerca di uno strumento particolare? Vuoi sapere come utilizzare al meglio quelli che sono stati descritti? È il momento di leggere la documentazione! Non dimenticarti mai di comandi come `apropos`, `man` o `info`: sono tuoi amici e possono fornirti molte informazioni ben oltre le semplici chiamate di libreria o i programmi a linea di comando. Ad esempio, `man ascii` ti dà anche informazioni sulle codifiche tipiche usate dalle stringhe in C. `apropos gdb` ti darà più informazioni di quante tu ne possa gestire su GDB. `info gas` ti fornirà più di quanto tu abbia mai voluto sapere sull'assemblatore GNU. Inoltre, anche il web può essere un tesoro di informazioni.  Se ti trovi in difficoltà, non esitare a chiedere aiuto al tuo professore, consapevole comunque che anche lui è alle prese con delle bombe da disinnescare e potrebbe non essere in grado di darti consigli utili.
