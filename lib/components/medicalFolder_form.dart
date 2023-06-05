import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:health_care_p/utils/config.dart';
import 'package:file_picker/file_picker.dart';


class MedicalFolderForm extends StatefulWidget {
  @override
  _MedicalFolderFormState createState() => _MedicalFolderFormState();
}

class _MedicalFolderFormState extends State<MedicalFolderForm> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _ageController = TextEditingController();
  final _diseaseController = TextEditingController();
  final _bloodTypeController = TextEditingController();
  final _noteController = TextEditingController();
  final _filePickerController = TextEditingController();
 final _filePickerFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
         children: <Widget>[
          TextFormField(
            controller: _nameController,
            cursorColor: Config.primaryColor,
            decoration: const InputDecoration(
              
              labelText: 'Full Name',
              alignLabelWithHint: true,
              prefixIcon: Icon(CupertinoIcons.person),
              prefixIconColor: Config.primaryColor,
    
            ),
          ),
          Config.spaceSmall,
          TextFormField(
            controller:  _ageController,
            decoration: const InputDecoration(
               labelText: 'Age',
              alignLabelWithHint: true,
              prefixIcon: Icon(CupertinoIcons.calendar_badge_minus),
              prefixIconColor: Config.primaryColor,
            ),
          ),
          Config.spaceSmall,
          TextFormField(
            controller: _bloodTypeController,
            decoration: InputDecoration(
              labelText: 'Blood Type',
              alignLabelWithHint: true,
              prefixIcon: Icon(CupertinoIcons.drop),
              prefixIconColor: Config.primaryColor,
            ),
          ),
        
         Config.spaceSmall,
          TextFormField(
            controller: _diseaseController,
            decoration: InputDecoration(
              labelText: 'Do you have any diseases ?',
              alignLabelWithHint: true,
              prefixIcon: Icon(CupertinoIcons.person),
              prefixIconColor: Config.primaryColor,
            ),
          ),
           
          Config.spaceSmall,
             TextFormField(
              controller: _filePickerController,
              focusNode: _filePickerFocusNode,
              decoration: InputDecoration(
                labelText: 'Import a file',
                hintText: 'Click to select a file',
                prefixIcon: Icon(CupertinoIcons.folder),
                prefixIconColor: Config.primaryColor,
              ),
              onTap: () async {
               
                FilePickerResult? result = await FilePicker.platform.pickFiles();
                if (result != null) {
                  _filePickerController.text = result.files.single.name;
                }
                // Add file picker logic here.
              },
            ),
          
                    
         SizedBox(height: 10),
          Padding(
            
            padding: const EdgeInsets.all(10),
                child: SizedBox(
                  width: double.infinity,
                  child: Material(
                    color: Config.primaryColor,
                    borderRadius: BorderRadius.circular(10),
            child: ElevatedButton(
              
              onPressed: () {
                if (_formKey.currentState?.validate() == true) {
                 
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Medical Folder saved.')),
                  );
                }
              },
              style: ElevatedButton.styleFrom(
             primary: Config.primaryColor), 
              
             child: Center(
                child:  Text(
                 "Save",
                 style: TextStyle(
                   color: Colors.white,
                   fontSize: 25,
                   fontWeight: FontWeight.bold,
               ),
             ),
            ),
            ),
          ),
                ),
          ),
        ],
      ),
    );
  }
}
