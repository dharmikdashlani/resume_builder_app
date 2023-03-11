import 'dart:io';

class Globals {
  //contact page
  static String? name;
  static String? email;
  static int? contact;
  static String? address;

  //photo
  static File? img;

  //carrier
  static String? objective;
  static String? designation;

  //personal details
  // ignore: prefer_typing_uninitialized_variables
  static var date;

  static String single = 'single';
  static String married = 'married';
  static String? maritalStatus;

  static bool english = false;
  static bool hindi = false;
  static bool gujarati = false;
  static List languages = [];

  static String? country;

  //eduction
  static String? course;
  static String? school;
  static int? per;
  static String? yearOfPass;

  //experience
  static String? companyName;
  static String? college;
  static String? roles;
  static String previously = "Previously Employed";
  static String currently = "Currently Employed";
  static String employedStatus = "Previously Employed";

  // ignore: non_constant_identifier_names, prefer_typing_uninitialized_variables
  static var date_Join;

  // ignore: non_constant_identifier_names, prefer_typing_uninitialized_variables
  static var date_Exit;

  //skills
  static List<dynamic> skills = [];

  //hobbies
  static List<dynamic> hobbies = [];

  //project
  static String? projectTitle;
  static bool cProgram = false;
  static bool c = false;
  static bool flutter = false;
  static String? rolesProject;
  static String? technologies;
  static String? projectDescripation;

  //achievements
  static List achievements = [];

  //references

  static String? referencesName;
  static String? referencedDesignation;
  static String? organization;

  //declaration
  static bool isDeclaration = false;

  // static double bl = 0;
  static String? declarationDescripation;
  static String? declarationDate;
  static String? place;
}
