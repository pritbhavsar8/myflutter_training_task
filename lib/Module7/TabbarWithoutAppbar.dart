
import 'package:flutter/material.dart';

class tabWithoutAppbar extends StatefulWidget {
  const tabWithoutAppbar({super.key});

  @override
  State<tabWithoutAppbar> createState() => _tabWithoutAppbarState();
}

class _tabWithoutAppbarState extends State<tabWithoutAppbar> with SingleTickerProviderStateMixin {
  
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 3, vsync: this,initialIndex: 1,);
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 30.0,),
          Text("Call Manager"),
          Card(
            elevation: 5.0,
            shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.black.withOpacity(0.1),
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: TabBar(
                tabs: [
                  Tab(child: Text("Missed",style: TextStyle(fontWeight: FontWeight.bold),),),
                  Tab(child: Text("Received",style: TextStyle(fontWeight: FontWeight.bold),),),
                  Tab(child: Text("Dial",style: TextStyle(fontWeight: FontWeight.bold),),),
                ],
                controller: tabController,
                indicator: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(12.0)
                ),
                isScrollable: true,
                labelPadding: EdgeInsets.symmetric(horizontal: 30.0),
              ),
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: [
                ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Card(
                      margin: EdgeInsets.all(10.0),
                      child: ListTile(
                        leading: Icon(Icons.call_received,color: Colors.green,),
                        title: Text("Person ${index+1}"),
                        subtitle: Text("Received call from person ${index+1}"),
                        trailing: Icon(Icons.call_end,color: Colors.red,),

                      ),
                    );
                  },
                ),
                 ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Card(
                      margin: EdgeInsets.all(10.0),
                      child: ListTile(
                        leading: Icon(Icons.call_received,color: Colors.green,),
                        title: Text("Person ${index+1}"),
                        subtitle: Text("Received call from person ${index+1}"),
                        trailing: Icon(Icons.call_end,color: Colors.red,),

                      ),
                    );
                  },
                ),
                 ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Card(
                      margin: EdgeInsets.all(10.0),
                      child: ListTile(
                        leading: Icon(Icons.call_received,color: Colors.green,),
                        title: Text("Person ${index+1}"),
                        subtitle: Text("Received call from person ${index+1}"),
                        trailing: Icon(Icons.call_end,color: Colors.red,),

                      ),
                    );
                  },
                )


              ],
            ),
          )

        ],
      )
    );
  }
}