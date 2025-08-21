import 'dart:io';

Future<void> main(List<String> args) async {
  var process = await Process.run("powershell.exe", [
    "-Command",
    "(Get-WMIObject -Class Win32_ComputerSystemProduct).Description"
  ]);

  print("Output: " + process.stdout.trim());
  print("Error: " + process.stderr.trim());
  print("ExitCode: " + process.exitCode.toString());
}
