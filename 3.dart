import "dart:core";

void main() {
  int currentDay = DateTime.now().day;
  
  String days = "";
  int counter = 0;
  for (int i = 1; i <= currentDay; i++) {
    days = "$days $i";
    
    if (counter == 6) {
      print(days);
      counter = 0;
      days = "";
      continue;
    }
    
    counter++;
  }
}  