import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const showGrid = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Bảng xếp hạng'),
        ),
        
        body: Container( 
      child: Column(
          children: [
          Container(
              child: showGrid ? _buildList() : _buildList(),
      )
      ],
      ),
      child: 
                Text('Pressed $_button'),
        // children: 
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll<Color>(
                          Color.fromARGB(255, 18, 218, 58).withOpacity(0.8)),
                  shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(30.0)))),
              onPressed: () {},
              child: const Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Text('Kết bạn'),
              ),
            ),
          ],
          
          
        ),
   
      ),
    );
   
  }
  
  Widget _buildList() {
    return ListView(
      children: [
        _tile('Player 1', 'Top 1 bxh', Icons.star),
         const Divider(),
        _tile('Player 2', 'Top 2 Bxh', Icons.star),
         const Divider(),
        _tile('Player 3', 'Top 3 Bxh', Icons.star),
         const Divider(),
        _tile('Player 4', 'Top 4 Bxh', Icons.star),
         const Divider(),
        _tile('Player 5', 'Top 5 Bxh', Icons.star),
         const Divider(),
        _tile('Player 6', 'Top 6 Bxh', Icons.star),
        const Divider(),
        _tile('Player 7', 'Top 7 Bxh', Icons.star),
         const Divider(),
        _tile('Player 8', 'Top 8 Bxh', Icons.star),
         const Divider(),
        _tile('Player 9', 'Top 9 Bxh', Icons.star),
         const Divider(),
        _tile('Player 10', 'Top 10 Bxh', Icons.star),
      ],
      
    );
                       
  }
  ListTile _tile(String title, String subtitle, IconData icon) {
    return ListTile(
      title: Text(
        title,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
          )),
      subtitle: Text(subtitle),
      leading: Icon(
        icon,
        color: Colors.blue[500],
      ),
      
    );

  }
}

