import 'dart:async';
import 'dart:convert';

//----------------------------------------------------------------
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:pick_edit_datatable/tabletap/tabletap1/modelintable.dart';
import 'datasequnce_event.dart';
import 'datatest.dart';
//----------------------------------------------------------------

//------------------------------------------------------- First

class FetchDataTable1Bloc extends Bloc<DataSequncePage1, List<MainStrucTable>> {
  FetchDataTable1Bloc() : super([]);

  @override
  Stream<List<MainStrucTable>> mapEventToState(DataSequncePage1 event) async* {
    if (event == DataSequncePage1.select) {
      yield* selectData_fn(state);
    } else if (event == DataSequncePage1.update) {
      yield* updateData_fn(state);
    } else if (event == DataSequncePage1.delete) {
      yield* deleteData_fn(state);
    } else if (event == DataSequncePage1.insert) {
      yield* InsertData_fn(state);
    }
  }
}

Stream<List<MainStrucTable>> selectData_fn(List<MainStrucTable> state) async* {
  print("SELECT FUNCTION BLOC");
  // final response = await http.post(
  //     Uri.parse("http://localhost:9000/table1Select"),
  //     body: {"NewData": EditDataTable1});

  // // print(response);
  // var databuff = [];
  // if (response.statusCode == 200) {
  //   databuff = jsonDecode(response.body);
  // } else {
  //   print("where is my server");
  // }
  // state = databuff;
  state = rListDataTableTap1;
  yield state;
}

Stream<List<MainStrucTable>> updateData_fn(List<MainStrucTable> state) async* {
  print("UPDATE FUNCTION BLOC");
  // final response = await http.post(
  //     Uri.parse("http://localhost:9000/table1Update"),
  //     body: {"NewData": EditDataTable1});

  // // print(response);
  // var databuff = [];
  // if (response.statusCode == 200) {
  //   databuff = jsonDecode(response.body);
  // } else {
  //   print("where is my server");
  // }
  // state = databuff;
  state = [];
  yield state;
}

Stream<List<MainStrucTable>> deleteData_fn(List<MainStrucTable> state) async* {
  print("DELETE FUNCTION BLOC");
  // final response = await http.post(
  //     Uri.parse("http://localhost:9000/table1Delete"),
  //     body: {"NewData": EditDataTable1});

  // // print(response);
  // var databuff = [];
  // if (response.statusCode == 200) {
  //   databuff = jsonDecode(response.body);
  // } else {
  //   print("where is my server");
  // }
  // state = databuff;
  state = [];
  yield state;
}

Stream<List<MainStrucTable>> InsertData_fn(List<MainStrucTable> state) async* {
  print("INSERT FUNCTION BLOC");
  // final response = await http.post(
  //     Uri.parse("http://localhost:9000/table1Insert"),
  //     body: {"NewData": EditDataTable1});

  // // print(response);
  // var databuff = [];
  // if (response.statusCode == 200) {
  //   databuff = jsonDecode(response.body);
  // } else {
  //   print("where is my server");
  // }
  // state = databuff;
  state = [];
  yield state;
}
