import 'package:flutter/material.dart';


class NotasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Notas'), centerTitle: true,),
     body: SingleChildScrollView(
        child: Column(
          children: <Widget>[ 
            _tablas(),
          ],
        )
      ),
      bottomNavigationBar: _bottonNavigationBar(context),
    );
  }
  
  Widget _tablas() { 
    return Container(
      
        child: DataTable (
          dataRowHeight: 60,
          headingRowHeight: 60,
          columns: <DataColumn>[
              DataColumn(
                label: Text('Alumno', style: TextStyle(color: Colors.black, fontSize: 10.0,fontWeight: FontWeight.bold)),
              ),
              DataColumn(
                label: Text('N1', style: TextStyle(color: Colors.black, fontSize: 10.0,fontWeight: FontWeight.bold)),
              ),
              DataColumn(
                label: Text('N2', style: TextStyle(color: Colors.black, fontSize: 10.0,fontWeight: FontWeight.bold)),
              ),
              DataColumn(
                label: Text('N3', style: TextStyle(color: Colors.black, fontSize: 10.0,fontWeight: FontWeight.bold)),
              ),
              DataColumn(
                label: Text('NF', style: TextStyle(color: Colors.black, fontSize: 10.0,fontWeight: FontWeight.bold)),
              ),
         
            ],rows: <DataRow>[
                DataRow(cells: [
                DataCell(Text('Alí Babá Cárdenas')),
                DataCell(Text('7.0')),
                DataCell(Text('5.0')),
                DataCell(Text('5.0')),
                DataCell(Text('6.0')),
               

              ]),
              DataRow(cells: [
                DataCell(Text('Adolfo Hitler Flores de Valgas Alava')),
                DataCell(Text('10')),
                DataCell(Text('10')),
                DataCell(Text('10')),
                DataCell(Text('10')),
                

              ]),
              DataRow(cells: [
                DataCell(Text('Armando Bronca Segura')),
                DataCell(Text('10')),
                DataCell(Text('8.0')),
                DataCell(Text('9.0')),
                DataCell(Text('10')),
            

              ]),
               DataRow(cells: [
                DataCell(Text('Disney Landia Rodriguez')),
                DataCell(Text('10')),
                DataCell(Text('8.0')),
                DataCell(Text('9.0')),
                DataCell(Text('10')),
            

              ]),
               DataRow(cells: [
                DataCell(Text('Elba Lazo de Gracia')),
                DataCell(Text('10')),
                DataCell(Text('8.0')),
                DataCell(Text('9.0')),
                DataCell(Text('10')),
            

              ]),
               DataRow(cells: [
                DataCell(Text('Leo Diario Matutino')),
                DataCell(Text('10')),
                DataCell(Text('8.0')),
                DataCell(Text('9.0')),
                DataCell(Text('10')),
            

              ]),
               DataRow(cells: [
                DataCell(Text('Leo Diario Matutino')),
                DataCell(Text('10')),
                DataCell(Text('8.0')),
                DataCell(Text('9.0')),
                DataCell(Text('10')),
            

              ]),
               DataRow(cells: [
                DataCell(Text('Leo Diario Matutino')),
                DataCell(Text('10')),
                DataCell(Text('8.0')),
                DataCell(Text('9.0')),
                DataCell(Text('10')),
            

              ]),
               DataRow(cells: [
                DataCell(Text('Leo Diario Matutino')),
                DataCell(Text('10')),
                DataCell(Text('8.0')),
                DataCell(Text('9.0')),
                DataCell(Text('10')),
            

              ]),
               DataRow(cells: [
                DataCell(Text('Leo Diario Matutino')),
                DataCell(Text('10')),
                DataCell(Text('8.0')),
                DataCell(Text('9.0')),
                DataCell(Text('10')),
            

              ]),
               DataRow(cells: [
                DataCell(Text('Leo Diario Matutino')),
                DataCell(Text('10')),
                DataCell(Text('8.0')),
                DataCell(Text('9.0')),
                DataCell(Text('10')),
            

              ]),
               DataRow(cells: [
                DataCell(Text('Leo Diario Matutino')),
                DataCell(Text('10')),
                DataCell(Text('8.0')),
                DataCell(Text('9.0')),
                DataCell(Text('10')),
            

              ]),
               DataRow(cells: [
                DataCell(Text('Leo Diario Matutino')),
                DataCell(Text('10')),
                DataCell(Text('8.0')),
                DataCell(Text('9.0')),
                DataCell(Text('10')),
            

              ]),
               DataRow(cells: [
                DataCell(Text('Leo Diario Matutino')),
                DataCell(Text('10')),
                DataCell(Text('8.0')),
                DataCell(Text('9.0')),
                DataCell(Text('10')),
            

              ]),
               DataRow(cells: [
                DataCell(Text('Leo Diario Matutino')),
                DataCell(Text('10')),
                DataCell(Text('8.0')),
                DataCell(Text('9.0')),
                DataCell(Text('10')),
            

              ]),
               DataRow(cells: [
                DataCell(Text('Leo Diario Matutino')),
                DataCell(Text('10')),
                DataCell(Text('8.0')),
                DataCell(Text('9.0')),
                DataCell(Text('10')),
            

              ]),
                            
            ]
          )
        );
     }

    Widget _bottonNavigationBar(BuildContext context){
      return Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Color.fromRGBO(55, 57, 84, 10),
          primaryColor: Colors.lightBlueAccent,
          textTheme: Theme.of(context).textTheme.copyWith(caption: TextStyle(color: Color.fromRGBO(116, 117, 152, 1.0)))
        ),
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 30.0),
              title: Container()
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.blur_circular, size: 30.0),
              title: Container()
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bubble_chart, size: 30.0),
              title: Container()
            )
          ]
        ),
      );

    }
  }