import 'dart:convert';
import 'package:http/http.dart';
import 'constant.dart';







getAge() async {
  var response =  await get(
      Uri.parse('https://api.agify.io/?name=${name.text}'),
      headers: {
        "Content-Type": "application/json; charset=utf-8",
      },
      );

  var resage = jsonDecode(response.body);
  age = resage['age'];
}

getGender() async {
  var response =  await get(
    Uri.parse('https://api.genderize.io/?name=${name.text}'),
    headers: {
      "Content-Type": "application/json; charset=utf-8",
    },
  );

  var resgender = jsonDecode(response.body);
  gender = resgender['gender'];
}

getNationalize() async {
  var response =  await get(
    Uri.parse('https://api.nationalize.io/?name=${name.text}'),
    headers: {
      "Content-Type": "application/json; charset=utf-8",
    },
  );

  var resnationalize = jsonDecode(response.body);
  nationalize =  resnationalize['country'][0]['country_id'];
}

