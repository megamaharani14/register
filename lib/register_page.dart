import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.person, size: 100, color: Colors.blueAccent),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Nama Lengkap', border: OutlineInputBorder()),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Email', border: OutlineInputBorder()),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Password', border: OutlineInputBorder()),
              obscureText: true,
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Confirm Password', border: OutlineInputBorder()),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context, 
                  builder: (BuildContext context){
                    return AlertDialog(
                      title: Text('Pendaftaran Berhasil'),
                      content: Text('Pendaftaran Berhasil Dilakukan'),
                      actions: <Widget>[
                        TextButton(
                          child: Text('OK'),
                          onPressed: () {
                            Navigator.of(context).pop();
                            Navigator.of(context).pushNamedAndRemoveUntil('/', 
                            (Route<dynamic> route)=> false,
                            );                            
                          },
                        ),
                      ],
                      
                    );
                  },
                );
                Future.delayed(Duration(milliseconds: 200), () {
                Navigator.of(context).pop(); // Close the dialog
                 });
              },
              child: Text('Register'),
            ),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Sudah Memiliki Akun ? Login',
                  style: TextStyle(color: Colors.black),
                ))
          ],
        ),
      ),
    );
  }
}