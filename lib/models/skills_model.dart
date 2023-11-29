class SkillFront {
  final int id;
  final String imageFileName;

  const SkillFront({
    required this.id,
    required this.imageFileName,
  });
}

const List<SkillFront> skills_front = [
  SkillFront(
    id: 1,
    imageFileName: 'assets/frameworks/flutt.png',
  ),
  SkillFront(
    id: 2,
    imageFileName: 'assets/frameworks/angular.png',
  ),
  SkillFront(
    id: 3,
    imageFileName: 'assets/frameworks/react.png',
  ),
  SkillFront(
    id: 4,
    imageFileName: 'assets/frameworks/next.png',
  ),
];

class SkillBack {
  final int id;
  final String imageFileName;

  const SkillBack({
    required this.id,
    required this.imageFileName,
  });
}
const List<SkillBack> skills_back= [
  SkillBack(
    id: 1,
    imageFileName: 'assets/frameworks/django.png',
  ),
  SkillBack(
    id: 2,
    imageFileName: 'assets/frameworks/Laravel.png',
  ),
  SkillBack(
    id: 3,
    imageFileName: 'assets/frameworks/javascript.png',
  ),
  SkillBack(
    id: 4,
    imageFileName: 'assets/frameworks/nodejs.png',
  ),
  SkillBack(
    id: 5,
    imageFileName: 'assets/frameworks/c.png',
  ),
];

class SkillData {
  final int id;
  final String imageFileName;

  const SkillData({
    required this.id,
    required this.imageFileName,
  });
}
const List<SkillData> skills_data= [
  SkillData(
    id: 1,
    imageFileName: 'assets/frameworks/mysql.png',
  ),
  SkillData(
    id: 2,
    imageFileName: 'assets/frameworks/sql.png',
  ),
  SkillData(
    id: 3,
    imageFileName: 'assets/frameworks/mariadb.png',
  ),
  SkillData(
    id: 4,
    imageFileName: 'assets/frameworks/mongo.png',
  ),
];

