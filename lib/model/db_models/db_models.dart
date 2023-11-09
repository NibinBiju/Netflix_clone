class ProfileModel {
  String name;
  String profileImage;

  ProfileModel({required this.name, required this.profileImage});

  String get _name => name;
  String get _profileImage => profileImage;
}
