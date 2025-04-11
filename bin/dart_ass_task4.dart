import 'dart:io';

void main(){
  int currentYear = 2025;
  bool continueInput = true;

  while(continueInput){
    print('Enter your birth year:');
    String? birthYearInput = stdin.readLineSync();

    if(birthYearInput!=null){
      int?birthYear = int.tryParse(birthYearInput);

      if(birthYear!=null && birthYear>0&& birthYear<=currentYear){
        int age = currentYear-birthYear;
        print('Your age is $age');
      }else{
        print('Invalid input.please enter a valid year between1 and $currentYear.');
      }
    }else{
      print('No input provided');
    }
    print('Do you want to continue?(yes/no)');
    String?response = stdin.readLineSync();

    if(response?.toLowerCase()!='yes'){
      continueInput = false;
    }
  }
}