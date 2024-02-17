Map<int, int> getNotesDistribution(List<Map<String, dynamic>> students) {
  if (students.isEmpty) return {};
  var arr = students.expand((student) => student['notes']).where((e) => [1, 2, 3, 4, 5].contains(e)).toList();
  var object = <int, int>{};
  for (var e in arr) {
    object[e] = (object[e] ?? 0) + 1;
  }
  return object;
}
