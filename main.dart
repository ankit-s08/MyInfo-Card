/*-------------------------- 3. IAmRich App -----------------------
/*<<<<<<<<< 3.1 HELLO WORLD >>>>>>>>>>

//import libraries
import 'package:flutter/material.dart';
void main(){
  runApp(
    const MaterialApp(
      //home is property of MaterialApp
      home:(
        //center is widget
        Center(
          //child is Property of Center Widget
          child: (Text('hello world'))
        )
      )
    )
  );
}
<<<<<<<<< 3.1 HELLO WORLD >>>>>>>>>>*/

/*<<<<<<<<<< 2. Scaffold Widget >>>>>>>>>*/
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      //Scaffold widget contains basic contents floating button , appbar etc
      home: Scaffold(
          //appBar is property , AppBar is widget
          backgroundColor:Colors.green[300],

          appBar: AppBar(
            title:const Center(
              //Text is a Widget
              child:(Text('I Am Rich')),
            ),
            backgroundColor: Colors.green,
          ),
          
          
          //set image in body background
          body: const Center(
            child:Image(
                // image: NetworkImage(''),
                image:AssetImage('images/diamond.png')
              )//Image;
          )
      ),
    ),
  );//runApp
}

-------------------------- 3. IAmRich App -----------------------*/



/*-------------------------- 5. IAmPoor App -----------------------
import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home:Scaffold(
        appBar:AppBar(
          title:const Image(
            image:AssetImage('images/diamond.png'),
          )
        ),//Appbar

        //set image in body background
        body: const Center(child: Text('You have pressed the button times.')),
      )//Scaffold
    )//MaterialApp
  );//runApp
}



-------------------------- 5. IAmPoor App -----------------------*/


/*-------------------------- 6. MICard --------------------------*/
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

//reload: take too much time, it recompliles all the files 
//hot reload : only recompiles the changed lines of code , instead of all files and code

class MyApp extends StatelessWidget{
  //for error: Use key in widget constructors.
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:Scaffold(
        backgroundColor: const Color.fromARGB(255, 201, 201, 201),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 60, 60, 60),
          title: const Center(  
            child: Text('Info Card'),
          )
        ),

        body:SafeArea(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.start,
            
            children: <Widget>[
              //child 1
              // ignore: avoid_unnecessary_containers
              
              Container(
                height:250.0,
                margin:const EdgeInsets.symmetric(vertical:40.0),
                child: Column(
                  
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:const <Widget> [
                    //subchild 1
                    CircleAvatar(
                      radius:70.0,
                      backgroundImage: AssetImage('images/profile.jpg'),                    
                    ),
                  //subchild 2
                  Text(
                    'ANKIT SAHU',
                    style:TextStyle(
                      fontSize:26.0,
                      letterSpacing: 2.5,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    )
                  ),
                  //subchild 3
                  Text(
                    'Flutter Developer',
                    style: TextStyle(
                      fontSize: 20.0,
                      color:Colors.black,
                      letterSpacing:1.0,
                    )
                  ),
                ]
                )
              ),
              //child 3
              // ignore: avoid_unnecessary_containers
              Container(
                color:Colors.white,
                margin:const EdgeInsets.symmetric(vertical:10.0,horizontal:20.0),
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children:const <Widget>[
                    Icon(
                      Icons.phone,
                      color: Colors.black,
                    ),

                    //blank box 
                    SizedBox(
                      width:10.0,
                    ),

                    Text('6367982638',
                     style:TextStyle(
                      fontSize:20.0,
                      letterSpacing: 2.5,
                      
                     ),
                    ),      
                  ]
                )
              ),

              //email container
              // ignore: avoid_unnecessary_containers
              Container(
                color:Colors.white,
                margin:const EdgeInsets.symmetric(vertical:10.0,horizontal:20.0),
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  
                  children: const <Widget>[
                    Icon(Icons.email,
                      color: Colors.black,
                    ),

                    SizedBox(
                      width:10.0,
                    ),
                    
                    Text('ankits08032002@gmail.com',
                      style:TextStyle(
                        fontSize: 20.0,
                        letterSpacing:1,
                      ))
                  ]
                )
              ),


              //location container
              Container(
                color:Colors.white,
                margin:const EdgeInsets.symmetric(vertical:10.0,horizontal:20.0),
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  
                  children: const <Widget>[
                    Icon(Icons.location_on,
                      color: Colors.black,
                    ),

                    SizedBox(
                      width:10.0,
                    ),
                    
                    Text('Jaipur , India',
                      style:TextStyle(
                        fontSize: 20.0,
                        letterSpacing:1.0,
                      )
                    )

                    
                  ]
                )
              ),

              //Gender container
              Container(
                color:Colors.white,
                margin:const EdgeInsets.symmetric(vertical:10.0,horizontal:20.0),
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  
                  children: const <Widget>[
                    Icon(Icons.male_rounded,
                      color: Colors.black,
                    ),

                    SizedBox(
                      width:10.0,
                    ),
                    
                    Text('Male',
                      style:TextStyle(
                        fontSize: 20.0,
                        letterSpacing:1.0,
                      )
                    )
                  ]
                )
              ),

            //dob
            //Gender container
              Container(
                color:Colors.white,
                margin:const EdgeInsets.symmetric(vertical:10.0,horizontal:20.0),
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  
                  children: const <Widget>[
                    Icon(Icons.calendar_today,
                      color: Colors.black,
                    ),

                    SizedBox(
                      width:10.0,
                    ),
                    
                    Text('3rd August, 2002',
                      style:TextStyle(
                        fontSize: 20.0,
                        letterSpacing:1.0,
                      )
                    )
                  ]
                )
              )
            ]
          )
        )
      )
    );
  }
}

// color:const Color(0xACBBE1@FF),