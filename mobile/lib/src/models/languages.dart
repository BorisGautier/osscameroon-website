class Languages {
  int? code;
  String? status;
  List<String>? result;

  Languages({this.code, this.status, this.result});

  Languages.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    status = json['status'];
    result = json['result'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['code'] = code;
    data['status'] = status;
    data['result'] = result;
    return data;
  }
}
