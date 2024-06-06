import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:newsholics/screens/Home.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        child: Column(
          children: [
            const SizedBox(height: 50,),
            Material(
              elevation: 3.0,
              borderRadius: BorderRadius.circular(30),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(
                  'Images/health.jpg',
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            const SizedBox(height: 20,),

            // Add some more styles.
            const Center(
              child: Text('News from around the world just for you  ',
                  style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold)),
            ),

            const Center(
              child:  Text(
                  'Best time to read, take your time to read a little more of this world',
                  style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold)),
            ),

            SizedBox(
              height: 40,
            ),

            GestureDetector(
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=> HomeScreen()));
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0)
                ),
                width: MediaQuery.of(context).size.width / 1.2,
                child: Material(
                  borderRadius: BorderRadius.circular(15.0),
                  elevation: 3.0,
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 15.0),
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                    ),
                    // add some more decoration to text
                    child: const Center(
                      child: Text(
                        'Get Started',
                        style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
