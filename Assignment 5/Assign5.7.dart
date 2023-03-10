//Q7: Write a function to calculate number of vowels and consonant in a String.
void main() {
  String input = 'Hira';
  int vowelCount = countVowels(input);
  int consonantCount = input.length - vowelCount;
  print('String: $input');
  print('Number of vowels: $vowelCount');
  print('Number of consonants: $consonantCount');
}

int countVowels(String input) {
  //create a function for counting the vowels
  int count = 0;
  for (int i = 0; i < input.length; i++) {
    String alphabet = input[i].toLowerCase();
    if (alphabet == 'a' ||
        alphabet == 'e' ||
        alphabet == 'i' ||
        alphabet == 'o' ||
        alphabet == 'u') {
      count++;
    }
  }
  return count;
}
