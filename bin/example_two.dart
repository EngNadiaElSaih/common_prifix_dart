void main() {
  List<String> strs = ["dog", "racecar", "car"];
  String output = longestCommonPrefix(strs);
  print(output);
}

String longestCommonPrefix(List<String> strs) {
  if (strs.isEmpty || strs == null) return "null or empty";

  String prefix = strs[0];

  for (int i = 1; i < strs.length; i++) {
    while (!strs[i].startsWith(prefix)) {
      prefix = prefix.substring(0, prefix.length - 1);
      if (prefix.isEmpty) return "there is no common";
    }
  }

  return prefix;
}
