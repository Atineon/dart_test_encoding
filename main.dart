import 'dart:io';

Future<void> main(List<String> args) async {
  var process = await Process.run("powershell.exe", [
    "-Command",
    "(Get-WMIObject -Class Win32_ComputerSystemProduct).Description"
  ]);

  print("Output: " + process.stdout);
  print("Error: " + process.stderr);
  print("ExitCode: " + process.exitCode.toString());
}
