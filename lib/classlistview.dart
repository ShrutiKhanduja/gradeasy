class ClassListData {
  ClassListData({
    this.imagePath = '',
    this.titleTxt = '',
    this.startColor = '',
    this.endColor = '',
    this.meals,
    this.kacl = '',
  });

  String imagePath;
  String titleTxt;
  String startColor;
  String endColor;
  List<String>? meals;
  String  kacl;

  static List<ClassListData> tabIconsList = <ClassListData>[
    ClassListData(
      imagePath: 'assets/indu.png',
      titleTxt: 'ADBMS(Lecture)',
      kacl: 'AS-27',
      meals: <String>['8:10-9:00','Unit -4','PostgreSql'],
      // startColor: '#6F72CA',
      // endColor: '#1E1466',
      // startColor:'#0a95b4',
      // startColor: '#FA7D82',
      // endColor:'#041630'
      // endColor: '#FFB295',
      startColor: '#738AE6',
      endColor: '#5C5EDD',
    ),
    ClassListData(
      imagePath: 'assets/harsh.png',
      titleTxt: 'Aptitude',
      kacl: 'AS-27',
      meals: <String>['9:00-9:50','Question Practice','Doubts Clarification'],
      // startColor:'#0a95b4',
      startColor: '#738AE6',
      endColor: '#5C5EDD',
      //   endColor:'#041630'
      // startColor: '#6F72CA',
      // endColor: '#1E1466',
    ),
    ClassListData(
      imagePath: 'assets/antara.png',
      titleTxt: 'Employability',
      kacl: 'AS-27',
      meals: <String>['9:50-10:40','Group Discussion'],
      startColor: '#738AE6',
      endColor: '#5C5EDD',
      // startColor: '#6F72CA',
      // endColor: '#1E1466',
      // startColor:'#0a95b4',
      // startColor: '#FE95B6',
      // endColor: '#FF5287',
      //   endColor:'#041630'
    ),
    ClassListData(
      imagePath: 'assets/shweta.png',
      titleTxt: 'IOT(Lecture)',
      kacl: 'As-27',
      meals: <String>['10:40,11:30','Unit-5'],
      startColor: '#738AE6',
      endColor: '#5C5EDD',
      // startColor:'#0a95b4',
      //  startColor: '#6F72CA',
      //  endColor: '#1E1466',
      //   endColor:'#041630'
    ),
    ClassListData(
      imagePath: 'assets/suresh.png',
      titleTxt: 'ML(Lecture)',
      kacl: 'AS-27',
      meals: <String>['12:20-1:10','Unit -4'],
      startColor: '#738AE6',
      endColor: '#5C5EDD',
      // startColor: '#6F72CA',
      // endColor: '#1E1466',
      // startColor:'#0a95b4',
      // startColor: '#FA7D82',
      // endColor: '#FFB295',
      //   endColor:'#041630'
    ),
    ClassListData(
      imagePath: 'assets/shweta.png',
      titleTxt: 'IOT(Tut-B1)',
      kacl: 'AF-15',
      meals: <String>['1:10-2:00','Question Practice','Doubts Clarification'],
      startColor: '#738AE6',
      endColor: '#5C5EDD',
      // startColor: '#6F72CA',
      // endColor: '#1E1466',
      // startColor:'#0a95b4',
      // startColor: '#738AE6',
      // endColor: '#5C5EDD',
      //   endColor:'#041630'
    ),
  ];
}