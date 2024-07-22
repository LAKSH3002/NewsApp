import 'package:flutter/material.dart';
import 'package:newsholics/screens/landingpage.dart';

class EmailScreen extends StatefulWidget {
  const EmailScreen({super.key});

  @override
  State<EmailScreen> createState() => _EmailScreenState();
}

class _EmailScreenState extends State<EmailScreen> {
  final _formkey = GlobalKey<FormState>();
  bool passwordVisible = true;
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController namecontroller = TextEditingController();
  // bool _validate = false;

  @override
  void dispose() {
    emailcontroller.dispose();
    super.dispose();
  }

  // Method to validate the email the take
  // the user email as an input and
  // print the bool value in the console.
  // Function to validate email id.
  void Validate(String email) {
    // bool isvalid = EmailValidator.validate(email);
    // print(isvalid);
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Appbar
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        elevation: 5,
        centerTitle: true,
        titleSpacing: 3.0,
        title: const Text(
          'NewsHolics',
          style: TextStyle(
              fontSize: 20,
              color: Colors.redAccent,
              fontWeight: FontWeight.w600,
              fontStyle: FontStyle.normal),
        ),
      ),

      body: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // const SizedBox(height:15),
              // Text(screenwidth.toString()),
              const SizedBox(height: 35),

              const Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                child: Text(
                  "Enter Details to Read the most exciting news",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),

              SizedBox(height: 25),

              Center(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 15),
                  child: SizedBox(
                    // width: screenwidth * 0.93,
                    child: TextFormField(
                      // controller: namecontroller,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a name';
                        }
                        if (!RegExp(r'^[a-zA-Z\s]+$').hasMatch(value)) {
                          return 'Name must only contain letters';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        hintText: "Enter Your Full name*",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0)),
                        errorBorder: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ),
              ),

              Center(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 15),
                  child: SizedBox(
                    // width: screenwidth * 0.93,
                    child: TextFormField(
                      // controller: emailcontroller,
                      keyboardType: TextInputType.multiline,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        hintText: "Enter Your Email id*",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0)),
                        errorBorder: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter an email';
                        }
                        final emailRegex =
                            RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
                        if (!emailRegex.hasMatch(value)) {
                          return 'Please enter a valid email';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
              ),

              Center(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 15),
                  child: SizedBox(
                    // width: screenwidth * 0.93,
                    child: TextFormField(
                        // controller: passwordcontroller,
                        // obscureText: passwordVisible,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.password_rounded),
                          hintText: "Create Your Own Password*",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0)),
                          errorBorder: OutlineInputBorder(),
                          helperText: "Password must be 6 characters long",
                          suffixIcon: IconButton(
                            icon: Icon(passwordVisible
                                ? Icons.visibility_off
                                : Icons.visibility),
                            onPressed: () {
                              setState(
                                () {
                                  passwordVisible = !passwordVisible;
                                },
                              );
                            },
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your password';
                          }
                          // Validate password length between 6 to 13 characters
                          if (value.length < 6 || value.length > 13) {
                            return 'Password must be 6 to 13 characters long';
                          }
                          return null;
                        },
                        keyboardType: TextInputType.visiblePassword,
                        textInputAction: TextInputAction.done),
                  ),
                ),
              ),

              const SizedBox(height: 50),

              Center(
                child: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const LandingPage()));
                    },
                    child: const Text(
                      'Already Have an Account?? Log_In',
                      style: TextStyle(fontSize: 19),
                    )),
              ),

              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}