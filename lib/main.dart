import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Lab1(),
    )
  );
}
class Lab1 extends StatefulWidget {
  const Lab1({ Key? key }) : super(key: key);

  @override
  State<Lab1> createState() => _Lab1State();
}

class _Lab1State extends State<Lab1> {
  int jeanneteLevel=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text('uwiringiyimina Id Card'),
        centerTitle: true,
        elevation: 0,
        titleSpacing: 2.0,
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        setState(() {
          jeanneteLevel+=1;
        });
      },
      child: Icon(Icons.add),backgroundColor: Colors.grey[800],),
      body: Container(
        color: Colors.grey[700],
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 20.0, 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 50.0,
                child: 
                
                Image.network('data:image/jpeg;base64,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'),
              ),
            ),
            Divider(height: 20.0,color: Colors.grey[800],),
            SizedBox(height: 30.0,),
            Text(' jeannette uwiringiyimana',
             style: TextStyle(backgroundColor: Colors.grey[500],fontSize: 15.0,wordSpacing: 2.0),
             ),
             SizedBox(height: 15.0,),
             Text('Rwandan',
             style: TextStyle(backgroundColor: Colors.grey[400],fontSize: 15.0,wordSpacing: 2.0),),
             Text('jeannette current level',
             style: TextStyle(backgroundColor: Colors.grey[400],fontSize: 15.0,wordSpacing: 2.0),),
             SizedBox(height: 15.0,),
             Text('$jeanneteLevel',
             style: TextStyle(backgroundColor: Colors.grey[400],fontSize: 15.0,wordSpacing: 2.0),),
             SizedBox(height: 15.0,),

             SizedBox(height: 20.0,),
             Text('Nyarusange Sector',style: TextStyle(backgroundColor: Colors.grey[600],wordSpacing: 2.0),),
             SizedBox(height: 20.0),
             Row(
               children: [
                 IconButton(onPressed: (){}, icon: Icon(Icons.phone)),
                 Text('telephone',style: TextStyle(backgroundColor: Colors.white70,fontWeight: FontWeight.bold,wordSpacing: 2.0),),
                 IconButton(onPressed: (){}, icon: Icon(Icons.mail)),
                 Text('email',style: TextStyle(backgroundColor: Colors.white70,fontWeight: FontWeight.bold,wordSpacing: 2.0),)
                 

               ],
             ),
            

          ],
        ),
        
      ),
      
    );
  }
}


