import 'package:flutter/material.dart';

class AddNewForm  extends StatefulWidget {
  const AddNewForm ({super.key});

  @override
  State<AddNewForm> createState() => _AddNewFormState();
}

class _AddNewFormState extends State<AddNewForm> {

  final _formKey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.greenAccent,

        appBar: AppBar(
          title: Text("Add New ",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),),
        ),



body: Padding(
   // padding: const EdgeInsets.all(20.0),
    padding: EdgeInsets.only(top: 150),

    child:   Form(
      key: _formKey,
      child: Column(
          children: [

            Center(
              child: Container(
                width: 360,
                height: 60,

                child: TextFormField(

                  keyboardType: TextInputType.text,

                  decoration: InputDecoration(

                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide(
                        width: 1,
                        color: Colors.black38,
                      ),
                    ),

                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide(
                        width: 2,
                        color: Colors.green,
                      ),
                    ),

                    labelText: "Task Name",
                    hintText: "enter task name",
                  ),

                  validator: (value)
                  {
                    if(value!.isEmpty)
                      {return "please add task";
                      }
                    return null;
                  },


          ),
              ),
            ),


            SizedBox(
              height: 20,
            ),


            ElevatedButton(

              child: Text("add",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color:Colors.white,
              ),),
                style: TextButton.styleFrom(
                  minimumSize: Size(200, 60,),
                ),
                onPressed: ()
                {

                  if (_formKey.currentState!.validate())
                  print("task is added");
                }
                ),
          ],
          ),
    ),
  ),

    );

  }
}
