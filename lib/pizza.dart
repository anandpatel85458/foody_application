import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sam/SingleItemScreen.dart';

class pizza extends StatefulWidget {
  const pizza({Key? key}) : super(key: key);

  @override
  State<pizza> createState() => _pizzaState();
}

class _pizzaState extends State<pizza> {
  @override
  Widget build(BuildContext context) {
    List imc=[
      'pizza1',
      'pizza2',
      'pizza3',
      'pizza4',
      'pizza5',
      'pizza6',
      'pizza7',
      'pizza8',
    ];
    List imp=["Cheese Pizza",
    "Veggie Pizza." ,
    "Pepperoni Pizza.",
    "Meat Pizza." ,
    "Margherita Pizza.",
    "BBQ Chicken Pizza.",
    "Hawaiian Pizza.",
    "Buffalo Pizza."];


    List ioc=['\$32','\$24','\$22','\$19','\$27','\$22','\$28','\$29'];
    return   GridView.count(
        physics: AlwaysScrollableScrollPhysics(

        ),
        crossAxisCount: 2,
        shrinkWrap: true,
        childAspectRatio: (150/195),
        children: [
    for(int i=0;i<imc.length;i++)
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
              Navigator.push(context,MaterialPageRoute(builder: (context)=>SingleItemScreen(imc[i])));
            },
            child: Container(
              margin: EdgeInsets.all(10),
              child: Image.asset('images/${imc[i]}.png',width: 120,height: 120,fit: BoxFit.contain,),
            ),

          ),
          Padding(padding: EdgeInsets.only(bottom: 8),
            child: Align(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    imp[i],
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'best food',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Colors.black26,
                    ),
                  ),
                ],
              ),

            ),),

          Padding(padding: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(ioc[i],style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.black),),
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
    ]);
  }
}
