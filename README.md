# Tesi

## Descrizione
Tecnologie e metodi dei sistemi di localizzazione indoor

## Contenuti
- `tesi.pdf`: Documento finale della tesi, nella cartella output.
- `*.tex`: File sorgenti LaTeX della tesi, nella cartella chapters e nella root directory.
- `ref.bib`: Bibliografia, nella cartella bibliography.

## Compilazione
La tesi può essere compilata utilizzando il seguente script:
- `compile.sh`: Esegue la compilazione del documento LaTeX.

```bash
sudo chmod +x compile.sh
./compile.sh
```

### Prerequisiti per la compilazione
Prima di eseguire lo script di compilazione, assicurati di configurare le variabili d'ambiente necessarie per indicare a LaTeX dove trovare i file `.tex` e `.bib`. Questo passaggio richiede di esportare i percorsi delle directory `chapters` e `bibliography` nelle variabili d'ambiente `TEXINPUTS` e `BIBINPUTS`, rispettivamente.

Eseguire i seguenti comandi nel terminale, sostituendo `/path/to` con i percorsi assoluti delle tue directory:

```bash
export TEXINPUTS=/path/to/chapters:
export BIBINPUTS=/path/to/bibliography:
```

Per rendere queste variabili d'ambiente permanenti, aggiungere i comandi precedenti al file `.bashrc` o `.bash_profile`, se utilizzi Bash, o al file `.zshrc`, se utilizzi Zsh.:

```bash
echo "export TEXINPUTS=/path/to/chapters:" >> ~/.bashrc
echo "export BIBINPUTS=/path/to/bibliography:" >> ~/.bashrc
```

## Licenza
Questo progetto di tesi è rilasciato sotto licenza CC BY-NC-ND 4.0 DEED - vedi il file [LICENSE](LICENSE) per maggiori dettagli.
