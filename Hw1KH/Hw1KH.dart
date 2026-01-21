void main() {
  // print(swapNumber(0));
  // print(
  //   checkLetters(
  //     "The quick brown fox jumps over three meter and better than a lazy dog",
  //   ),
  // );
  // countLetters("irresistibility");
  countLettersList("mississippi");
}

//Q1
int swapNumber(int number) {
  if (number != 0 && number != 1) {
    print("Invalid Number!");
    return -1;
  }
  int x = number == 1 ? 0 : 1;
  return x;
}

//Q2
bool checkLetters(String srt) {
  String comp = srt.toLowerCase(); //converts all letters to lowerCase
  String letters =
      "abcdefghijklmnopqrstuvwxyz"; // string that has all letters in lower case for comparing
  var counter = letters.length; // 26 obviously (:
  for (int i = 0; i < letters.length; i++) {
    for (int j = 0; j < comp.length; j++) {
      if (letters[i] == comp[j]) {
        // if to letters in the same index are matched
        counter--;
        break;
      }
    }
  }
  return (counter <= 0); // if emtpty then all letters are in the string
}

//Q3
void countLetters(String str) {
  Map<String, int> map = {};
  for (int i = 0; i < str.length; i++) {
    if (map.containsKey(str[i])) {
      map[str[i]] = map[str[i]]! + 1;
      continue;
    }
    map[str[i]] = 1;
  }
  print(map);
}

//Q3 Extra
void countLettersList(String str) {
  print(str);
  List<String> list = [];
  for (int i = 0; i < str.length; i++) {
    list.add(str[i]);
  }
  for (int i = 0; i < list.length; i++) {
    for (int j = i + 1; j < list.length; j++) {
      String x = list[i];
      String y = list[j];
      if (x[x.length - 1] == y[y.length - 1]) {
        list[i] = x + y;
        list.removeAt(j);
        j--;
      }
    }
  }
  list.sort();
  for (String element in list) {
    print("${element[0]}: ${element.length}");
  }
}
