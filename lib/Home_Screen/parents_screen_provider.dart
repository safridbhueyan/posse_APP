import 'package:flutter/material.dart';
import 'package:posse/Home_Screen/pages/Home_Screen.dart';
import 'package:posse/Home_Screen/pages/Quiz_screen.dart';
import 'package:posse/Home_Screen/pages/Timeline_screen.dart';
import 'package:posse/Home_Screen/pages/VibeCheck_screen.dart';
import 'package:posse/Home_Screen/pages/poll_screen.dart';

class ParentsScreenProvider with ChangeNotifier{
   
 final List<Widget> _pagelist = [
          QuizeScreen(),
          TimelineScreen(),
          HomeScreen(),
          VibecheckScreen(),
          PollScreen()
   ];
 List<Widget> get pagelist => _pagelist;

   int _selectedIndex = 2;
   int get selectedIndex => _selectedIndex;

   void onSelectedIndex(int index){
    debugPrint("\nselected parent screen index : $index\n");
    _selectedIndex = index;
    notifyListeners();
   }

}