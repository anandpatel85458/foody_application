import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sam/SingleItemScreen.dart';

class Colddrink extends StatefulWidget {
  const Colddrink({Key? key}) : super(key: key);

  @override
  State<Colddrink> createState() => _ColddrinkState();
}

class _ColddrinkState extends State<Colddrink> {
  List msc=[
    'cold1',
    'cold2',
    'cold3',
    'cold4',
    'cold5',
    'cold6',
    'cold7',
    'cold8',
  ];
  List soda=['Lemon juice','Sharbat','Cola soda','Coca-cola','Coca-cola class','Cola cane','Monster','Coldrink'];

  List price=['\$5','\$6','\$4','\$8','\$11','\$9','\$7','\$4'];


  @override
  Widget build(BuildContext context) {
    return GridView.count(
        physics: AlwaysScrollableScrollPhysics(

        ),
        crossAxisCount: 2,
        shrinkWrap: true,
        childAspectRatio: (150/195),
        children: [
          for(int i=0;i<msc.length;i++)
            Container(
              padding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
              margin: EdgeInsets.symmetric(vertical: 8,horizontal: 13),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.4),
                  ),
                ],
              ),

              child: Column(
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>SingleItemScreen(msc[i])));
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      child: Image.asset('images/${msc[i]}.png',width: 120,height: 120,fit: BoxFit.contain,),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 8),
                    child: Align(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            soda[i],
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Best Food',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.black26,
                            ),
                          ),
                        ]
                      ),

                    ),),

                  Padding(padding: EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(price[i],style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.black),),
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Icon(CupertinoIcons.add,size: 20,
                            color: Colors.white,),
                        ),
                      ],
                    ),)
                ],
              ),
            ),
        ]);;;
  }
}
