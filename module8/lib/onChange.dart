import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Handling Text Field',
      home: MyCustomForm(),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({Key? key}) : super(key: key);
  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  final myController = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Modul Text Input'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          controller: myController,
          onChanged: (String value) async {
            if (value == null || value.isEmpty || value== " ") {
              return showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('Please Entry Something Even Thought a Character!'),
                    content: const Text('Try Again !!!'),
                    actions: <Widget> [
                      TextButton(
                        onPressed: (){
                          Navigator.pop(context);
                        },
                        child: const Text('ok'),
                      )
                    ],
                  );
                }
              );
            }
          },
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: const Text('Show Value'),
                content: Text(myController.text),
                actions: <Widget>[
                  TextButton(
                    onPressed: (){
                      // 
                    }, 
                    child: const Text('OK'),
                  )
                ],
              );
            },
          );
        },

        tooltip: 'Show me the value!',
        child: const Icon(Icons.text_fields),
      ),
    );
  }
}