import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrl="https://media.licdn.com/dms/image/C5603AQGSa9q2Z8oZzg/profile-displayphoto-shrink_800_800/0/1652710035839?e=2147483647&v=beta&t=xLPLIMRVk38uXLINl0qtFOLxucv3RfQCVnJs0f7oZ-U";
    return Drawer(

      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          children: [DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
            margin: EdgeInsets.zero,

            accountName: Text("Jarvis"),
            accountEmail: Text("jarvis@gmail.com"),
              currentAccountPicture: CircleAvatar(backgroundImage: NetworkImage(imageUrl),),
          ),
          ),
            ListTile(
              leading: Icon(CupertinoIcons.home,
                  color:Colors.white,
              ),
              title: Text("Home",textScaleFactor:1.2,
                style: TextStyle(color: Colors.white)
                ,
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.profile_circled,
                  color:Colors.white,
              ),
              title: Text("Profile",textScaleFactor:1.2,
                style: TextStyle(color: Colors.white)
                ,
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.mail,
                  color:Colors.white,
              ),
              title: Text("Email Me",textScaleFactor:1.2,
                style: TextStyle(color: Colors.white)
                ,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
