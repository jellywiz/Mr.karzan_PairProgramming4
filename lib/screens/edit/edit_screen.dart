// TODO Complete the file edit_screen.dart
//-----------------------------------------------------------------------------------------------------------------------------
//? Things to do:
//
//   1. Build the UI by composing from its components, i.e., Bar and Body.
//      Besides, you will also need to pass the 'states' to the components.
//-----------------------------------------------------------------------------------------------------------------------------

import '/screens/edit/bar.dart';
import 'package:flutter/material.dart';

import '../../models/todo.dart';
import 'body.dart';

class EditScreen extends StatefulWidget {
  static Route route({isEditing = true, data}) => MaterialPageRoute(
      builder: (context) => EditScreen(isEditing: isEditing, data: data));

  final bool _isEditing;
  final Todo _data;

  get isEditing => _isEditing;

  get data => _data;
  EditScreen({isEditing, data})
      : _isEditing = isEditing,
        _data = data;

  @override
  EditScreenState createState() => EditScreenState();
}

class EditScreenState extends State<EditScreen> {
  String _title = '';
  String _description = '';
  bool _done;
  dynamic _isEdit;
  Todo _data;

  get title => _title;
  set title(value) => _title = value;

  get description => _description;
  set description(value) => _description = value;

  get done => _done;
  set done(value) => _done = value;

  get isEdit => _isEdit;
  set isEdit(value) => _isEdit = value;

  get data => _data;
  set data(value) => _data = value;

  @override
  void initState() {
    super.initState();
    _isEdit = widget._isEditing;
    _data = widget._data;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future.value(false),
      child: SafeArea(
        child: Scaffold(
          appBar: Bar(
            state: this,
          ),
          body: Body(
            state: this,
          ),
        ),
      ),
    );
  }
}
