import 'dart:io';
import 'dart:typed_data';

import 'package:charset_converter/charset_converter.dart';

Future<void> main(List<String> args) async {
  var process = await Process.run(
      "powershell.exe",
      [
        "-Command",
        "(Get-WMIObject -Class Win32_ComputerSystemProduct).Description"
      ],
      stdoutEncoding: null,
      stderrEncoding: null);

  var stdout = CharsetConverter.decode("utf-16", process.stdout as Uint8List);
  var stderr = process.stderr as List<int>;

  print("Output: ${stdout}");
  print("Error: ${stderr}");
  print("Exit code: ${process.exitCode}");
}
