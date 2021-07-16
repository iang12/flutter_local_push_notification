import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'pages/home_page.dart';
import 'services/local_notification.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      child: MaterialApp(
        theme: ThemeData(fontFamily: 'Monteserat'),
        home: HomePage(),
        debugShowCheckedModeBanner: false,
      ),
      providers: [
        ChangeNotifierProvider(
          create: (_) => NotificationService(),
        )
      ],
    );
  }
}
