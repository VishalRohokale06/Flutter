import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:todolist/modeclass.dart';

class ToDoListUI extends StatefulWidget {
  const ToDoListUI({super.key});

  @override
  _ToDoListUIState createState() => _ToDoListUIState();
}

class _ToDoListUIState extends State {
  TextEditingController textEditingController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController dateController = TextEditingController();

  List data = [];

  List<Color> colors = [
    const Color.fromRGBO(250, 232, 232, 1),
    const Color.fromRGBO(232, 237, 250, 1),
    const Color.fromRGBO(250, 249, 232, 1),
    const Color.fromRGBO(250, 232, 250, 1),
  ];

  void submit(bool doEdit, [Modeclass? obj]) {
    if (textEditingController.text.trim().isNotEmpty &&
        descriptionController.text.trim().isNotEmpty &&
        dateController.text.trim().isNotEmpty) {
      if (doEdit) {
        obj!.title = textEditingController.text;
        obj.discription = descriptionController.text;
        obj.date = dateController.text;
      } else {
        data.add(Modeclass(
            title: textEditingController.text,
            discription: descriptionController.text,
            date: dateController.text));
      }
    }
    Navigator.of(context).pop();
    clearControllers();
    setState(() {});
  }

  void clearControllers() {
    textEditingController.clear();
    descriptionController.clear();
    dateController.clear();
  }

  void bottomSheet(bool isEdit, [Modeclass? obj]) {
    showModalBottomSheet(
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        )),
        isDismissible: true,
        context: context,
        builder: (context) {
          return Padding(
            padding: EdgeInsets.only(
                left: 20,
                right: 20,
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    "Create To-Do",
                    style: GoogleFonts.quicksand(
                        fontSize: 25, fontWeight: FontWeight.w600),
                  ),
                ),
                Text(
                  "Title",
                  style: GoogleFonts.quicksand(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(0, 139, 148, 1),
                  ),
                ),
                TextField(
                  controller: textEditingController,
                  decoration: InputDecoration(
                    hintText: "title",
                    hintStyle: const TextStyle(
                        color: Color.fromARGB(255, 223, 218, 218)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                          color: Color.fromRGBO(0, 139, 148, 1)),
                    ),
                  ),
                ),
                Text(
                  "Description",
                  style: GoogleFonts.quicksand(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(0, 139, 148, 1),
                  ),
                ),
                TextField(
                  controller: descriptionController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Color.fromRGBO(0, 139, 148, 1),
                      ),
                    ),
                  ),
                ),
                Text(
                  "Date",
                  style: GoogleFonts.quicksand(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(0, 139, 148, 1),
                  ),
                ),
                TextField(
                  controller: dateController,
                  onTap: () async {
                    DateTime? pickedDate = await showDatePicker(
                        context: context,
                        firstDate: DateTime(2024),
                        lastDate: DateTime(2026));
                    String formattedDate =
                        DateFormat.yMMMd().format(pickedDate!);
                    dateController.text = formattedDate;
                    //print(date.text);
                    // setState(() {});
                  },
                  decoration: InputDecoration(
                      suffixIcon: const Icon(Icons.calendar_month_outlined),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Color.fromRGBO(0, 139, 148, 1),
                          ))),
                ),
                Center(
                  child: Container(
                    // height: 50,
                    width: 300,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(0, 139, 148, 1),
                        ),
                        onPressed: () {
                          isEdit ? submit(isEdit, obj) : submit(isEdit);
                        },
                        child: const Text("Submit")),
                  ),
                )
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("To-do List",
              style: GoogleFonts.quicksand(
                  color: Colors.black, fontWeight: FontWeight.w900)),
        ),
        backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
      ),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(15.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                color: colors[index % colors.length],
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                            height: 80,
                            width: 80,

                            //color: Colors.red,
                            decoration: BoxDecoration(
                              //color: Colors.amber,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            clipBehavior: Clip.antiAlias,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Colors.white,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child:
                                        SvgPicture.asset("assets/svg/home.svg"),
                                  ),
                                ),
                              ),
                            )),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  data[index].title,
                                  style: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  data[index].discription,
                                  style: const TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            data[index].date,
                            style: const TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              textEditingController.text = data[index].title;
                              descriptionController.text =
                                  data[index].discription;
                              dateController.text = data[index].date;
                              bottomSheet(true, data[index]);
                              //submit(true, data[index]);
                            },
                            child: const Icon(
                              Icons.create_outlined,
                              color: Color.fromRGBO(0, 139, 148, 1),
                            ),
                          ),
                          // Image.asset(
                          //   "asstes/vector.png",
                          //   height: 40,
                          //   width: 40,
                          // ),
                          const SizedBox(width: 10),
                          GestureDetector(
                            onTap: () {
                              data.removeAt(index);
                              setState(() {});
                            },
                            child: const Icon(
                              Icons.delete_forever_outlined,
                              color: Color.fromRGBO(0, 139, 148, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Container(
                    //   decoration: BoxDecoration(
                    //     border: Border.all(),
                    //     color: Colors.amber,
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          bottomSheet(false);
          // setState(() {

          // });
        },
        child: Icon(Icons.add_outlined),
      ),
    );
  }
}
