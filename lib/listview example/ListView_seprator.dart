import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main(){
  runApp(MaterialApp(home: ListView_seprator(),));
}

class ListView_seprator extends StatelessWidget {
  //const ListView_seprator({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView.seprator'),
      ),
      body: ListView.separated(
          itemBuilder: (cntxt,i){
            return Card(
              child: FaIcon(FontAwesomeIcons.whatsapp,color: Colors.green),
            //  child: Image.asset("assets/images/list5.jpeg"),
            );
          },
          separatorBuilder: (context,index){
            if(index % 2==0){
              return Container(child: Divider(color: Colors.black,thickness: 3,));
    }else{
              return SizedBox();
    }

    } ,
    itemCount:15),
    );
  }
}
