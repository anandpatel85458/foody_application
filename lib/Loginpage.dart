import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sam/Foodpage.dart';
import 'package:intl/intl.dart';
import 'package:sam/MyHomepage.dart';
class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  String ? gender;
  TextEditingController nameController = TextEditingController();
//TextEditingController dateinput = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController dateInput = TextEditingController();
  bool pass = true;
  String? pasd;

  @override
  void initState(){
    super.initState();
    dateInput.text="";

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body:SingleChildScrollView(
          child:Column(
            children: [
              Container
                (
                height: MediaQuery.of(context).size.height,
                width: double.infinity,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Column(
                            children: [
                              Text ("REGISTRACTION", style: TextStyle(
                                color: Colors.blueAccent,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),),
                              SizedBox(height: 20,),
                              Text("Welcome back ! Login with your credentials",style: TextStyle(
                                fontSize: 15,
                                color: Colors.red[700],
                              ),),

                              SizedBox(height: 30,)
                            ],
                          ),

                          Container(
                            padding: const EdgeInsets.all(10),
                            child: TextField(
                              controller: nameController,
                              decoration:  InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(width: 3, color: Colors.brown),),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                hintText: 'Please enter user name',
                                labelText: 'User Name',
                                prefixIcon: Icon(Icons.person,color: Colors.red,),
                              ),
                            ),
                          ),
                          Container(
                            child:Padding(
                              padding: const EdgeInsets.all(10),

                                child: TextField(
                                  keyboardType: TextInputType.number,
                                  inputFormatters: <TextInputFormatter>[
                                    FilteringTextInputFormatter.digitsOnly
                                  ],
                                  controller: passwordcontroller,
                                  onChanged: (val){

                                    pasd=(val.length<=10)?'please Enter Valid Password':null;
                                    setState(() {

                                    });
                                  },
                                  obscureText: pass,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10.0),

                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(width: 3, color: Colors.brown),),


                                    hintText: 'Password',
                                    errorText: pasd,

                                    prefixIcon: Icon(Icons.password,color: Colors.red,),
                                    suffixIcon: IconButton(
                                      icon: Icon(Icons.visibility),
                                      onPressed: (){
                                        setState(() {
                                          pass=!pass;
                                        });
                                      },
                                    ),

                                  ),
                                ),
                              ),
                          ),

                          Container(
                              // padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
                              //padding: EdgeInsets.symmetric(horizontal: 15),
                              padding: const EdgeInsets.all(10),

                              child: TextField(
                                decoration: InputDecoration(
                                  // enabledBorder: BorderSide(),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(width: 3, color: Colors.brown),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  labelText: 'Email',
                                  hintText: 'Enter valid email id as abc@gmail.com',
                                  prefixIcon: Icon(
                                    Icons.person,
                                    color: Colors.red,

                                  ),
                                ),
                              ),
                          ),

                            Container(
                            padding: const EdgeInsets.all(10),
                            child: TextField(
                              // controller: nameController,
                              decoration:  InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(width: 3, color: Colors.brown),),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                hintText: 'Please enter your hobby',
                                labelText: 'Hobby',
                                prefixIcon: Icon(Icons.account_tree_outlined,color: Colors.red,),
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            child: TextField(
                               controller: dateInput,
                              decoration:  InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(width: 3, color: Colors.brown),),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                hintText: 'Please enter your date',
                                labelText: 'date',
                                prefixIcon: Icon(Icons.calendar_today,color: Colors.red),
                              ),
                              readOnly: true,
                              onTap: () async{
                                DateTime? pickedDate=await showDatePicker(context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(2000),
                                  lastDate: DateTime(2101),
                                );
                                if(pickedDate!=null){
                                 String formattedDate= DateFormat('dd-MM-yyyy').format(pickedDate);
                                 print(
                                     formattedDate);
                                  setState(() {
                                    dateInput.text=formattedDate.toString();
                                  });
                                }else{
                                  print("Not selected");
                                }
                              },
                            ),),
                          Container(
                            child: Column(
                              children: [

                                Text("gender", style: TextStyle(
                                    fontSize: 18
                                ),),

                                Divider(),

                                RadioListTile(
                                  title: Text("Male"),
                                  value: "male",
                                  groupValue: gender,
                                  onChanged: (value){
                                    setState(() {
                                      gender = value.toString();
                                    });
                                  },
                                ),

                                RadioListTile(
                                  title: Text("Female"),
                                  value: "female",
                                  groupValue: gender,
                                  onChanged: (value){
                                    setState(() {
                                      gender = value.toString();
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 40),
                            child: Container(
                              padding: EdgeInsets.only(top: 3,left: 3),
                              decoration: BoxDecoration(

                                  borderRadius: BorderRadius.circular(40),
                                  border: Border(
                                      bottom: BorderSide(color: Colors.black),
                                      top: BorderSide(color: Colors.black),
                                      right: BorderSide(color: Colors.black),
                                      left: BorderSide(color: Colors.black)
                                  )
                              ),
                              child: MaterialButton(
                                minWidth: double.infinity,
                                height:60,

                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder:(context)=>MyHomepage()));
                                },
                                color: Colors.orange,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40)
                                ),
                                child: Text("Login",style: TextStyle(
                                    fontWeight: FontWeight.w600,fontSize: 16,color: Colors.white70,
                                ),),
                              ),
                            ),
                          ),
                          SizedBox(height: 1,),
                          TextButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder:(context)=>MyHomepage()));
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [

                                Text("Dont have an account?",style: TextStyle(color: Colors.black),),

                                Text("Sign Up",style: TextStyle(

                                    fontWeight: FontWeight.w600,
                                    fontSize: 18
                                ),),

                              ],
                            ),
                          )
                        ],

                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
      ),

    );
  }
  Widget makeInput({label,obsureText = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: Colors.black87
        ),),
        SizedBox(height: 5,),
        TextField(
          obscureText: obsureText,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey,
              ),
            ),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey)
            ),
          ),
        ),
        SizedBox(height: 30,)

      ],
    );
  }
}


