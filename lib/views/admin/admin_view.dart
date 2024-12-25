
import 'package:flutter/material.dart';
import '../../firebase/firebase_service.dart';
import '../../model/admin.dart';

class AdminListView extends StatefulWidget {
  const AdminListView({super.key});

  @override
  State<AdminListView> createState() => _AdminListViewState();
}

class _AdminListViewState extends State<AdminListView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme:const IconThemeData(color: Colors.white),
        title: const Text(
          'Admin List',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueAccent.shade100,
      ),
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
        child: StreamBuilder<List<AdminModel>>(
            stream: FirebaseService().adminStream,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                    child: CircularProgressIndicator(
                      color: Colors.blueAccent,
                    ));
              } else if (snapshot.hasError) {
                return Center(child: Text('Error: ${snapshot.error}'));
              } else if (snapshot.hasData) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      AdminModel admin = snapshot.data![index];
                      return Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: ListTile(
                            isThreeLine: true,
                            onTap: () {
                              // Navigator.pushNamed(
                              //     context, AppConstant.categoryView,
                              //     arguments: snapshot.data![index]);
                            },
                            leading: CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.blue.shade50,
                              child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Text(admin.name[0].toUpperCase(),style: TextStyle(fontSize: 20),)

                              ),
                            ),
                            title: Text(
                              admin.name,
                              style: const TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text('Contact : ${admin.contactNo}\nEmail : ${admin.email}'),
                              trailing:
                              Switch(
                                activeColor: Colors.blueAccent,
                                  inactiveTrackColor: Colors.blue.shade100,
                                  inactiveThumbColor: Colors.blueAccent,
                                  value:admin.isActive,
                                  onChanged: (value) {
                                    FirebaseService().updateAdminStatus(value,admin.id);
                                  },
                                  )
                            /*isThreeLine: true,*/
                          ),
                        ),
                      );
                    },

                  ),
                );
              } else {
                return const Center(
                  child: Text('No Admin found'),
                );
              }
            }),
      ),
    );
  }
}
