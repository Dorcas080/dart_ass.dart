import 'dart:io';

void main(){
  print('Enter your birth year');
  String? birthYearInput = stdin.readLineSync();

  if(birthYearInput!=null){
    int? birthYear = int.tryParse(birthYearInput);

    if(birthYear!=null && birthYear > 0 && birthYear<=2025){
      int currentYear = 2025;
      int age = currentYear-birthYear;
      print('Your age is:$age');
    }else{
      print('Invalid input.please enter a valid year between 1 and 2025.');
    }
  }else{
    print('No input provided');
  }
}