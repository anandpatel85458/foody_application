import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sam/Loginpage.dart';
class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: EdgeInsets.only(top: 100,bottom: 40),
        decoration: BoxDecoration(

          color: Colors.black,
          image: DecorationImage(

            image: AssetImage('images/back.png',),

            fit: BoxFit.cover,
            opacity: 0.6,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text('Food shop',style:GoogleFonts.pacifico(
              fontSize: 50,color: Colors.white,
            ),),
            Column(
              children: [
                Text('feeling Low? Take a Skip food',
                style: TextStyle(color: Colors.white.withOpacity(0.8),
                fontSize: 18,
                fontWeight: FontWeight.bold,letterSpacing: 1,),),
                SizedBox(height: 500),
                Container(
                  color: Colors.transparent,
                  child: InkWell(
                   // splashColor: Colors.black,
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Loginpage()));
                    },

                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 15,horizontal: 50),
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Text(
                          "Get Start",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold,
                        letterSpacing: 1,),
                        ),
                      ),
                    ),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
