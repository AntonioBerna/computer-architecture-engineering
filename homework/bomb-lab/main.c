/***************************************************************************
 * La bomba insidiosa del Dottor Male, versione 1.0
 * Copyright 2022, Dottor Male. Tutti i diritti riservati.
 *
 * LICENZA:
 *
 * Il Dottor Male (il COLPEVOLE) concede a te (la VITTIMA)
 * il permesso esplicito di usare questa bomba (la BOMBA). Si tratta di
 * una licenza a tempo limitato, che scade alla morte della VITTIMA.
 * Il COLPEVOLE non si assume alcuna responsabilità per danni, frustrazioni,
 * follia, occhi rossi, sindrome del tunnel carpale, perdita del sonno
 * o altri danni alla VITTIMA. A meno che il COLPEVOLE non voglia prendersi
 * il merito. La VITTIMA non può distribuire il codice sorgente della bomba
 * a nessun nemico del COLPEVOLE. Nessuna VITTIMA può debuggare, disassemblare
 * eseguire "strings", effettuare reverse engineer, decrittografare o
 * utilizzare qualsiasi altra tecnica per acquisire conoscenza e disinnescare
 * la BOMBA. Non è necessario indossare indumenti a prova di BOMBA durante
 * la gestione di questo programma. Il COLPEVOLE non si scuserà per il suo
 * scarso senso dell'umorismo. Questa licenza è nulla e non valida laddove
 * la BOMBA è vietata dalla legge.
 ***************************************************************************/

#include <stdio.h>
#include <stdlib.h>

#include "phases.h"
#include "utils/utils.h"

/*
 * Nota a me stesso: Ricordati di eliminare questo file, così che le mie vittime non abbiamo alcuna idea di quello
 * che accade qui dentro, così che possano saltare tutti in aria in una spettacolare esplosione diabolica.
 *    -- Dottor Male
 */

FILE *infile;

int main(int argc, char *argv[])
{
	char *input;

	/* Nota a me stesso: Ricordati di scrivere una fantastica GUI per Windows */

	/* Quando eseguita senza argomenti, la bomba legge l'input dallo standard input */
	if(argc == 1) {
		infile = stdin;
	}

	/* Quando eseguita con un argomento <file>, la bomba legge da <file>
	 * fino ad EOF e poi passa allo standard input. Così, dopo aver disinnescato
	 * ciascuna fase, puoi salvare le stringhe di disinnescamento in <file>
	 * ed evitare di doverle riscrivere ogni volta. */
	else if(argc == 2) {
		if(!(infile = fopen(argv[1], "r"))) {
			printf("%s: Errore: Impossibile aprire il file %s\n", argv[0], argv[1]);
			exit(8);
		}
	}

	/* Non puoi chiamare la bomba con più di un argomento */
	else {
		printf("Utilizzo: %s [<input_file>]\n", argv[0]);
		exit(8);
	}

	/* Fai tutte quelle cose super segrete che rendono più difficile disinnescare la bomba */
	initialize_bomb();

	printf(
	    "Benvenuti nella mia piccola bomba diabolica. Hai sei fasi con cui puoi farti saltare in aria. Buona giornata!\n");

	/* Mmm... Sei fasi sono più sicure di una! */
	input = read_line(); /* Leggi l'input                  */
	phase_1(input);      /* Esegui la fase                 */
	phase_defused();     /* Accidenti! Ce l'hanno fatta!   */
	printf("Fase 1 disinnescata. Che ne pensi della prossima?\n");

	/* La seconda fase è più difficile. Nessuno riuscirà a capire come disinnescarla... */
	input = read_line();
	phase_2(input);
	phase_defused();
	printf("Questa era la numero 2. Continua così!\n");

	/* Probabilmente è stato troppo facile finora. Del codice più complicato li confonderà. */
	input = read_line();
	phase_3(input);
	phase_defused();
	printf("Sei a metà strada!\n");

	/* Davvero?  Beh, sei pronto per un bel po' di codice? Vediamo come te la cavi con questo! */
	input = read_line();
	phase_4(input);
	phase_defused();
	printf("Ok, con questa ce l'hai fatta. Ora prova la prossima...\n");

	/* Giriamo e giriamo nella memoria, quando ci fermiamo, la bomba esplode! */
	input = read_line();
	phase_5(input);
	phase_defused();
	printf("Ottimo lavoro! Ora passiamo alla successiva...\n");

	/* Questa fase non verrà mai utilizzata, visto che nessuno riuscirà a superare
	 * quelle precedenti. Comunque, per sicurezza, facciamola super difficile. */
	input = read_line();
	phase_6(input);
	phase_defused();

	/* Wow, ce l'hanno fatta... Ma non ci manca qualcosa? Forse c'è qualcosa che
	 * hanno tralasciato? Mua ha ha ha ha! */

	return 0;
}
