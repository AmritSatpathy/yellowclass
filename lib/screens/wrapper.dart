import 'package:provider/provider.dart';
import 'package:publish/model/theuser.dart';
import 'package:publish/screens/authenticate/authenticate.dart';
import 'package:publish/screens/page/notes_page.dart';
import 'package:flutter/material.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<TheUser?>(context);
    if(user == null){
      return Authenticate();
    }
    else{
      return NotesPage();
    }

  }
}