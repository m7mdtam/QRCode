class Member {
  final String id;
  final String name;
  int sessionCount;

  Member({required this.id, required this.name, this.sessionCount = 0});
}
