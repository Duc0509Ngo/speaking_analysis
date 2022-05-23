// ignore_for_file: public_member_api_docs, sort_constructors_first, non_constant_identifier_names, prefer_const_constructors
class TopicsQuy1{
  final int occurrence_study_work;

  final int occurrence_sports;

  final int occurrence_arts;

  final int occurrence_lost_items;

  final int occurrence_home;

  final int occurrence_time_management;

  final int occurrence_take_photos;

  final int occurrence_daily_routines;

  final int occurrence_hometown;

  final int occurrence_evening_activities;

  final int occurrence_dreams;

  final int occurrence_websites;

  final int occurrence_street_markets;

  final int occurrence_emails;

  final int occurrence_spending_time;

  final int occurrence_cars;

  final int occurrence_cinemas;

  final int occurrence_colors;

  final int occurrence_headphones;

  final int occurrence_mirrors;

  final int occurrence_Advertisement;

  final int occurrence_concentration;

  final int occurrence_apps;

  final int occurrence_science;

  final int occurrence_tv_program;

  final int occurrence_weekend;

  final int occurrence_handwriting;

  final int occurrence_animal_pets;

  final int occurrence_shoes;

  final int occurrence_shopping;

  final int occurrence_history;

  final int occurrence_got_lost;

  final int occurrence_public_parks;

  final int occurrence_cartoon;

  final int occurrence_leisure_activities;

  const TopicsQuy1({
    required this.occurrence_study_work,
    required this.occurrence_sports,
    required this.occurrence_arts,
    required this.occurrence_lost_items,
    required this.occurrence_home,
    required this.occurrence_time_management,
    required this.occurrence_take_photos,
    required this.occurrence_daily_routines,
    required this.occurrence_hometown,
    required this.occurrence_evening_activities,
    required this.occurrence_dreams,
    required this.occurrence_websites,
    required this.occurrence_street_markets,
    required this.occurrence_emails,
    required this.occurrence_spending_time,
    required this.occurrence_cars,
    required this.occurrence_cinemas,
    required this.occurrence_colors,
    required this.occurrence_headphones,
    required this.occurrence_mirrors,
    required this.occurrence_Advertisement,
    required this.occurrence_concentration,
    required this.occurrence_apps,
    required this.occurrence_science,
    required this.occurrence_tv_program,
    required this.occurrence_weekend,
    required this.occurrence_handwriting,
    required this.occurrence_animal_pets,
    required this.occurrence_shoes,
    required this.occurrence_shopping,
    required this.occurrence_history,
    required this.occurrence_got_lost,
    required this.occurrence_public_parks,
    required this.occurrence_cartoon,
    required this.occurrence_leisure_activities,
  });

  factory TopicsQuy1.fromJson(Map<String, dynamic> json) {
    return TopicsQuy1(
        occurrence_Advertisement: json['Advertisement'],
        occurrence_animal_pets: json['Animal_Pets'],
        occurrence_apps: json['Apps'],
        occurrence_arts: json['Arts'],
        occurrence_cars: json['Cars'],
        occurrence_cartoon: json['Cartoon'],
        occurrence_cinemas: json['Cinemas'],
        occurrence_colors: json['Colors'],
        occurrence_concentration: json['Concentration'],
        occurrence_daily_routines: json['Daily_routines'],
        occurrence_dreams: json['Dreams'],
        occurrence_emails: json['Emails'],
        occurrence_evening_activities: json['Evening_activities'],
        occurrence_got_lost: json['Got_lost'],
        occurrence_handwriting: json['Handwriting'],
        occurrence_headphones: json['Headphones'],
        occurrence_history: json['History'],
        occurrence_home: json['Home'],
        occurrence_hometown: json['Hometown'],
        occurrence_leisure_activities: json['Leisure_activities'],
        occurrence_lost_items: json['Lost_items'],
        occurrence_mirrors: json['Mirrors'],
        occurrence_science: json['Science'],
        occurrence_public_parks: json['Public_parks'],
        occurrence_shoes: json['Shoes'],
        occurrence_shopping: json['Shopping'],
        occurrence_spending_time: json['Spending_time_with_others'],
        occurrence_sports: json['Sports'],
        occurrence_street_markets: json['Street_markets'],
        occurrence_study_work: json['Study_work'],
        occurrence_take_photos: json['Taking_photos'],
        occurrence_time_management: json['Time_management'],
        occurrence_tv_program: json['TV_program'],
        occurrence_websites: json['Websites'],
        occurrence_weekend: json['Weekend']);
  }
}
