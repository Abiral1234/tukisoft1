class loginmodel {
  bool? status;
  String? message;
  int? userId;

  loginmodel({this.status, this.message, this.userId});

  loginmodel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    userId = json['user_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    data['user_id'] = this.userId;
    return data;
  }
}
