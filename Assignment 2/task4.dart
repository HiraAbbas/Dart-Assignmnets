//Q.4: Create integer variable assign any year to it and check if a year is leap year or not.
//If a year is divisible by 4 then it is leap year
// but if the year is century year like 2000, 1900, 2100
//then it must be divisible by 400.
//i.e: Use % ( modulus ) operator.
//except for years that are divisib by 100 but not divisible by 400. For example, the year 2000 was
// a leap year, but the year 1900 was not.

void main() {
  num year = 1804;

  if (year % 4 == 0 && year % 400 == 0) {
    print("$year a leap year");
  } else if (year % 100 == 0 && year % 400 == 0) {
    print("$year a leap year");
  } else if (year % 400 == 0 && year % 4 != 0 && year % 100 != 0) {
    print("$year a leap year");
  } else if (year % 4 == 0 && year % 100 != 0 && year % 400 != 0) {
    print("$year a leap year");
  } else {
    print("$year not a leap year");
  }
}
