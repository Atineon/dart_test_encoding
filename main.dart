import 'dart:io';

void main(List<String> args) {
  Process.run("powershell.exe", [
    "-Command",
    "(Get-WMIObject -Class Win32_ComputerSystemProduct).Description"
  ]);
}
