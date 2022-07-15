# Projekt Dokumentation

[[_TOC_]]

## Lösungsdesign
Anhand der Analyse wurde folgendes Lösungsdesign entworfen.

### Aufruf der Skripte

Skript 1: bash git_clone_update_repos.bash (Konfigurations-File oben im Skript)

Skript 2: git_extract_commits </path vom Baseverzeichnis> &lt;Name vom Output File>

### Ablauf der Automation

Skript 1:<br>

Skript 2:<br>
![M122 LB3 Skript 2](https://user-images.githubusercontent.com/44444958/176895182-c3f02212-e999-4e00-b0ef-35acf3d87e03.png)

### Konfigurationsdateien

Im repos.conf sollen Zeile für Zeile alle zu holenden Repositories drinstehen.
Dieses Konfigurationsfile sowie die gewünschte lokale Directory können dann in Skript oben referenziert werden.

Parameter<br>
&lt;output-path>: Path wo die Output File abgelegt werden soll<br>

## Abgrenzungen zum Lösungsdesign

Skript 1:<br>
Aufruf: bash git_clone_update_repos.bash

Skript 2:<br>
Aufruf: git_extract_commits -b </path vom Baseverzeichnis> -o &lt;Name vom Output File>
