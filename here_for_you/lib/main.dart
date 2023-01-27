import 'package:flutter/material.dart';
      
    void main() => runApp(MyApp());  
      
    /// This Widget is the main application widget.  
    class MyApp extends StatelessWidget {  
      @override  
      Widget build(BuildContext context) {  
        return MaterialApp(  
          home: MyNavigationBar (),  
        );  
      }  
    }  
      
    class MyNavigationBar extends StatefulWidget {  
      //MyNavigationBar ({Key key}) : super(key: key);  
      
      @override  
      _MyNavigationBarState createState() => _MyNavigationBarState();  
    }  
      
    class _MyNavigationBarState extends State<MyNavigationBar > {  
      int _selectedIndex = 0;  
      static const List<Widget> _widgetOptions = <Widget>[  
        Text('Accueil', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),  
        Text('Safe Places', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),  
        Text('SOS', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),  
        Text('Contacts', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
        Text('Compte', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)), 
      ];  
      
      void _onItemTapped(int index) {  
        setState(() {  
          _selectedIndex = index;  
        });  
      }  
      
      @override  
      Widget build(BuildContext context) {  
        return Scaffold(  
          appBar: AppBar(  
            title: const Text('Here for you'),  
              backgroundColor: Colors.white  
          ),  
          body: Center(  
            child: _widgetOptions.elementAt(_selectedIndex),  
          ),  
          bottomNavigationBar: BottomNavigationBar(  
            items: const <BottomNavigationBarItem>[  
              
              BottomNavigationBarItem(  
                icon: Icon(Icons.home),  
                label: "Accueil",  
                //backgroundColor: Colors.black  
              ),  
              BottomNavigationBarItem(  
                icon: Icon(Icons.home),  
                label:"Safe Places  ",  
                
                ///backgroundColor: Colors.black  
              ),  
              BottomNavigationBarItem(  
                icon: Icon(Icons.phone),  
                label: "SOS",  
                //backgroundColor: Colors.black,  
              ), 
              BottomNavigationBarItem(  
                icon: Icon(Icons.contact_page),  
                label: "Contacts",  
                //selectedItemColor: Colors.blue,
              //  backgroundColor: Colors.black,  
              ),
               BottomNavigationBarItem(  
                icon: Icon(Icons.person),  
                label: "Compte",  
              //  backgroundColor: Colors.white,  
              ),     
            ],  
           
            currentIndex: _selectedIndex,  
            selectedItemColor: Colors.blue,  
            unselectedItemColor: Colors.black,
            iconSize: 30,  
            onTap: _onItemTapped,  
            elevation: 0  ,
            backgroundColor: Colors.grey  
          ),  
        );  
      }  
    }  