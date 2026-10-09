void main() {
  // Task 1: personal information
  String name = 'Ahmed';
  int age = 20;
  String country = 'Egypt';
  String favoriteColor = 'Blue';

  print('My name is $name .');
  print('I am $age years old .');
  print('I live in $country .');
  print('My favorite color is $favoriteColor .');

  print('\n------------------------------------------\n');

  // Task 2: Simple Calculator
  int num1 = 15;
  int num2 = 4;

  int sum = num1 + num2;
  int difference = num1 - num2;
  int product = num1 * num2;
  double division = num1 / num2;

  print('sum = ${num1 + num2}.');
  print('difference = ${num1 - num2}.');
  print('product =${num1 * num2}.');
  print('division = ${num1 / num2}.');

  print('\n------------------------------------------\n');

  // Task 3: Student Grade
  double math = 90;
  double science = 80;
  double english = 95;

  double totalMarks = math + science + english;
  double average = totalMarks / 3;

  print('Math : ${math.toInt()}');
  print('Science : ${science.toInt()}');
  print('English : ${english.toInt()}');
  print('Total = ${totalMarks.toStringAsFixed(0)}');
  print('Average = ${average.toStringAsFixed(2)}');

  print('\n------------------------------------------\n');

  // Task 4: Rectangle Calculator
  double width = 8;
  double height = 5;
  
  double area = width * height;
  double perimeter = 2 * (width + height);

  print('Width = ${width.toInt()}');
  print('Height = ${height.toInt()}');
  print('Area = ${area.toStringAsFixed(0)}');
  print('Perimeter = ${perimeter.toStringAsFixed(0)}');

  print('\n------------------------------------------\n');

  // Task 5: Temperature Converter
  double celsius = 30;
  double fahrenheit = (celsius * 9/5) + 32;

  print('Celsius = ${celsius.toInt()}');
  print('Fahrenheit = ${fahrenheit.toStringAsFixed(0)}');

  print('\n------------------------------------------\n');

  // Task 6: Shopping Receipt
  double laptop =25000;
  double mouse = 500; 
  double keyboard = 1200;

  double totalPrice = laptop + mouse + keyboard;
  double discount = totalPrice * 0.1; // 10% discount
  double finalPrice = totalPrice - discount;

  print('Laptop = ${laptop.toStringAsFixed(0)}');
  print('Mouse = ${mouse.toStringAsFixed(0)}');
  print('Keyboard = ${keyboard.toStringAsFixed(0)}\n');
  print('Total Price = ${totalPrice.toStringAsFixed(0)}');
  print('Discount = ${discount.toStringAsFixed(0)}');
  print('Final Price = ${finalPrice.toStringAsFixed(0)}');

}
