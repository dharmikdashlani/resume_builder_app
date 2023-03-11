import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:resume_builder_app/globals.dart';

// ignore: camel_case_types
class contact_page extends StatefulWidget {
  const contact_page({Key? key}) : super(key: key);

  @override
  State<contact_page> createState() => _contact_pageState();
}

// ignore: camel_case_types
class _contact_pageState extends State<contact_page> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  // ignore: non_constant_identifier_names
  ImagePicker Image = ImagePicker();
  File? file;

  getImageFromCamera() async {
    final ima = await Image.pickImage(source: ImageSource.camera);
    setState(() {
      Globals.img = File(ima!.path);
    });
  }

  bool a = true;
  bool b = false;

  TextEditingController nameController =
      TextEditingController(text: Globals.name);
  TextEditingController phoneController = TextEditingController(
      text: (Globals.contact != null) ? Globals.contact.toString() : null);
  TextEditingController emailController =
      TextEditingController(text: Globals.email);
  TextEditingController addressController =
      TextEditingController(text: Globals.address);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Contact Info",
          style: TextStyle(fontSize: 30),
        ),
        backgroundColor: Colors.deepPurpleAccent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Container(
                height: 80,
                width: MediaQuery.of(context).size.width,
                color: Colors.deepPurpleAccent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Center(
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              a = true;
                              b = false;
                            });
                          },
                          child: const Text(
                            "Contact",
                            style: TextStyle(fontSize: 25, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Center(
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              a = false;
                              b = true;
                            });
                          },
                          child: const Text(
                            "Photo",
                            style: TextStyle(fontSize: 25, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              (a)
                  ? Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Container(
                            // height: 500,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: Form(
                                    autovalidateMode: AutovalidateMode.always,
                                    child: TextFormField(
                                      validator: (val) {
                                        if (val!.isEmpty) {
                                          return "Please Enter The Name";
                                        } else {
                                          return null;
                                        }
                                      },
                                      onSaved: (val) {
                                        setState(() {
                                          Globals.name = (val);
                                        });
                                      },
                                      controller: nameController,
                                      onChanged: (val) {
                                        setState(() {
                                          Globals.name = val;
                                          // Globals.contact = int.parse(val);
                                        });
                                      },
                                      style: const TextStyle(
                                          color: Colors.deepPurple),
                                      decoration: const InputDecoration(
                                          enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.black)),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.deepPurpleAccent),
                                          ),
                                          hintText: "Name",
                                          hintStyle: TextStyle(
                                              // color: Colors.deepPurpleAccent,
                                              ),
                                          icon: Icon(
                                            Icons.drive_file_rename_outline,
                                            size: 35,
                                            color: Colors.deepPurpleAccent,
                                          )),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: TextFormField(
                                    validator: (val) {
                                      if (val!.isEmpty) {
                                        return "Please Enter The Email";
                                      } else {
                                        return null;
                                      }
                                    },
                                    onSaved: (val) {
                                      setState(() {
                                        Globals.email = (val);
                                      });
                                    },
                                    controller: emailController,
                                    onChanged: (val) {
                                      setState(() {
                                        Globals.email = val;
                                        // Globals.contact = int.parse(val);
                                      });
                                    },
                                    decoration: const InputDecoration(
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.black),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.deepPurpleAccent),
                                        ),
                                        // border: UnderlineInputBorder(),
                                        // hintText: AutofillHints.name,
                                        hintText: "Email",
                                        hintStyle: TextStyle(
                                            // color: Colors.deepPurpleAccent,
                                            ),
                                        icon: Icon(
                                          Icons.email,
                                          size: 35,
                                          color: Colors.deepPurpleAccent,
                                        )),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: TextFormField(
                                    validator: (val) {
                                      if (val!.isEmpty) {
                                        return "Please Enter The Phone Number";
                                      } else {
                                        return null;
                                      }
                                    },
                                    onSaved: (val) {
                                      setState(() {
                                        Globals.contact = (val) as int?;
                                      });
                                    },
                                    controller: phoneController,
                                    onChanged: (val) {
                                      setState(() {
                                        Globals.contact = val as int?;
                                        // Globals.contact = int.parse(val);
                                      });
                                    },
                                    decoration: const InputDecoration(
                                      enabledBorder: UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.black)),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.deepPurpleAccent),
                                      ),
                                      hintText: "Phone",
                                      hintStyle: TextStyle(
                                          // color: Colors.deepPurpleAccent,
                                          ),
                                      icon: Icon(
                                        Icons.phone_android_rounded,
                                        size: 35,
                                        color: Colors.deepPurpleAccent,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: TextFormField(
                                    validator: (val) {
                                      if (val!.isEmpty) {
                                        return "Please Enter The Address";
                                      } else {
                                        return null;
                                      }
                                    },
                                    onSaved: (val) {
                                      setState(() {
                                        Globals.address = (val);
                                      });
                                    },
                                    controller: addressController,
                                    onChanged: (val) {
                                      setState(() {
                                        Globals.address = val;
                                      });
                                    },
                                    enabled: true,
                                    decoration: const InputDecoration(
                                        enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.black)),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.deepPurpleAccent),
                                        ),
                                        hintText: "Address",
                                        hintStyle: TextStyle(
                                            // color: Colors.deepPurpleAccent,
                                            ),
                                        icon: Icon(
                                          Icons.location_on,
                                          size: 35,
                                          color: Colors.deepPurpleAccent,
                                        )),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: ElevatedButton(
                                          onPressed: () {
                                            if (formKey.currentState!
                                                .validate()) {
                                              formKey.currentState!.save();
                                            }
                                          },
                                          style: const ButtonStyle(
                                            backgroundColor:
                                                MaterialStatePropertyAll(
                                                    Colors.deepPurpleAccent),
                                          ),
                                          child: const Text("Submit / next"),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 30,
                                      ),
                                      Expanded(
                                        child: ElevatedButton(
                                          onPressed: () {
                                            nameController.clear();
                                            emailController.clear();
                                            phoneController.clear();
                                            addressController.clear();
                                            // Globals.name = null;
                                          },
                                          style: const ButtonStyle(
                                            backgroundColor:
                                                MaterialStatePropertyAll(
                                                    Colors.deepPurpleAccent),
                                          ),
                                          child: const Text("Reset"),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  : Container(),
              (b)
                  ? Center(
                      child: Column(
                        children: [
                          Container(
                            height: 400,
                            width: MediaQuery.of(context).size.width,
                            color: Colors.deepPurpleAccent,
                            child: Stack(
                              alignment: const Alignment(0.4, 0.4),
                              children: [
                                Center(
                                  child: CircleAvatar(
                                    radius: 100,
                                    // backgroundColor: Colors.deepPurple,
                                    backgroundImage: (Globals.img != null)
                                        ? FileImage(Globals.img!)
                                        : null,
                                    // child:
                                    //     (file == null) ? const Text("Add") : null,
                                  ),
                                ),
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      getImageFromCamera();
                                      // Globals.img;
                                    });
                                  },
                                  child: const CircleAvatar(
                                    radius: 25,
                                    backgroundColor: Colors.indigo,
                                    child: Icon(Icons.add),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              formKey.currentState!.save();
                            },
                            style: const ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.white),
                            ),
                            child: const Text(
                              "Save",
                              style: TextStyle(color: Colors.deepPurpleAccent),
                            ),
                          ),
                        ],
                      ),
                    )
                  : Container()
            ],
          ),
        ),
      ),
      backgroundColor: Colors.deepPurpleAccent,
    );
  }
}
