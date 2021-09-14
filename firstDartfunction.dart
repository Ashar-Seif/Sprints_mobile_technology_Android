void main() {
  //program1
  print("Program 1:");
  var summation=sum(70,80);
  print("The sum equals $summation");
   print('\n***********\n');
  //program2
  print("Program 2:");
  var bigger=biggest(60,1,10);
  print("The biggest number is  $bigger");
   print('\n***********\n');
  //program3
   print("Program 3:");
   repeated("Assistive technologies");
   print('\n***********\n');
  //program4
  print("Program 4:");
  List<String>  list=["National","Academy","of","Information","Technology"];
  print("The list elements are :");
  each(list);
   print('\n***********\n');
  //program5
   print("Program 5:");
  print("The list elements are :");
  eachin(list);
   print('\n***********\n');
  //program6
  print("Program 6:");
  tax();
   print('\n***********\n');
  

}

//program1:Program take 2 numbers and return the sum of the numbers.

sum(a,b){
  var result=a+b;
  
  return result;
}


//program2:Program take 3 numbers and return the biggest.

biggest(first,mid,last){
  
  var bigger=first;
  if (mid>bigger)
  {  bigger=mid;}
  else if (last>bigger)
  { bigger=last;}
  return bigger;
}



//program3:Program take a word and return number of repeated characters

repeated(String str){
  List result=[];
  List characters=[];
  int numOfRepetition=0;
  List<String> splitted=str.split("");
  for(String char in splitted ){
      var repetition=splitted.findOccurrences(char);
     if(repetition>1&&!characters.contains(char)){
       result.add(repetition);
       characters.add(char);
       numOfRepetition ++;
     }
         
  }
 
 print("The number of repeated characters is : $numOfRepetition");
  
for (var i=0; i<characters.length; i++) {
    int num=result[i];
    print("Letter "+characters[i]+" is repeated $num times");
}

  
  
}

extension ListExt on List {
  int findOccurrences(String element) {
    var foundLetters = this.where((letter) => letter == element);
    return foundLetters.length;
  }
}




//program4:Write a code that loop on list and print what inside it using for each

each(list){
   list.forEach((element) => print(element));  
}

//program5:Write a program that loop on list and print what inside it using for in



eachin(list){
   for (var element in list){
     print(element);  
}}

//program6:Create a function that takes income and return a number of that tax and make the tax argument is optional and give it a default value= 1500
tax([salary=1500]){
    var salaryTax;
  if (salary<5000){
     salaryTax=salary*5/100;
  }
  else if (salary>5000){
    salaryTax=salary*10/100;
  }
  
  print("The salary tax equals $salaryTax") ;
}