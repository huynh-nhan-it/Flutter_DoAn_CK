import 'package:mytopzone/provider/category_provider.dart';
import 'package:mytopzone/provider/product_provider.dart';
import 'package:mytopzone/screens/homepage.dart';
import 'package:mytopzone/screens/login.dart';
import 'package:mytopzone/screens/welcomescreen.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyBr5UcCILuD2sQtloFrDtpTaGs0ejH_xP8",
      appId: "1:1000088357683:android:36112b9dd1829fb7208c46",
      messagingSenderId: "1000088357683",
      projectId: "my-project-a0a67",
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CategoryProvider>(
          create: (context) => CategoryProvider(),
        ),
        ChangeNotifierProvider<ProductProvider>(
          create: (context) => ProductProvider(),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
          primaryColor: Color(0xff746bc9),
          iconTheme: IconThemeData(color: Colors.black),
        ),
        debugShowCheckedModeBanner: false,
        home: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return HomePage();
            } else {
              return Login();
            }
          },
        ),
      ),
    );
  }
}
