import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:language/language_change.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.tr('appTitle')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('headline',style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500
            ),).tr(),
            const Text('subtitle',style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500
            ),).tr(),
            const SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LanguageChange()),
              );
            }, child: const Text('next_page').tr())
          ],
        ),
      ),
    );
  }
}
