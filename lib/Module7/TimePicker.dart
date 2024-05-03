import 'package:flutter/material.dart';

class timePicker extends StatefulWidget {
  const timePicker({super.key});

  @override
  State<timePicker> createState() => _timePickerState();
}

class _timePickerState extends State<timePicker> {
  TimeOfDay? selectedTime;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(selectedTime.toString()),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () async{
              TimeOfDay ? picktime = await showTimePicker(
                context: context, 
               initialTime: TimeOfDay.now()
              );
              if (picktime != null) {
                setState(() {
                  selectedTime = picktime;
                });
              }
            }, child: Text("Show"))
          ],
        ),
      ),
    );
  }
}