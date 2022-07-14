# Betriebsdokumentation
[[_TOC_]]
## Einführungstext 

TODO: In 2-3 Sätzen beschreiben was die Skripte grundsaetzlich tun.

Der zweite Skript sucht alle Commits aus alle Git Verzeichnisse in einem Base-Verzeichnis die bei der Aufruf des Skripts mitgegeben wird.

## Installationsanleitung für Administratoren

### Installation

Beide Skripts werden installiert in dem dieses Git Repository heruntergeladen wird. Damit die Programm einfach aufgeruft werden kann empfehlen wir, dass man die /bin Verzeichnis vom Programm in ihren PATH Variable setzen.

### Konfiguration

<output-path>: Path wo die Output File abgelegt werden soll<br>
Einen Beispiel davon sieht man in diesem Repository unter `/m112_projektarbeit_anderson_pavlov/etc`

....

## Bediensanleitung Benutzer

TODO: Erzeugen der Input-Files beschreiben, falls noetig

Skriptaufruf:<br>
Skript 1 :<br>
  
Skript 2:<br>
Aufruf: git_extract_commits -b </path vom Baseverzeichnis> -o <Name vom Output File>

Skript 1:<br>

Skript 2:<br>
Temp Files werden unter /tmp erstellt und am Ende der Skript wieder gelöscht<br>

