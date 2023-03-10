//Q2: Write a program in Dart that find the area of a circle using function.
//A = πr^2
void main() {
  
  areaCircle(7);
}

areaCircle(double radius) {
  double pi = 3.14159;
  double areas = pi * radius * radius;
  String area =
      areas.toStringAsFixed(3); //result Area is rounded to 3rd decimal places.
  print('The Area of a circle with Radius $radius is: $area');
}
