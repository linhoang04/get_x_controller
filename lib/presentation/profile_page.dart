import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile')),
      body: SingleChildScrollView(
        child: Column(children: [
          const SizedBox(
            height: 10,
          ),
          Container(
            margin:
                EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.05),
            width: MediaQuery.of(context).size.width * 0.9,
            height: 100,
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.circular(20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.,
              children: [
                Expanded(
                    child: Container(
                  // padding: EdgeInsets.only(),
                  // margin: EdgeInsets.only(right: ),
                  height: 90,
                  decoration: const BoxDecoration(
                    shape: BoxShape
                        .circle, // Đặt kiểu shape của Container thành hình tròn
                    image: DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage('assets/img/ca_nhan.jpg'),
                    ),
                  ),
                )),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        margin: const EdgeInsets.only(right: 30),
                        child: const Column(
                          children: [
                            Text(
                              'Luu Hoang Linh',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Text('luuhoanglinh04@gmail.com')
                          ],
                        )),
                  ],
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.expand_circle_down))
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin:
                EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.05),
            width: MediaQuery.of(context).size.width * 0.9,
            height: 100,
            decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromARGB(255, 201, 195, 195),
                ),
                borderRadius: BorderRadius.circular(20)),
            child: const Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.flag_circle_outlined,
                  size: 90,
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  'My dayly',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin:
                EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.05),
            width: MediaQuery.of(context).size.width * 0.9,
            height: 100,
            decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromARGB(255, 201, 195, 195),
                ),
                borderRadius: BorderRadius.circular(20)),
            child: const Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.flag_circle_outlined,
                  size: 90,
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  'My dayly',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin:
                EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.05),
            width: MediaQuery.of(context).size.width * 0.9,
            height: 100,
            decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromARGB(255, 201, 195, 195),
                ),
                borderRadius: BorderRadius.circular(20)),
            child: const Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.flag_circle_outlined,
                  size: 90,
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  'My dayly',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin:
                EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.05),
            width: MediaQuery.of(context).size.width * 0.9,
            height: 100,
            decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromARGB(255, 201, 195, 195),
                ),
                borderRadius: BorderRadius.circular(20)),
            child: const Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.flag_circle_outlined,
                  size: 90,
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  'My dayly',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin:
                EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.05),
            width: MediaQuery.of(context).size.width * 0.9,
            height: 100,
            decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromARGB(255, 201, 195, 195),
                ),
                borderRadius: BorderRadius.circular(20)),
            child: const Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.flag_circle_outlined,
                  size: 90,
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  'My dayly',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin:
                EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.05),
            width: MediaQuery.of(context).size.width * 0.9,
            height: 100,
            decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromARGB(255, 201, 195, 195),
                ),
                borderRadius: BorderRadius.circular(20)),
            child: const Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.flag_circle_outlined,
                  size: 90,
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  'My dayly',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin:
                EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.05),
            width: MediaQuery.of(context).size.width * 0.9,
            height: 100,
            decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromARGB(255, 201, 195, 195),
                ),
                borderRadius: BorderRadius.circular(20)),
            child: const Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.flag_circle_outlined,
                  size: 90,
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  'My dayly',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin:
                EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.05),
            width: MediaQuery.of(context).size.width * 0.9,
            height: 100,
            decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromARGB(255, 201, 195, 195),
                ),
                borderRadius: BorderRadius.circular(20)),
            child: const Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.flag_circle_outlined,
                  size: 90,
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  'My dayly',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
