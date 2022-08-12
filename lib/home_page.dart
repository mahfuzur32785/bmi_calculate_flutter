import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double height = 0;
  double weight = 0;
  int age = 0;
  bool?  isMale;
  String? result;
  double? bmi;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0A0E21),
      appBar: AppBar(
        backgroundColor: Color(0xFF0A0E21),
        centerTitle: true,
        title: Text(
          'BMI CALCULATOR',
          style: TextStyle(
            color: Color(0xFFBFC1C6),
            fontSize: 22,
          ),
        ),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 10,left: 10,right: 10),
          child: Column(
            children: [
              Expanded(
                flex: 5,
                child: Container(
                  alignment: Alignment.center,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 5,
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              isMale = true;
                            });
                          },
                          child: Card(
                            color: isMale == true ? Colors.grey : Color(0xFF111328),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.male,
                                  color: Color(0xFFFFFFFF),
                                  size: 100,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  'MALE',
                                  style: TextStyle(
                                      color: Color(0xFF4D4E5E), fontSize: 22),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 20,),
                      Expanded(
                        flex: 5,
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              isMale = false;
                            });
                          },
                          child: Card(
                            color: isMale ==false ? Colors.grey : Color(0xFF111328),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.female,
                                  color: Color(0xFFFFFFFF),
                                  size: 100,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  'FEMALE',
                                  style: TextStyle(
                                      color: Color(0xFF4D4E5E), fontSize: 22),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),

              //+++++++++++++++++++++++++++++++++

              Expanded(
                flex: 5,
                child: Container(
                  alignment: Alignment.center,
                  color: Color(0xFF1D1E33),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'HEIGHT',
                        style: TextStyle(
                          color: Color(0xFF4D4E5E),
                          fontSize: 22,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '${height.toStringAsFixed(0)}',
                            style: TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontSize: 40,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'cm',
                            style: TextStyle(
                              color: Color(0xFF4D4E5E),
                              fontSize: 22,
                            ),
                          ),
                        ],
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 15.0),
                          overlayShape: RoundSliderOverlayShape(
                            overlayRadius: 38,
                          ),
                          thumbColor: Color(0xFFEB1555),
                          activeTrackColor: Colors.white,
                          activeTickMarkColor: Colors.white,
                          inactiveTrackColor: Color(0xFF8D8E98),
                          overlayColor: Color(0xFFEB1555),
                        ),
                        child: Slider(
                          onChanged: (double value) {
                            setState(() {
                              height = value;
                            });
                          },
                          min: 0,
                          max: 200,
                          value: height,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),

              //++++++++++++++++++++++++++++
              Expanded(
                  flex: 5,
                  child: Container(
                    child: Row(
                      children: [
                        Expanded(
                          flex: 5,
                          child: Card(
                            color: Color(0xFF111328),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'WEIGHT',
                                  style: TextStyle(
                                      color: Color(0xFF4D4E5E), fontSize: 22),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  '${weight}',
                                  style: TextStyle(
                                    color: Color(0xFFFFFFFF),
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    IconButton(
                                      icon: Icon(
                                        Icons.remove_circle,
                                        size: 40,
                                        color: Color(0xFF4C4F5E),
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          weight = weight - 1;
                                        });
                                      },
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        setState(() {
                                          weight = weight + 1;
                                        });
                                      },
                                      icon: Icon(
                                        Icons.add_circle,
                                        size: 40,
                                        color: Color(0xFF4C4F5E),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 20,),
                        Expanded(
                          flex: 5,
                          child: Card(
                            color: Color(0xFF111328),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'AGE',
                                  style: TextStyle(
                                      color: Color(0xFF4D4E5E), fontSize: 22),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  '${age}',
                                  style: TextStyle(
                                    color: Color(0xFFFFFFFF),
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    IconButton(
                                      onPressed: () {
                                        setState(() {
                                          age = age - 1;
                                        });
                                      },
                                      icon: Icon(
                                        Icons.remove_circle,
                                        size: 40,
                                        color: Color(0xFF4C4F5E),
                                      ),
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        setState(() {
                                          age = age + 1;
                                        });
                                      },
                                      icon: Icon(
                                        Icons.add_circle,
                                        size: 40,
                                        color: Color(0xFF4C4F5E),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
              ),
              SizedBox(height: 20,),
              InkWell(
                onTap: (){
                  bmi = (weight/height/height)*10000;
                  if(bmi!<19){
                    result = "Your bmi is low";
                  }
                  if(bmi!<24){
                    result = "Your bmi is normal";
                  }
                  else{
                    result = "Your bmi is high";
                  }
                  showDialog(barrierDismissible: false,context: context, builder: (context){
                    return AlertDialog(
                      backgroundColor: Colors.white,
                      title: Text('YOUR RESULT IS',),
                      titleTextStyle: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF4A4F5E),
                      ),
                      content: Container(
                        height: MediaQuery.of(context).size.height*0.15,
                        child: Center(
                          child: Column(
                            children: [
                              Text('${bmi!.toStringAsFixed(2)}',style: TextStyle(
                                color: Colors.pink,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),),
                              Text('${result}',style: TextStyle(
                                color: Colors.pink,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),),
                            ],
                          )
                        ),
                      ),
                      actions: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            TextButton(
                              child: Text(
                                'Cencle',style: TextStyle(
                                fontSize: 16,
                                color: Color(0xFF4A4F5E),
                              ),
                              ),
                              onPressed: (){
                                Navigator.of(context).pop();
                              },
                            ),
                            TextButton(
                              child: Text(
                                'OK',style: TextStyle(
                                fontSize: 16,
                                color: Color(0xFF4A4F5E),
                              ),
                              ),
                              onPressed: (){
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        )
                      ],
                    );
                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 80,
                  width: double.infinity,
                  decoration: BoxDecoration(
                   /* borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),*/
                    color: Colors.pink,
                  ),
                  child: Text('CALCULATE',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
