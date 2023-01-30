import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sam/Foodpage.dart';
import 'package:intl/intl.dart';
import 'package:sam/Housepage.dart';
import 'package:sam/MyHomepage.dart';

class MyHomepage extends StatefulWidget {
  const MyHomepage({Key? key}) : super(key: key);

  @override
  State<MyHomepage> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  TextEditingController nameController = TextEditingController();

//TextEditingController dateinput = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController dateInput = TextEditingController();
  bool pass = true;
  String? pasd;


  @override
  void initState() {
    super.initState();
    dateInput.text = "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              size: 20,
              color: Colors.black,
            )),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 90.0),
              child: Center(
                child: Container(
                  width: 400,
                  height: 150,
                  /*decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.circular(50.0)),*/
                  child: Image.asset('images/fast2.png'),
                ),
              ),
            ),
            Padding(

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

            Padding(
                padding: const EdgeInsets.all(10),

                child: TextField(
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  controller: passwordcontroller,
                  onChanged: (val){

                    pasd=(val.length<=8)?'please Enter Valid Password':null;
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

            TextButton(
              onPressed: () {
                //TODO FORGOT PASSWORD SCREEN GOES HERE
              },
              child: Text(
                'Forgot Password',
                style: TextStyle(color: Colors.blue, fontSize: 15),
              ),
            ),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(20)),
              child: MaterialButton(
                minWidth: double.infinity,
                height: 60,
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => Housepage()));
                },
                color: Colors.orange,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),

            SizedBox(
              height: 30,
            ),
            Text('New User? Create Account')
          ],
        ),
      ),
    );
  }
}
