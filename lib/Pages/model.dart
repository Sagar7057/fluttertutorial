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
      home: const Scaffold(
        body: Center(
          child: MyWidget(),
        ),
      ),
    );
  }
}





class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

    @override
    State<MyWidget> createState() => _MyWidgetState();
  }

  class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
      foregroundColor: Colors.black87,
      backgroundColor: Colors.grey[300],
      minimumSize: Size(
        const ResponsiveDesign().getadaptiveButtonHeight(context,188), 
         const ResponsiveDesign().getadaptiveButtonWidth(context,50), 
      ),
      padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width / 10),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
    );
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[   
            Container(  
              margin: const EdgeInsets.all(20),  
              child: TextButton(  
                style: raisedButtonStyle,
                child: const Text(
                  'Pre-Harvesting', 
                ), 
                onPressed: () {
                   Navigator.push(
                     context, MaterialPageRoute(
                       builder: (context) {
                        return const DetailScreen();
                      }
                    )
                  );
                  
                },  
              ),  
            ),  
            Container(  
              margin: const EdgeInsets.all(20),  
              child: TextButton(  
                style: raisedButtonStyle,
                child: const Text(
                  'Harvesting', 
                ), 
                onPressed: () {},  
              ),  
            ),
            Container(  
              margin: const EdgeInsets.all(20),  
              child: TextButton(  
                style: raisedButtonStyle,
                child: const Text(
                  'Post-Harvesting', 
                ), 
                onPressed: () {},  
              ),  
            ),  
          ] 
    );
    
  }
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});
  
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body:GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },),
    );
  }
    
 }


class ResponsiveDesign {
      const ResponsiveDesign();
    
      

      getadaptiveButtonHeight(BuildContext context, dynamic value) {
        var some = MediaQuery.of(context).size.width;
        if(some>520)
        {some=520;}
        return (value / 320) * some;
      }
      getadaptiveButtonWidth(BuildContext context, dynamic value) {
        var some = MediaQuery.of(context).size.height;
        if(some>520)
        {some=520;}
        return (value / 320) * some;
      }
      
    }
