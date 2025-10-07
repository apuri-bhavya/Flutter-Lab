import 'dart:io';
void main(){
  print("Enter a Number");
  int N=int.parse(stdin.readLineSync()!);
  int sum=0;
  for(int i =N;i>0;i=(i/10).floor()){
    sum+=(i%10);
  }
  print('Sum of digits\n$sum');
  }