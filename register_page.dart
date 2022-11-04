import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Register"),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              child: Column(
                children: [
                  _showTitle(),
                  _showUsernameInput(),
                  _showEmailInput(),
                  _showPasswordInput(),
                  _showFormActions(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Padding _showFormActions() {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 8.0,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              primary: Theme.of(context).colorScheme.primary,
            ),
            onPressed: () {},
            child: const Text(
              "Submit",
              style: TextStyle(color: Colors.black),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              "Existing user? Login",
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }

  Padding _showPasswordInput() {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: TextFormField(
        obscureText: true,
        decoration: InputDecoration(
            border: const OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
              color: Theme.of(context).colorScheme.secondary,
            )),
            labelText: "Password",
            hintText: "Enter password, min length 6",
            icon: const Icon(
              Icons.lock,
              color: Colors.grey,
            )),
      ),
    );
  }

  Padding _showEmailInput() {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: TextFormField(
        decoration: InputDecoration(
            border: const OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
              color: Theme.of(context).colorScheme.secondary,
            )),
            labelText: "Email",
            hintText: "Enter a valid email",
            icon: const Icon(
              Icons.email,
              color: Colors.grey,
            )),
      ),
    );
  }

  Padding _showUsernameInput() {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: TextFormField(
        decoration: InputDecoration(
            border: const OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
              color: Theme.of(context).colorScheme.secondary,
            )),
            labelText: "username",
            hintText: "Enter username, min length 6",
            icon: const Icon(
              Icons.face,
              color: Colors.grey,
            )),
      ),
    );
  }

  Text _showTitle() {
    return const Text(
      "Register",
      style: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
    );
  }
}
