//Q.6: Write a program to check whether an alphabet is a vowel or consonant.

void main() {
  String alpha = "I";
  String alphabets = alpha.toLowerCase();

  if (alphabets == "a" ||
      alphabets == "e" ||
      alphabets== "i" ||
      alphabets == "o" ||
      alphabets == "u") {
    print("Vowel= $alphabets");
  } else {
    print("Consonent= $alphabets");
  }
}
