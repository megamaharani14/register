import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class ProfilePage extends StatefulWidget{
  final String nama = 'Mega Maharani';
  final String email = 'megamaharani661@gmail.com';
  final String alamat = 'desa blambangan';
  final String noTelp = '081928244792';

  // ProfilePage(
  //     {required this.nama,
  //     required this.email,
  //     required this.alamat,
  //     required this.noTelp});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _showPopup();
    });
  }

  void _showPopup() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Selamat Datang"),
          content: Text("${widget.nama}"),
          actions: [
            TextButton(
              child: Text("Tutup"),
              onPressed: () {
                Navigator.of(context).pop(); 
              },
            ),
          ],
        );
      },
    );
    Future.delayed(Duration(milliseconds: 200), () {
      Navigator.of(context).pop(); // Close the dialog
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Selamat Datang ${widget.nama}'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 100),
        child: Container(
          width: 315,
          child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           Center(
             child: CircleAvatar(
                    radius: 50,
                    child: ClipOval(
                      child: Image.asset(
                        'assets/megaa.jpg',
                        fit: BoxFit.cover, 
                        height: 120, 
                        width: 120,
                        alignment: Alignment.topCenter, 
                      ),
                    ),
                  ),
           ),
          
            SizedBox(height: 20),
            Text(
              'Nama: ${widget.nama}',
              style: TextStyle(fontSize: 18, color: Colors.grey[700]),
            
            ),
            SizedBox(height: 10),
            Text(
              'Email: ${widget.email}',
              style: TextStyle(fontSize: 18, color: Colors.grey[700]),
          
            ),
            SizedBox(height: 10),
            Text(
              'Alamat: ${widget.alamat}',
              style: TextStyle(fontSize: 18, color: Colors.grey[700]),
              
            ),
            SizedBox(height: 10),
            Text(
              'No telpon: ${widget.noTelp}',
              style: TextStyle(fontSize: 18, color: Colors.grey[700]),
              
            ),
          
          SizedBox(height: 30),
          ElevatedButton(
            onPressed: (){
              SystemNavigator.pop();
            },
            child: Center(child: Text('Keluar')),
                 ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
