import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widget_app/config/menu_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemCount: menuItems.length,
          itemBuilder: (context,index){
            final item = menuItems[index];
            return ListTile(
              title: Text(item.title),
              subtitle: Text(item.subtitle),
              leading: Icon(item.icon),
              trailing: const Icon(Icons.arrow_forward_ios_outlined),
              onTap: () {
                context.push(item.link);
              },
            );
        })
      
      ),
    );
  }
}