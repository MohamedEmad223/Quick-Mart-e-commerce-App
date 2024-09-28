
class ForgetPasswordModel {
  String? statusMsg;
  String? message;

  ForgetPasswordModel({this.statusMsg, this.message});

  ForgetPasswordModel.fromJson(Map<String, dynamic> json) {
    statusMsg = json['statusMsg'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['statusMsg'] = statusMsg;
    data['message'] = message;
    return data;
  }
}
