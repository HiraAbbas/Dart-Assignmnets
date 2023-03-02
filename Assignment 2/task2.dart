//Q.2: Take two variables and store age then using
//if/else condition to determine oldest and youngest among them.

void main() {
  num age1 = 70;
  num age2 = 77;

  if (age1 < age2) {
    print(
        "Age1= Youngest one '$age1 years old', Age2 = Oldest one '$age2 years old'");
  } else if (age1 > age2) {
    print(
        "Age2= Youngest one '$age2 years old', Age1 = Oldest one '$age1 years old'");
  } else {
    print("Both are Equal Age1= $age1 years old, Age2= $age2 years old");
  }
}
