import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant/logic/cubit/add_remove_cubit.dart';
import 'package:restaurant/widgets/addremovefun.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final countercubit = AddRemoveCubit();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.orange[100],
        appBar: AppBar(
          backgroundColor: Colors.orange[300],
          leading: const Icon(Icons.arrow_back_ios),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/Ramadan.jpg',
                    width: double.infinity,
                    height: 350,
                    fit: BoxFit.cover,
                  ),
                ),

                SizedBox(height: 20),

                Text(
                  "Burger Mix Combo",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFFB36D5D),
                  ),
                ),

                SizedBox(height: 10),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.star, color: Color(0xFFB36D5D)),
                        SizedBox(width: 5),
                        Text(
                          "4.5",
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),

                    Container(
                      width: 160,
                      height: 60,
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 231, 143, 83),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: BlocBuilder<AddRemoveCubit, int>(
                        bloc: countercubit,
                        builder: (context, counter) {
                          return Row(
                            children: [
                              Addremovefun(
                                color: const Color.fromARGB(255, 248, 207, 168),
                                ontap: () {
                                  countercubit.remove();
                                },
                                icon: const Icon(Icons.remove),
                                iconcolor: Color(0xFFB36D5D),
                              ),

                              Expanded(
                                child: Center(
                                  child: Text(
                                    counter.toString(),
                                    style: const TextStyle(
                                      fontSize: 22,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              Addremovefun(
                                color: const Color(0xFFB36D5D),
                                ontap: () {
                                  countercubit.add();
                                },
                                icon: const Icon(Icons.add),
                                iconcolor: Colors.white,
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  "Description",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFFB36D5D),
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "2 Burger + fries + drink with 30% sale",
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "EGP  160",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,

                        fontSize: 15,
                      ),
                    ),
                    Container(
                      width: 120,
                      height: 45,
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 231, 143, 83),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Center(
                        child: Text(
                          "Add To Cart",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Divider(color: Color.fromARGB(255, 231, 143, 83), thickness: 2),
                SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  height: 80,
                  decoration: BoxDecoration(color: Colors.orange[300]),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Review",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Color.fromARGB(255, 153, 88, 73),
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "send your feedback",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.arrow_drop_down,
                          color: Color.fromARGB(255, 153, 88, 73),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
