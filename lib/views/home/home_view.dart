import 'package:flutter/material.dart';
import '../../constants/constants.dart';
import '../../gen/assets.gen.dart';
import '../../prefrence/prefrence_servicies.dart';
import '../login/login_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent.shade100,
        title: const Text(
          'Dashboard',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),
        actions: [
          IconButton(
              onPressed: () async {

                await PreferenceServices.removeKey('isLogin');

                const snackBar = SnackBar(
                  content: Text('Logout Successful..'),
                );

                ScaffoldMessenger.of(context).showSnackBar(snackBar);

                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginView(),
                    ),
                    (route) => false);
              },
              icon: const Icon(Icons.logout))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          childAspectRatio: 1 / 1.2,
          children: [
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, AppConstant.adminListView);
              },
              child: _buildDashboardTile(
                  'Admins', Colors.purple.shade100, Assets.images.admin.path),
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, AppConstant.userListView);
              },
              child: _buildDashboardTile(
                  'Users', Colors.green.shade100, Assets.images.user.path),
            )
            // InkWell(
            //   onTap: () {
            //     //Navigator.pushNamed(context, AppConstant.categoryListView);
            //   },
            //   child: _buildDashboardTile('Categories', data.totalCategories, Colors.pink.shade100,
            //       Assets.images.category.path),
            // ),
            // InkWell(
            //   onTap: () {
            //     Navigator.pushNamed(context, AppConstant.productListView);
            //   },
            //   child: _buildDashboardTile('Items', data.totalItems, Colors.yellow.shade200,
            //       Assets.images.item.path),
            // ),
            // InkWell(
            //   onTap: () {
            //     Navigator.pushNamed(context, AppConstant.userListView);
            //   },
            //   child: _buildDashboardTile('Users', data.totalUsers, Colors.blueAccent.shade100,
            //       Assets.images.user.path),
            // ),
            // InkWell(
            //   onTap: () {
            //     Navigator.pushNamed(context, AppConstant.orderView);
            //   },
            //   child: _buildDashboardTile(
            //       'Orders', data.totalOrders, Colors.green.shade200, Assets.images.order.path),
            // ),
          ],
        ),
      ),
    );
  }

  Widget _buildDashboardTile(String title, Color color, String image) {
    return Card(
      color: color,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 40,
                backgroundColor: Colors.white.withOpacity(.5),
                child: Image.asset(
                  image,
                  height: 40,
                  width: 40,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                title,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
