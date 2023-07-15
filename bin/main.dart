

import 'dart:io';

import 'Services/Web API Reguest.dart';

Future<void> main() async {


 bool isRunning = true;

 while (isRunning) {
  print('\n Menu:');
  print(' 1. Get');
  print(' 2. GetById');
  print(' 3. Post');
  print(' 4. UpdateById');
  print(' 5. DeleteById');
  print(' 0. Exit');

  String red(String text) {
   final redColor = '\u001b[31m';

   final resetColor = '\u001b[0m';

   return '$redColor$text$resetColor';
  }

  stdout.write('\n Enter your choice: ');
  var choice = stdin.readLineSync();

  switch (choice) {
   case '1':
    print('\n ${red('Get\n')}');
    await WebAPIRequest.Get();
    break;
   case '2':
    print('\n ${red('GetById\n')}');
    stdout.write('\n Enter id: ');
    String? id = stdin.readLineSync();
    await WebAPIRequest.GetById(id ?? '');
    break;
   case '3':
    print('\n ${red('Post\n')}');
    await WebAPIRequest.Post();
    break;
   case '4':
    print('\n ${red('UpdateById\n')}');
    stdout.write('\n Enter id: ');
    String? id = stdin.readLineSync();
    await WebAPIRequest.UpdateById(id ?? '');
    break;
   case '5':
    print('\n ${red('DeleteById\n')}');
    stdout.write('\n Enter id: ');
    String? id = stdin.readLineSync();
    await WebAPIRequest.DeleteById(id ?? '');
    break;
   case '0':
    print('Exiting...');
    isRunning = false;
    exit(0);
  }
 }


}
