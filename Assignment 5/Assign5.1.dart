// Q1:  Map<String, double> expenses = {
//  'sun': 3000.0,
//  'mon': 3000.0,
// 'tue': 3234.0,};
//Check if "fri" exist in expanses;
//if exist change it's value to 5000.0 otherwise add
//'fri' to expenses and set its value to 5000.0 then print expenses.

void main() {

  Map<String, double> expense = {
    "Sunday": 3000.0,
    "Monday": 3003.3,
    "Tuesday": 3245.0,
    "Wednesday": 3243.0,
    "Thursday": 3343.0,
    //"Friday":465645
  };

  expense.putIfAbsent("Friday", () => 5000.0);
  expense["Friday"] = 5000.0;
  expense.update("Friday", (value) => 5000.0, ifAbsent: () => 5000.0);

  print(expense);
 
}
