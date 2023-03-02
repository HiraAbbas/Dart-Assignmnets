//Q.3: A student will not be allowed to sit in exam if his/her attendance is less than 75%.
// Create integer variables and assign value:
//Number of classes held = 16,
//Number of classes attended = 10,
//and print percentage of class attended.
//Is student is allowed to sit in exam or not?

void main() {
  num total = 16;
  num attended = 11;
  num per = attended / total * 100;

  if (per < 75 && per != 75) {
    print("Your Attendance $per%");
    print("Not Allowed to sit in Exam because attendance less than 75%");
  } else {
    print("Your Attendance $per%");
    print("Allowed");
  }
}
