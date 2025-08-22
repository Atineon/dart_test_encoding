import 'dart:io';

Future<void> main(List<String> args) async {
  // output actuel de l'agent
  var stdout = "Produit systŠme informatique";
  print("Output: ${stdout}");

  // visualisation de l'output en bytes décimal
  print("Output bytes: ${stdout.codeUnits}");
  // Comme Dart utilise UTF-16 pour les String, on voit que le 'Š' est codé sur 2 bytes (0x0160 = 352)
  // Et comme l'utf-8 est codé sur 1 byte, le byte décimal 352 n'est pas recevable en utf-8 et fait planter l'agent.
  // De plus, même si on enlève l'encoding lors du Process.run, (stdoutEncoding: null) le bytes 352 est transformé en 197 (toujours au dessus de 128 bits).
  var process = await Process.run('echo', ["Produit systŠme informatique"],
      stdoutEncoding: null, stderrEncoding: null);

  print("Ouput process: ${process.stdout.toString()}");
}
