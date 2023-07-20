import 'package:flutter/material.dart';

class Secondary extends StatefulWidget {
  const Secondary({super.key});

  @override
  State<Secondary> createState() => _SecondaryState();
}

class _SecondaryState extends State<Secondary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Budget Tracker',
          style: TextStyle(
            color: Color.fromARGB(255, 210, 209, 209),
            fontSize: 40,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 150, 45, 45),
        elevation: 0,
      ),
      backgroundColor: Color.fromARGB(255, 121, 14, 14),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 60,
            width: 400,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      '    Total -                                         50000',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'secondary');
                      },
                      icon: Icon(Icons.list_alt_outlined),
                    )
                  ],
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 340,
                    child: Container(
                      child: Center(
                        child: Text(
                            ' Vegetables -                                       -680'),
                      ),
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.delete),
                    color: Color.fromARGB(255, 250, 2, 2),
                    onPressed: () {},
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 340,
                    child: Container(
                      child: Center(
                        child: Text(
                            ' Fruits -                                           -2500'),
                      ),
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.delete),
                    color: Color.fromARGB(255, 250, 2, 2),
                    onPressed: () {},
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 340,
                    child: Container(
                      child: Center(
                        child: Text(
                            'Salary -                                         +75000'),
                      ),
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.delete),
                    color: Color.fromARGB(255, 250, 2, 2),
                    onPressed: () {},
                  )
                ],
              ),
            ],
          )
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: IconButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return Container(
                    child: AlertDialog(
                      title: const Center(
                          child: Text(
                        'New Entry',
                        style: TextStyle(fontSize: 30, color: Color.fromARGB(255, 210, 209, 209)),
                      )),
                      backgroundColor: Color.fromARGB(255, 200, 19, 127),
                      actions: [
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Text(
                                  'Category :',
                                  style: TextStyle(
                                      fontSize: 20, color: Color.fromARGB(255, 66, 185, 33)),
                                ),
                                Container(
                                  height: 50,
                                  width: 150,
                                  child: const TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color.fromARGB(
                                                255, 210, 209, 209), width: 2.0),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Text(
                                  'Price       :',
                                  style: TextStyle(
                                      fontSize: 20, color: Color.fromARGB(255, 103, 185, 22)),
                                ),
                                Container(
                                  height: 50,
                                  width: 150,
                                  child: const TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                  ),
                                ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                IconButton(
                                  icon: const Icon(Icons.add),
                                  color: Color.fromARGB(255, 210, 209, 209),
                                  onPressed: () {},
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  );
                });
          },
          icon: const Icon(Icons.add),
        ),
      ),
    );
  }
}
