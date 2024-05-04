import 'package:flutter/material.dart';
import 'package:splash_screen/employee_features/emp_document.dart';
import 'package:splash_screen/Var.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:pdf/pdf.dart';
import 'package:printing/printing.dart';

class workcontract extends StatefulWidget {
  const workcontract({super.key});

  @override
  State<workcontract> createState() => _workcontState();
}

class _workcontState extends State<workcontract> {
  pw.Document? _pdfDocument2;
  String docename = employeeVar.employeeName;
  int doceid = employeeVar.employeeid;
  String docedep = employeeVar.department;
  String docemploymentd = employeeVar.formattedempDate;
  String docexpirayd = employeeVar.formatedexpiryDate;
  String doccompany = employeeVar.companyName;
  String docjobtitle = employeeVar.jobTitle;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xffF4FFE5),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 20, left: 10),
                margin: EdgeInsets.zero,
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const EmployeeDocument()));
                  },
                  shape: const CircleBorder(),
                  minWidth: 60,
                  height: 60,
                  color: const Color(0xFF034521),
                  child: const Icon(
                    Icons.arrow_back_ios_rounded,
                    color: Color(0xffF4FFE5),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 40, left: 70),
                child: Text(
                  "Work Contract",
                  style: TextStyle(
                      fontFamily: "pop1",
                      fontSize: 16,
                      color: Color(0xFF034521)),
                ),
              )
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            padding:
                const EdgeInsets.only(top: 15, left: 20, right: 20, bottom: 25),
            decoration: BoxDecoration(
              color: const Color(0xFFFDCD2F),
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.47), // shadow color
                  spreadRadius: 2, // spread radius
                  blurRadius: 3, // blur radius
                  offset: const Offset(0, 3), // only shadow bottom
                ),
              ],
            ),
            margin: const EdgeInsets.only(top: 15, left: 15, right: 15),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 10),
                      child: ClipOval(
                        child: Image.asset(
                          "images/eman.jpeg",
                          width: 50, // Specify the desired width
                          height:
                              50, // Specify the desired height to maintain aspect ratio
                          fit: BoxFit
                              .cover, // This ensures the image fills the circular area
                        ),
                        // Specify the desired height
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Text(
                            "${employeeVar.employeeName}",
                            style: TextStyle(
                                fontFamily: "pop2",
                                fontSize: 16,
                                color: Color(0xFF034521)),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 8),
                          width: 130,
                          height: 35,
                          decoration: BoxDecoration(
                            color: const Color(0xFF034521),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black
                                    .withOpacity(0.3), // shadow color
                                spreadRadius: 2, // spread radius
                                blurRadius: 3, // blur radius
                                offset:
                                    const Offset(0, 3), // only shadow bottom
                              ),
                            ],
                          ),
                          child: Center(
                              child: Text(
                            "${employeeVar.jobTitle}",
                            style: TextStyle(
                                fontFamily: "pop",
                                fontSize: 10,
                                color: Color(0xFFF4FFE5)),
                          )),
                        )
                      ],
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Row(
                    children: [
                      const Text(
                        "Employment  Date",
                        style: TextStyle(
                            fontFamily: "pop2",
                            fontSize: 16,
                            color: Color(0xFF034521)),
                      ),
                      const Spacer(),
                      Container(
                        width: 120,
                        height: 35,
                        decoration: BoxDecoration(
                          color: const Color(0xFFF4FFE5),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color:
                                  Colors.black.withOpacity(0.3), // shadow color
                              spreadRadius: 2, // spread radius
                              blurRadius: 3, // blur radius
                              offset: const Offset(0, 3), // only shadow bottom
                            ),
                          ],
                        ),
                        child: Center(
                            child: Text(
                          "${employeeVar.formattedempDate}",
                          style: TextStyle(
                              fontFamily: "pop2",
                              fontSize: 13,
                              color: Color(0xFF034521)),
                        )),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      const Text(
                        "Expiry  Date",
                        style: TextStyle(
                            fontFamily: "pop2",
                            fontSize: 16,
                            color: Color(0xFF034521)),
                      ),
                      const Spacer(),
                      Container(
                        width: 120,
                        height: 35,
                        decoration: BoxDecoration(
                          color: const Color(0xFFF4FFE5),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color:
                                  Colors.black.withOpacity(0.3), // shadow color
                              spreadRadius: 2, // spread radius
                              blurRadius: 3, // blur radius
                              offset: const Offset(0, 3), // only shadow bottom
                            ),
                          ],
                        ),
                        child: Center(
                            child: Text(
                          "${employeeVar.formatedexpiryDate}",
                          style: TextStyle(
                              fontFamily: "pop2",
                              fontSize: 13,
                              color: Color(0xFF034521)),
                        )),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      const Text(
                        "Work Department",
                        style: TextStyle(
                            fontFamily: "pop2",
                            fontSize: 16,
                            color: Color(0xFF034521)),
                      ),
                      const Spacer(),
                      Container(
                        width: 120,
                        height: 35,
                        decoration: BoxDecoration(
                          color: const Color(0xFFF4FFE5),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color:
                                  Colors.black.withOpacity(0.3), // shadow color
                              spreadRadius: 2, // spread radius
                              blurRadius: 3, // blur radius
                              offset: const Offset(0, 3), // only shadow bottom
                            ),
                          ],
                        ),
                        child: Center(
                            child: Text(
                          "${employeeVar.department}",
                          style: TextStyle(
                              fontFamily: "pop2",
                              fontSize: 13,
                              color: Color(0xFF034521)),
                        )),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      const Text(
                        "Employee ID",
                        style: TextStyle(
                            fontFamily: "pop2",
                            fontSize: 16,
                            color: Color(0xFF034521)),
                      ),
                      const Spacer(),
                      Container(
                        width: 120,
                        height: 35,
                        decoration: BoxDecoration(
                          color: const Color(0xFFF4FFE5),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color:
                                  Colors.black.withOpacity(0.3), // shadow color
                              spreadRadius: 2, // spread radius
                              blurRadius: 3, // blur radius
                              offset: const Offset(0, 3), // only shadow bottom
                            ),
                          ],
                        ),
                        child: Center(
                          child: Text(
                            "${employeeVar.employeeid}",
                            style: TextStyle(
                              fontFamily: "pop2",
                              fontSize: 13,
                              color: Color(0xFF034521),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 30),
            width: 140,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xFF034521),
              boxShadow: [
                BoxShadow(
                  color:
                      const Color(0xFF034521).withOpacity(0.3), // shadow color
                  spreadRadius: 1, // spread radius
                  blurRadius: 3, // blur radius
                  offset: const Offset(0, 3), // only shadow bottom
                ),
              ],
            ),
            child: MaterialButton(
              child: const Padding(
                padding: EdgeInsets.fromLTRB(10, 13, 10, 13),
                child: Row(
                  children: [
                    Icon(
                      Icons.print_outlined,
                      color: Color(0xFFFCB721),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8, bottom: 1),
                      child: Text(
                        "Print",
                        style: TextStyle(
                            fontFamily: "pop1",
                            fontSize: 16,
                            color: Color(0xFFFCB721)),
                      ),
                    )
                  ],
                ),
              ),
              onPressed: () {
                _createPdf(); // Call the function to generate the PDF document
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PdfPage(doc: _pdfDocument2),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }

  void _createPdf() {
    final doc = pw.Document();
    doc.addPage(
      pw.Page(
        pageFormat: PdfPageFormat.a4,
        build: (pw.Context context) {
          return pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              pw.Text(
                "Employment Contract",
                style:
                    pw.TextStyle(fontSize: 35, fontWeight: pw.FontWeight.bold),
              ),
              pw.SizedBox(height: 20),
              pw.Text(
                "Employee Information:",
                style:
                    pw.TextStyle(fontSize: 25, fontWeight: pw.FontWeight.bold),
              ),
              pw.Text(
                "Name: $docename",
                style: pw.TextStyle(
                  fontSize: 18,
                ),
              ),
              pw.Text(
                "Position: $docjobtitle",
                style: pw.TextStyle(
                  fontSize: 18,
                ),
              ),
              pw.Text(
                "Start Date: $docemploymentd",
                style: pw.TextStyle(
                  fontSize: 18,
                ),
              ),
              pw.Text(
                "Start Date: $docexpirayd",
                style: pw.TextStyle(
                  fontSize: 18,
                ),
              ),
              pw.SizedBox(height: 20),
              pw.Text(
                "Employer Information:",
                style:
                    pw.TextStyle(fontSize: 25, fontWeight: pw.FontWeight.bold),
              ),
              pw.Text(
                "Company: $doccompany",
                style: pw.TextStyle(
                  fontSize: 18,
                ),
              ),
              pw.Text(
                "Address: 123 Main Street,Cityville, State, Country, Postal Code",
                style: pw.TextStyle(
                  fontSize: 18,
                ),
              ),
              pw.SizedBox(height: 20),
              pw.Text(
                "Terms and Conditions:",
                style:
                    pw.TextStyle(fontSize: 25, fontWeight: pw.FontWeight.bold),
              ),
              pw.Text(
                "1. Job Title and Description: IT Specialist responsibilities include technical support, troubleshooting, and IT infrastructure maintenance.",
                style: pw.TextStyle(
                  fontSize: 17,
                ),
              ),
              pw.Text(
                "2. Qualifications: Employee confirms qualifications for IT role and agrees to provide documentation upon request.",
                style: pw.TextStyle(
                  fontSize: 17,
                ),
              ),
              pw.Text(
                "3. Confidentiality: Employee maintains confidentiality of sensitive information encountered during employment.",
                style: pw.TextStyle(
                  fontSize: 17,
                ),
              ),
              pw.Text(
                "4. Data Security: Employee adheres to data security policies, safeguards against unauthorized access, and reports incidents promptly.",
                style: pw.TextStyle(
                  fontSize: 17,
                ),
              ),
              pw.Text(
                "5. Equipment Usage: Employee uses company equipment and software for business purposes only.",
                style: pw.TextStyle(
                  fontSize: 17,
                ),
              ),
              pw.Text(
                "6. Compliance: Employee complies with all laws, regulations, and industry standards relevant to IT practices.",
                style: pw.TextStyle(
                  fontSize: 17,
                ),
              ),
              pw.Text(
                "7. Reporting: Employee promptly reports technical issues, security vulnerabilities, or policy violations.",
                style: pw.TextStyle(
                  fontSize: 17,
                ),
              ),
              pw.Text(
                "8. Termination: Employment may be terminated with notice or as per legal provisions.",
                style: pw.TextStyle(
                  fontSize: 17,
                ),
              ),
            ],
          );
        },
      ),
    );
    _pdfDocument2 = doc;
  }
}

class PdfPage extends StatelessWidget {
  final pw.Document? doc;

  const PdfPage({Key? key, required this.doc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back_ios_rounded),
        ),
        title: Text('PDF Preview'),
      ),
      body: PdfPreview(
        build: (format) => doc!.save(),
        allowSharing: true,
        allowPrinting: true,
        initialPageFormat: PdfPageFormat.a4,
        pdfFileName: "employment_contract.pdf",
      ),
    );
  }
}
