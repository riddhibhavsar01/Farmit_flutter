
import 'package:farmit_flutter/utils/helpers/api_provider.dart';
import 'package:farmit_flutter/utils/helpers/shared_pref_helper.dart';
import 'package:farmit_flutter/view/my_home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:load/load.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(  ProviderScope(child: MyApp()));
}
final apiProvider = Provider((ref)=> APIProvider(ref.read));
final prefProvider = Provider((ref)=> SharedPref());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:  LoadingProvider( themeData: LoadingThemeData(),child : MyHomePage()),
    );
  }
}
