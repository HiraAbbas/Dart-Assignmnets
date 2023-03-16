//Q6: Write a Dart function that accept a list of country names as input and
// returns the longest country name as output.
//Sample function : Get_Longest_Country(["Australia", "Germany", "United States of America"])
//Expected output : "United States of America"

void main() {
  List<String> country = ["Australia", "Germany", "United States of America"];
  String longestCountry = getLongestCountry(country);
  print("The longest country name among the List Output is : $longestCountry"); // Output: "United States of America"
}

String getLongestCountry(List<String> country) {
  String longestCountry = '';
for (int i = 0; i < country.length; i++) {
    if (country[i].length > longestCountry.length) {
      longestCountry = country[i];
    }
  }
  return longestCountry;
}
