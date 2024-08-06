import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_flutter/qr_flutter.dart';
import '../../models/member.dart';
import '../../providers/member_provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final memberProvider = Provider.of<MemberProvider>(context, listen: false);
    final member = Member(id: '123', name: 'John Doe');
    memberProvider.addMember(member);

    return Scaffold(
      appBar: AppBar(
        title: Text('Member QR Code'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            QrImageView(
              data: member.id,
              version: QrVersions.auto,
              size: 320,
              gapless: false,
              errorStateBuilder: (cxt, err) {
                return Container(
                  child: Center(
                    child: Text(
                      'Uh oh! Something went wrong...',
                      textAlign: TextAlign.center,
                    ),
                  ),
                );
              },
            ),
            SizedBox(height: 20),
            Text('Scan this QR code to update sessions for ${member.name}'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/admin');
              },
              child: Text('Admin Page'),
            ),
          ],
        ),
      ),
    );
  }
}
