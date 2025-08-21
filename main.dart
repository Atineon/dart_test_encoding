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

  Uint8List outputBytes = process.stdout as Uint8List;
  Uint8List errorBytes = process.stderr as Uint8List;

  print("Output: " + await CharsetConverter.decode("windows1252", outputBytes));
  print("Error: " + await CharsetConverter.decode("windows1252", errorBytes));
  print("ExitCode: " + process.exitCode.toString());
}
