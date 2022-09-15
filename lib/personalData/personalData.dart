import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PersonalData extends StatefulWidget {
  const PersonalData({super.key});

  final Text title = const Text("Cadastro pessoal");

  @override
  State<PersonalData> createState() => _PersonalDataState();
}

class _PersonalDataState extends State<PersonalData> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(
        title: widget.title,
        actions: [],
        ),
      //body: ListView.separated(
      //  itemCount: books.length,
      //  itemBuilder: ((context, index) => buildListItems(index)),
      //  separatorBuilder: (context, index) => const Divider(height: 1,)
      //  )
    );
  }
}