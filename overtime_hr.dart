import 'package:flutter/material.dart';

import 'package:splash_screen/HR_features/requests_hr.dart';

class overtime extends StatefulWidget {
  const overtime({super.key});

  @override
  State<overtime> createState() => _overtimeState();
}

class _overtimeState extends State<overtime> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 10, left: 15),
                    margin: EdgeInsets.zero,
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const requests()));
                      },
                      shape: const CircleBorder(),
                      minWidth: 60,
                      height: 60,
                      color: const Color(0xFF034521),
                      child: const Icon(
                        Icons.arrow_back_ios_rounded,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                      margin:
                          const EdgeInsets.only(left: 34, top: 45, bottom: 15),
                      padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xFFFCB721)),
                      child: const Text(
                        "Overtime Requests",
                        style: TextStyle(
                            fontFamily: "pop2",
                            fontSize: 16,
                            color: Color(0xFF034521)),
                      ))
                ],
              ),
            ),
            const OvertWidget(
                firstImage: "images/michal.png",
                name: "Michal Daivs",
                designation: "Senior product Designer",
                notes:
                    "Hi I’m Writing to request overtime to completed a critical project. I’ve attached project details for your rearview. Thank you!",
                documentName: "Project details Document.pdf"),
            const OvertWidget(
                firstImage: "images/emma.png",
                name: "Emma Mark",
                designation: "Marketing specialist",
                notes:
                    "Hello , i need to work Overtime for an important clint meeting. I’ve attached the clint’s requirements and the meeting agenda. your support is appreciated .",
                documentName: "Clint meeting Schedule.pdf")
            // Container(
            //   margin: EdgeInsets.only(top: 10),
            //   width: 370,
            //   height: 270,
            //   padding: EdgeInsets.all(15),
            //   decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
            //   color: Color(0xFF81A290)),
            //   child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
            //     Row(children: [
            //       Image.asset("images/emma.png"),
            //       Column(crossAxisAlignment:CrossAxisAlignment.start ,children: [
            //         Container(
            //           padding: EdgeInsets.only(left: 10),
            //           child: Text("Emma Mark",style: TextStyle(fontFamily: "pop2",fontSize: 16,color: Colors.white),)),
            //           Padding(
            //             padding: const EdgeInsets.only(top: 1.5,left: 10),
            //             child: Text("Marketing specialist ",style: TextStyle(fontFamily: "pop1",fontSize: 10,color: Colors.white),),
            //           )
            //       ],)
            //     ],),
            //     Padding(
            //       padding: const EdgeInsets.only(top: 10,left:10),
            //       child: Text("Notes:",style: TextStyle(fontFamily: "pop2",fontSize: 11,color: Color(0xFFFFC404)),),
            //     ),
            //     Padding(
            //       padding: const EdgeInsets.only(left:10.0,top: 5),
            //       child: Text("Hello , i need to work Overtime for an important clint meeting. I’ve attached the clint’s requirements and the meeting agenda. your support is appreciated.",
            //       style: TextStyle(fontFamily: "pop2",fontSize: 11,color: Color(0xFFF4FFE5)),),
            //     ),
            //     Container(
            //       margin: EdgeInsets.only(top: 10,left: 5),
            //       width: 330,
            //       height: 45,
            //       decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color(0xFF034521)),
            //       child: Row(
            //         children: [
            //           Padding(
            //             padding: const EdgeInsets.only(left: 10,right: 6),
            //             child: Image.asset("images/doc.png"),
            //           ),
            //           Text("Clint meeting Schedule.pdf",style: TextStyle(fontFamily: "pop2",fontSize: 12,color: Colors.white,)),
            //           Padding(
            //             padding: const EdgeInsets.only(left:70),
            //             child: Image.asset("images/download.png"),
            //           )
            //         ],
            //       ),
            //     ),
            //     Row(
            //       children: [
            //         Container(
            //          margin: EdgeInsets.only(left: 50,top:20),
            //          height: 35,
            //          width: 105,
            //           decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Color(0xFF66D60E)),
            //           child: MaterialButton(
            //             onPressed: (){

            //           },
            //           child: Text("Approve",style: TextStyle(fontFamily: "pop2",fontSize: 12,color: Colors.white),),
            //           ),
            //           ),
            //            Container(
            //          margin: EdgeInsets.only(left: 30,top:20),
            //          height: 35,
            //          width: 105,
            //           decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Color(0xFFEB1313)),
            //           child: MaterialButton(onPressed: (){

            //           },child: Text("Reject",style: TextStyle(fontFamily: "pop2",fontSize: 12,color: Colors.white),),
            //           ),
            //           ),

            //       ],
            //     )

            // ],),),
          ],
        ),
      ),
    );
  }
}

class OvertWidget extends StatefulWidget {
  final String firstImage;
  final String name;
  final String designation;

  final String notes;
  final String documentName;

  const OvertWidget({
    Key? key,
    required this.firstImage,
    required this.name,
    required this.designation,
    required this.notes,
    required this.documentName,
  }) : super(key: key);

  @override
  _OvertWidgetState createState() => _OvertWidgetState();
}

class _OvertWidgetState extends State<OvertWidget> {
  bool? accepted;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      width: 370,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xFF81A290),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(widget.firstImage),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      widget.name,
                      style: const TextStyle(
                        fontFamily: "pop2",
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      widget.designation,
                      style: const TextStyle(
                        fontFamily: "popreg",
                        fontSize: 10,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10, left: 10),
            child: Text(
              "Notes:",
              style: TextStyle(
                fontFamily: "pop2",
                fontSize: 12,
                color: Color(0xFFFFC404),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, top: 5),
            child: Text(
              widget.notes,
              style: const TextStyle(
                fontFamily: "pop2",
                fontSize: 11.8,
                color: Color(0xFFF4FFE5),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10, left: 5),
            padding: const EdgeInsets.only(right: 10),
            width: 330,
            height: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xFF034521),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 6),
                  child: Image.asset("images/doco.png"),
                ),
                Text(
                  widget.documentName,
                  style: const TextStyle(
                    fontFamily: "pop2",
                    fontSize: 13,
                    color: Colors.white,
                  ),
                ),
                const Spacer(),
                Image.asset("images/download.png"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 45, right: 30, top: 20),
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  height: 35,
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: accepted == true
                        ? const Color(0xFF66D60E).withOpacity(0.5)
                        : const Color(0xFF66D60E),
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      setState(() {
                        accepted = true;
                      });
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (accepted == true)
                          const Icon(Icons.check, color: Colors.white),
                        const SizedBox(width: 5),
                        const Text(
                          "Approve",
                          style: TextStyle(
                              fontFamily: "pop2",
                              fontSize: 13,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10),
                  height: 35,
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: accepted == false
                        ? const Color(0xFFEB1313).withOpacity(0.5)
                        : const Color(0xFFEB1313),
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      setState(() {
                        accepted = false;
                      });
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (accepted == false)
                          const Icon(Icons.close, color: Colors.white),
                        const SizedBox(width: 5),
                        const Text(
                          "Reject",
                          style: TextStyle(
                              fontFamily: "pop2",
                              fontSize: 13,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
