import 'package:flutter/material.dart';

class CustomTab extends StatefulWidget {
  const CustomTab({super.key});

  @override
  State<CustomTab> createState() => _CustomTabState();
}

class _CustomTabState extends  State<CustomTab> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 4, vsync: this, initialIndex: 0);
    return Scaffold(
      body: Container(
        color: Colors.transparent,
        child: TabBar(
          tabs: [
            Tab(
              child: Container(
                decoration: BoxDecoration(
                  // color: Colors.blue,
                  borderRadius: BorderRadius.circular(15.0),
                    border: Border.all(color: Colors.blue)
                ),
                child: Row(
                  children: [
                    Icon(Icons.check_box,size: 20),
                    SizedBox(width: 8,),
                    Text("All")
                  ],
                ),
              ),
            ),
            Tab(
              child: Container(
                decoration: BoxDecoration(
                    // color: Colors.blue,
                    borderRadius: BorderRadius.circular(15.0),
                  border: Border.all(color: Colors.blue)
                ),
                child: Row(
                  children: [
                    Icon(Icons.apartment,size: 20),
                    SizedBox(width: 8,),
                    Text("Apartment")
                  ],
                ),
              ),
            ),
            Tab(
              child: Container(
                decoration: BoxDecoration(
                    // color: Colors.blue,
                    borderRadius: BorderRadius.circular(15.0),
                    border: Border.all(color: Colors.blue)
                ),
                child: Row(
                  children: [
                    Icon(Icons.house_outlined,size: 20),
                    SizedBox(width: 8,),
                    Text("Houses")
                  ],
                ),
              ),
            ),
            Tab(
              child: Container(
                decoration: BoxDecoration(
                    // color: Colors.blue,
                    borderRadius: BorderRadius.circular(15.0),
                    border: Border.all(color: Colors.blue)
                ),
                child: Row(
                  children: [
                    Icon(Icons.cottage,size: 20,),
                    SizedBox(width: 8,),
                    Text("Cargo")
                  ],
                ),
              ),
            ),
          ],
          indicator: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(15.0),

          ),
          isScrollable: true,
          controller: tabController,
          labelColor: Colors.white,
          unselectedLabelColor: Colors.blue,

          labelStyle: TextStyle(
            fontSize: 16,
          ),


        ),
      ),
    );
  }
}
