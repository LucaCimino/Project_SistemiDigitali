# Pynq Motion Detective
Progetto di Sistemi Digitali M Unibo.

## Abstract
Realizzazione di un sistema di sorveglianza basato sulla board PYNQ-Z2. Il sistema usa la motion detection per rilevare i movimenti nella scena monitorata, e quando rileva un movimento invia un flusso video cifrato un host remoto tramite una connessione di rete. Le operazioni crittografiche sono gestite da un IP Core di cifratura implementato sull’FPGA della PYNQ. Ogni frame del flusso video viene cifrato prima di essere trasmesso sulla rete, garantendo la sicurezza e la privacy dei dati trasmessi.

Il progetto prevede anche un client remoto che riceve il flusso video e dopo averlo decifrato lo mostra all’utente.

![Flusso di esecuzione](https://github.com/LucaCimino/Project_SistemiDigitali/test/image/Overview.png)

## Link Utili
[http://www.pynq.io/](http://www.pynq.io/)

## Organizzazione del repository

- ```serverPynq.py```: script Python in esecuzione sulla Pynq che cattura le immagini dalla fotocamera, analizza i movimenti, cifra i frame e li invia ad un host remoto.  

- ```client.py```: client remoto che riceve il flusso video dalla Pynq

- ```VivadoHLS```: progetto VivadoHLS dell'IP Core di cifratura

- ```Vivado```: progetto Vivado del design della Pynq

- ```test```: materiale usato per il test ed il debug

## Istruzioni per l'uso

1. Importare i file ```Vivado/AES_Encryption_Pynq/design_1.bit```, ```Vivado/AES_Encryption_Pynq/design_1.tcl``` e ```Vivado/AES_Encryption_Pynq/design_1.hwh``` nella directory ```/home/xilinx/pynq/overlays/AES_Encryption/``` della Pynq

2. Importare ```serverPynq.py``` sulla Pynq e ```client.py``` sull'host remoto su cui si desidera ricevere e visualizzare lo stream video

3. Eseguire sulla Pynq ```python3 serverPynq.py 192.168.2.99 5555```

4. Eseguire sull'host remoto ```python3 client.py 192.168.2.99 5555``` 
