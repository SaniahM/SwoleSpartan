import 'package:SwoleSpartan/checkout.dart';
import 'package:flutter/material.dart';

import 'login.dart';
import 'signup.dart';

import 'product_details_main.dart';
import 'generic.dart';
import 'storecategoryscreen.dart';
import 'cart.dart';

import 'package:provider/provider.dart';
import 'auth.dart';
import 'user.dart';
import 'gateway.dart';

import 'post.dart';

void main() => runApp( MyApp() );

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    
    return StreamProvider<User>.value(

        value: AuthService().user,

        child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: <String, WidgetBuilder> {
          '/login': (BuildContext context) => new LoginPage(),
          '/viewproduct': (BuildContext context) => new ViewProductPage(),
          '/signup': (BuildContext context) => new SignupPage(),
          '/generic': (BuildContext context) => new GenericTemplate(),
          '/cart': (BuildContext context) => new CartPage(),
          '/checkout': (BuildContext context) => new CheckoutPage(),
          '/categoryscreen': (BuildContext context) => new StoreCatPage(),
          '/post': (BuildContext context) => new DFPostPage(),

        },
      
        home: new Gateway(),
        theme: new ThemeData(
          // canvasColor: Colors.orange[400],
          fontFamily: 'NeusaNextStf-CompactRegular.otf',
        )      
      
      ),
    );

  }//build
}