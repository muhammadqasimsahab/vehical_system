// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

// Class person that initialize the data fields
class Persons {
  int ID, Age;
  String Name, LastName;
  Persons(this.ID, this.Name, this.LastName, this.Age);
}

class InsertDataTable extends StatefulWidget {
  @override
  _InsertDataTableState createState() => new _InsertDataTableState();
}

class _InsertDataTableState extends State<InsertDataTable> {
  List<Persons> PersonsLst = <Persons>[];

  final formKey = GlobalKey<FormState>();
  var Dato_fra = TextEditingController();
  var Dato_til = TextEditingController();
  var Forer = TextEditingController();
  var Forer_no = TextEditingController();
  var lastID = 0;

  @override
  void initState() {
    super.initState();
    lastID++;
    Dato_fra.text = lastID.toString();
  }

  refreshList() {
    setState(() {
      Dato_fra.text = lastID.toString();
    });
  }

  validate() {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      String ID = Dato_fra.text;
      String N = Dato_til.text;
      String LN = Forer.text;
      String A = Forer_no.text;
      Persons p = Persons(int.parse(ID), N, LN, int.parse(A));
      PersonsLst.add(p);
      lastID++;
      refreshList();
      Dato_til.text = "";
      Forer.text = "";
      Forer_no.text = "";
    }
  }

  bool NotIntCheck(var N) {
    final V = int.tryParse(N);

    if (V == null) {
      print("Not Int");
      return true;
    } else {
      print("Int");
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Insert Into Data Table"),
        ),
        body: ListView(
          children: <Widget>[
            Form(
              key: formKey,
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Person ID:"),
                    TextField(
                      controller: Dato_fra,
                      enabled: false,
                    ),
                    Text("Person Name:"),
                    TextFormField(
                      controller: Dato_til,
                      keyboardType: TextInputType.text,
                      validator: (val) =>
                          val?.length == 0 ? 'Enter Person Name' : null,
                    ),
                    Text("Person Last Name:"),
                    TextFormField(
                      controller: Forer,
                      keyboardType: TextInputType.text,
                      validator: (val) =>
                          val?.length == 0 ? 'Enter Person LastName' : null,
                    ),
                    Text("Person Age:"),
                    TextFormField(
                      controller: Forer_no,
                      maxLength: 2,
                      keyboardType: TextInputType.number,
                      validator: (val) => NotIntCheck(val)
                          ? 'Enter Person Age,Number Required'
                          : null,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: MaterialButton(
                        color: Colors.green,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: Text(
                          'Insert Person',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        onPressed: validate,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: DataTable(
                columns: const [
                  DataColumn(
                    label: Text("ID"),
                  ),
                  DataColumn(
                    label: Text("Name"),
                  ),
                  DataColumn(
                    label: Text("LastName"),
                  ),
                  DataColumn(
                    label: Text("Age"),
                  ),
                ],
                rows: PersonsLst.map(
                  (p) => DataRow(cells: [
                    DataCell(
                      Text(p.ID.toString()),
                    ),
                    DataCell(
                      Text(p.Name),
                    ),
                    DataCell(
                      Text(p.LastName),
                    ),
                    DataCell(
                      Text(p.Age.toString()),
                    ),
                  ]),
                ).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
