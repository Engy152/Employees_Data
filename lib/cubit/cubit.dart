
import 'dart:convert';
import 'package:emplooyees_app/Api/http.dart ';
import 'package:emplooyees_app/cubit/states.dart';
import 'package:emplooyees_app/models/employeeModel.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

class EmployeesInfoCubit extends Cubit<EmployeesStates>
{
  EmployeesInfoCubit():super(AppInitialStates());
  static EmployeesInfoCubit get(context) => BlocProvider.of(context);
  List<InfoModel>list=[];
 void getAllInfo() async
  {
      Api().get(url: 'https://jsonplaceholder.typicode.com/users').then((value)
      {
        final data = jsonDecode(value.body);
        if(value.statusCode == 200)
        {
          print('mmmmmmmmmmmmmmmmm');
          for(int i = 0 ; i< data.length;i++)
            {
              print('kkkkkkkkkkkkkkk');
             list.add(InfoModel.fromJson(data[i]));
            }
        print(list);
          emit(AppScseesStates());
        }else
        {
          print('errrrrrrrrror');
        }
      }).catchError((e){
        print(e.toString());
        emit(AppErrorStates());
      });
    }
  }