import 'package:emplooyees_app/models/employeeModel.dart';
import 'package:flutter/material.dart';

class BuildItem extends StatelessWidget {
   BuildItem({Key? key, required this.info, }) : super(key: key);
 final InfoModel info;
  @override
  Widget build(BuildContext context) {
    return Column(
      children:
      [
        Padding(
          padding: const EdgeInsets.only(top: 35.0,left: 10.0,right: 10.0),
          child: Container
            (

            height: 135.0,
            decoration:
            BoxDecoration(
              color: Color(0xf3f4CA1DA),
              borderRadius:BorderRadius.circular(20.0),),
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0,left: 8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.person,color: Colors.white,),
                      SizedBox(width: 5.0,),
                      Text(
                        info.name.toString(),
                        style: TextStyle(color: Colors.white,fontSize: 17.0),),
                    ],
                  ),
                  SizedBox(height: 7.0,),
                  Row(
                    children: [
                      Icon(Icons.perm_identity,color: Colors.white,),
                      SizedBox(width: 5.0,),
                      Text(
                        info.username.toString(),
                        style: TextStyle(color: Colors.white,fontSize: 17.0),),
                    ],
                  ),
                  SizedBox(height: 7.0,),
                  Row(
                    children: [
                      Icon(Icons.email,color: Colors.white,),
                      SizedBox(width: 5.0,),
                      Text(
                        info.email.toString(),
                        style: TextStyle(color: Colors.white,fontSize: 17.0),),
                    ],
                  ),
                  SizedBox(height: 7.0,),
                  Row(
                    children: [
                      Icon(Icons.phone,color: Colors.white,),
                      SizedBox(width: 5.0,),
                      Text(
                        info.phone.toString(),
                        style: TextStyle(color: Colors.white,fontSize: 17.0),),
                    ],
                  ),
                ],
              ),
            ),


          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0,left: 10.0,right: 10.0),
          child: Container
            (

            height: 135.0,
            decoration:
            BoxDecoration(
              color: Color(0xff4CA1DA),
              borderRadius:BorderRadius.circular(20.0),),
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0,left: 8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text('street:',style: TextStyle(color: Colors.white,fontSize: 17.0),),
                      SizedBox(width: 5.0,),
                      Text(
                        info.address!.street.toString(),
                        style: TextStyle(color: Colors.white,fontSize: 17.0),),
                    ],
                  ),
                  SizedBox(height: 7.0,),
                  Row(
                    children: [
                      Text('suite:',style: TextStyle(color: Colors.white,fontSize: 17.0),),
                      SizedBox(width: 5.0,),
                      Text(
                        info.address!.suite.toString(),
                        style: TextStyle(color: Colors.white,fontSize: 17.0),),
                    ],
                  ),

                  SizedBox(height: 7.0,),
                  Row(
                    children: [
                      Text('city:',style: TextStyle(color: Colors.white,fontSize: 17.0),),
                      SizedBox(width: 5.0,),
                      Text(
                        info.address!.city.toString(),
                        style: TextStyle(color: Colors.white,fontSize: 17.0),),
                    ],
                  ),
                  SizedBox(height: 7.0,),
                  Row(
                    children: [
                      Text('company name:',style: TextStyle(color: Colors.white,fontSize: 17.0),),
                      SizedBox(width: 5.0,),
                      Text(
                        info.company!.name.toString(),
                        style: TextStyle(color: Colors.white,fontSize: 17.0),),
                    ],
                  ),
                ],
              ),
            ),


          ),
        ),

      ],
    );
  }
}
