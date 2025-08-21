# Test Encoding

Ce repo contient des tests liés à l'encodage du langage Dart. Utilisez ces tests pour vérifier la gestion correcte des différents encodages de caractères.

## Usage

Branches:
- v1: Script renvoyant uniquement la donnée brut tel que dart la renvoie. (Data depuis PS: utf16LE, data depuis Dart: utf8)
- v2: Script renvoyant la chaîne de caractère au format décimale. (on peut voir certains octets au dessus de 128 soit encodé sur plus de 2 bits.)

Run the main test script in this folder to check for encoding issues.