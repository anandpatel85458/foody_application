import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sam/SingleItemScreen.dart';

class Frenchfrice extends StatefulWidget {
  const Frenchfrice({Key? key}) : super(key: key);

  @override
  State<Frenchfrice> createState() => _FrenchfriceState();
}

class _FrenchfriceState extends State<Frenchfrice> {
  List pmc=[
    'frenchfries1',
    'frenchfries2',
    'frenchfries3',
    'frenchfries4',
    'frenchfries5',
    'frenchfries6',
    'frenchfries7',
    'frenchfries8',
  ];
  List iop=[
    "Agatha’s Fries",
    "Spices and Fries",
    "Betty’s Belgian Fries",
    "Brady’s Fries",
    "The Fryer’s Club",
    "Cheese Fries",
    "Cook and Friskes Fries",
    "Fluffy Fries",
  ];
  List jip=['\$23','\$21','\$18','\$15','\$23','\$26','\$28','\$28'];
  @override
  Widget build(BuildContext context) {
    return  GridView.count(
        physics: AlwaysScrollableScrollPhysics(

        ),
        crossAxisCount: 2,
        shrinkWrap: true,
        childAspectRatio: (150/195),
        children: [
          for(int i=0;i<pmc.length;i++)
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
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>SingleItemScreen(pmc[i])));
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      child: Image.asset('images/${pmc[i]}.png',width: 120,height: 120,fit: BoxFit.contain,),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 8),
                    child: Align(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            iop[i],
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
                        ],
                      ),

                    ),),

                  Padding(padding: EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(jip[i],style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.black),),
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
        ]);;
  }
}
