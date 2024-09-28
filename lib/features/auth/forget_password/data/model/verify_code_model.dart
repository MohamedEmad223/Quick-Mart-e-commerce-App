class VerfiyResetCodeModel {
  String? status;

  VerfiyResetCodeModel({this.status});

  VerfiyResetCodeModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    return data;
  }
}
