// ignore_for_file: public_member_api_docs, sort_constructors_first, non_constant_identifier_names, prefer_const_constructors
class TopicsQuy2 {
  final int occurrence_study_work;
  final int occurrence_afternoon;
  final int occurrence_sports;

  final int occurrence_arts;

  final int occurrence_lost_items;
  final int occurrence_book;
  final int occurrence_home;
  final int occurrence_collecting;
  final int occurrence_time_management;

  final int occurrence_take_photos;

  final int occurrence_daily_routines;

  final int occurrence_hometown;

  final int occurrence_evening_activities;
  final int occurrence_phones;
  final int occurrence_talent;
  final int occurrence_stranger;

  final int occurrence_keep_things;

  final int occurrence_dreams;

  final int occurrence_websites;

  final int occurrence_street_markets;

  final int occurrence_health_fitness;

  final int occurrence_museum;

  final int occurrence_email;

  final int occurrence_stay_up_late;

  final int occurrence_tidy;

  final int occurrence_cars;

  final int occurrence_cinema;

  final int occurrence_history;

  final int occurrence_colors;

  final int occurrence_mirrors;

 

  const TopicsQuy2(
      {required this.occurrence_study_work,
      required this.occurrence_afternoon,
      required this.occurrence_sports,
      required this.occurrence_arts,
      required this.occurrence_lost_items,
      required this.occurrence_book,
      required this.occurrence_home,
      required this.occurrence_collecting,
      required this.occurrence_time_management,
      required this.occurrence_take_photos,
      required this.occurrence_daily_routines,
      required this.occurrence_hometown,
      required this.occurrence_evening_activities,
      required this.occurrence_phones,
      required this.occurrence_talent,
      required this.occurrence_stranger,
      required this.occurrence_keep_things,
      required this.occurrence_dreams,
      required this.occurrence_websites,
      required this.occurrence_street_markets,
      required this.occurrence_health_fitness,
      required this.occurrence_museum,
      required this.occurrence_email,
      required this.occurrence_stay_up_late,
      required this.occurrence_tidy,
      required this.occurrence_cars,
      required this.occurrence_cinema,
      required this.occurrence_history,
      required this.occurrence_colors,
      required this.occurrence_mirrors,
  });

  factory TopicsQuy2.fromJson(Map<String, dynamic> json) {
    return TopicsQuy2(
      occurrence_afternoon: json['Afternoon'],
      occurrence_arts: json['Arts'],
      occurrence_book: json['Book'],
      occurrence_cars: json['Cars'],
      occurrence_cinema: json['Cinema'],
      occurrence_collecting: json['Collecting'],
      occurrence_colors: json['Colors'],
      occurrence_daily_routines: json['Daily_routines'],
      occurrence_dreams: json['Dreams'],
      occurrence_email: json['Email'],
      occurrence_evening_activities: json['Evening_activities'],
      occurrence_health_fitness: json['Health_fitness'],
      occurrence_history: json['History'],
      occurrence_home: json['Home'],
      occurrence_hometown: json['Hometown'],
      occurrence_keep_things: json['Keep_things'],
    
      occurrence_lost_items: json['Lost_items'],
      occurrence_mirrors: json['Mirrors'],
      occurrence_museum: json['Museum'],
      occurrence_phones: json['Phones'],
      occurrence_sports: json['Sports'],
      occurrence_stay_up_late: json['Stay_up_late'],
      occurrence_stranger: json['Stranger'],
      occurrence_street_markets: json['Street_markets'],
      occurrence_study_work: json['Study_work'],
      occurrence_take_photos: json['Taking_photos'],
      occurrence_talent: json['Talent'],
      occurrence_tidy: json['Tidy'],
      occurrence_time_management: json['Time_management'],
      occurrence_websites: json['Websites'],
    );
  }
}
