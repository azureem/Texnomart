import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:texnomart/presentation/favourite/favorite_widgets/fav_bloc.dart';
import 'package:texnomart/presentation/favourite/favourite_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white60,
      appBar: AppBar(
        backgroundColor: Color(0xffffba08),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Text(
              textAlign: TextAlign.center,
              "Xarid qilish , buyurtmalar kuzatish va bo'lib-bo'lib to'lash uchun tizimga kiring",
              style: TextStyle(color: Colors.black87, fontSize: 12),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            height: 52,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Color(0xffffba08),
                borderRadius: BorderRadius.circular(12)),
            child: Center(
              child: Text(
                "Kirish",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            margin: const EdgeInsets.all(16),
            width: double.infinity,
            height: 210,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade400,
                      //   blurRadius: 12,
                      offset: const Offset(1, 1))
                ]),
            child: Column(
              children: [
                const Spacer(),
                myRow("assets/images/percentage.png", "Aksiya", null, () {
                  // your action here
                }),
                const Spacer(),
                myRow("assets/images/heart.png", "Sevimlilar", null, () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BlocProvider(
                                create: (context) => FavBloc()..add(LoadFavEvent()),
                                child: FavouriteScreen(),
                              )));
                }),
                const Spacer(),
                myRow("assets/images/comparison.png", "Taqqoslash", "", () {
                  // your action here
                }),
                const Spacer(),
                myRow("assets/images/planet-earth.png", "Aksiya", "", () {
                  // your action here
                }),
                const Spacer(),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            margin: const EdgeInsets.all(16),
            width: double.infinity,
            height: 250,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade400,
                      // blurRadius: 12,
                      offset: const Offset(1, 1))
                ]),
            child: Column(
              children: [
                const Spacer(),
                myRow("assets/images/shopping-bag.png", "Bizning do'konlarimiz",
                    null, () {
                  // your action here
                }),
                const Spacer(),
                myRow(
                    "assets/images/chat.png", "Qo'llab-quvatlash xizmati", null,
                    () {
                  // your action here
                }),
                const Spacer(),
                myRow("assets/images/info.png", "Malumot", null, () {
                  // your action here
                }),
                const Spacer(),
                myRow("assets/images/iphone.png", "Ilova haqida", null, () {
                  // your action here
                }),
                const Spacer(),
                myRow("assets/images/planet-earth.png",
                    "Bildirishnoma sozlamalari", null, () {
                  // your action here
                }),
                const Spacer(),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget myRow(String icon, String title, String? isData, VoidCallback onTab) {
    return GestureDetector(
      onTap: onTab,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: Image.asset(
                icon,
                height: 22,
                width: 22,
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            Text(
              title,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
            const Spacer(),
            if (isData?.isNotEmpty ?? false)
              Container(
                  height: 24,
                  width: isData!.length <= 1 ? 23 : 32,
                  decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(child: Text(isData ?? ""))),
            const Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
