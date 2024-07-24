void main() {
  List<String> strs1 = ["flower", "flow", "flight"];
  List<String> strs2 = ["dog", "racecar", "car"];
  String output1 = longestCommonPrefix(strs1);
  String output2 = longestCommonPrefix(strs2);
  print(output1);
  print(output2);
}

String longestCommonPrefix(List<String> strs) {
  if (strs.isEmpty || strs == null) return "";

  String prefix = strs[0];

  for (int i = 1; i < strs.length; i++) {
    while (!strs[i].startsWith(prefix)) {
      prefix = prefix.substring(0, prefix.length - 1);
      if (prefix.isEmpty) return "there is no common";
    }
  }

  return prefix;
}
