# Test Encoding

Ce repo contient des tests liés à l'encodage du langage Dart. Utilisez ces tests pour vérifier la gestion correcte des différents encodages de caractères.

## Usage

Branches:
- v1: Script renvoyant uniquement la donnée brut tel que dart la renvoie. (Data depuis PS: utf16LE, data depuis Dart: utf8)
- v2: Script renvoyant la chaîne de caractère au format décimale. (on peut voir certains octets au dessus de 128 soit encodé sur plus de 2 bits.)
- v3: Essai d'encodage en utf16
  - v3.1: Explication de l'erreur sur la branche v3.

Run the main test script in this folder to check for encoding issues.