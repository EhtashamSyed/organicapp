import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/userprofile.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF356713),
        title: const Text('Home Page'),
        actions: [
          IconButton(onPressed: (){},
              icon: const Icon(Icons.search,color: Colors.white,)),
          IconButton(onPressed: (){},
              icon: const Icon(Icons.add_shopping_cart,color: Colors.white,)),
        ],

      ),
      drawer: Drawer(
        child: ListView(
          children:  [
            UserAccountsDrawerHeader(
              decoration: const BoxDecoration(
                color:Color(0xFF356713) ,
              ),
                accountName: const Text('Ehtasham Syed',style: TextStyle(fontSize: 18,),),
                accountEmail: const Text('Ali@gmail.com',style: TextStyle(fontSize: 15),),
              currentAccountPicture: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder:(context) => const UserProfile ()));
                },
                child: const CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage('assets/images/Tommys3.jpg'),
                ),
              ),
            
            
            ),
           const ListTile(
             leading: Icon(Icons.person,color: Color(0xFF356713)
               ,
             ),
             title: Text('My account',style: TextStyle(fontSize: 20),
             ),
             trailing: Icon(Icons.arrow_forward_ios,size: 20,),
           ) ,
            const ListTile(
              leading: Icon(Icons.add_to_photos_sharp,color: Color(0xFF356713)
                ,
              ),
              title: Text('My order',style: TextStyle(fontSize: 20),
              ),
              trailing: Icon(Icons.arrow_forward_ios,size: 20,),
            ) ,
            const ListTile(
              leading: Icon(Icons.work_outline_rounded,color: Color(0xFF356713)
                ,
              ),
              title: Text('Promotions',style: TextStyle(fontSize: 20),
              ),
              trailing: Icon(Icons.arrow_forward_ios,size: 20,),
            ) ,
            const ListTile(
              leading: Icon(Icons.settings,color: Color(0xFF356713)
                ,
              ),
              title: Text('Settings',style: TextStyle(fontSize: 20),
              ),
              trailing: Icon(Icons.arrow_forward_ios,size: 20,),
            ) ,
            const ListTile(
              leading: Icon(Icons.payments,color: Color(0xFF356713)
                ,
              ),
              title: Text('Payments',style: TextStyle(fontSize: 20),
              ),
              trailing: Icon(Icons.arrow_forward_ios,size: 20,),
            ) ,
            const ListTile(
              leading: Icon(Icons.info,color: Color(0xFF356713)
                ,
              ),
              title: Text('Info',style: TextStyle(fontSize: 20),
              ),
              trailing: Icon(Icons.arrow_forward_ios,size: 20,),
            ) ,
            const ListTile(
              leading: Icon(Icons.insert_invitation,color: Color(0xFF356713)
                ,
              ),
              title: Text('Invite a friend',style: TextStyle(fontSize: 20),
              ),
              trailing: Icon(Icons.arrow_forward_ios,size: 20,),
            ) ,
          ],
        ),
      ),

    );
  }
}
