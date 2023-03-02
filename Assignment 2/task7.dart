//Q.7: Write a program to calculate and print the Electricity bill of a given customer.
// Create variable for customer id, name, unit consumed by the user, bill_amount and print the
//total amount the customer needs to pay. The charge are as follow :
//Unit    Charge/unit
//upto 199    @1.20
//200 and above but less than 400    @1.50
//400 and above but less than 600    @1.80
//600 and above             @2.00;
//Test Data :
//id: 1001
//name: James
//units: 800
//Expected Output :
//Customer IDNO :1001
//Customer Name :James
//unit Consumed :800
//Amount Charges @Rs. 2.00 per unit : 1600.00
//Net Bill Amount : 1600.00

void main() {
  String name = "Hira Abbas";
  int ID = 400003349;
  num consumedUnit = 201;
  num unitPrice = 1.20;
  num unitPrice1 = 1.50;
  num unitPrice2 = 1.80;
  num unitPrice3 = 2.00;
  num totalCost = 0;
  print("Consumer Name     : $name ");
  print("Cosumer  ID       : $ID");
  print("Unit Consumed     : $consumedUnit units");
  if (consumedUnit >= 0 && consumedUnit <= 199) {
    print("Amount Charges @Rs: 1.20/unit");
    print("Net BillAmount    : ${totalCost = unitPrice * consumedUnit} Rs");
  } else if (consumedUnit >= 200 && consumedUnit < 400) {
    print(
        "Amount Charges @Rs: 1.50/unit :${totalCost = unitPrice1 * consumedUnit} Rs");
    print("Net BillAmount    : ${totalCost = unitPrice1 * consumedUnit}");
  } else if (consumedUnit >= 400 && consumedUnit < 600) {
    print(
        "Amount Charges @Rs: 1.80/unit :${totalCost = unitPrice2 * consumedUnit} Rs");
    print("Net BillAmount   : ${totalCost = unitPrice2 * consumedUnit}");
  } else if (consumedUnit >= 600) {
    print("Amount Charges @Rs: 2.00/unit");
    print("Net BillAmount    : ${totalCost = unitPrice3 * consumedUnit} Rs");
  } else {
    print("no Billed");
  }
}
