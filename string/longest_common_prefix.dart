import 'dart:math';

String longestCommonPrefix(List<String> strings) {
  if (strings.isEmpty) return '';
  if (strings.length == 1) return strings.first;

  strings.sort();

  int minChar = min(strings.first.length, strings.last.length);

  int i = 0;

  while (i < minChar && strings.first[i] == strings.last[i]) {
    i++;
  }

  return strings.first.substring(0, i);
}
