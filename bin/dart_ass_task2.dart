void main(){
 String num1 = '10';
 String num2 = '20';
 
int? number1 =int.tryParse(num1);
int? number2 = int.tryParse(num2);

if(number1!= null&& number2 !=null){
  int sum = number1 + number2;
print('The sum is: $sum');
}else{
  print('invalid input');
}
}