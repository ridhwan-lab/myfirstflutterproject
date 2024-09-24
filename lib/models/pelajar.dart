class Pelajar {
  int? id;
  int? kMudaPendaftarId;
  String? name;
  int? age;
  String? gender;
  String? schoolname;
  int? statusHadir;
  Penjaga? penjaga;

 Pelajar(
      {this.id,
      this.kMudaPendaftarId,
      this.name,
      this.age,
      this.gender,
      this.schoolname,
      this.statusHadir,
      this.penjaga});

  Pelajar.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    kMudaPendaftarId = json["k_muda_pendaftar_id"];
    name = json["name"];
    age = json["age"];
    gender = json["gender"];
    schoolname = json["schoolname"];
    statusHadir = json["status_hadir"];
    penjaga =
        json["penjaga"] == null ? null : Penjaga.fromJson(json["penjaga"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["k_muda_pendaftar_id"] = kMudaPendaftarId;
    _data["name"] = name;
    _data["age"] = age;
    _data["gender"] = gender;
    _data["schoolname"] = schoolname;
    _data["status_hadir"] = statusHadir;
    if (penjaga != null) {
      _data["penjaga"] = penjaga?.toJson();
    }
    return _data;
  }

  Pelajar copyWith({
    int? id,
    int? kMudaPendaftarId,
    String? name,
    int? age,
    String? gender,
    String? schoolname,
    int? statusHadir,
    Penjaga? penjaga,
  }) =>
      Pelajar(
        id: id ?? this.id,
        kMudaPendaftarId: kMudaPendaftarId ?? this.kMudaPendaftarId,
        name: name ?? this.name,
        age: age ?? this.age,
        gender: gender ?? this.gender,
        schoolname: schoolname ?? this.schoolname,
        statusHadir: statusHadir ?? this.statusHadir,
        penjaga: penjaga ?? this.penjaga,
      );
}

class Penjaga {
  int? id;
  String? parentName;
  String? parentingType;
  String? nohp1;
  String? address;

  Penjaga(
      {this.id, this.parentName, this.parentingType, this.nohp1, this.address});

  Penjaga.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    parentName = json["parentName"];
    parentingType = json["parentingType"];
    nohp1 = json["nohp_1"];
    address = json["address"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["parentName"] = parentName;
    _data["parentingType"] = parentingType;
    _data["nohp_1"] = nohp1;
    _data["address"] = address;
    return _data;
  }

  Penjaga copyWith({
    int? id,
    String? parentName,
    String? parentingType,
    String? nohp1,
    String? address,
  }) =>
      Penjaga(
        id: id ?? this.id,
        parentName: parentName ?? this.parentName,
        parentingType: parentingType ?? this.parentingType,
        nohp1: nohp1 ?? this.nohp1,
        address: address ?? this.address,
      );
}