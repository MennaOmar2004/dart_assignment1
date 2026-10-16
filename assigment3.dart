
double calculateTota(double price , int quantity){
  return price*quantity;
}

////////////////////////////////////////////////////

String greateUser(String name, [String greating = "Hello"]){
  return "$greating $name";
}

/////////////////////////////////////////////////////
double calculateOrder(double price ,int quantity , {double discount = 0.0 , double deliveryFee =0}){
  double finalOrderPrice = (price * quantity) - discount + deliveryFee;
  return finalOrderPrice;
}

//////////////////////////////////////////////////////
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


String duckDuckGoose(List<String> players, int position){
  if (position < 1 || position > players.length){
    return "Invalid position";
  }
  return players[position-1] ;
}

void main(){

print(calculateTota(50.0,3));
print(calculateTota(25.5, 2));

print('\n ------------------------------------------------------- \n');


print(greateUser( "Menna", "Hi"));
print(greateUser( "laila"));

print('\n ------------------------------------------------------- \n');

print(calculateOrder(50.0, 3, discount: 5.0, deliveryFee: 10.0));

print('\n ------------------------------------------------------- \n');

print(filterNumbers([1, 2, 5, 8, 12, 15], min: 2, max: 12));
print(filterNumbers([1, 2, 5, 8, 12, 15], min: 2, max: 12 , includeeven: false));

print('\n ------------------------------------------------------- \n');

 print (calculateCartTotal([200,300] , isMember : true , maxDiscount :10 , discountPercent :0 , deliveryFee :20));

 print(duckDuckGoose (["ali" , "menna" , "roqia" , "Salma"] , 0));
}