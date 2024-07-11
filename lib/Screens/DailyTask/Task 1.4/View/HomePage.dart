import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Provider/theme_change_provider.dart';
import 'Component/ListTile.dart';

class ChangeThemeScreen extends StatelessWidget {
  const ChangeThemeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.add_circle_outline_outlined,
                size: 30,
              ))
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage('assets/image/hasmukh.jpeg'),
              ),
              SizedBox(height: 8,),
              Text('Hasmukh Patel',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              SizedBox(height: 15,),
              ListTiles(
                name: Provider.of<ChangeThemeProvider>(context, listen: true).isDark
                    ? 'Dark Mode'
                    : 'Light Mode',
                icon: Provider.of<ChangeThemeProvider>(context, listen: true).isDark
                    ? Icons.mode_night
                    : Icons.sunny,
                color: Provider.of<ChangeThemeProvider>(context, listen: true).isDark
                    ? Colors.amber
                    : Colors.purple,
                isSwitchWant: true,
              ),
              ListTiles(
                  name: "Story",
                  color: Provider.of<ChangeThemeProvider>(context, listen: true).isDark
                      ? Colors.blue
                      : Colors.green,
                  icon: Icons.grid_on_sharp,
                  isSwitchWant: false),
              ListTiles(
                  name: "Setting and Privacy",
                  icon: Icons.settings,
                  color: Provider.of<ChangeThemeProvider>(context, listen: true).isDark
                      ? Colors.pinkAccent
                      : Colors.blue,
                  isSwitchWant: false),
              ListTiles(
                  name: "Help Center",
                  color: Provider.of<ChangeThemeProvider>(context, listen: true).isDark
                      ? Color(0xffC9BC5C)
                      : Color(0xffC26A64),
                  icon: Icons.chat,
                  isSwitchWant: false),
              ListTiles(
                  name: "Notification",
                  color: Provider.of<ChangeThemeProvider>(context, listen: true).isDark
                      ? Colors.amber
                      : Colors.purple,
                  icon: Icons.notifications_active,
                  isSwitchWant: false),
            ],
          ),
        ),
      ),
    );
  }
}

