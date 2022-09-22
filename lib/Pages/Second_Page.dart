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
      
      home: Scaffold(
        appBar: AppBar(
        title: const Text('Crop Care'),
        ), 
        body:const Center(
          child: MyWidget(),
        ),
      ),
    );
  }
}




// Crop-Care Page Class
class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

    @override
    State<MyWidget> createState() => _MyWidgetState();
  }

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
   
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[   
            Container(  
              margin: const EdgeInsets.all(20),  
              child: TextButton(  
                style: ButtonWidget().getButtonStyle(context),
                child: const Text(
                  'Pre-Harvesting', 
                ), 
                onPressed: () {
                   Navigator.push(
                     context, MaterialPageRoute(
                       builder: (context) {
                        return Scaffold(
                          appBar:AppBar(
                            title:const Text('PreHarvesting'),
                          ),
                          body: const Center(
                            child:PreHarvesting()
                          )
                        );
                      }
                    )
                  );
                  
                },  
              ),  
            ),  
            Container(  
              margin: const EdgeInsets.all(20),  
              child: TextButton(  
                style: ButtonWidget().getButtonStyle(context),
                child: const Text(
                  'Harvesting', 
                ), 
                onPressed: () {
                  Navigator.push(
                     context, MaterialPageRoute(
                       builder: (context) {
                        return Scaffold(
                          appBar:AppBar(
                            title:const Text('Harvesting'),
                          ),
                          body: const Center(
                            child:Harvesting()
                          )
                        );
                      }
                    )
                  );
                },  
              ),  
            ),
            Container(  
              margin: const EdgeInsets.all(20),  
              child: TextButton(  
                style: ButtonWidget().getButtonStyle(context),
                child: const Text(
                  'Post-Harvesting', 
                ), 
                onPressed: () {
                  Navigator.push(
                     context, MaterialPageRoute(
                       builder: (context) {
                        return Scaffold(
                          appBar:AppBar(
                            title:const Text('Post_Harvesting'),
                          ),
                          body: const Center(
                            child:PostHarvesting()
                          )
                        );
                      }
                    )
                  );
                },  
              ),  
            ),  
          ] 
    );
    
  }
}

// Pre Harvesting Page Class
class PreHarvesting extends StatefulWidget {
  const PreHarvesting({super.key});

    @override
    State<PreHarvesting> createState() => _PreHarvestingState();
  }

class _PreHarvestingState extends State<PreHarvesting> {
  @override
  Widget build(BuildContext context) {
   
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[   
            Container(  
              margin: const EdgeInsets.all(20),  
              child: TextButton(  
                style: ButtonWidget().getButtonStyle(context),
                child: const Text(
                  'Crop Detection', 
                ), 
                onPressed: () {
                   Navigator.push(
                     context, MaterialPageRoute(
                       builder: (context) {
                        return const Center(child: CropDetection());
                      }
                    )
                  );
                  
                },  
              ),  
            ),  
            Container(  
              margin: const EdgeInsets.all(20),  
              child: TextButton(  
                style: ButtonWidget().getButtonStyle(context),
                child: const Text(
                  'Fertilizer Detection', 
                ), 
                onPressed: () {},  
              ),  
            ),
            Container(  
              margin: const EdgeInsets.all(20),  
              child: TextButton(  
                style: ButtonWidget().getButtonStyle(context),
                child: const Text(
                  'Pesticide Detection', 
                ), 
                onPressed: () {},  
              ),  
            ),  
          ] 
    );
    
  }
}

// Crop-Detection Page Class
class CropDetection extends StatelessWidget {
  const CropDetection({super.key});
 
  @override
  Widget build(BuildContext context)
  {
    
    return Scaffold(
      appBar:AppBar(
        title:const Text('Crop Detection')
      ),
      body:Center(
        child:Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            
            children:  <Widget>[
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter the value of Nitrogen',
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter the value of Phosporous',
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter the value of Phosporous',
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter the value of Phosporous',
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter the value of Phosporous',
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter the value of Phosporous',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                child: ElevatedButton(  onPressed:() {},child:const Text('Submit')),
              ),
            ],
        ),
      ),
    );
  }
}


class Harvesting extends StatelessWidget {
  const Harvesting({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class PostHarvesting extends StatelessWidget {
  const PostHarvesting({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


class ButtonWidget{
  ButtonWidget();
  getButtonStyle(BuildContext context){
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
    return raisedButtonStyle;
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
