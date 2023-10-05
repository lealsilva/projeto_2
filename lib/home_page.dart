import 'package:flutter/material.dart';
import 'package:projeto_2/app_controller.dart';


class HomePage extends StatefulWidget{
  @override
  State<HomePage> createState() {
   return HomePageState();
  }

}

class HomePageState extends State <HomePage>{
  int counter = 0;

  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      title: Text('Home Page'),
      actions: const [
        CustomSwitcher(),
        ],
    ),

    body: Column(
      children: [
        Text('contador: $counter'),
        CustomSwitcher(),
      ],
    ),

   floatingActionButton: FloatingActionButton(
       child: Icon(Icons.add),
      onPressed: () {
          setState(() {
            counter++;
          });
      }
    ),
   );
  }

}
class CustomSwitcher extends StatelessWidget {
  const CustomSwitcher({super.key});

  @override
  Widget build(BuildContext context) {
    return Switch(
        value: AppController.instance.isdarkTheme,
         onChanged: (value){
          AppController.instance.changeTheme();
      },);
      
  }
}