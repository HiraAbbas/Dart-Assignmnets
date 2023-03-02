//Q.1: Create two integer variables length and breadth and assign values then
//check if they are square values or rectangle values

void main() {
  num Length = 16;
  num Breadth = 4;
  num Area = Length * Breadth;

  if (Length == Breadth && Area != 0) {
    print("Its SQUARE values and Area is = $Area cm\u00B2");
  } else if (Length != Breadth && Area != 0) {
    print("Its RECTANGLE values and Area is = $Area cm\u00B2");
  } else {
    print("No Square neither Rectangle Values because its Area = $Area ");
  }
}
