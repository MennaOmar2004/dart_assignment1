import 'dart:io';
void main(){  

  //Task 1 — Even or Odd
  print('Please enter a number: ');
  int num = int.parse(stdin.readLineSync()!);

  if(num < 0){
    print('$num is negative number');
  }
  if(num % 2 == 0){
    print('$num is even');
  }
  else{
    print('$num is odd');
  }
  

  print('\n ------------------------------------------------------- \n');

  //Task 2 — Numbers From 1 to N
  print('Please enter the n: ');
  int n = int.parse(stdin.readLineSync()!);

  for(int i = 1; i <= n; i++){
    print(i);
  }
  
  for (int i = 1; i <= n; i++) {
  
    if (i % 3 == 0 && i % 5 == 0) {
      print('FizzBuzz');
    } else if (i % 3 == 0) {
      print('Fizz');
    } else if (i % 5 == 0) {
      print('Buzz');
    }
    else {
      print(i);
    }
  }


  print('\n ------------------------------------------------------- \n');

  // Task 3 — List Statistics
  List<int> numbers = [12, 5, 8, 21, 4, 15, 10];

  int sum = 0;
  int largestNumber = 0;
  int smallestNumber = 100;
  int countEven = 0;
  List<int> GreaterThanTen = [];

  for (int i in numbers) {
    sum += i;

    if (i > largestNumber) {
      largestNumber = i;
    }
    if (i < smallestNumber) {
      smallestNumber = i;
    }
    if (i % 2 == 0) {
      countEven++;
    }
    if (i > 10) {
      GreaterThanTen.add(i);
    }
  }
  print('The sum of the numbers is: $sum');
  print('The largest number is: $largestNumber');
  print('The smallest number is: $smallestNumber');
  print('The number of even numbers is: $countEven');
  print('Numbers greater than ten: $GreaterThanTen');


  print('\n ------------------------------------------------------- \n');

  // Task 4 — Student Grades Using a Map
  Map<String, int> studentGrades = {
    'Omar': 30,
    'Menna': 92,
    'Ahmed': 78,
    'Sara': 45,
    'Laila': 50
  };
  double average = 0;
  int total = 0;
  int highestGrade = 0;
  String name = '';
  int countPass = 0;

  for (var entry in studentGrades.entries) {
    print('${entry.key}: ${entry.value}\n');
  }
  for (var entry in studentGrades.entries) {  
    total += entry.value;
   if (entry.value >= 50) {
      print('${entry.key} pass');
      countPass++;
    } else {
      print('${entry.key} fail');
    }
  }

  for(var entry in studentGrades.entries){
    if(entry.value > highestGrade){
      highestGrade = entry.value;
      name = entry.key;

    }
  }
  average = total / studentGrades.length;
  print('\nThe average grade is: $average');
  print('${name} has the highest grade: $highestGrade');
  print('The number of students who passed is: $countPass');

  print('\n ------------------------------------------------------- \n');

  
  // Task 5 — Simple Calculator
  print('Please enter the first number: ');
  int num1 = int.parse(stdin.readLineSync()!);
  print('Please enter the second number: ');
  int num2 = int.parse(stdin.readLineSync()!);
  print('Please enter the operation: ');
  String operation = stdin.readLineSync()!;

  switch (operation) {
    case '+':
      print('The result is: ${num1 + num2}');
      break;
    case '-':
      print('The result is: ${num1 - num2}');
      break;
    case '*':
      print('The result is: ${num1 * num2}');
      break;
    case '/':
      if (num2 != 0) {
        print('The result is: ${num1 / num2}');
      } else {
        print('Error: Division by zero');
      }
      break;
    default:
      print('Invalid operation');
  }


  print('\n ------------------------------------------------------- \n'); 


  // Task 6 — Shopping Cart
  List<Map<String,dynamic>> shopingcart= [
     {
      'name': 'Laptop',
      'price': 20000,
      'quantity': 1
    },
    {
      'name': 'Mouse',
      'price': 500,
      'quantity': 2
    },
    {
      'name': 'Keyboard',
      'price': 5000,
      'quantity': 3
    },
  ];

   int totalProductPrice = 0;
   int tatalCartCost =0;
   int totalItems =0;

  for(int i= 0 ; i < shopingcart.length ; i++){
    
    print("name : ${shopingcart[i]["name"]} , price : ${shopingcart[i]["price"]} , quantity : ${shopingcart[i]["quantity"]}");

    totalProductPrice = shopingcart[i]["price"]*shopingcart[i]["quantity"];
    
    print("totalProductPrice of ${shopingcart[i]["name"]} = $totalProductPrice");

    tatalCartCost +=  totalProductPrice;
    totalItems += shopingcart[i]["quantity"] as int;
    
  }

  print ("\ntatalCartCost = $tatalCartCost");
  
  if(tatalCartCost >= 25000){
    double discount = .1*tatalCartCost;
    print ("\ntotal price after discount = ${tatalCartCost - discount}");
  
  }

  print("total Items in cart = $totalItems");


  print('\n ------------------------------------------------------- \n');


  //Task 7 — Hard: Student Management System
  List <Map<String,dynamic>> studintInfo = [
    {
      "name": "Mona" ,
      "grades" : [90, 80, 100]
    },
    {
      "name": "Ahmed" ,
      "grades" : [70, 60, 80]
    },
    {
      "name": "Ali" ,
      "grades" : [40, 30, 50]
    },
    {
      "name": "Sara" ,
      "grades" : [70, 50, 60]
    },

  ];

  int totalGrades = 0;
  double studentAverage = 0;
  double totalavrageGrades = 0;
  double classAverage = 0;
  double highestAverage = 0;
  double lowestAverage = 1000;
  String status = "";
  int countOfStudent = 0;
  List<String> studentsWith80Plus = [];
  bool accept = true;
  bool found = false;
  int index = 0;
  double averageGradeOfMona = 0;
  String topStudentName = "";
 

    for(int i = 0 ; i < studintInfo.length ; i++ ){
       totalGrades = 0;
       studentAverage = 0;
       accept = true;
       
      
      for(int g in studintInfo[i]["grades"] ){
        totalGrades += g  ;
        studentAverage = totalGrades / studintInfo[i]["grades"].length ;
        if (g < 80){
          accept = false;
        }
      }
      if (accept == true){
          studentsWith80Plus.add(studintInfo[i]["name"]);
      }
      
      if (studentAverage>= 85){
        status = "Excellent";
        countOfStudent++;
      }
      else if (studentAverage >= 70){
        status = "good";
        countOfStudent++;
      }
      else if (studentAverage >= 50){
        status = "pass";
        countOfStudent++;
      }
      else{
        status = "fail";
      }
      print (" student : ${studintInfo[i]["name"]} , average grades = $studentAverage, status : $status");

      totalavrageGrades += studentAverage ;
      classAverage = totalavrageGrades / studintInfo.length ;
      
      if (studentAverage > highestAverage ){
        highestAverage =  studentAverage;
        topStudentName = studintInfo[i]["name"];
      }
      if (studentAverage < lowestAverage ){
        lowestAverage =  studentAverage; 
      }

      if (studintInfo[i]["name"] == "Mona"){
        found = true;
        index = i ;
        averageGradeOfMona = studentAverage;
    
      }
       
    }

    print ("\nclassAverage = $classAverage");
    print ("highestAverage = $highestAverage"); 
    print ("lowestAverage = $lowestAverage");
    print ("countOfStudent = $countOfStudent");
    print ("studentsWith80Plus = $studentsWith80Plus");
    if (found == true){
      print ("\nthe student Mona grade :${studintInfo[index]["grades"]} ,and averageGradeOfMona = $averageGradeOfMona");
    }
    else{
      print ("Student not found");
    }
    print("\nPlease enter your choice (1, 2 , 3, 4 ,5)");
     int choice =int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        for (var student in studintInfo) {
          print("\n${student["name"]} : ${student["grades"]}");
        }
        break;
      case 2:
        print("classAverage = $classAverage");
        break;
      case 3:
        print("topStudent = $topStudentName with average grade $highestAverage");
        break;
      case 4:
        bool found = false;
        print("Enter the student name to search");
        String studentName = stdin.readLineSync()!;
        for (var student in studintInfo) {
          if (student["name"] == studentName) {
            found = true;
            print("${student["name"]} : ${student["grades"]}");
            break;
          }
        }
        if (!found) {
          print("Student not found");
        }
      case 5:
        print("Exiting the program...");
        break;
      default:  
        print("Invalid choice. Please try again.");
    }


  
 

}