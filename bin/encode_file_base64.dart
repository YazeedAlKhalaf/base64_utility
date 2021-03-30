import 'dart:convert';

import 'dart:io';

void main(List<String> arguments) {
  print('Hi, today you can encode your file to base64 format');
  print('Please type the absolute path of the file: ');
  var userInputPath = stdin.readLineSync(encoding: Encoding.getByName('utf-8'));
  var fileToEncode = File(userInputPath);
  var base64EncodedFile = base64.encode(
    utf8.encode(
      fileToEncode.readAsStringSync(),
    ),
  );

  print('base64 encoded: ' + base64EncodedFile);
}
