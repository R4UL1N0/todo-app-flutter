import 'package:flutter/material.dart';

class NewProjectModalForm extends StatefulWidget {
  const NewProjectModalForm({super.key});

  @override
  State<NewProjectModalForm> createState() => _NewProjectModalFormState();
}

class _NewProjectModalFormState extends State<NewProjectModalForm> {

  final _formKey = GlobalKey<FormState>();

  

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(labelText: 'New Project'),
            validator: (value) {
              if (value!.isEmpty) {
                return "Field can't be empty";
              }
              return null;
            },
          ),
        ],
      ),
    );
  }
}


