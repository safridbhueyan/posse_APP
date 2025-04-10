import 'package:flutter/material.dart';
import 'package:posse/Home_Screen/parents_screen_provider.dart';
import 'package:provider/provider.dart';

class ParentsScreen extends StatelessWidget {
  const ParentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final parentProvider = context.watch<ParentsScreenProvider>();
    return Scaffold(
          resizeToAvoidBottomInset: false,
floatingActionButton: Transform.translate(
  offset: Offset(0, 8), 
  child: GestureDetector(
    onTap: () {
      debugPrint("its tapped");
      parentProvider.onSelectedIndex(2);
    },
    child: Container(
      width: 78,
      height: 78,
      padding: EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: Color(0xFF789949),
        shape: BoxShape.circle,
        border: Border.all(
          color: Color(0xFFFFFFFF),
          width: 8,
        ),
        boxShadow: [
          BoxShadow(
           color: Color(0xFFEDFFD0).withOpacity(.3),
            blurRadius: 20,
            offset: Offset(0, 6),
          )
        ],
      ),
      child: Center(
        child: Image.asset(
          "assets/home.png",
          width: 24,
          height: 24,
          fit: BoxFit.cover,
        ),
      ),
    ),
  ),
),
  floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
  extendBody: false,

            bottomNavigationBar: BottomAppBar(
              
              surfaceTintColor: Colors.transparent,
              elevation: 10,
              color: Color(0xFFFFFFFF),
              shape: null,
              clipBehavior: Clip.none,
              child: SizedBox(
                height: 56,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          padding: EdgeInsets.zero,
                          backgroundColor: Colors.transparent,
                          overlayColor: Colors.transparent,
                          shadowColor: Colors.transparent,
                        
                        ),
                        onPressed: () {  
                           parentProvider.onSelectedIndex(0);
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/01.png",
                            width: 24,
                            height: 24,
                            fit: BoxFit.cover,
                            color: Color(0xFF777980), 
                
                            ),
                SizedBox(height: 4,),
                            Text("Quiz",
                                     style: TextStyle(
                    fontSize: 14,
                    color: Color(0xff777980),
                    fontWeight: FontWeight.w500
                   ),
                    maxLines: 1,
                            )
                          ],
                        ),
                      ),
                    ),
                
                
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          padding: EdgeInsets.zero,
                          backgroundColor: Colors.transparent,
                          overlayColor: Colors.transparent,
                          shadowColor: Colors.transparent,
                        
                        ),
                        onPressed: () { 
                            parentProvider.onSelectedIndex(1);
                         },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/02.png",
                            width: 24,
                            height: 24,
                            fit: BoxFit.cover,
                            color: Color(0xFF777980), 
                
                            ),
                 SizedBox(height: 4,),
                            Text("Timeline",
                                     style: TextStyle(
                    fontSize: 14,
                    color: Color(0xff777980),
                    fontWeight: FontWeight.w500
                   ),
                    maxLines: 1,
                            )
                          ],
                        ),
                      ),
                    ),
                
                
                 Expanded(child: SizedBox()),
                 Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          padding: EdgeInsets.zero,
                          backgroundColor: Colors.transparent,
                          overlayColor: Colors.transparent,
                          shadowColor: Colors.transparent,
                        
                        ),
                        onPressed: () { 
parentProvider.onSelectedIndex(3);


                         },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/04.png",
                            width: 24,
                            height: 24,
                            fit: BoxFit.cover,
                            color: Color(0xFF777980), 
                
                            ),
                 SizedBox(height: 4,),
                            Text("Vibe Check",
                                     style: TextStyle(
                    fontSize: 14,
                    color: Color(0xff777980),
                    fontWeight: FontWeight.w500
                   ),
                    maxLines: 1,
                            )
                          ],
                        ),
                      ),
                    ),
                     Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          padding: EdgeInsets.zero,
                          backgroundColor: Colors.transparent,
                          overlayColor: Colors.transparent,
                          shadowColor: Colors.transparent,
                        
                        ),
                        onPressed: () {   parentProvider.onSelectedIndex(4); },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/05.png",
                            width: 24,
                            height: 24,
                            fit: BoxFit.cover,
                            color: Color(0xFF777980), 
                
                            ),
                 SizedBox(height: 4,),
                            Text("Poll",
                                     style: TextStyle(
                    fontSize: 14,
                    color: Color(0xff777980),
                    fontWeight: FontWeight.w500
                   ),
                    maxLines: 1,
                            )
                          ],
                        ),
                      ),
                    ),
                
                  ],
                ),
              ),
            ),
           body: Stack(
          children: [
            IndexedStack(
              index: parentProvider.selectedIndex,
              children: parentProvider.pagelist

            )
          ],
   ),
    );
  }
}