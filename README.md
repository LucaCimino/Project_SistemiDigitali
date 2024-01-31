# Project_SistemiDigitali
Progetto di Sistemi Digitali M Unibo - Sistema di sorveglianza attraverso l'utilizzo di una PYNQ.

L'obiettivo di questo progetto è implementare un sistema di sorveglianza avanzato utilizzando la scheda PYNQ. Il sistema sarà in grado di rilevare movimenti attraverso l'utilizzo di una fotocamera e, in caso di situazioni di pericolo, comunicherà in tempo reale con un dispositivo del proprietario per trasmettere lo stream video.

## Funzionalità Chiave

1. **Rilevamento Movimenti:**
   - Utilizzo di una fotocamera connessa alla PYNQ per il rilevamento dei movimenti nell'area monitorata.

2. **Comunicazione in Tempo Reale:**
   - Comunicazione immediata con un dispositivo del proprietario in caso di rilevamento di movimenti sospetti.

3. **Archiviazione Video:**
   - Salvataggio automatico di video in cui si verificano situazioni di pericolo per ulteriori analisi o evidenze.

4. **Cifratura dei Dati:**
   - Implementazione di un sistema di cifratura per garantire la sicurezza durante la comunicazione e l'archiviazione dei video.

5. **Modalità di Standby:**
   - Nessuna comunicazione quando la telecamera non rileva movimenti o situazioni insolite.

6. **Interfaccia Utente Remota:**
   - Fornitura di un'interfaccia utente remota per consentire al possessore del sistema di visualizzare lo stream video catturato dalla fotocamera in qualsiasi momento.

## Sviluppi Futuri

Si pensa anche alla possibilità di salvare i video in cui si verificano delle situazioni di pericolo. Nel caso in cui invece la telecamera non rileva nessun movimento e nessuna situazione insolita, non viene effettuata nessuna comunicazione. Si valuta inoltre l'implementazione di ulteriori funzionalità di sicurezza e analisi dati.

## Link Utili
[http://www.pynq.io/](http://www.pynq.io/)
