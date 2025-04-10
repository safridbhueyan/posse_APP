import 'package:chat_bubbles/bubbles/bubble_special_one.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF4F8ED),
     body: Stack(
      children: [
     
        Positioned(
          child:  Column(
            children: [
              Container(
              height: 420,
              width:  double.infinity,
              decoration: BoxDecoration(
              color: Color(0xff9EBA72),
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(16),
              bottomRight: Radius.circular(16),
              ),
                      ),
                      child:  
                      
                     Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                 child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           mainAxisAlignment: MainAxisAlignment.end,
                           children: [
                  SizedBox(height: 60),
                  Row(
                    children: [
                      Image.asset("assets/msg.png",
                      height: 18,
                      width: 18,
                      ),
                      SizedBox(width: 8),
                  Text(
                    "Daily Question",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff1D1F2C),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                    ],
                  ),
                  Text("If your relationship was kitchen appliance, what would it be?",
                    style: TextStyle(
                        fontSize: 24,
                        color: Color(0xffffffff),
                        fontWeight: FontWeight.bold,
                      ),
                  ),  
               SizedBox(height: 18,),
              
                  TextFormField(
                  
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFFFFFFF),
                      enabledBorder: OutlineInputBorder( 
                        borderRadius: BorderRadius.circular(16),
                         borderSide: BorderSide(
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(
                          color: Color(0xff4A4C56),
                        ),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 123, 25, 72),
                        ),
              
                      ),
                      suffixIcon: Image.asset("assets/next2.png",
                      height: 24,
                      width: 24,
                      ),
                      prefixIcon: Image.asset("assets/clip.png",
                      height: 20,
                      width: 20,
                      )
                    ),
                  
                  ),    
                         SizedBox(height: 24,),
                      ],
                 ),
               ),
              
               
                    ),

             SizedBox(height:5 ,),
              Expanded(
                child: SizedBox(
                  child: ListView.builder(
                    
                    itemCount: 1,
                    itemBuilder: (context, index){
                    return 
                    
                        
                        GestureDetector(
                          onLongPress: () {
                            
                          },
                          child: BubbleSpecialOne(
                          text: "hi",
                          isSender: true,
                          color: Color(0xffffffff), 
                                textStyle: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xff000000)
                                ),                     
                          ),
                        );
                      
                    
                   
                  }),
                ),
              )





],
          ),

      ),
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Container(
            height: 214,
           
          // ignore: sort_child_properties_last
          child:  Column(
            
            children: [
              SizedBox(height: 50,),
              Padding(
                     padding: EdgeInsets.only(left: 16,right: 16),
                child: Row(
                  children: [
                    Image.asset("assets/Avatar.png",
                    height: 45,
                    width: 45, 
                    ),
                    SizedBox(width:12 ,),
                    Column(
                      children: [
                        Text("Angie’s Possy",
                        
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff18062C),
                        ),
                        ),
                        Row(
                         crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset("assets/flower.png",
                            height: 14,
                            width: 14,
                            ),
                            SizedBox(width: 4,),
                            Text("GOOD MORNING")
                          ],
                        ),
                       
                     
                      ],
                    ),
                    Spacer(),
                        Container(
                          height: 40,
                          width: 58,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Color(0xFFFFFFFF)
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: 10,right: 10, top: 9.5, bottom: 9.5),
                            child: Row(
                              children: [
                                Image.asset("assets/fire.png",
                                height: 14,
                                width: 14,
                                ),
                                Text("7d",
                                style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff18062C),
                        ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 8,),
                         Container(
                         
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Color(0xFFFFFFFF)
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Row(
                              children: [
                                Image.asset("assets/bell.png",
                                height: 20,
                                width: 20,
                                ),
                               
                              ],
                            ),
                          ),
                        ),
                  ],
                ),
              ),

       ] ),
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/header1.png",
          
            
              ),
              fit: BoxFit.cover,
              
              ),
          
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(16),  bottomRight: Radius.circular(16) )
            ),
          ),
        ),
     
        
      
      
      ],
     ),
    );
  }
}