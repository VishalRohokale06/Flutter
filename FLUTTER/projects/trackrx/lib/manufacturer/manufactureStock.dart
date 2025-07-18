import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

class MedicinePage1 extends StatefulWidget {
  const MedicinePage1({Key? key}) : super(key: key);

  @override
  _MedicinePage1State createState() => _MedicinePage1State();
}

class _MedicinePage1State extends State<MedicinePage1>
    with SingleTickerProviderStateMixin {
  File? _image;
  String searchQuery = "";

  // Dropdown list and value
  List<String> droplist = <String>[
    'Throat',
    'Cardiac',
    'Antibiotics',
    'Pain Management',
    'Osteoarthritis',
    'Hypertension',
    'High Cholesterol',
    'Eye/Ear',
    'Diabetes',
    'Nasal',
    'Vaginal',
    'Vitamins',
    'Antiviral',
    'Sex hormone',
  ];
  String? dropvalue;

  // Controllers for input fields
  final TextEditingController medicenameController = TextEditingController();
  final TextEditingController productidcontroller = TextEditingController();
  final TextEditingController manufacturedatecontroller =
      TextEditingController();
  final TextEditingController expirydatecontroller = TextEditingController();
  final TextEditingController pricecontroller = TextEditingController();
  final TextEditingController quantitycontroller = TextEditingController();
  final TextEditingController categorycontoller = TextEditingController();

  // Floating Action Button Animation Controller
  late AnimationController _fabController;

  @override
  void initState() {
    super.initState();
    _fabController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
  }

  @override
  void dispose() {
    _fabController.dispose();
    super.dispose();
  }

  void showBottomSheetAddMedicine() {
    showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      context: context,
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
            left: 20,
            right: 20,
            top: 20,
          ),
          child: StatefulBuilder(
            builder: (context, setState) {
              Future<void> pickImage() async {
                final picker = ImagePicker();
                final pickedFile = await picker.pickImage(
                  source: ImageSource.gallery,
                  imageQuality: 50,
                );
                if (pickedFile != null) {
                  setState(() {
                    _image = File(pickedFile.path);
                  });
                }
              }

              Future<void> addMedicine() async {
                if (_image == null ||
                    medicenameController.text.trim().isEmpty ||
                    productidcontroller.text.trim().isEmpty ||
                    manufacturedatecontroller.text.trim().isEmpty ||
                    expirydatecontroller.text.trim().isEmpty ||
                    pricecontroller.text.trim().isEmpty ||
                    quantitycontroller.text.trim().isEmpty ||
                    categorycontoller.text.trim().isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Invalid Data")),
                  );
                  return;
                }

                try {
                  // Convert price and quantity to integers
                  int price = int.tryParse(pricecontroller.text.trim()) ?? 0;
                  int quantity =
                      int.tryParse(quantitycontroller.text.trim()) ?? 0;

                  // Upload image to Firebase Storage
                  String fileName = DateTime.now().toString();
                  Reference storageRef = FirebaseStorage.instance
                      .ref()
                      .child('medicines_images/$fileName');
                  UploadTask uploadTask = storageRef.putFile(_image!);
                  await uploadTask;
                  String imageUrl = await storageRef.getDownloadURL();

                  // Prepare data to add to Firestore
                  String productId = productidcontroller.text.trim();
                  Map<String, dynamic> stockData = {
                    "medicenName": medicenameController.text.trim(),
                    "productId": productId,
                    "mdate": manufacturedatecontroller.text.trim(),
                    "edate": expirydatecontroller.text.trim(),
                    "price": price, // Store as integer
                    "quantity": quantity, // Store as integer
                    "category": categorycontoller.text.trim(),
                    "imageUrl": imageUrl,
                  };

                  // Add to Firestore with document ID as productId
                  await FirebaseFirestore.instance
                      .collection("medicine")
                      .doc(productId) // Use productId as document ID
                      .set(stockData);

                  // Clear fields and image
                  medicenameController.clear();
                  productidcontroller.clear();
                  manufacturedatecontroller.clear();
                  expirydatecontroller.clear();
                  pricecontroller.clear();
                  quantitycontroller.clear();
                  categorycontoller.clear();
                  setState(() {
                    _image = null;
                  });

                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        "Data Added Successfully",
                        style: TextStyle(
                            color: Colors.cyanAccent,
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  );
                  Navigator.pop(context);
                } catch (e) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Error: $e")),
                  );
                }
              }

              Widget buildTextField({
                required TextEditingController controller,
                required String labelText,
                IconData? suffixIcon,
                VoidCallback? onTap,
                TextInputType keyboardType = TextInputType.text,
              }) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: TextField(
                    controller: controller,
                    keyboardType: keyboardType,
                    decoration: InputDecoration(
                      labelText: labelText,
                      labelStyle: GoogleFonts.poppins(fontSize: 14),
                      filled: true,
                      fillColor: Colors.grey[100],
                      prefixIcon: suffixIcon != null
                          ? Icon(suffixIcon, color: Colors.teal)
                          : null,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    readOnly: onTap != null,
                    onTap: onTap,
                  ),
                );
              }

              return SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Center(
                      child: Text(
                        "Add Medicine",
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    GestureDetector(
                      onTap: pickImage,
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.teal, width: 2),
                          color: Colors.teal.withOpacity(0.1),
                        ),
                        child: _image == null
                            ? const Icon(
                                Icons.add_a_photo_outlined,
                                size: 50,
                                color: Colors.teal,
                              )
                            : ClipOval(
                                child: Image.file(
                                  _image!,
                                  fit: BoxFit.cover,
                                ),
                              ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    buildTextField(
                      controller: medicenameController,
                      labelText: "Name of Medicine",
                    ),
                    buildTextField(
                      controller: productidcontroller,
                      labelText: "Product ID",
                      suffixIcon: Icons.qr_code_outlined,
                    ),
                    buildTextField(
                      controller: manufacturedatecontroller,
                      labelText: "Manufacture Date",
                      suffixIcon: Icons.calendar_today_outlined,
                      onTap: () async {
                        DateTime? pickedDate = await showDatePicker(
                          context: context,
                          firstDate: DateTime(2024),
                          lastDate: DateTime(2025),
                        );
                        if (pickedDate != null) {
                          manufacturedatecontroller.text =
                              DateFormat.yMMMd().format(pickedDate);
                        }
                        // Date picker logic here
                      },
                    ),
                    buildTextField(
                      controller: expirydatecontroller,
                      labelText: "Expiry Date",
                      suffixIcon: Icons.date_range_outlined,
                      onTap: () async {
                        DateTime? manufacturerDate;
                        if (manufacturedatecontroller.text.isNotEmpty) {
                          manufacturerDate = DateFormat.yMMMd()
                              .parse(manufacturedatecontroller.text);
                        }

                        DateTime? pickedDate = await showDatePicker(
                          context: context,
                          initialDate: manufacturerDate ?? DateTime.now(),
                          firstDate: manufacturerDate ??
                              DateTime
                                  .now(), // Set minimum date as the manufacturer date or today
                          lastDate: DateTime.now().add(const Duration(
                              days:
                                  3 * 365)), // Add 3 years to the current date
                        );

                        if (pickedDate != null) {
                          expirydatecontroller.text =
                              DateFormat.yMMMd().format(pickedDate);
                        }
                      },
                    ),
                    buildTextField(
                      controller: pricecontroller,
                      labelText: "Price",
                      keyboardType: TextInputType.number,
                      suffixIcon: Icons.attach_money_outlined,
                    ),
                    buildTextField(
                      controller: quantitycontroller,
                      labelText: "Quantity",
                      keyboardType: TextInputType.number,
                      suffixIcon: Icons.confirmation_number_outlined,
                    ),
                    const SizedBox(height: 15),
                    buildTextField(
                      controller: categorycontoller,
                      labelText: "Category",
                      suffixIcon: Icons.arrow_drop_down,
                      onTap: () async {
                        // Assuming `droplist` and `dropvalue` are pre-defined
                        String? selectedCategory =
                            await showModalBottomSheet<String>(
                          context: context,
                          builder: (_) => ListView(
                            children: droplist
                                .map(
                                  (category) => ListTile(
                                    title: Text(category),
                                    onTap: () =>
                                        Navigator.pop(context, category),
                                  ),
                                )
                                .toList(),
                          ),
                        );
                        if (selectedCategory != null) {
                          setState(() {
                            dropvalue = selectedCategory;
                            categorycontoller.text = selectedCategory;
                          });
                        }
                      },
                    ),
                    const SizedBox(height: 10),
                    GestureDetector(
                      onTap: addMedicine,
                      child: Container(
                        height: 45,
                        decoration: BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "Add Medicine",
                          style: GoogleFonts.poppins(
                              fontSize: 15, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }

  void _showUpdateDialog(Map<String, dynamic> medicineData) {
    // Pre-fill the fields with existing data
    medicenameController.text = medicineData["medicenName"] ?? "";
    productidcontroller.text = medicineData["productId"] ?? "";
    manufacturedatecontroller.text = medicineData["mdate"] ?? "";
    expirydatecontroller.text = medicineData["edate"] ?? "";
    pricecontroller.text = medicineData["price"] ?? "";
    quantitycontroller.text = medicineData["quantity"].toString();
    categorycontoller.text = medicineData["category"] ?? "";

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Update Medicine"),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: medicenameController,
                decoration: const InputDecoration(labelText: "Medicine Name"),
              ),
              TextField(
                controller: manufacturedatecontroller,
                decoration:
                    const InputDecoration(labelText: "Manufacture Date"),
              ),
              TextField(
                controller: expirydatecontroller,
                decoration: const InputDecoration(labelText: "Expiry Date"),
              ),
              TextField(
                controller: pricecontroller,
                decoration: const InputDecoration(labelText: "Price"),
              ),
              TextField(
                controller: quantitycontroller,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(labelText: "Quantity"),
              ),
              TextField(
                controller: categorycontoller,
                decoration: const InputDecoration(labelText: "Category"),
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Cancel"),
          ),
          ElevatedButton(
            onPressed: () {
              _updateMedicine(medicineData["productId"]);
              Navigator.pop(context);
            },
            child: const Text("Update"),
          ),
        ],
      ),
    );
  }

  Future<void> _updateMedicine(String productId) async {
    try {
      // Convert price and quantity to integers
      int price = int.tryParse(pricecontroller.text.trim()) ?? 0;
      int quantity = int.tryParse(quantitycontroller.text.trim()) ?? 0;

      await FirebaseFirestore.instance
          .collection("medicine")
          .doc(productId)
          .update({
        "medicenName": medicenameController.text.trim(),
        "mdate": manufacturedatecontroller.text.trim(),
        "edate": expirydatecontroller.text.trim(),
        "price": price, // Store as integer
        "quantity": quantity, // Store as integer
        "category": categorycontoller.text.trim(),
      });

      // Clear input fields
      medicenameController.clear();
      productidcontroller.clear();
      manufacturedatecontroller.clear();
      expirydatecontroller.clear();
      pricecontroller.clear();
      quantitycontroller.clear();
      categorycontoller.clear();

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Medicine Updated Successfully")),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Error: $e")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Medicines", style: GoogleFonts.poppins(fontSize: 20)),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.white, Colors.tealAccent],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance.collection("medicine").snapshots(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }

            if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
              return const Center(child: Text("No medicines found."));
            }

            final medicines = snapshot.data!.docs;

            // Filter medicines based on search query
            final filteredMedicines = medicines.where((medicine) {
              String medicineName =
                  (medicine["medicenName"] ?? "").toString().toLowerCase();
              return medicineName.contains(searchQuery);
            }).toList();

            // Sort medicines by expiry date
            filteredMedicines.sort((a, b) {
              final aDate = DateFormat.yMMMd().parse(a["edate"]);
              final bDate = DateFormat.yMMMd().parse(b["edate"]);
              return aDate.compareTo(bDate);
            });

            return ListView.builder(
              itemCount: filteredMedicines.length,
              itemBuilder: (context, index) {
                final medicine = filteredMedicines[index];
                final medicineData = medicine.data() as Map<String, dynamic>;
                return Card(
                  margin: const EdgeInsets.all(8.0),
                  elevation: 4, // Add shadow for depth
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        15.0), // Rounded corners for the card
                  ),
                  color:
                      Colors.teal.shade50, // Light teal background for the card
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(
                        16.0), // Add some padding inside the ListTile
                    leading: medicineData["imageUrl"] != null &&
                            medicineData["imageUrl"].isNotEmpty
                        ? Image.network(
                            medicineData["imageUrl"],
                            height: 60,
                            width: 60,
                            fit: BoxFit.cover,
                          )
                        : Icon(Icons.medical_services,
                            size: 60,
                            color: Colors.teal), // Adjust icon size and color
                    title: Text(
                      medicineData["medicenName"] ?? "Unknown",
                      style: TextStyle(
                        color: Colors.teal
                            .shade900, // Dark teal for the title for contrast
                        fontWeight: FontWeight.bold, // Bold for emphasis
                        fontSize: 16,
                        fontFamily: 'Roboto', // Add font family
                      ),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Expiry Date: ${medicineData["edate"] ?? "N/A"}",
                          style: TextStyle(
                            color: Colors.teal
                                .shade700, // Slightly lighter teal for subtitle
                            fontFamily: 'Roboto', // Add font family
                          ),
                        ),
                        Text(
                          "Quantity: ${medicineData["quantity"] ?? "0"}",
                          style: TextStyle(
                            color: Colors
                                .teal.shade700, // Lighter teal for subtitle
                            fontFamily: 'Roboto', // Add font family
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
      floatingActionButton: AnimatedBuilder(
        animation: _fabController,
        builder: (context, child) {
          return Transform.rotate(
            angle: _fabController.value * 2.0 * 3.1416,
            child: child,
          );
        },
        child: FloatingActionButton(
          backgroundColor: Colors.teal,
          onPressed: () {
            _fabController.forward(from: 0.0);
            showBottomSheetAddMedicine();
          },
          child: const Icon(Icons.add, color: Colors.white),
        ),
      ),
    );
  }
}
                                                         






















// import 'dart:ffi';
// import 'dart:io';

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:intl/intl.dart';
// import 'package:trackrx/manufacturer/model/stockmodel.dart';
// import 'package:trackrx/manufacturer/showstock.dart';

// class Manufacturestock extends StatefulWidget {
//   Manufacturestock({super.key});

//   @override
//   State<Manufacturestock> createState() => _ManufacturestockState();
// }

// class _ManufacturestockState extends State<Manufacturestock> {
//   //////////////////////////////////////////////////////////////
//   List mstockList = [];

//   void initState() {
//     super.initState();
//     WhList();
//   }

//   ///////////////////////////////////////////////////////////////
//   Future<void> WhList() async {
//     try {
//       QuerySnapshot response =
//           await FirebaseFirestore.instance.collection("manufactureStock").get();

//       mstockList.clear();

//       for (int i = 0; i < response.docs.length; i++) {
//         print("${response.docs[i]['medicenName']}");
//         print(response.docs.length);

//         mstockList.add(
//           MStockmodel(
//               MediceName: response.docs[i]['medicenName'],
//               Quantity: response.docs[i]['quantity'],
//               Price: response.docs[i]['price'],
//               ProductId: response.docs[i]['productId']),
//         );
//         print(mstockList);
//       }
//     } catch (e) {
//       print("Error in Fetching Data: $e");
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(
//           content: Text("Error in fetching data"),
//         ),
//       );
//     }
//     setState(() {});
//   }

//   ////////////////////////////////////////////////////////////////
//   TextEditingController medicenameController = TextEditingController();
//   TextEditingController productidcontroller = TextEditingController();
//   TextEditingController manufacturedatecontroller = TextEditingController();
//   TextEditingController expirydatecontroller = TextEditingController();
//   TextEditingController pricecontroller = TextEditingController();
//   TextEditingController quantitycontroller = TextEditingController();
//   ////////////////////////////////////////////////////////////////////////////////
//   TextEditingController categorycontoller = TextEditingController();
//   List<String> droplist = <String>[
//     'Cardiac',
//     'Antibiotics',
//     'Pain Management',
//     'Osteoarthritis',
//     'Hypertension',
//     'High Cholesterol',
//     'Eye/Ear',
//     'Diabetes'
//   ];
//   String? dropvalue;
//   ///////////////////////////////////////////////////////////////
//   /////////////////////////////////////////////////////////////////////////
//   // List<Map> mstock = [
//   //   {
//   //     "Medicen Name ": "Crossine",
//   //     "Price": "20000",
//   //     "Man.Date": "12nov",
//   //     "Exp.Date": "24nov",
//   //   },
//   // ];

//   ///////////////////////////////////////

//   ////////////////////////////////////////
//   // final ImagePicker _imagePicker = ImagePicker();

//   // XFile? _selectedFile;

//   // Future<void> uploadImage({required String filename}) async {
//   //   print("Add Image TO FIREBASE");
//   //   FirebaseStorage.instance.ref().child(filename).putFile(
//   //         File(_selectedFile!.path),
//   //       );
//   // }

//   // Future<String> downloadImageURL({required String fileName}) {
//   //   print("GET URL TO FIREBASE");
//   //   String url =
//   //       FirebaseStorage.instance.ref().child(fileName).getDownloadURL();
//   //   print("UPLOAD URL : $url");
//   //   return url;
//   // }

//   // Map<String,dynamic> data = {
//   //   'profilePic' : url,
//   //   "Medicen Name" : medicenameController.text.trim();
//   // }

//   ///\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
//   File? _image; // To store the picked image

//   void showBottomSheetAddMedicen() {
//     showModalBottomSheet(
//       isScrollControlled: true,
//       context: context,
//       builder: (context) {
//         return Padding(
//           padding: EdgeInsets.only(
//             bottom: MediaQuery.of(context).viewInsets.bottom,
//             left: 20,
//             right: 20,
//             top: 20,
//           ),
//           child: StatefulBuilder(
//             builder: (context, setState) {
//               Future<void> _pickImage() async {
//                 final picker = ImagePicker();
//                 final pickedFile = await picker.pickImage(
//                   source: ImageSource.gallery,
//                   imageQuality: 50,
//                 );
//                 if (pickedFile != null) {
//                   setState(() {
//                     _image = File(pickedFile.path);
//                   });
//                 }
//               }

//               Future<void> _addMedicine() async {
//                 if (_image == null ||
//                     medicenameController.text.trim().isEmpty ||
//                     productidcontroller.text.trim().isEmpty ||
//                     manufacturedatecontroller.text.trim().isEmpty ||
//                     expirydatecontroller.text.trim().isEmpty ||
//                     pricecontroller.text.trim().isEmpty ||
//                     quantitycontroller.text.trim().isEmpty ||
//                     categorycontoller.text.trim().isEmpty) {
//                   ScaffoldMessenger.of(context).showSnackBar(
//                     const SnackBar(content: Text("Invalid Data")),
//                   );
//                   return;
//                 }

//                 try {
//                   // Upload image to Firebase Storage
//                   String fileName = DateTime.now().toString();
//                   Reference storageRef = FirebaseStorage.instance
//                       .ref()
//                       .child('medicines_images/$fileName');
//                   UploadTask uploadTask = storageRef.putFile(_image!);
//                   await uploadTask;
//                   String imageUrl = await storageRef.getDownloadURL();

//                   // Prepare data to add to Firestore
//                   String productId = productidcontroller.text.trim();
//                   Map<String, dynamic> stockData = {
//                     "medicenName": medicenameController.text.trim(),
//                     "productId": productId,
//                     "mdate": manufacturedatecontroller.text.trim(),
//                     "edate": expirydatecontroller.text.trim(),
//                     "price": pricecontroller.text.trim(),
//                     "quantity": quantitycontroller.text.trim(),
//                     "category": categorycontoller.text.trim(),
//                     "imageUrl": imageUrl,
//                   };

//                   // Add to Firestore with document ID as productId
//                   await FirebaseFirestore.instance
//                       .collection("medicine")
//                       .doc(productId) // Use productId as document ID
//                       .set(stockData);

//                   // Clear fields and image
//                   medicenameController.clear();
//                   productidcontroller.clear();
//                   manufacturedatecontroller.clear();
//                   expirydatecontroller.clear();
//                   pricecontroller.clear();
//                   quantitycontroller.clear();
//                   categorycontoller.clear();
//                   setState(() {
//                     _image = null;
//                   });

//                   ScaffoldMessenger.of(context).showSnackBar(
//                     const SnackBar(
//                       content: Text(
//                         "Data Added Successfully",
//                         style: TextStyle(
//                             color: Colors.cyanAccent,
//                             fontSize: 15,
//                             fontWeight: FontWeight.w400),
//                       ),
//                     ),
//                   );
//                   Navigator.pop(context);
//                 } catch (e) {
//                   ScaffoldMessenger.of(context).showSnackBar(
//                     SnackBar(content: Text("Error: $e")),
//                   );
//                 }
//               }

//               Widget _buildTextField({
//                 required TextEditingController controller,
//                 required String labelText,
//                 IconData? suffixIcon,
//                 VoidCallback? onTap,
//                 TextInputType keyboardType = TextInputType.text,
//               }) {
//                 return Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: TextField(
//                     controller: controller,
//                     keyboardType: keyboardType,
//                     decoration: InputDecoration(
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10.0),
//                       ),
//                       labelText: labelText,
//                       suffixIcon: suffixIcon != null ? Icon(suffixIcon) : null,
//                     ),
//                     readOnly: onTap != null,
//                     onTap: onTap,
//                   ),
//                 );
//               }

//               return SingleChildScrollView(
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     Center(
//                       child: Text(
//                         "Medicens",
//                         style: GoogleFonts.almarai(
//                             fontSize: 20, fontWeight: FontWeight.bold),
//                       ),
//                     ),
//                     const SizedBox(height: 20),
//                     GestureDetector(
//                       onTap: _pickImage,
//                       child: Container(
//                         height: 100,
//                         width: 100,
//                         clipBehavior: Clip.antiAlias,
//                         decoration: BoxDecoration(
//                           shape: BoxShape.circle,
//                           border: Border.all(),
//                           color: const Color.fromRGBO(0, 0, 0, 0.05),
//                         ),
//                         child: _image == null
//                             ? const Icon(Icons.add_a_photo, size: 50)
//                             : Image.file(_image!, fit: BoxFit.cover),
//                       ),
//                     ),
//                     _buildTextField(
//                       controller: medicenameController,
//                       labelText: "Name of Medicine",
//                     ),
//                     _buildTextField(
//                       controller: productidcontroller,
//                       labelText: "Product ID",
//                     ),
//                     _buildTextField(
//                       controller: manufacturedatecontroller,
//                       labelText: "Manufacture Date",
//                       suffixIcon: Icons.calendar_month_outlined,
//                       onTap: () async {
//                         DateTime? pickedDate = await showDatePicker(
//                           context: context,
//                           firstDate: DateTime(2024),
//                           lastDate: DateTime(2025),
//                         );
//                         if (pickedDate != null) {
//                           manufacturedatecontroller.text =
//                               DateFormat.yMMMd().format(pickedDate);
//                         }
//                       },
//                     ),
//                     _buildTextField(
//                       controller: expirydatecontroller,
//                       labelText: "Expiry Date",
//                       suffixIcon: Icons.calendar_month_outlined,
//                       onTap: () async {
//                         DateTime? pickedDate = await showDatePicker(
//                           context: context,
//                           firstDate: DateTime(2024),
//                           lastDate: DateTime(2025),
//                         );
//                         if (pickedDate != null) {
//                           expirydatecontroller.text =
//                               DateFormat.yMMMd().format(pickedDate);
//                         }
//                       },
//                     ),
//                     _buildTextField(
//                       controller: pricecontroller,
//                       labelText: "Price",
//                       keyboardType: TextInputType.number,
//                     ),
//                     _buildTextField(
//                       controller: quantitycontroller,
//                       labelText: "Quantity",
//                       keyboardType: TextInputType.number,
//                     ),
//                     _buildTextField(
//                       controller: categorycontoller,
//                       labelText: "Category",
//                       suffixIcon: Icons.arrow_drop_down,
//                       onTap: () async {
//                         // Assuming `droplist` and `dropvalue` are pre-defined
//                         String? selectedCategory =
//                             await showModalBottomSheet<String>(
//                           context: context,
//                           builder: (_) => ListView(
//                             children: droplist
//                                 .map(
//                                   (category) => ListTile(
//                                     title: Text(category),
//                                     onTap: () =>
//                                         Navigator.pop(context, category),
//                                   ),
//                                 )
//                                 .toList(),
//                           ),
//                         );
//                         if (selectedCategory != null) {
//                           setState(() {
//                             dropvalue = selectedCategory;
//                             categorycontoller.text = selectedCategory;
//                           });
//                         }
//                       },
//                     ),
//                     const SizedBox(height: 10),
//                     GestureDetector(
//                       onTap: _addMedicine,
//                       child: Container(
//                         height: 45,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(10),
//                           border: Border.all(),
//                         ),
//                         alignment: Alignment.center,
//                         child: Text(
//                           "Add Medicine",
//                           style: GoogleFonts.poppins(
//                               fontSize: 15, fontWeight: FontWeight.w600),
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 15),
//                   ],
//                 ),
//               );
//             },
//           ),
//         );
//       },
//     );
//   }

//   ///////////////////////ON MANISTOCK CONTAINER CLICK///////////////////////////
//   void showBottomSheetAvailableStock() {
//     showModalBottomSheet(
//         //isScrollControlled:true,
//         context: context,
//         builder: (context) {
//           return Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: StatefulBuilder(
//               builder: (context, setState) {
//                 return SizedBox(
//                   width: MediaQuery.of(context).size.width,
//                   child: SingleChildScrollView(
//                     child: Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Center(
//                             child: Container(
//                               clipBehavior: Clip.antiAlias,
//                               height: 200,
//                               width: 200,
//                               decoration: BoxDecoration(
//                                 //border: Border.all(),
//                                 borderRadius: BorderRadius.circular(120),
//                                 // shape: BoxShape.circle),
//                               ),
//                               child: Padding(
//                                 padding: const EdgeInsets.all(18.0),
//                                 child: Image.network(
//                                     "https://tse3.mm.bing.net/th?id=OIP.yMwBzPZYU2G0rAdrr8D2ogHaHD&pid=Api&P=0&h=220"),
//                               ),
//                             ),
//                           ),
//                           const Text(
//                             "Medicen Name :",
//                             style: TextStyle(
//                                 fontSize: 20, fontWeight: FontWeight.w500),
//                           ),
//                           const Text(
//                             "Product Id :",
//                             style: TextStyle(
//                                 fontSize: 20, fontWeight: FontWeight.w500),
//                           ),
//                           const Text(
//                             "Price :",
//                             style: TextStyle(
//                                 fontSize: 20, fontWeight: FontWeight.w500),
//                           ),
//                           const Text(
//                             "Quantity :",
//                             style: TextStyle(
//                                 fontSize: 20, fontWeight: FontWeight.w500),
//                           ),
//                           const Text(
//                             "Manifacture Date :",
//                             style: TextStyle(
//                                 fontSize: 20, fontWeight: FontWeight.w500),
//                           ),
//                           const Text(
//                             "Expiry Date :",
//                             style: TextStyle(
//                                 fontSize: 20, fontWeight: FontWeight.w500),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 );
//               },
//             ),
//           );
//         });
//   }
//   ////////////////////////////////////////////////////////////////////////////

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Container(
//             height: 160,
//             width: MediaQuery.of(context).size.width,
//             decoration: BoxDecoration(
//               border: Border.all(color: Colors.white),
//               borderRadius: const BorderRadius.only(
//                 bottomLeft: Radius.circular(20),
//                 bottomRight: Radius.circular(20),
//               ),
//               color: const Color.fromRGBO(117, 164, 136, 1.0),
//             ),
//             child: Padding(
//               padding: const EdgeInsets.only(
//                 left: 15,
//                 right: 15,
//                 top: 30,
//                 //bottom: 10,
//               ),
//               child: Stack(
//                 children: [
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Padding(
//                         padding:
//                             const EdgeInsets.only(top: 6, left: 40, bottom: 10),
//                         child: Text(
//                           "ManufacturerStock",
//                           style: GoogleFonts.poppins(
//                             fontSize: 30,
//                             color: Colors.white,
//                           ),
//                         ),
//                       ),
//                       TextField(
//                         decoration: InputDecoration(
//                           fillColor: Colors.white,
//                           filled: true,
//                           hintText: "Search for medicens",
//                           hintStyle: TextStyle(
//                               color: Colors.black.withOpacity(0.4),
//                               fontSize: 17),
//                           prefixIcon: const Icon(
//                             Icons.search,
//                             color: Color.fromARGB(255, 6, 79, 139),
//                           ),
//                           border: OutlineInputBorder(
//                             borderSide: const BorderSide(color: Colors.black),
//                             borderRadius: BorderRadius.circular(15),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(top: 10),
//                     child: GestureDetector(
//                       onTap: () {
//                         Navigator.pop(context);
//                       },
//                       child: const Icon(
//                         Icons.keyboard_arrow_left_outlined,
//                         size: 30,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Expanded(
//             child: ListView.builder(
//               scrollDirection: Axis.vertical,
//               shrinkWrap: true,
//               itemCount: mstockList.length,
//               itemBuilder: (context, index) {
//                 return Expanded(
//                   child: Column(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.only(
//                             bottom: 15, left: 15, right: 15),
//                         child: GestureDetector(
//                           onTap: () {
//                             showBottomSheetAvailableStock();
//                           },
//                           child: Expanded(
//                             child: Container(
//                               height: 100,
//                               width: MediaQuery.of(context).size.width,
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(10),
//                                 color: const Color.fromARGB(255, 208, 212, 165),
//                               ),
//                               child: Row(
//                                 children: [
//                                   Padding(
//                                     padding: const EdgeInsets.only(
//                                         top: 5, bottom: 5),
//                                     child: Container(
//                                       height: 130,
//                                       width: 130,
//                                       decoration: const BoxDecoration(
//                                         //borderRadius: BorderRadius.circular(200),
//                                         shape: BoxShape.circle,
//                                         color: Colors.white,
//                                       ),
//                                       child: Padding(
//                                         padding: const EdgeInsets.all(18.0),
//                                         child: ClipRRect(
//                                           borderRadius:
//                                               BorderRadius.circular(50),
//                                           child: Image.network(
//                                               "https://tse3.mm.bing.net/th?id=OIP.yMwBzPZYU2G0rAdrr8D2ogHaHD&pid=Api&P=0&h=220"),
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                   Column(
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     children: [
//                                       Padding(
//                                         padding: const EdgeInsets.only(top: 15),
//                                         child: Text(
//                                           "Medicen Name : ${mstockList[index].MediceName}",
//                                           style: const TextStyle(
//                                               fontSize: 15,
//                                               fontWeight: FontWeight.w500),
//                                         ),
//                                       ),
//                                       Padding(
//                                         padding: const EdgeInsets.only(),
//                                         child: Text(
//                                           "Quantity : ${mstockList[index].Quantity}",
//                                           style: const TextStyle(
//                                               fontSize: 15,
//                                               fontWeight: FontWeight.w500),
//                                         ),
//                                       ),
//                                       Text(
//                                         "Price : ${mstockList[index].Price}",
//                                         style: const TextStyle(
//                                           fontSize: 15,
//                                           fontWeight: FontWeight.w500,
//                                         ),
//                                       )
//                                     ],
//                                   )
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ),
//                       )
//                     ],
//                   ),
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           showBottomSheetAddMedicen();
//         },
//         child: const Icon(Icons.add_outlined),
//       ),
//     );
//   }
// }
