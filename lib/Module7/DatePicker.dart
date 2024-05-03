import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class datepicker extends StatefulWidget {
  const datepicker({super.key});

  @override
  State<datepicker> createState() => _datepickerState();
}

class _datepickerState extends State<datepicker> {
  String ? selectDate;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(selectDate.toString()),
            ElevatedButton(
              onPressed: () async{
              DateTime? pickdate = await showDatePicker(
                context: context, 
                initialDate: DateTime.now(),
                firstDate: DateTime(2023,1), 
                lastDate: DateTime(2024,12),
              );
              if(pickdate != null) 
              {
                 String formattedDate = DateFormat('dd-MM-yyyy').format(pickdate);
                setState(() {
                  selectDate = formattedDate.toString();
                });
              }
               print(selectDate);
            }, child: Text("Show"))
          ],
        ),
      ),
    );
  }
}