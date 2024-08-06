import 'package:flutter/material.dart';
import '../models/member.dart';

class MemberProvider with ChangeNotifier {
  List<Member> _members = [];

  List<Member> get members => _members;

  void addMember(Member member) {
    _members.add(member);
    notifyListeners();
  }

  void updateSessionCount(String memberId) {
    final member = _members.firstWhere((member) => member.id == memberId);
    member.sessionCount++;
    notifyListeners();
  }
}
