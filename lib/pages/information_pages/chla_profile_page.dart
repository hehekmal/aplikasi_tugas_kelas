import 'package:flutter/material.dart';

class ChlaProfilePage extends StatefulWidget {
  const ChlaProfilePage({super.key});

  @override
  State<ChlaProfilePage> createState() => _ChlaProfilePageState();
}

class _ChlaProfilePageState extends State<ChlaProfilePage> {
  bool lihat = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Edit Profile",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
          child: Column(
            children: [
              ClipOval(
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.black,
                  padding: EdgeInsets.all(3),
                  child: ClipOval(child: Image.asset("images/carmen.png")),
                ),
              ),
              SizedBox(height: 10),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Change photo",
                  style: TextStyle(color: Colors.blue),
                ),
              ),

              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(boxShadow: [BoxShadow(blurRadius: 1,offset: Offset(1.5, 1.5))],
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Nama"),
                        Text("Chladiola Nazwa"),
                        SizedBox(),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Email"),
                        Text("chladiola@gmail.com"),
                        SizedBox(),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Password"),
                        Row(
                          children: [
                            Text(lihat ? "chlastruick" : "************"),
                          ],
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              lihat = !lihat;
                            });
                          },
                          icon: Icon(
                            lihat
                                ? Icons.visibility
                                : Icons.visibility_off_outlined,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(children: [Text("Basic Info")]),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  hintText:
                      "Write a short description about who you are or what your account is about",
                  hintStyle: TextStyle(color: Colors.grey),
                  fillColor: Colors.grey.shade200,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
                maxLines: 7,
              ),
              SizedBox(height: 25),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Save Changes",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(),
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Cancel",
                      style: TextStyle(color: Colors.grey.shade800),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
