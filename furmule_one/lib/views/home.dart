import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:furmule_one/viewmodels/user_view_model.dart';
import 'package:provider/provider.dart';
import 'package:furmule_one/models/driver.dart';
import 'package:furmule_one/library/globals.dart' as globals;

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Driver> drivers = globals.drivers.map((driverMap) => Driver.fromMap(driverMap)).toList();

  Widget _data(Driver driver){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(right:30,top: 10),
          child: Text(driver.id.toString(),
          style: TextStyle(
            color: Colors.red,
            fontSize: 25,
            fontWeight: FontWeight.bold
          ),),
        ),
        Container(
          margin: EdgeInsets.only(right:10,top: 10),
          width: 80,
          height: 80,
          child: Image.asset(driver.image),
        ),
         SizedBox(height: 20),
        Column(
          
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
          margin: EdgeInsets.only(top: 10),

              child: Text( '${driver.prenom} ${driver.nom}',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
              ),
            ),
              Container(
                          margin: EdgeInsets.only(right:120),

              child: Text("Sponsor",
              style: TextStyle(
                fontSize: 18,
              ),
              ),
            ),
          ]
        ),
      ]
    );
  }

  Widget _fetchdata() {
    return Expanded(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          color: Colors.white,
        ),
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Center(
                child: Text(
                  "Top 10 Ranking 2021",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 247, 16, 0),
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: drivers.length,
                itemBuilder: (context, index) {
                  return _data(drivers[index]);
                },
              ),
            ),          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
        final userViewModel = Provider.of<UserViewModel>(context);

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 251, 17, 0),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30.0, vertical: 80),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  child: Image.asset("assets/images/user.png"),
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Good Morning,",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '${userViewModel.firstname} ${userViewModel.lastname}',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          _fetchdata(),
        ],
      ),
    );
  }
}

