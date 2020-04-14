import 'package:flutter/material.dart';
import 'package:off_app/user/authentication.dart';
import 'package:off_app/screens/login.dart';
import 'package:provider/provider.dart';
import 'package:off_app/screens/home.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: AuthProvider.initialize())
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false, home: ScreensController())));
}

class ScreensController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final auth = Provider.of<AuthProvider>(context);
    switch (auth.status) {
      case Status.Authenticating:
        return Login();
      default:
        return Login();
      //return HomePage();
    }
  }
}
