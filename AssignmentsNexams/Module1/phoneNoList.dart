void main() {
  List phoneNo = [ 
   "+88", 
    "01768131681", 
    "01768171982", 
    "01768111283", 
    "01768131684",
    "01768131685",
    "01768131686",
    "01768131687"
  ];
  //Type 1
  
  print("First Type Output");

  for (var i = 1; i < phoneNo.length; i++) {
    String fullNo = "+88" + phoneNo[i];
    print(fullNo);
  }

  //Type 2
  
  print("Second Type Output");
  print(phoneNo[0]+phoneNo[1]);
  print(phoneNo[0]+phoneNo[2]);
  print(phoneNo[0]+phoneNo[3]);
  print(phoneNo[0]+phoneNo[4]);
  print(phoneNo[0]+phoneNo[5]);
  print(phoneNo[0]+phoneNo[6]);
  print(phoneNo[0]+phoneNo[7]);

}