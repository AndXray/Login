import 'package:applogin/dishes/details.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'details.dart' ;




class MenuScreen extends StatelessWidget {
  MenuScreen({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {

    return Scaffold(
          appBar: AppBar(
            title: const Text('Меню', style: TextStyle(
              fontSize: 30.0,
            )),
            centerTitle: true,
            backgroundColor: Colors.deepPurple,
          ),
          body: StreamBuilder(
            stream: FirebaseFirestore.instance.collection('products').snapshots(),
            builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot){
              if(!snapshot.hasData) return Text("Нет записей");
              return Stack(
              children:[
                Align(

                  child: ListView.builder(
                    padding: const EdgeInsets.all(15),
                    itemCount: snapshot.data?.docs.length,


                    // ignore: deprecated_member_use
                    itemBuilder: (_, index) => RaisedButton(
                        color: Colors.white,
                        key: Key(snapshot.data!.docs[index].id),
                        child: Column( children: [
                          Card(

                            elevation: 5,
                            shadowColor: Colors.brown,
                            margin: const EdgeInsets.symmetric(vertical: 10),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),

                              child: Row(children: [
                                Align(alignment: Alignment.centerLeft,child: SizedBox(
                                width: 130,
                                height: 130,
                                  child: Image.asset(snapshot.data!.docs[index].get('imagep'),)
                                  // dishes[index].image,

                              ),
                              ),

                                  SizedBox(
                                    width: 210,
                                    height: 110,
                                    child:
                                    //Align(
                                      //child:
                                      Column(children: [
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Padding(
                                            padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                                            child: Text(
                                              snapshot.data!.docs[index].get('namep'),
                                            maxLines: 2,
                                              style: TextStyle(
                                                color: Colors.deepPurple,
                                                fontWeight: FontWeight.bold,
                                                letterSpacing: 2),),),),
                                        Align(
                                            child: Padding( padding: const EdgeInsets.fromLTRB(5, 0, 0, 0), child: Container(
                                              height: 53,
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                snapshot.data!.docs[index].get('descriptionp'),
                                                style: const TextStyle(
                                                  letterSpacing: 1.5,
                                                  fontStyle: FontStyle.italic,),),),),),
                                        Align(
                                          child: Padding(padding: const EdgeInsets.fromLTRB(5,5,0,0),child: Container(
                                            alignment: Alignment.bottomLeft,
                                            child: Text(
                                              '${snapshot.data!.docs[index].get('pricep')} ₽'),),)
                                        ),
                                    ],),
                                  ),
                                  //)

                            ])

                          ),]),
                          onPressed: (){

                            Navigator.push(

                              context, MaterialPageRoute(builder: (context) {
                              return DetailScreen(
                                  name: snapshot.data!.docs[index].get('namep'),
                                  description: snapshot.data!.docs[index].get('descriptionp'),
                                  price: snapshot.data!.docs[index].get('pricep'),
                                  image: snapshot.data!.docs[index].get('imagep'),);
                            }),
                            );
                          }

                    ),),)
              ]);}

            ));
 }

}
