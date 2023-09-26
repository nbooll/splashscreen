import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: homepage1());
  }
}

class homepage1 extends StatefulWidget {
  const homepage1({super.key});

  @override
  State<homepage1> createState() => _homepage1State();
}

class _homepage1State extends State<homepage1> {
  bool selected = false;
  double opacityLevel = 1.0;
  void _changeOpacity() {
    setState(() => opacityLevel = opacityLevel == 0 ? 1.0 : 0.0);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        drawerScrimColor: Colors.white,
        body: InkWell(
          focusColor: Colors.white,
          hoverColor: Colors.white,
          highlightColor: Colors.white,
          onTap: () {
            setState(() {
              selected = !selected;
              _changeOpacity();
            });
          },
          onSecondaryTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => homepage2(),
                ));
          },
          child: Center(
            child: Container(
              height: 300,
              width: 300,
              child: Center(
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: AnimatedAlign(
                          alignment: selected
                              ? Alignment.center
                              : Alignment.centerRight,
                          duration: const Duration(seconds: 1),
                          curve: Curves.fastLinearToSlowEaseIn,
                          child: Image.asset(
                            'images/pin.png',
                            height: 100,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: AnimatedOpacity(
                        opacity: opacityLevel,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.fastOutSlowIn,
                        child: Image.asset(
                          'images/logo.png',
                          height: 100,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class homepage2 extends StatefulWidget {
  const homepage2({super.key});

  @override
  State<homepage2> createState() => _homepage2State();
}

class _homepage2State extends State<homepage2> {
  bool selected2 = false;
  double opacityLevel2 = 0.0;
  void _changeOpacity2() {
    setState(() => opacityLevel2 = opacityLevel2 == 0 ? 1.0 : 0.0);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        drawerScrimColor: Colors.white,
        body: InkWell(
          focusColor: Colors.white,
          hoverColor: Colors.white,
          highlightColor: Colors.white,
          onTap: () {
            setState(() {
              selected2 = !selected2;
              _changeOpacity2();
            });
          },
          onSecondaryTap: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => page1())),
          child: Center(
            child: Container(
              height: 250,
              width: 300,
              child: Center(
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: AnimatedAlign(
                          alignment: selected2
                              ? Alignment.topCenter
                              : Alignment.center,
                          duration: const Duration(seconds: 1),
                          curve: Curves.fastLinearToSlowEaseIn,
                          child: Image.asset(
                            'images/pin.png',
                            height: 100,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: AnimatedOpacity(
                          opacity: opacityLevel2,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.fastOutSlowIn,
                          child: Text(
                            'stay organized',
                            style: TextStyle(
                                fontSize: 30, color: Color(0xFF999999)),
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class page1 extends StatefulWidget {
  page1({super.key});

  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(50),
              child: const Align(
                alignment: Alignment.topRight,
                child: Text(
                  'Skip',
                  style: TextStyle(
                    color: Color.fromARGB(255, 139, 168, 181),
                    fontSize: 17,
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 50, right: 50, bottom: 50),
              child: Image.asset(
                'assets/images/cuate5.png',
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 50, right: 50, bottom: 50),
              child: const Center(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Write Lists',
                    style: TextStyle(
                        fontSize: 24,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 50, right: 50, bottom: 20),
              child: const Center(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Write your tasks in a list and check them when done!',
                    style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 153, 153, 153),
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 50, right: 50, bottom: 35),
              child: Image.asset(
                'assets/images/Frame 4.png',
              ),
            ),
            InkWell(
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => const page2())),
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: const Color.fromARGB(255, 139, 168, 181),
                ),
                child: const Text(
                  'Next',
                  style: TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class page2 extends StatefulWidget {
  const page2({super.key});

  @override
  State<page2> createState() => _page2State();
}

class _page2State extends State<page2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(50),
              child: const Align(
                alignment: Alignment.topRight,
                child: Text(
                  'Skip',
                  style: TextStyle(
                    color: Color.fromARGB(255, 139, 168, 181),
                    fontSize: 17,
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 50, right: 50, bottom: 50),
              child: Image.asset(
                'assets/images/cuate9.png',
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 50, right: 50, bottom: 10),
              child: const Center(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Stay Organized',
                    style: TextStyle(
                        fontSize: 24,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 50, right: 50, bottom: 50),
              child: const Center(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Group your tasks and keep them organized',
                    style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 153, 153, 153),
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 50, right: 50, bottom: 35),
              child: Image.asset(
                'assets/images/Frame 4-1.png',
              ),
            ),
            InkWell(
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => const Page3())),
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: const Color.fromARGB(255, 139, 168, 181),
                ),
                child: const Text(
                  'Next',
                  style: TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontWeight: FontWeight.w600),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  const Page3({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(50),
              child: const Align(
                alignment: Alignment.topRight,
                child: Text(
                  ' ',
                  style: TextStyle(
                    color: Color.fromARGB(255, 139, 168, 181),
                    fontSize: 17,
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 50, right: 50, bottom: 50),
              child: Image.asset(
                'assets/images/cuate.png',
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 50, right: 50, bottom: 10),
              child: const Center(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Check Progress',
                    style: TextStyle(
                        fontSize: 24,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 50, right: 50, bottom: 50),
              child: const Center(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'See how much you have done from your tasks',
                    style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 153, 153, 153),
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 50, right: 50, bottom: 35),
              child: Image.asset(
                'assets/images/Frame 4-2.png',
              ),
            ),
            InkWell(
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => page4())),
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: const Color.fromARGB(255, 139, 168, 181),
                ),
                child: const Text(
                  'Let’s Start',
                  style: TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class page4 extends StatefulWidget {
  const page4({super.key});

  @override
  State<page4> createState() => _page4State();
}

class _page4State extends State<page4> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFF9F9F9),
        appBar: AppBar(
          backgroundColor: Color(0xFFF9F9F9),
          toolbarHeight: 150,
          title: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Text(
              'Lists',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontSize: 35,
              ),
            ),
          ),
        ),
        body: InkWell(
          onTap: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => page5())),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 35),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintStyle:
                        TextStyle(color: Color(0xFF999999), fontSize: 30),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 35),
                      child: Icon(
                        Icons.search,
                        size: 50,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    hintText: 'search',
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.all(10)),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(30),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25)),
                      width: 200,
                      height: 175,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                "work",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 17, bottom: 15),
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                "10 task - 5 completed",
                                style: TextStyle(
                                  color: Color(0xFF999999),
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                          Image.asset('images/line.png'),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 30, 30, 30),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25)),
                      width: 200,
                      height: 175,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                "Home",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 17, bottom: 15),
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                "12 task - 0 completed",
                                style: TextStyle(
                                  color: Color(0xFF999999),
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                          Image.asset('images/line.png'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(30, 0, 30, 30),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25)),
                      width: 200,
                      height: 175,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                "School",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 17, bottom: 15),
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                "12 task - 5 completed",
                                style: TextStyle(
                                  color: Color(0xFF999999),
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                          Image.asset('images/line.png'),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 30, 30),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25)),
                      width: 200,
                      height: 175,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                "other",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 17, bottom: 15),
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                "15 task - 0 completed",
                                style: TextStyle(
                                  color: Color(0xFF999999),
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                          Image.asset('images/line.png'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class page5 extends StatefulWidget {
  const page5({super.key});

  @override
  State<page5> createState() => _page5State();
}

class _page5State extends State<page5> {
  bool checkedValue1 = false;
  bool checkedValue2 = false;
  bool checkedValue3 = false;

  @override
  Widget build(BuildContext context) {
    setState(() {});
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFF9F9F9),
        appBar: AppBar(
          backgroundColor: Color(0xFFF9F9F9),
          toolbarHeight: 150,
          title: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Text(
              'Home',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontSize: 35,
              ),
            ),
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 35),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintStyle: TextStyle(color: Color(0xFF999999), fontSize: 30),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(left: 35),
                    child: Icon(
                      Icons.search,
                      size: 50,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  hintText: 'search',
                ),
              ),
            ),
            Padding(padding: EdgeInsets.all(10)),
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: CheckboxListTile(
                title: Text(
                  "Doing laundry",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                subtitle: Text('some notes....'),
                value: checkedValue1,
                onChanged: (newValue) {
                  setState(() {
                    checkedValue1 = !checkedValue1;
                  });
                },
                controlAffinity:
                    ListTileControlAffinity.leading, //  <-- leading Checkbox
              ),
            ),
            Padding(padding: EdgeInsets.all(15)),
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: CheckboxListTile(
                title: Text(
                  "Clean dishes",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                subtitle: Text('some notes....'),
                value: checkedValue2,
                onChanged: (newValue) {
                  setState(() {
                    checkedValue2 = !checkedValue2;
                  });
                },
                controlAffinity:
                    ListTileControlAffinity.leading, //  <-- leading Checkbox
              ),
            ),
            Padding(padding: EdgeInsets.all(15)),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: CheckboxListTile(
                title: Text(
                  "Changing out bedding",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                subtitle: Text('some notes....'),
                value: checkedValue3,
                onChanged: (newValue) {
                  setState(() {
                    checkedValue3 = !checkedValue3;
                  });
                },
                secondary: Icon(
                  Icons.delete_outline,
                  color: Colors.red,
                  size: 35,
                ),
                controlAffinity:
                    ListTileControlAffinity.leading, //  <-- leading Checkbox
              ),
            ),
          ],
        ),
      ),
    );
  }
}
