import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:publish/screens/wrapper.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:publish/model/theuser.dart';
import 'package:publish/services/auth.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'Movies SQLite';

  @override
  Widget build(BuildContext context) {
    return StreamProvider<TheUser?>.value(
      catchError: (_, __) => null,
      initialData: null,
      value: AuthService().user,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        themeMode: ThemeMode.dark,
        theme: ThemeData(
          primaryColor: Colors.black,
          scaffoldBackgroundColor: Colors.black54,
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.black12,
            centerTitle: true,
            elevation: 2,
          ),
        ),
        home: Wrapper(),
      ),
    );
  }
}
