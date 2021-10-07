import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Permissions',
      home: AppPermissions(),
    );
  }
}

class AppPermissions extends StatefulWidget {
  @override
  _AppPermissionsState createState() => _AppPermissionsState();
}

class _AppPermissionsState extends State<AppPermissions> {
  bool _notifications = true;
  bool _location = false;
  bool _activity = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              Expanded(child: SizedBox()),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('App Permissions',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0)),
              ),
              Text(
                'One last thing! You\'ll need to grant the '
                '\nfollowing app permissions to enable the '
                '\nfeatures you\'ve chosen',
                style: TextStyle(fontSize: 16.0),
                textAlign: TextAlign.center,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(14.0, 14.0, 14.0, 0),
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: ListTile(
                  title: Text(
                    '💬 Notifications',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Text('For important activity that takes'
                      '\nplace in your Cocoon'),
                  trailing: CupertinoSwitch(
                    value: _notifications,
                    onChanged: (bool value) {
                      setState(() {
                        _notifications = value;
                      });
                    },
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(14.0, 14.0, 14.0, 0),
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: ListTile(
                  title: Text(
                    '🏡 Location',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                  ),
                  subtitle: const Text('Required to power your map, and'
                      '\nprecise or city-level updates'),
                  trailing: CupertinoSwitch(
                    value: _location,
                    onChanged: (bool value) {
                      setState(() {
                        _location = value;
                      });
                    },
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(14.0, 14.0, 14.0, 0),
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: ListTile(
                  title: Text(
                    '💪 Activity',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                  ),
                  subtitle: const Text('Required to power your map, and'
                      '\nprecise or city-level updates'),
                  trailing: CupertinoSwitch(
                    value: _activity,
                    onChanged: (bool value) {
                      setState(() {
                        _activity = value;
                      });
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: 'You can always adjust these later from within \nthe ',
                    style: TextStyle(color: Colors.grey, fontSize: 16.0),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Setting app.',
                          style: TextStyle(color: Colors.blue, fontSize: 16.0)),
                    ]
                  ),
                ),
              ),
              Expanded(child: SizedBox()),
              Container(
                height: 50.0,
                width: 350.0,
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(24.0),
                ),
                child: TextButton(
                  onPressed: () => print('Done is onPressed'),
                  child: Text('Done', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                ),
              ),
              SizedBox(height: 30.0),
            ],
          ),
        ),
      ),
    );
  }
}
