import 'package:emplooyees_app/cubit/cubit.dart';
import 'package:emplooyees_app/cubit/states.dart';
import 'package:emplooyees_app/models/employeeModel.dart';
import 'package:emplooyees_app/mudules/widgets/build_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomrBage extends StatelessWidget {
  const HomrBage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    EmployeesInfoCubit.get(context).getAllInfo();
    return BlocConsumer <EmployeesInfoCubit,EmployeesStates>(
      listener: ( context, state)
      {},
      builder: ( context, state)
      {
        return Scaffold(
            backgroundColor: Colors.black,
            appBar: AppBar(
              backgroundColor: Colors.black,
              elevation: 20.0,
              title: Text(
                'Employees',
                style: TextStyle(
                  fontSize: 17.0,
                  color: Colors.white,
                ),
              ),
            ),
            body:ListView.separated(itemBuilder: (context,index)
            {
              return BuildItem(info:EmployeesInfoCubit.get(context).list[index]);
            },
                separatorBuilder:(context,index)=> Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Container(
                width: double.infinity,
                height: 1.0,
                color: Colors.grey[300],
              ),
            ),
                itemCount: EmployeesInfoCubit.get(context).list.length)
        );
      },
    );
  }
  // Widget buildItem( {required InfoModel info})=>Column(
  //   children:
  //   [
  //     Padding(
  //       padding: const EdgeInsets.only(top: 35.0,left: 10.0,right: 10.0),
  //       child: Container
  //         (
  //
  //         height: 135.0,
  //         decoration:
  //         BoxDecoration(
  //           color: Color(0xf3f4CA1DA),
  //           borderRadius:BorderRadius.circular(20.0),),
  //         child: Padding(
  //           padding: const EdgeInsets.only(top: 8.0,left: 8.0),
  //           child: Column(
  //             children: [
  //               Row(
  //                 children: [
  //                   Icon(Icons.person,color: Colors.white,),
  //                   SizedBox(width: 5.0,),
  //                   Text(
  //                     info.name.toString(),
  //                     style: TextStyle(color: Colors.white,fontSize: 17.0),),
  //                 ],
  //               ),
  //               SizedBox(height: 7.0,),
  //               Row(
  //                 children: [
  //                   Icon(Icons.perm_identity,color: Colors.white,),
  //                   SizedBox(width: 5.0,),
  //                   Text(
  //                     info.username.toString(),
  //                     style: TextStyle(color: Colors.white,fontSize: 17.0),),
  //                 ],
  //               ),
  //               SizedBox(height: 7.0,),
  //               Row(
  //                 children: [
  //                   Icon(Icons.email,color: Colors.white,),
  //                   SizedBox(width: 5.0,),
  //                   Text(
  //                     info.email.toString(),
  //                     style: TextStyle(color: Colors.white,fontSize: 17.0),),
  //                 ],
  //               ),
  //               SizedBox(height: 7.0,),
  //               Row(
  //                 children: [
  //                   Icon(Icons.phone,color: Colors.white,),
  //                   SizedBox(width: 5.0,),
  //                   Text(
  //                     info.phone.toString(),
  //                     style: TextStyle(color: Colors.white,fontSize: 17.0),),
  //                 ],
  //               ),
  //             ],
  //           ),
  //         ),
  //
  //
  //       ),
  //     ),
  //     Padding(
  //       padding: const EdgeInsets.only(top: 20.0,left: 10.0,right: 10.0),
  //       child: Container
  //         (
  //
  //         height: 135.0,
  //         decoration:
  //         BoxDecoration(
  //           color: Color(0xff4CA1DA),
  //           borderRadius:BorderRadius.circular(20.0),),
  //         child: Padding(
  //           padding: const EdgeInsets.only(top: 8.0,left: 8.0),
  //           child: Column(
  //             children: [
  //               Row(
  //                 children: [
  //                   Text('street:',style: TextStyle(color: Colors.white,fontSize: 17.0),),
  //                   SizedBox(width: 5.0,),
  //                   Text(
  //                     info.address!.street.toString(),
  //                     style: TextStyle(color: Colors.white,fontSize: 17.0),),
  //                 ],
  //               ),
  //               SizedBox(height: 7.0,),
  //               Row(
  //                 children: [
  //                   Text('suite:',style: TextStyle(color: Colors.white,fontSize: 17.0),),
  //                   SizedBox(width: 5.0,),
  //                   Text(
  //                     info.address!.suite.toString(),
  //                     style: TextStyle(color: Colors.white,fontSize: 17.0),),
  //                 ],
  //               ),
  //
  //               SizedBox(height: 7.0,),
  //               Row(
  //                 children: [
  //                   Text('city:',style: TextStyle(color: Colors.white,fontSize: 17.0),),
  //                   SizedBox(width: 5.0,),
  //                   Text(
  //                     info.address!.city.toString(),
  //                     style: TextStyle(color: Colors.white,fontSize: 17.0),),
  //                 ],
  //               ),
  //               SizedBox(height: 7.0,),
  //               Row(
  //                 children: [
  //                   Text('company name:',style: TextStyle(color: Colors.white,fontSize: 17.0),),
  //                   SizedBox(width: 5.0,),
  //                   Text(
  //                     info.company!.name.toString(),
  //                     style: TextStyle(color: Colors.white,fontSize: 17.0),),
  //                 ],
  //               ),
  //             ],
  //           ),
  //         ),
  //
  //
  //       ),
  //     ),
  //
  //   ],
  // );
}
