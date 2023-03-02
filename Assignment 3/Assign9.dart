//Q.9: Create Map variable name world then inside it create countries Map,
//Key will be the name country & country value will have another map having capitalCity,
// currency and language to it. by using any country
// key print all the value of Capital & Currency.

void main() {
  Map<String, Map<dynamic, dynamic>> world = {
    "Countries": {
      "Pakistan": {
        "CapitalCity": "Islamabad",
        "Currency": "PKR",
        "Language": "Urdu"
      },
      "China": {
        "CapitalCity": "Beijing",
        "Currency": "CNY",
        "Language": "Chinese"
      },
      "India": {
        "CapitalCity": "New Delhi",
        "Currency": "INR",
        "Language": "Hindi"
      },
      "Bangladesh": {
        "CapitalCity": "Dhaka",
        "Currency": "BDT",
        "Language": "Bangla"
      },
      "Iran": {
        "CapitalCity": "Tehran",
        "Currency": "IRR",
        "Language": "Persian"
      }
    }
  };

  print("CapitalCity: ${world["Countries"]?["Iran"]?["CapitalCity"]}");
  print("Currency: ${world["Countries"]?["Iran"]?["Currency"]}");
}
