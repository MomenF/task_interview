import 'package:task_interview/Logic/model/model.dart';
import 'package:task_interview/Services/api_services.dart';


class QuestionRepository {
   ApiServices apiServices = ApiServices();

  QuestionRepository({ApiServices? apiServices});

  Future<List<ModelData>> getAllDataRepository() async {
    print('EnterRepo');
    var dataServer = await apiServices.getDataFromServer() ;
    // print("data : ${dataServer}");
    return dataServer.map((data) => ModelData.fromJson(data)).toList();
  }

}
