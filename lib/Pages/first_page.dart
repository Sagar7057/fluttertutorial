import 'package:flutter/material.dart';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: darkBlue,
      ),
      debugShowCheckedModeBanner: false,
      home: MyWidget(),
        
    );
  }
}



class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Center(
          child:Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlutterLogo(
                size: const AdaptiveTextSize().getadaptiveTextSize(context, 20),
                textColor: Colors.red,
                ),
              Text(
              'Fozoo',
              style:TextStyle(
                color:Colors.black,
                fontSize: 
                 const AdaptiveTextSize().getadaptiveTextSize(context, 20),
                ),
              )
            ]
           ),
          ),
        
        backgroundColor:Colors.white,
      );
  }
}


 class AdaptiveTextSize {
    const AdaptiveTextSize();

   getadaptiveTextSize(BuildContext context, dynamic value) {
    // 720 is medium screen height
       return (value / 320) * MediaQuery.of(context).size.width;
     }
}
