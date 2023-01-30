import 'package:flutter/material.dart';

class notificationpage extends StatefulWidget {
  const notificationpage({Key? key}) : super(key: key);

  @override
  State<notificationpage> createState() => _notificationpageState();
}

class _notificationpageState extends State<notificationpage> {
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar(),
      body: listView(),
    );
  }
  PreferredSizeWidget appBar(){
    return AppBar(
      title: Text('Notification Screen'),
    );
  }
  Widget listView(){
    return ListView.separated(itemBuilder: (context,index){
      return listViewItem(index);
    }, separatorBuilder: (context,index){
      return Divider(height: 0);
    }, itemCount: 15);
  }
  Widget listViewItem(int index){
    return Container(

      margin: EdgeInsets.symmetric(horizontal: 13,vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [prefixIcon(),
        Expanded(
        child: Container(
          margin: EdgeInsets.only(left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              message(index),
              timeAndDate(index),
            ],
          ),
        ),
      ),
      ],
      ),
    );
  }
  Widget prefixIcon(){
    return Container(
      height: 50,
      width: 50,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey.shade300,
      ),
      child: Icon(Icons.notifications,size: 25,color: Colors.grey.shade700,),
    );
  }
  Widget message(int index){
    double textsize=15;
    return Container(
      child: RichText(
        maxLines: 3,
        overflow: TextOverflow.ellipsis,
        text: TextSpan(
          text: 'Message',
          style: TextStyle(fontSize: textsize,
          color: Colors.black,fontWeight: FontWeight.bold),
          children: [
            TextSpan(text: 'Notification Description',
            style: TextStyle(fontWeight: FontWeight.w600,),),
          ],
        ),

      ),
    );

  }
  Widget timeAndDate(int index){
    return Container(
      margin: EdgeInsets.only(left: 5),
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text('23-01-2022',style: TextStyle(fontSize: 10,
          )
            ,),
          Text('07:15 am',style: TextStyle(fontSize: 10,
          )
            ,),
        ],
      ),
    );
  }
}
