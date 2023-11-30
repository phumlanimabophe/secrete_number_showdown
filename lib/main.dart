import 'dart:convert';
import 'dart:math';

import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Secret Number Showdown',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(body: numbers()),
    );
  }
}


numbers(){
  localdata["listOfUsers"]  = [
    {"name": "tomson", "password": "tomson", "avatar": "https://firebasestorage.googleapis.com/v0/b/testing-joke.appspot.com/o/numbers%2Fpexels-anastasiya-lobanovskaya-1035673.jpg?alt=media&token=2f63e862-ab82-4289-ab0a-53cec3e64e94", "online": false},
    {"name": "alice", "password": "alicepass", "avatar": "https://firebasestorage.googleapis.com/v0/b/testing-joke.appspot.com/o/numbers%2Fpexels-andrew-personal-training-697509.jpg?alt=media&token=84f0aed3-cba4-43c0-a6f9-738222fc7db4", "online": true},
    {"name": "bob", "password": "bobpass", "avatar": "https://firebasestorage.googleapis.com/v0/b/testing-joke.appspot.com/o/numbers%2Fpexels-andrea-piacquadio-762020.jpg?alt=media&token=c295d7ce-bba8-40a7-8e81-701ba032bca9", "online": false},
    {"name": "carol", "password": "carolpass", "avatar": "https://firebasestorage.googleapis.com/v0/b/testing-joke.appspot.com/o/numbers%2Fpexels-chris-thornton-1252250.jpg?alt=media&token=3af35d96-1b4d-4e8c-9684-d6ad0bba489c", "online": true},
    {"name": "dave", "password": "davepass", "avatar": "https://firebasestorage.googleapis.com/v0/b/testing-joke.appspot.com/o/numbers%2Fpexels-cottonbro-studio-5081971.jpg?alt=media&token=64b8fc79-7420-497a-8778-2f370343275a", "online": false},
    {"name": "emma", "password": "emmapass", "avatar": "https://firebasestorage.googleapis.com/v0/b/testing-joke.appspot.com/o/numbers%2Fpexels-emily-garland-1499327.jpg?alt=media&token=f3bf56b4-5b61-4bef-91d9-33c0b70cf353", "online": true},
    {"name": "frank", "password": "frankpass", "avatar": "https://firebasestorage.googleapis.com/v0/b/testing-joke.appspot.com/o/numbers%2Fpexels-fillipe-gomes-2250276.jpg?alt=media&token=1de6b4bb-e9a7-4240-8dcc-53429b62295d", "online": false},
    {"name": "grace", "password": "gracepass", "avatar": "https://firebasestorage.googleapis.com/v0/b/testing-joke.appspot.com/o/numbers%2Fpexels-marcelo-chagas-6389355.jpg?alt=media&token=f132beaf-9b16-4885-b182-aed7706e0703", "online": true},
    {"name": "harry", "password": "harrypass", "avatar": "https://firebasestorage.googleapis.com/v0/b/testing-joke.appspot.com/o/numbers%2Fpexels-maria-orlova-4906334.jpg?alt=media&token=8a9b6879-ecc7-4844-a47d-c004ee777180", "online": false},
    {"name": "isabel", "password": "isabelpass", "avatar": "https://firebasestorage.googleapis.com/v0/b/testing-joke.appspot.com/o/numbers%2Fpexels-pixabay-163036.jpg?alt=media&token=adb509fe-8ec2-4465-914f-a7de5f59ff00", "online": true},
    {"name": "jack", "password": "jackpass", "avatar": "https://firebasestorage.googleapis.com/v0/b/testing-joke.appspot.com/o/numbers%2Fpexels-pixabay-220453.jpg?alt=media&token=b9d201c8-455c-4335-acf0-26a821463925", "online": false},
    {"name": "zeb", "password": "zeb", "avatar": "https://firebasestorage.googleapis.com/v0/b/testing-joke.appspot.com/o/numbers%2Fpexels-pixabay-34534.jpg?alt=media&token=5784e124-ec64-4e2c-9740-31d00e12c501", "online": true},
    {"name": "lucas", "password": "lucaspass", "avatar": "https://firebasestorage.googleapis.com/v0/b/testing-joke.appspot.com/o/numbers%2Fpexels-pixabay-415829.jpg?alt=media&token=e2dff91b-a908-4344-b05f-b233cadb5857", "online": false},
    {"name": "molly", "password": "mollypass", "avatar": "https://firebasestorage.googleapis.com/v0/b/testing-joke.appspot.com/o/numbers%2Fpexels-roman-odintsov-6897771.jpg?alt=media&token=1a22e729-7684-4e68-9bdb-a20a78a878f6", "online": true}
  ];
  localdata["theGames"]  = {
    "tomson":["alice"],
    "alice":["tomson"],
  };
  localdata["challenging_progressing"]={
    "molly-tomson":{"ready":54480},
    "dave-tomson":{"tomson":[10],"dave":[10],"ready":50}
  };
  localdata["challenging_progressing"]=json.decode(json.encode(localdata["challenging_progressing"]));
  localdata["scoring"]={
    "molly-tomson":{"tomson":1,"molly":0,},
    "dave-tomson":{"tomson":0,"dave":0,}

  };
  localdata["scoring"]=json.decode(json.encode(localdata["scoring"]));
  localdata["theGamesDone"]  = {
    "tomson":{"lost": ["lucas"],"won": ["emma", "dave"]},
  };
  localdata["theGamesDone"]=json.decode(json.encode(localdata["theGamesDone"]));

  return Container(
    child: Stack(
      children: [



        mainSwitch(),
        tabLogin(),

        buildLogOutCard(),


        myBottomIcons()

      ],
    ),
  );
}


myLoginButton(){
  return Builder(
    builder: (context) {
      return Stack(
        children: [
          Builder(
              builder: (context) {

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: Image.asset('assets/sleep.gif',
                        fit: BoxFit.cover,

                      ),
                    ),
                  ],
                );
              }
          ),
          Positioned(
            top:MediaQuery.of(context).size.height/2-250.0,
            left: MediaQuery.of(context).size.width/1.6,
            child: InkWell(
              onTap: () {
                // Handle TikTok icon press
                localdata["visible_1"]=!localdata["visible_1"];
                localdata["state_1"]((){});
              },
              child: Container(
                width: 600.0,
                height: 500.0,
                color: Colors.transparent,

              ),
            ),
          ),
        ],
      );
    }
  );
}

gameArea(){
  return Builder(
      builder: (context) {
        return Stack(
          children: [
            Builder(
                builder: (context) {

                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: Image.asset('assets/game.gif',
                          fit: BoxFit.cover,

                        ),
                      ),
                    ],
                  );
                }
            ),
            otherUsers(),
            numberInputAreaCard()

          ],
        );
      }
  );
}

tabLogin(){
  if(localdata["visible_1"]==null){
    localdata["visible_1"]=false;
  }
  return StatefulBuilder(
    builder: (context,state) {
      localdata["state_1"]=state;
      return Positioned(
        top:MediaQuery.of(context).size.height/2-250.0,
        right: MediaQuery.of(context).size.width/1.6,

        width: 500.0,
        height: 450.0,
        child: Visibility(
          visible: localdata["visible_1"],
          child: DefaultTabController(
            length: 2, // Number of tabs
            child: Card(
              clipBehavior: Clip.hardEdge,
              child: Scaffold(
                backgroundColor: Colors.transparent,
                appBar: AppBar(
                  toolbarHeight: 0.0,
                  bottom: TabBar(
                    tabs: [
                      Tab(text: 'Login'),
                      Tab(text: 'Register'),
                    ],
                  ),
                ),
                body: TabBarView(
                  children: [
                    buildLoginCard(),
                    buildRegisterCard()// Content for Tab 3
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    }
  );
}
buildLoginCard() {

  return StatefulBuilder(
      builder: (context,state) {

        return Padding(
          padding: EdgeInsets.all(24.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Welcome!',
                style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 24.0),
              TextFormField(
                controller: TextEditingController(text: localdata["current_name"]),
                decoration: InputDecoration(
                  labelText: 'Name',
                  labelStyle: TextStyle(color: Colors.blue),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 2.0),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                keyboardType: TextInputType.emailAddress,
                onChanged: (v){
                  if(v.isNotEmpty){
                    localdata["current_name"]=v;
                  }
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: TextEditingController(text: localdata["current_password"]),
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(color: Colors.blue),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 2.0),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                obscureText: true,
                onChanged: (v){
                  if(v.isNotEmpty){
                    localdata["current_password"]=v;
                  }
                },
              ),
              SizedBox(height: 24.0),
              ElevatedButton(
                onPressed: () {

                  // localdata["current_user"]=localdata["listOfUsers"].where((element) =>
                  // element["name"]==localdata["current_name"]&&element["password"]==localdata["current_password"]).toList();
                  localdata["current_user"]=localdata["listOfUsers"].where((element) =>
                  element["name"]=="tomson").toList();
                  if(localdata["current_user"].length!=0){
                    localdata["current_user"]=localdata["current_user"][0];
                  }else{
                    localdata.remove("current_user");
                  }
                  if(localdata["current_user"]!=null){
                    localdata["current_user"]['online']=true;
                    localdata["visible_1"]=false;
                    localdata["visible_2"]=true;
                    localdata["visible_3"]=true;
                    localdata["state_3"]((){});
                    localdata["state_2"]((){});
                    localdata["state_1"]((){});

                    localdata.remove("login_message");

                  }else{
                    localdata.remove("login_message");
                    localdata["state_1"]((){});
                    Future.delayed(Duration(seconds: 2), () {
                      localdata["login_message"]="Login pass failed";
                      localdata["state_1"]((){});
                    });

                  }


                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Text(
                '${localdata["login_message"]??""}',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.redAccent,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        );
      }
  );
}
buildRegisterCard() {

  return StatefulBuilder(
      builder: (context,state) {
        localdata["state_6"]=state;
        return Padding(
          padding: EdgeInsets.all(24.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Register!',
                style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 24.0),
              TextFormField(
                controller: TextEditingController(text: localdata["current_name"]),
                decoration: InputDecoration(
                  labelText: 'Name',
                  labelStyle: TextStyle(color: Colors.blue),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 2.0),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                keyboardType: TextInputType.emailAddress,
                onChanged: (v){
                  if(v.isNotEmpty){
                    localdata["current_name"]=v;
                  }
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: TextEditingController(text: localdata["current_password"]),
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(color: Colors.blue),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 2.0),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                obscureText: true,
                onChanged: (v){
                  if(v.isNotEmpty){
                    localdata["current_password"]=v;
                  }
                },
              ),
              SizedBox(height: 24.0),
              ElevatedButton(
                onPressed: () {

                  // localdata["current_user"]=localdata["listOfUsers"].where((element) =>
                  // element["name"]==localdata["current_name"]&&element["password"]==localdata["current_password"]).toList();
                  localdata["current_user"]=localdata["listOfUsers"].where((element) =>
                  element["name"]=="tomson").toList();
                  if(localdata["current_user"].length!=0){
                    localdata["current_user"]=localdata["current_user"][0];
                  }else{
                    localdata.remove("current_user");
                  }
                  if(localdata["current_user"]!=null){
                    localdata["current_user"]['online']=true;
                    localdata["visible_1"]=false;
                    localdata["visible_2"]=true;
                    localdata["visible_3"]=true;
                    localdata["state_3"]((){});
                    localdata["state_2"]((){});
                    localdata["state_6"]((){});
                    localdata["state_1"]((){});

                    localdata.remove("login_message");

                  }else{
                    localdata.remove("login_message");
                    localdata["state_1"]((){});
                    Future.delayed(Duration(seconds: 2), () {
                      localdata["login_message"]="Login pass failed";
                      localdata["state_1"]((){});
                    });

                  }


                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Text(
                '${localdata["login_message"]??""}',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.redAccent,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        );
      }
  );
}
buildLogOutCard() {
  if(localdata["visible_3"]==null){
    localdata["visible_3"]=false;
  }

  return StatefulBuilder(
      builder: (context,state) {
        localdata["state_3"]=state;
        if(localdata["current_user"]==null){
          return Container();
        }
        return Positioned(
          top:10.0,
          right: 10.0,


          child: Visibility(
            visible: localdata["visible_3"],
            child:    Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: (){
                      profileCreateOrEditCard(context,localdata["current_user"]);
                    },
                    child: Container(
                      width: 150.0,
                      height: 150.0,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: (localdata["current_user"]['online'] ? Colors.green : Colors.red).withOpacity(0.8),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes the position of shadow
                          ),
                        ],
                        shape: BoxShape.circle, // Ensures the container is a circle
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(localdata["current_user"]["avatar"]),
                        ),
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    localdata["visible_1"]=false;
                    localdata["visible_2"]=false;
                    localdata["visible_3"]=false;
                    localdata["state_3"]((){});
                    localdata["state_2"]((){});
                    localdata["state_1"]((){});
                    localdata["current_user"]['online']=false;

                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.redAccent,
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: Text(
                    'Sign Out',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }
  );
}


dynamic localdata={};
mainSwitch() {
  if(localdata["visible_2"]==null){
    localdata["visible_2"]=false;
  }
  return StatefulBuilder(
    builder: (context,state) {
      localdata["state_2"]=state;
      return Stack(
        children: [
          Visibility(
            visible: localdata["visible_2"],
            child: gameArea(),
          ),
          Visibility(
              visible: !localdata["visible_2"],
              child: myLoginButton(),
          ),
        ],
      );
    }
  );
}

myBottomIcons() {
  return Builder(
    builder: (context) {
      return Positioned(
        bottom: 5.0,
        left: MediaQuery.of(context).size.width / 2 - 300.0,
        child: Container(
          width: 600.0,
          height: 100.0,
          child: Row(
            children: [
              Expanded(
                child: InkWell(
                  onTap: () async {
                    const youtubeUrl = 'https://www.youtube.com/channel/UCAD6bT4bS-5NO6ELLjF1dTw'; // Replace with your YouTube channel URL
                    if (await canLaunch(youtubeUrl)) {
                      await launch(youtubeUrl);
                    } else {
                      throw 'Could not launch $youtubeUrl';
                    }
                  },
                  child: Column(
                    children: [
                      Container(
                          height:70.0,width:70.0,
                          child: CircleAvatar(
                              backgroundColor:Colors.red,
                              child: Center(child: Icon(Icons.play_arrow, size: 70, color: Colors.white)))),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () async {
                    const tikTokUrl = 'https://www.tiktok.com/@overtimecoding'; // Replace with your YouTube channel URL
                    if (await canLaunch(tikTokUrl)) {
                      await launch(tikTokUrl);
                    } else {
                      throw 'Could not launch $tikTokUrl';
                    }
                  },

                  child: Column(
                    children: [
                      Container(
                          height:70.0,width:70.0,
                          child: CircleAvatar(
                              backgroundColor:Colors.white,
                              child: Center(child: Icon(Icons.tiktok, size: 70, color: Colors.black)))),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}


otherUsers(){


  dynamic _scrollController=ScrollController();
  return Positioned(
    left: 0,
    top: 0,
    bottom: 0,
    width: 160.0,

    child: Builder(
      builder: (context) {
        if(localdata["listOfUsers"] ==null){
          return Container();
        }
        return SingleChildScrollView(
            controller: _scrollController,
            clipBehavior: Clip.none,
            child: Column(
              children: [
                for(var item in localdata["listOfUsers"] )
                  Padding(
                    padding: const EdgeInsets.only(top:15.0,bottom:20.0),
                    child: Builder(
                      builder: (context) {
                        dynamic sted=[localdata["current_user"]["name"],item["name"]];
                        sted.sort();


                        if(localdata["current_user"]==item){
                          return Container();
                        }

                        dynamic challenge=false;
                        dynamic challenging_progressing;
                        if(localdata["theGames"][localdata["current_user"]["name"]]!=null){
                          if(localdata["theGames"][localdata["current_user"]["name"]].contains(item["name"])){
                            challenge=true;
                          }
                        }
                        if(localdata["challenging_progressing"]["${sted[0]}-${sted[1]}"]!=null){
                          challenging_progressing=localdata["challenging_progressing"]["${sted[0]}-${sted[1]}"];

                        }

                        if(localdata["scoring"]["${sted[0]}-${sted[1]}"]!=null){
                          localdata["current_scoring"]=localdata["scoring"]["${sted[0]}-${sted[1]}"];
                        }
                        return Stack(
                            clipBehavior: Clip.none,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: InkWell(
                                onDoubleTap: (){
                                  profileViewCard(context,item);
                                },
                                onTap:(){
                                  if(challenging_progressing!=null){
                                    if(localdata["other_user"]==item["name"]){
                                      localdata.remove("other_user");
                                    }else{
                                      localdata["other_user"]=item["name"];
                                    }

                                    localdata["state_5"]((){});
                                  }

                                },
                                child: Container(
                                  width: 150.0,
                                  height: 150.0,
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: (item['online'] ? Colors.green : Colors.red).withOpacity(0.8),
                                        spreadRadius: 5,
                                        blurRadius: 7,
                                        offset: Offset(0, 3), // changes the position of shadow
                                      ),
                                    ],
                                    shape: BoxShape.circle, // Ensures the container is a circle
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: CircleAvatar(
                                      backgroundImage: NetworkImage(item["avatar"]),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            if(challenging_progressing==null)
                            ElevatedButton(
                              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(challenge? Colors.red:Colors.white)),
                              onPressed: () {

                                createChallenge(item["name"],context);
                            },child: Text("${challenge?"Cancel":"Challenge"}",style: TextStyle(color:!challenge?Colors.black:Colors.white),),),
                            Positioned(
                              right:-100.0,
                              top:10.0,
                              child: Column(
                                children: [
                                  if(challenging_progressing!=null)
                                    Card(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              "${challenging_progressing[item["name"]]!=null?challenging_progressing[item["name"]].length:0}",
                                              style: GoogleFonts.abyssinicaSil(
                                                fontSize: 35.0,
                                                color: Colors.blue,
                                                fontWeight: FontWeight.bold, // Adding bold font weight
                                                letterSpacing: 2.0, // Adding letter spacing
                                                shadows: [
                                                  Shadow(
                                                    blurRadius: 4,
                                                    color: Colors.black.withOpacity(0.25),
                                                    offset: Offset(2, 2),
                                                  ),
                                                ], // Adding text shadow
                                              ),
                                            ),
                                            Text(" vs "),
                                            Text(
                                              "${challenging_progressing[localdata["current_user"]["name"]]!=null?challenging_progressing[localdata["current_user"]["name"]].length:0}",
                                              style: GoogleFonts.abyssinicaSil(
                                                fontSize: 35.0,
                                                color: Colors.blue,
                                                fontWeight: FontWeight.bold, // Adding bold font weight
                                                letterSpacing: 2.0, // Adding letter spacing
                                                shadows: [
                                                  Shadow(
                                                    blurRadius: 4,
                                                    color: Colors.black.withOpacity(0.25),
                                                    offset: Offset(2, 2),
                                                  ),
                                                ], // Adding text shadow
                                              ),
                                            ),

                                          ],
                                        ),
                                      ),
                                    ),

                                ],
                              ),
                            ),
                            Positioned(
                              right:-100.0,
                              top:95.0,
                              child: Column(
                                children: [
                                  if(challenging_progressing!=null)
                                    Card(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                            CircleAvatar(
                                              backgroundColor:localdata["current_scoring"][item["name"]]==1?Colors.amber:Colors.grey ,
                                            ),
                                            Text(" vs "),
                                            CircleAvatar(
                                              backgroundColor:localdata["current_scoring"][localdata["current_user"]["name"]]==1?Colors.amber:Colors.grey ,
                                            )

                                          ],
                                        ),
                                      ),
                                    ),

                                ],
                              ),
                            )
                          ],
                        );
                      }
                    ),
                  )


              ],
            ));
      }
    ),
  );
}



profileViewCard(context,item) {

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Profile'),
        content: Container(
          height: 500.0,
          width: 500.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: StatefulBuilder(
            builder: (context, state) {
              localdata["state_4"] = state;
              return Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item['name'],
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    SizedBox(height: 16),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.network(
                        item['avatar'],
                        height: 200,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      item['online'] ? 'Online' : 'Offline',
                      style: TextStyle(
                        fontSize: 18,
                        color: item['online'] ? Colors.green : Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        )
        ,
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('Close'),
          ),
        ],
      );
    },
  );

}

profileCreateOrEditCard(context,item) {

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('My Profile'),
        content: Container(
          height: 500.0,
          width: 500.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: StatefulBuilder(
            builder: (context, state) {
              localdata["state_4"] = state;
              return Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item['name'],
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Password: ${item['password']}',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black87,
                      ),
                    ),
                    SizedBox(height: 16),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.network(
                        item['avatar'],
                        height: 200,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      item['online'] ? 'Online' : 'Offline',
                      style: TextStyle(
                        fontSize: 18,
                        color: item['online'] ? Colors.green : Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
          actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('Close'),
          ),
        ],
      );
    },
  );

}

numberInputAreaCard() {

  return StatefulBuilder(
      builder: (context,state) {
        localdata["state_5"]=state;

      return Positioned(
        height: 290.0,
        width: 400.0,
        top:(MediaQuery.of(context).size.height/100*25),
        left: MediaQuery.of(context).size.width/1.85,
        child: Transform.rotate(
          angle: 0.06, // Convert 10 degrees to radians
          child: Container(
            height: 300.0,
            width: 400.0,
            child: Column(
              children: [
                Text(
                  localdata["other_user"]??"Select Challenger",
                  style: GoogleFonts.abyssinicaSil(
                    fontSize: 20.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold, // Adding bold font weight
                    letterSpacing: 2.0, // Adding letter spacing
                    shadows: [
                      Shadow(
                        blurRadius: 4,
                        color: Colors.black.withOpacity(0.25),
                        offset: Offset(2, 2),
                      ),
                    ], // Adding text shadow
                  ),
                ),
                Text(
                  "YOUR GUESS",
                  style: GoogleFonts.abyssinicaSil(
                    fontSize: 45.0,
                    color: Colors.deepPurple.withOpacity(0.75),
                    fontWeight: FontWeight.bold, // Adding bold font weight
                    letterSpacing: 2.0, // Adding letter spacing
                    shadows: [
                      Shadow(
                        blurRadius: 4,
                        color: Colors.black.withOpacity(0.25),
                        offset: Offset(2, 2),
                      ),
                    ], // Adding text shadow
                  ),
                ),
                if(localdata["other_user"]!=null)
                Expanded(
                  child: TextFormField(
                    controller: TextEditingController(text: localdata["main_number"]),
                    keyboardType: TextInputType.number, // Accepts only numbers
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly], // Allow only digits
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(

                      labelStyle: TextStyle(color: Colors.blue, fontSize: 24), // Larger label font size
                      enabledBorder: UnderlineInputBorder( // Customized bottom border
                        borderSide: BorderSide(color: Colors.blue, width: 4.0), // Larger border width
                      ),
                    ),
                    style: TextStyle(fontSize: 50), // Larger font size for entered text
                    onChanged: (v) {
                      if (v.isNotEmpty) {
                        localdata["main_number"] = v;
                      }else{
                        localdata.remove("main_number");
                      }
                    },
                  )

                ),
                Builder(
                  builder: (context) {

                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Center(child: InkWell(
                          onTap: (){
                            if(localdata["main_number"]!=null) {
                              dynamic sted = [
                                localdata["current_user"]["name"],
                                localdata["other_user"]
                              ];
                              sted.sort();

                              if (localdata["scoring"]["${sted[0]}-${sted[1]}"][localdata["current_user"]["name"]] == 0) {
                                if (localdata["challenging_progressing"]["${sted[0]}-${sted[1]}"][localdata["current_user"]["name"]] ==
                                    null) {
                                  localdata["challenging_progressing"]
                                  ["${sted[0]}-${sted[1]}"][localdata["current_user"]["name"]] =
                                  [int.parse(localdata["main_number"])];
                                } else {
                                  if (!localdata["challenging_progressing"]["${sted[0]}-${sted[1]}"][localdata["current_user"]["name"]]
                                      .contains(
                                      int.parse(localdata["main_number"]))) {
                                    localdata["challenging_progressing"]
                                    ["${sted[0]}-${sted[1]}"][localdata["current_user"]["name"]]
                                        .add(
                                        int.parse(localdata["main_number"]));
                                  } else {

                                  }
                                }

                                localdata["state_2"](() {});
                                localdata["state_1"](() {});
                                localdata["state_3"](() {});
                                final snackBar = SnackBar(

                                  elevation: 0,
                                  behavior: SnackBarBehavior.floating,
                                  backgroundColor: Colors.transparent,
                                  content: AwesomeSnackbarContent(
                                    title: 'Keep going!',
                                    message:'Submitted A guess!',
                                    contentType: ContentType.success,
                                  ),
                                );

                                ScaffoldMessenger.of(context)
                                  ..hideCurrentSnackBar()
                                  ..showSnackBar(snackBar);
                              }else{
                                final snackBar = SnackBar(

                                  elevation: 0,
                                  behavior: SnackBarBehavior.floating,
                                  backgroundColor: Colors.transparent,
                                  content: AwesomeSnackbarContent(
                                    title: 'No way!',
                                    message:'You have already Confirmed last submit!',
                                    contentType: ContentType.failure,
                                  ),
                                );

                                ScaffoldMessenger.of(context)
                                  ..hideCurrentSnackBar()
                                  ..showSnackBar(snackBar);

                              }
                            }
                          },
                            child: Container(
                            height: 65.0,width: 65.0,
                            child: CircleAvatar(child:  Center(child: Icon(Icons.play_arrow_outlined, size: 70, color: Colors.green)),))),
                        ),
                        Center(child: InkWell(
                            onTap: (){
                              if(localdata["other_user"]!=null){
                                dynamic sted=[localdata["current_user"]["name"],localdata["other_user"]];
                                sted.sort();
                                print(sted);

                                if(localdata["challenging_progressing"]["${sted[0]}-${sted[1]}"][localdata["current_user"]["name"]]!=null){

                                  localdata["scoring"]["${sted[0]}-${sted[1]}"][localdata["current_user"]["name"]]=1;

                                  localdata["state_2"]((){});
                                  localdata["state_1"]((){});
                                  localdata["state_3"]((){});

                                  final snackBar = SnackBar(

                                    elevation: 0,
                                    behavior: SnackBarBehavior.floating,
                                    backgroundColor: Colors.transparent,
                                    content: AwesomeSnackbarContent(
                                      title: 'Yep!',
                                      message:'You are ready to evaluate!',
                                      contentType: ContentType.success,
                                    ),
                                  );

                                  ScaffoldMessenger.of(context)
                                    ..hideCurrentSnackBar()
                                    ..showSnackBar(snackBar);


                                }else{
                                  final snackBar = SnackBar(

                                    elevation: 0,
                                    behavior: SnackBarBehavior.floating,
                                    backgroundColor: Colors.transparent,
                                    content: AwesomeSnackbarContent(
                                      title: 'Play!',
                                      message:'At least 1 submit!',
                                      contentType: ContentType.warning,
                                    ),
                                  );

                                  ScaffoldMessenger.of(context)
                                    ..hideCurrentSnackBar()
                                    ..showSnackBar(snackBar);


                                }
                              }else{
                                final snackBar = SnackBar(

                                  elevation: 0,
                                  behavior: SnackBarBehavior.floating,
                                  backgroundColor: Colors.transparent,
                                  content: AwesomeSnackbarContent(
                                    title: 'No No!',
                                    message:'First Select Challenger!',
                                    contentType: ContentType.warning,
                                  ),
                                );

                                ScaffoldMessenger.of(context)
                                  ..hideCurrentSnackBar()
                                  ..showSnackBar(snackBar);
                              }


                            },
                            child: Container(
                                height: 65.0,width: 65.0,
                                child: CircleAvatar(child:  Center(child: Icon(Icons.stop_circle_outlined, size: 70, color: Colors.red)),))),),
                      ],
                    );
                  }
                )
              ],
            ),
          ) // Replace YourWidget with the widget you want to rotate
        )

      );
    }
  );

}


createChallenge(other_user,context){
  Random random = Random();

  // Generate a random number between 1 and 10
  int randomNumber = random.nextInt(10000000) + 1;

  print(randomNumber);
dynamic sted=[localdata["current_user"]["name"],other_user];
sted.sort();

  if(localdata["challenging_progressing"]["${sted[0]}-${sted[1]}"]==null){

    localdata["challenging_progressing"]["${sted[0]}-${sted[1]}"]={};
    localdata["challenging_progressing"]["${sted[0]}-${sted[1]}"]["ready"]=randomNumber;

    localdata["scoring"]["${sted[0]}-${sted[1]}"]={};
    localdata["scoring"]["${sted[0]}-${sted[1]}"][localdata["current_user"]["name"]]=0;
    localdata["scoring"]["${sted[0]}-${sted[1]}"][other_user]=0;
    if(localdata["theGames"][localdata["current_user"]["name"]]==null){
      localdata["theGames"][localdata["current_user"]["name"]]=[other_user];
    }else{
      localdata["theGames"][localdata["current_user"]["name"]].add(other_user);
    }

    localdata["state_2"]((){});
    localdata["state_1"]((){});
    localdata["state_3"]((){});
    final snackBar = SnackBar(

      elevation: 0,
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.transparent,
      content: AwesomeSnackbarContent(
        title: 'Yes yes yoll!',
        message:'Random Number Generated Challenge is on! ',
        contentType: ContentType.success,
      ),
    );

    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }
}