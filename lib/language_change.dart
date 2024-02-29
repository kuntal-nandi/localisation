import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class LanguageChange extends StatefulWidget {
  const LanguageChange({super.key});

  @override
  State<LanguageChange> createState() => _LanguageChangeState();
}

class _LanguageChangeState extends State<LanguageChange> {
  var langs = [
    'English',
    'Bengali'
  ];
  String currentLang = 'English';
  void setCurrentLang(String lang){
    if(lang=='en'){
      setState(() {
        currentLang = 'English';
      });
    }
    else{
      setState(() {
        currentLang = 'Bengali';
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    setCurrentLang(context.locale.toString());
    return Scaffold(
      appBar: AppBar(
          title: const Text('appTitle').tr()
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
            const SizedBox(height: 10,),
            DropdownButton(
              // Initial Value
              value: currentLang,

              // Down Arrow Icon
              icon: const Icon(Icons.keyboard_arrow_down),

              // Array list of items
              items: langs.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              // After selecting the desired option,it will
              // change button value to selected value
              onChanged: (String? newValue) {
                setState(() {
                  currentLang = newValue!;
                  if(newValue=='Bengali'){
                    context.setLocale(const Locale('bn'));
                  }
                  else{
                    context.setLocale(const Locale('en'));
                  }
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
