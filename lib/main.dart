import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Mycard());
  }
}

class Mycard extends StatelessWidget {
  const Mycard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
              color: Colors.blue[100],
            borderRadius: BorderRadius.circular(8.0)
          ),
        
          height: 470,
          width: 330,
          child: Column(
            children: [
              // SizedBox(height: 14,),
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('images/leo.jpg'),
              ),
              SizedBox(height: 12),
              Container(
                height: 35,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2.0),
                  gradient: LinearGradient(
                    colors: [Colors.amber[50]!, Colors.amber],
                    stops: [0.2, 0.8],
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.star_rounded, color: Colors.amber),
                    Text('PRO MEMBER',style: TextStyle(
                      fontFamily: 'Times',
                      fontSize: 15,
                      color: const Color.fromARGB(255, 211, 163, 19),
                    ),),
                    
                  ],
                ),

              ),
              SizedBox(height: 25,),
                    Text("Bilal Sabah",style: GoogleFonts.roboto(
                      fontSize: 29,
                      fontWeight: FontWeight.w900,
                      color: Color(0xFF404DE7),

                    ),),
                     SizedBox(height: 5,),
                     Text("UX / UI Devloper | Desinger",style: GoogleFonts.roboto(
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                      color: Color(0xFF404DE7),

                    ),
                    ),
                    SizedBox(height: 10,),
                    Text("is simply dummy text of the printing and typesetting since the 1500s, when an ",style: GoogleFonts.roboto(
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                      color: Colors.black38,

                    ),
                    textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 25,
                    ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                     TextButton(
                      style: ButtonStyle(
                       
                        minimumSize: MaterialStateProperty.all(Size(100, 50),),
                        side:  MaterialStateProperty.all(BorderSide(color:Color(0xFF4D4DE7)) ),
                        foregroundColor: MaterialStateProperty.all(Color(0xFF4D4DE7)),
                        
                      ),
                      onPressed: (){}, child: Text("Connect")),
                    TextButton(
                      style: ButtonStyle(
                
                        minimumSize: MaterialStateProperty.all(Size(100, 50)),
                        foregroundColor: MaterialStateProperty.all(Colors.white),
                        backgroundColor: MaterialStateProperty.all(Color(0xFF4D4DE7),)
                      ),
                      onPressed: (){}, child: Text("Connect")),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
