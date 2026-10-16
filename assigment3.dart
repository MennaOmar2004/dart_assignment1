
 // Task 1 — Calculate Total Price
double calculateTotal(double price , int quantity){
  return price*quantity;
}

////////////////////////////////////////////////////

//Task 2 — Customize a Greeting
String greetUser(String name, [String greeting = "Hello"]){
  return "$greeting $name";
}

/////////////////////////////////////////////////////

//Task 3 — Calculate an Order
double calculateOrder(double price ,int quantity , {double discount = 0.0 , double deliveryFee =0}){
  double finalOrderPrice = (price * quantity) - discount + deliveryFee;
  return finalOrderPrice;
}

//////////////////////////////////////////////////////

//Task 4 — Filter Numbers
List<int> filterNumbers(List<int> numbers , {int min =0 , int max = 100 , bool includeeven = true}){
  List<int> newList =[];
  for(int num in numbers){
    if (num >= min && num <= max ){
      if ( num % 2 == 0 ||includeeven == false ){
           newList.add(num); 
       }
    }
  
  }
  return newList;
}

///////////////////////////////////////////////////////

//Task 5 — Shopping Cart Calculator
double calculateCartTotal (
  List<double> prices,
  {
   double discountPercent = 0 ,
   double taxPercent = 14,
   double deliveryFee = 0 ,
   bool isMember = false ,
   double maxDiscount  = 100  
  }
){
  double sumOfPrice =0.0;
  double finalPrice =0.0 ;
  double totalDiscountPercent = discountPercent;
  
  if(prices.isEmpty){
    finalPrice = 0;
  }
  else{
    for(double price in prices){
    sumOfPrice += price ;
    finalPrice = sumOfPrice;
  }
  
  if(isMember == true ){
    totalDiscountPercent += 5 ;
    if(totalDiscountPercent > maxDiscount){
      totalDiscountPercent = maxDiscount;
    }
    finalPrice = finalPrice - ((totalDiscountPercent/100)* finalPrice );
  }
  else{
    if(totalDiscountPercent > maxDiscount){
      totalDiscountPercent = maxDiscount;
    }
    finalPrice = finalPrice - ((totalDiscountPercent/100)* finalPrice );
  }  

  double tax = (taxPercent/100) * finalPrice ;
  finalPrice = finalPrice + tax + deliveryFee;
  }
  
  return finalPrice ;
}




void main(){

// Task 1 — Calculate Total Price
print(calculateTotal(50.0,3));
print(calculateTotal(25.5, 2));

print('\n ------------------------------------------------------- \n');

//Task 2 — Customize a Greeting
print(greetUser( "Menna", "Hi"));
print(greetUser( "laila"));

print('\n ------------------------------------------------------- \n');

//Task 3 — Calculate an Order
print("final order price  = ${calculateOrder(50.0, 3, discount: 5.0, deliveryFee: 10.0)}");

print('\n ------------------------------------------------------- \n');

//Task 4 — Filter Numbers
print(filterNumbers([1, 2, 5, 8, 12, 15], min: 2, max: 12));
print(filterNumbers([1, 2, 5, 8, 12, 15], min: 2, max: 12 , includeeven: false));

print('\n ------------------------------------------------------- \n');

//Task 5 — Shopping Cart Calculator
print("final cart total  = ${calculateCartTotal([200,300] , isMember : true , maxDiscount :10 , discountPercent :5 , deliveryFee :20)}");
print("final cart total  = ${calculateCartTotal([100,200 ,50])}"); 
print("final cart total  = ${calculateCartTotal([100,200 ,50] ,taxPercent: 14, discountPercent :10 , deliveryFee :25)}");
print("final cart total  = ${calculateCartTotal([100,200 ,50] ,discountPercent :10 , maxDiscount: 12, isMember : true)}");


}