import 'dart:math';


import 'package:flutter/material.dart';

import '../bmi_result/bmi_result_screen.dart';

class BmiScreen extends StatefulWidget {


  const BmiScreen({Key? key}) : super(key: key);

  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  bool isMale=true;
  double height=120.0;
  int weight=40;
  int age=20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI Calculator',
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                           isMale = true;
                        });
                      },
                      child: Container(
                        decoration:BoxDecoration(
                            borderRadius:BorderRadius.circular(10.0),
                            color:isMale ? Colors.blue : Colors.grey[400]  ,
                        ),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                      Image(
                        image: AssetImage("assets/images/male.png"),
                        width: 90.0,
                        height: 90.0,
                       
                      ),
                         SizedBox(
                           height:15.0,
                         ),
                          Text(
                              "MALE",
                           style: TextStyle(
                             fontSize: 25.0,
                             fontWeight: FontWeight.bold,
                           ),

                          ),
                        ]),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child:
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          isMale=false;
    });
    },
                      child: Container(
                        decoration:BoxDecoration(
                            borderRadius:BorderRadius.circular(10.0),
                            color:isMale ? Colors.grey[400]:Colors.blue ,
                        ),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Image(
                                image: AssetImage("assets/images/female.png"),
                                width: 90.0,
                                height: 90.0,

                              ),
                              SizedBox(
                                height:15.0,
                              ),
                              Text(
                                "FEMALE",
                                style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                ),

                              ),
                            ]),
                      ),
                    ),
                  ) ,
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius:BorderRadius.circular(10.0),
                    color: Colors.grey[400]
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "HEIGHT",
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),

                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,

                      children: [
                        Text(
                          '${height.round()}',
                          style: const TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.w900,
                          ),

                        ),
                        const SizedBox(
                          width: 5.0,
                        ),

                        const Text(
                          "CM",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w900,
                          ),

                        ),
                      ],
                    ),
                    Slider(
                      value: height,
                      max: 220.0,
                      min:80.0,
                      onChanged: (value){
                        setState(() {
                          height = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(

                      decoration: BoxDecoration(

                          borderRadius:BorderRadius.circular(10.0),
                          color: Colors.grey[400]
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "WEIGHT",
                            style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                            ),

                          ),
                           Text(
                            "$weight",
                            style: const TextStyle(
                              fontSize: 40.0,
                              fontWeight: FontWeight.w900,
                            ),

                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                              // heroTag:'weight-',
                                onPressed: (){
                                  setState((){
                                     weight--;
                                  });
                                },
                                mini: true,
                                child:const Icon(
                                  Icons.remove,
                                ),
                              ),
                              FloatingActionButton(
                                // heroTag: 'weight+',
                                onPressed: (){
                                 setState((){
                                   weight++;
                                 });
                                },
                                mini: true,
                                child:const Icon(
                                  Icons.add,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width:20.0,
                  ),
                  Expanded (child:Container(

                    decoration: BoxDecoration(

                        borderRadius:BorderRadius.circular(10.0),
                        color: Colors.grey[400]
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "AGE",
                          style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                          ),

                        ),
                         Text(
                          "$age",
                          style: const TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.w900,
                          ),

                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              // heroTag: 'age-',
                               onPressed: (){
                                setState(() {
                                  age--;
                                });
                              },
                              mini: true,
                              child:const Icon(
                                Icons.remove,
                              ),
                            ),
                            FloatingActionButton(
                              // heroTag: 'age+',
                              onPressed: (){
                                setState(() {
                                  age++;
                                });
                              },
                              mini: true,
                              child:const Icon(
                                Icons.add,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.blue,
            height: 50.0,
            child: MaterialButton(
              onPressed: () {
                double result =weight / pow(height/100,2 );
                print(result.round());
                Navigator.push(context,
                    MaterialPageRoute(
                        builder: (context)=>BMIResultScreen(
                          isMale: isMale,
                          age: age,
                          result: result.round(),

                        ),
                    ),
                );
              },
              child: const Text(
                'CALCULATE',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
