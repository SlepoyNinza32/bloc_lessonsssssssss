import 'package:hive_flutter/adapters.dart';
part 'net_model.g.dart';

@HiveType(typeId: 0)
class NetModel {
  NetModel({
      Location? location, 
      Current? current, 
      Forecast? forecast,}){
    _location = location;
    _current = current;
    _forecast = forecast;
}

  NetModel.fromJson(dynamic json) {
    _location = json['location'] != null ? Location.fromJson(json['location']) : null;
    _current = json['current'] != null ? Current.fromJson(json['current']) : null;
    _forecast = json['forecast'] != null ? Forecast.fromJson(json['forecast']) : null;
  }
  @HiveField(0)
  Location? _location;
  @HiveField(1)
  Current? _current;
  @HiveField(2)
  Forecast? _forecast;

  Location? get location => _location;
  Current? get current => _current;
  Forecast? get forecast => _forecast;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_location != null) {
      map['location'] = _location?.toJson();
    }
    if (_current != null) {
      map['current'] = _current?.toJson();
    }
    if (_forecast != null) {
      map['forecast'] = _forecast?.toJson();
    }
    return map;
  }

}

@HiveType(typeId: 1)
class Forecast {
  Forecast({
      List<Forecastday>? forecastday,}){
    _forecastday = forecastday;
}

  Forecast.fromJson(dynamic json) {
    if (json['forecastday'] != null) {
      _forecastday = [];
      json['forecastday'].forEach((v) {
        _forecastday?.add(Forecastday.fromJson(v));
      });
    }
  }
  @HiveField(0)
  List<Forecastday>? _forecastday;

  List<Forecastday>? get forecastday => _forecastday;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_forecastday != null) {
      map['forecastday'] = _forecastday?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

@HiveType(typeId: 2)
class Forecastday {
  Forecastday({
      String? date, 
      int? dateEpoch, 
      Day? day, 
      Astro? astro, 
      List<Hour>? hour,}){
    _date = date;
    _dateEpoch = dateEpoch;
    _day = day;
    _astro = astro;
    _hour = hour;
}

  Forecastday.fromJson(dynamic json) {
    _date = json['date'];
    _dateEpoch = json['date_epoch'];
    _day = json['day'] != null ? Day.fromJson(json['day']) : null;
    _astro = json['astro'] != null ? Astro.fromJson(json['astro']) : null;
    if (json['hour'] != null) {
      _hour = [];
      json['hour'].forEach((v) {
        _hour?.add(Hour.fromJson(v));
      });
    }
  }
  @HiveField(0)
  String? _date;
  @HiveField(1)
  int? _dateEpoch;
  @HiveField(2)
  Day? _day;
  @HiveField(3)
  Astro? _astro;
  @HiveField(4)
  List<Hour>? _hour;

  String? get date => _date;
  int? get dateEpoch => _dateEpoch;
  Day? get day => _day;
  Astro? get astro => _astro;
  List<Hour>? get hour => _hour;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['date'] = _date;
    map['date_epoch'] = _dateEpoch;
    if (_day != null) {
      map['day'] = _day?.toJson();
    }
    if (_astro != null) {
      map['astro'] = _astro?.toJson();
    }
    if (_hour != null) {
      map['hour'] = _hour?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

@HiveType(typeId: 3)
class Hour {
  Hour({
      int? timeEpoch, 
      String? time, 
      double? tempC, 
      double? tempF, 
      int? isDay, 
      Condition? condition, 
      double? windMph, 
      double? windKph, 
      int? windDegree, 
      String? windDir, 
      double? pressureMb, 
      double? pressureIn, 
      double? precipMm, 
      double? precipIn, 
      int? humidity, 
      int? cloud, 
      double? feelslikeC, 
      double? feelslikeF, 
      double? windchillC, 
      double? windchillF, 
      double? heatindexC, 
      double? heatindexF, 
      double? dewpointC, 
      double? dewpointF, 
      int? willItRain, 
      int? chanceOfRain, 
      int? willItSnow, 
      int? chanceOfSnow, 
      double? visKm, 
      double? visMiles, 
      double? gustMph, 
      double? gustKph, 
      double? uv,}){
    _timeEpoch = timeEpoch;
    _time = time;
    _tempC = tempC;
    _tempF = tempF;
    _isDay = isDay;
    _condition = condition;
    _windMph = windMph;
    _windKph = windKph;
    _windDegree = windDegree;
    _windDir = windDir;
    _pressureMb = pressureMb;
    _pressureIn = pressureIn;
    _precipMm = precipMm;
    _precipIn = precipIn;
    _humidity = humidity;
    _cloud = cloud;
    _feelslikeC = feelslikeC;
    _feelslikeF = feelslikeF;
    _windchillC = windchillC;
    _windchillF = windchillF;
    _heatindexC = heatindexC;
    _heatindexF = heatindexF;
    _dewpointC = dewpointC;
    _dewpointF = dewpointF;
    _willItRain = willItRain;
    _chanceOfRain = chanceOfRain;
    _willItSnow = willItSnow;
    _chanceOfSnow = chanceOfSnow;
    _visKm = visKm;
    _visMiles = visMiles;
    _gustMph = gustMph;
    _gustKph = gustKph;
    _uv = uv;
}

  Hour.fromJson(dynamic json) {
    _timeEpoch = json['time_epoch'];
    _time = json['time'];
    _tempC = json['temp_c'];
    _tempF = json['temp_f'];
    _isDay = json['is_day'];
    _condition = json['condition'] != null ? Condition.fromJson(json['condition']) : null;
    _windMph = json['wind_mph'];
    _windKph = json['wind_kph'];
    _windDegree = json['wind_degree'];
    _windDir = json['wind_dir'];
    _pressureMb = json['pressure_mb'];
    _pressureIn = json['pressure_in'];
    _precipMm = json['precip_mm'];
    _precipIn = json['precip_in'];
    _humidity = json['humidity'];
    _cloud = json['cloud'];
    _feelslikeC = json['feelslike_c'];
    _feelslikeF = json['feelslike_f'];
    _windchillC = json['windchill_c'];
    _windchillF = json['windchill_f'];
    _heatindexC = json['heatindex_c'];
    _heatindexF = json['heatindex_f'];
    _dewpointC = json['dewpoint_c'];
    _dewpointF = json['dewpoint_f'];
    _willItRain = json['will_it_rain'];
    _chanceOfRain = json['chance_of_rain'];
    _willItSnow = json['will_it_snow'];
    _chanceOfSnow = json['chance_of_snow'];
    _visKm = json['vis_km'];
    _visMiles = json['vis_miles'];
    _gustMph = json['gust_mph'];
    _gustKph = json['gust_kph'];
    _uv = json['uv'];
  }
  @HiveField(0)
  int? _timeEpoch;
  @HiveField(1)
  String? _time;
  @HiveField(2)
  double? _tempC;
  @HiveField(3)
  double? _tempF;
  @HiveField(4)
  int? _isDay;
  @HiveField(5)
  Condition? _condition;
  @HiveField(6)
  double? _windMph;
  @HiveField(7)
  double? _windKph;
  @HiveField(8)
  int? _windDegree;
  @HiveField(9)
  String? _windDir;
  @HiveField(10)
  double? _pressureMb;
  @HiveField(11)
  double? _pressureIn;
  @HiveField(12)
  double? _precipMm;
  @HiveField(13)
  double? _precipIn;
  @HiveField(14)
  int? _humidity;
  @HiveField(15)
  int? _cloud;
  @HiveField(16)
  double? _feelslikeC;
  @HiveField(17)
  double? _feelslikeF;
  @HiveField(18)
  double? _windchillC;
  @HiveField(19)
  double? _windchillF;
  @HiveField(20)
  double? _heatindexC;
  @HiveField(21)
  double? _heatindexF;
  @HiveField(22)
  double? _dewpointC;
  @HiveField(23)
  double? _dewpointF;
  @HiveField(24)
  int? _willItRain;
  @HiveField(25)
  int? _chanceOfRain;
  @HiveField(26)
  int? _willItSnow;
  @HiveField(27)
  int? _chanceOfSnow;
  @HiveField(28)
  double? _visKm;
  @HiveField(29)
  double? _visMiles;
  @HiveField(30)
  double? _gustMph;
  @HiveField(31)
  double? _gustKph;
  @HiveField(32)
  double? _uv;

  int? get timeEpoch => _timeEpoch;
  String? get time => _time;
  double? get tempC => _tempC;
  double? get tempF => _tempF;
  int? get isDay => _isDay;
  Condition? get condition => _condition;
  double? get windMph => _windMph;
  double? get windKph => _windKph;
  int? get windDegree => _windDegree;
  String? get windDir => _windDir;
  double? get pressureMb => _pressureMb;
  double? get pressureIn => _pressureIn;
  double? get precipMm => _precipMm;
  double? get precipIn => _precipIn;
  int? get humidity => _humidity;
  int? get cloud => _cloud;
  double? get feelslikeC => _feelslikeC;
  double? get feelslikeF => _feelslikeF;
  double? get windchillC => _windchillC;
  double? get windchillF => _windchillF;
  double? get heatindexC => _heatindexC;
  double? get heatindexF => _heatindexF;
  double? get dewpointC => _dewpointC;
  double? get dewpointF => _dewpointF;
  int? get willItRain => _willItRain;
  int? get chanceOfRain => _chanceOfRain;
  int? get willItSnow => _willItSnow;
  int? get chanceOfSnow => _chanceOfSnow;
  double? get visKm => _visKm;
  double? get visMiles => _visMiles;
  double? get gustMph => _gustMph;
  double? get gustKph => _gustKph;
  double? get uv => _uv;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['time_epoch'] = _timeEpoch;
    map['time'] = _time;
    map['temp_c'] = _tempC;
    map['temp_f'] = _tempF;
    map['is_day'] = _isDay;
    if (_condition != null) {
      map['condition'] = _condition?.toJson();
    }
    map['wind_mph'] = _windMph;
    map['wind_kph'] = _windKph;
    map['wind_degree'] = _windDegree;
    map['wind_dir'] = _windDir;
    map['pressure_mb'] = _pressureMb;
    map['pressure_in'] = _pressureIn;
    map['precip_mm'] = _precipMm;
    map['precip_in'] = _precipIn;
    map['humidity'] = _humidity;
    map['cloud'] = _cloud;
    map['feelslike_c'] = _feelslikeC;
    map['feelslike_f'] = _feelslikeF;
    map['windchill_c'] = _windchillC;
    map['windchill_f'] = _windchillF;
    map['heatindex_c'] = _heatindexC;
    map['heatindex_f'] = _heatindexF;
    map['dewpoint_c'] = _dewpointC;
    map['dewpoint_f'] = _dewpointF;
    map['will_it_rain'] = _willItRain;
    map['chance_of_rain'] = _chanceOfRain;
    map['will_it_snow'] = _willItSnow;
    map['chance_of_snow'] = _chanceOfSnow;
    map['vis_km'] = _visKm;
    map['vis_miles'] = _visMiles;
    map['gust_mph'] = _gustMph;
    map['gust_kph'] = _gustKph;
    map['uv'] = _uv;
    return map;
  }

}

@HiveType(typeId: 4)
class Condition {
  Condition({
      String? text, 
      String? icon, 
      int? code,}){
    _text = text;
    _icon = icon;
    _code = code;
}

  Condition.fromJson(dynamic json) {
    _text = json['text'];
    _icon = json['icon'];
    _code = json['code'];
  }
  @HiveField(0)
  String? _text;
  @HiveField(1)
  String? _icon;
  @HiveField(2)
  int? _code;

  String? get text => _text;
  String? get icon => _icon;
  int? get code => _code;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['text'] = _text;
    map['icon'] = _icon;
    map['code'] = _code;
    return map;
  }

}

@HiveType(typeId: 5)
class Astro {
  Astro({
      String? sunrise, 
      String? sunset, 
      String? moonrise, 
      String? moonset, 
      String? moonPhase, 
      String? moonIllumination, 
      int? isMoonUp, 
      int? isSunUp,}){
    _sunrise = sunrise;
    _sunset = sunset;
    _moonrise = moonrise;
    _moonset = moonset;
    _moonPhase = moonPhase;
    _moonIllumination = moonIllumination;
    _isMoonUp = isMoonUp;
    _isSunUp = isSunUp;
}

  Astro.fromJson(dynamic json) {
    _sunrise = json['sunrise'];
    _sunset = json['sunset'];
    _moonrise = json['moonrise'];
    _moonset = json['moonset'];
    _moonPhase = json['moon_phase'];
    _moonIllumination = json['moon_illumination'];
    _isMoonUp = json['is_moon_up'];
    _isSunUp = json['is_sun_up'];
  }
  @HiveField(0)
  String? _sunrise;
  @HiveField(1)
  String? _sunset;
  @HiveField(2)
  String? _moonrise;
  @HiveField(3)
  String? _moonset;
  @HiveField(4)
  String? _moonPhase;
  @HiveField(5)
  String? _moonIllumination;
  @HiveField(6)
  int? _isMoonUp;
  @HiveField(7)
  int? _isSunUp;

  String? get sunrise => _sunrise;
  String? get sunset => _sunset;
  String? get moonrise => _moonrise;
  String? get moonset => _moonset;
  String? get moonPhase => _moonPhase;
  String? get moonIllumination => _moonIllumination;
  int? get isMoonUp => _isMoonUp;
  int? get isSunUp => _isSunUp;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['sunrise'] = _sunrise;
    map['sunset'] = _sunset;
    map['moonrise'] = _moonrise;
    map['moonset'] = _moonset;
    map['moon_phase'] = _moonPhase;
    map['moon_illumination'] = _moonIllumination;
    map['is_moon_up'] = _isMoonUp;
    map['is_sun_up'] = _isSunUp;
    return map;
  }

}

@HiveType(typeId: 6)
class Day {
  Day({
      double? maxtempC, 
      double? maxtempF, 
      double? mintempC, 
      double? mintempF, 
      double? avgtempC, 
      double? avgtempF, 
      double? maxwindMph, 
      double? maxwindKph, 
      double? totalprecipMm, 
      double? totalprecipIn, 
      double? totalsnowCm, 
      double? avgvisKm, 
      double? avgvisMiles, 
      double? avghumidity, 
      int? dailyWillItRain, 
      int? dailyChanceOfRain, 
      int? dailyWillItSnow, 
      int? dailyChanceOfSnow, 
      Condition? condition, 
      double? uv,}){
    _maxtempC = maxtempC;
    _maxtempF = maxtempF;
    _mintempC = mintempC;
    _mintempF = mintempF;
    _avgtempC = avgtempC;
    _avgtempF = avgtempF;
    _maxwindMph = maxwindMph;
    _maxwindKph = maxwindKph;
    _totalprecipMm = totalprecipMm;
    _totalprecipIn = totalprecipIn;
    _totalsnowCm = totalsnowCm;
    _avgvisKm = avgvisKm;
    _avgvisMiles = avgvisMiles;
    _avghumidity = avghumidity;
    _dailyWillItRain = dailyWillItRain;
    _dailyChanceOfRain = dailyChanceOfRain;
    _dailyWillItSnow = dailyWillItSnow;
    _dailyChanceOfSnow = dailyChanceOfSnow;
    _condition = condition;
    _uv = uv;
}

  Day.fromJson(dynamic json) {
    _maxtempC = json['maxtemp_c'];
    _maxtempF = json['maxtemp_f'];
    _mintempC = json['mintemp_c'];
    _mintempF = json['mintemp_f'];
    _avgtempC = json['avgtemp_c'];
    _avgtempF = json['avgtemp_f'];
    _maxwindMph = json['maxwind_mph'];
    _maxwindKph = json['maxwind_kph'];
    _totalprecipMm = json['totalprecip_mm'];
    _totalprecipIn = json['totalprecip_in'];
    _totalsnowCm = json['totalsnow_cm'];
    _avgvisKm = json['avgvis_km'];
    _avgvisMiles = json['avgvis_miles'];
    _avghumidity = json['avghumidity'];
    _dailyWillItRain = json['daily_will_it_rain'];
    _dailyChanceOfRain = json['daily_chance_of_rain'];
    _dailyWillItSnow = json['daily_will_it_snow'];
    _dailyChanceOfSnow = json['daily_chance_of_snow'];
    _condition = json['condition'] != null ? Condition.fromJson(json['condition']) : null;
    _uv = json['uv'];
  }
  @HiveField(0)
  double? _maxtempC;
  @HiveField(1)
  double? _maxtempF;
  @HiveField(2)
  double? _mintempC;
  @HiveField(3)
  double? _mintempF;
  @HiveField(4)
  double? _avgtempC;
  @HiveField(5)
  double? _avgtempF;
  @HiveField(6)
  double? _maxwindMph;
  @HiveField(7)
  double? _maxwindKph;
  @HiveField(8)
  double? _totalprecipMm;
  @HiveField(9)
  double? _totalprecipIn;
  @HiveField(10)
  double? _totalsnowCm;
  @HiveField(11)
  double? _avgvisKm;
  @HiveField(12)
  double? _avgvisMiles;
  @HiveField(13)
  double? _avghumidity;
  @HiveField(14)
  int? _dailyWillItRain;
  @HiveField(15)
  int? _dailyChanceOfRain;
  @HiveField(16)
  int? _dailyWillItSnow;
  @HiveField(17)
  int? _dailyChanceOfSnow;
  @HiveField(18)
  Condition? _condition;
  @HiveField(19)
  double? _uv;

  double? get maxtempC => _maxtempC;
  double? get maxtempF => _maxtempF;
  double? get mintempC => _mintempC;
  double? get mintempF => _mintempF;
  double? get avgtempC => _avgtempC;
  double? get avgtempF => _avgtempF;
  double? get maxwindMph => _maxwindMph;
  double? get maxwindKph => _maxwindKph;
  double? get totalprecipMm => _totalprecipMm;
  double? get totalprecipIn => _totalprecipIn;
  double? get totalsnowCm => _totalsnowCm;
  double? get avgvisKm => _avgvisKm;
  double? get avgvisMiles => _avgvisMiles;
  double? get avghumidity => _avghumidity;
  int? get dailyWillItRain => _dailyWillItRain;
  int? get dailyChanceOfRain => _dailyChanceOfRain;
  int? get dailyWillItSnow => _dailyWillItSnow;
  int? get dailyChanceOfSnow => _dailyChanceOfSnow;
  Condition? get condition => _condition;
  double? get uv => _uv;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['maxtemp_c'] = _maxtempC;
    map['maxtemp_f'] = _maxtempF;
    map['mintemp_c'] = _mintempC;
    map['mintemp_f'] = _mintempF;
    map['avgtemp_c'] = _avgtempC;
    map['avgtemp_f'] = _avgtempF;
    map['maxwind_mph'] = _maxwindMph;
    map['maxwind_kph'] = _maxwindKph;
    map['totalprecip_mm'] = _totalprecipMm;
    map['totalprecip_in'] = _totalprecipIn;
    map['totalsnow_cm'] = _totalsnowCm;
    map['avgvis_km'] = _avgvisKm;
    map['avgvis_miles'] = _avgvisMiles;
    map['avghumidity'] = _avghumidity;
    map['daily_will_it_rain'] = _dailyWillItRain;
    map['daily_chance_of_rain'] = _dailyChanceOfRain;
    map['daily_will_it_snow'] = _dailyWillItSnow;
    map['daily_chance_of_snow'] = _dailyChanceOfSnow;
    if (_condition != null) {
      map['condition'] = _condition?.toJson();
    }
    map['uv'] = _uv;
    return map;
  }

}

@HiveType(typeId: 7)
class Current {
  Current({
      int? lastUpdatedEpoch, 
      String? lastUpdated, 
      double? tempC, 
      double? tempF, 
      int? isDay, 
      Condition? condition, 
      double? windMph, 
      double? windKph, 
      int? windDegree, 
      String? windDir, 
      double? pressureMb, 
      double? pressureIn, 
      double? precipMm, 
      double? precipIn, 
      int? humidity, 
      int? cloud, 
      double? feelslikeC, 
      double? feelslikeF, 
      double? visKm, 
      double? visMiles, 
      double? uv, 
      double? gustMph, 
      double? gustKph,}){
    _lastUpdatedEpoch = lastUpdatedEpoch;
    _lastUpdated = lastUpdated;
    _tempC = tempC;
    _tempF = tempF;
    _isDay = isDay;
    _condition = condition;
    _windMph = windMph;
    _windKph = windKph;
    _windDegree = windDegree;
    _windDir = windDir;
    _pressureMb = pressureMb;
    _pressureIn = pressureIn;
    _precipMm = precipMm;
    _precipIn = precipIn;
    _humidity = humidity;
    _cloud = cloud;
    _feelslikeC = feelslikeC;
    _feelslikeF = feelslikeF;
    _visKm = visKm;
    _visMiles = visMiles;
    _uv = uv;
    _gustMph = gustMph;
    _gustKph = gustKph;
}

  Current.fromJson(dynamic json) {
    _lastUpdatedEpoch = json['last_updated_epoch'];
    _lastUpdated = json['last_updated'];
    _tempC = json['temp_c'];
    _tempF = json['temp_f'];
    _isDay = json['is_day'];
    _condition = json['condition'] != null ? Condition.fromJson(json['condition']) : null;
    _windMph = json['wind_mph'];
    _windKph = json['wind_kph'];
    _windDegree = json['wind_degree'];
    _windDir = json['wind_dir'];
    _pressureMb = json['pressure_mb'];
    _pressureIn = json['pressure_in'];
    _precipMm = json['precip_mm'];
    _precipIn = json['precip_in'];
    _humidity = json['humidity'];
    _cloud = json['cloud'];
    _feelslikeC = json['feelslike_c'];
    _feelslikeF = json['feelslike_f'];
    _visKm = json['vis_km'];
    _visMiles = json['vis_miles'];
    _uv = json['uv'];
    _gustMph = json['gust_mph'];
    _gustKph = json['gust_kph'];
  }
  @HiveField(0)
  int? _lastUpdatedEpoch;
  @HiveField(1)
  String? _lastUpdated;
  @HiveField(2)
  double? _tempC;
  @HiveField(3)
  double? _tempF;
  @HiveField(4)
  int? _isDay;
  @HiveField(5)
  Condition? _condition;
  @HiveField(6)
  double? _windMph;
  @HiveField(7)
  double? _windKph;
  @HiveField(8)
  int? _windDegree;
  @HiveField(9)
  String? _windDir;
  @HiveField(10)
  double? _pressureMb;
  @HiveField(11)
  double? _pressureIn;
  @HiveField(12)
  double? _precipMm;
  @HiveField(13)
  double? _precipIn;
  @HiveField(14)
  int? _humidity;
  @HiveField(15)
  int? _cloud;
  @HiveField(16)
  double? _feelslikeC;
  @HiveField(17)
  double? _feelslikeF;
  @HiveField(18)
  double? _visKm;
  @HiveField(19)
  double? _visMiles;
  @HiveField(20)
  double? _uv;
  @HiveField(21)
  double? _gustMph;
  @HiveField(22)
  double? _gustKph;

  int? get lastUpdatedEpoch => _lastUpdatedEpoch;
  String? get lastUpdated => _lastUpdated;
  double? get tempC => _tempC;
  double? get tempF => _tempF;
  int? get isDay => _isDay;
  Condition? get condition => _condition;
  double? get windMph => _windMph;
  double? get windKph => _windKph;
  int? get windDegree => _windDegree;
  String? get windDir => _windDir;
  double? get pressureMb => _pressureMb;
  double? get pressureIn => _pressureIn;
  double? get precipMm => _precipMm;
  double? get precipIn => _precipIn;
  int? get humidity => _humidity;
  int? get cloud => _cloud;
  double? get feelslikeC => _feelslikeC;
  double? get feelslikeF => _feelslikeF;
  double? get visKm => _visKm;
  double? get visMiles => _visMiles;
  double? get uv => _uv;
  double? get gustMph => _gustMph;
  double? get gustKph => _gustKph;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['last_updated_epoch'] = _lastUpdatedEpoch;
    map['last_updated'] = _lastUpdated;
    map['temp_c'] = _tempC;
    map['temp_f'] = _tempF;
    map['is_day'] = _isDay;
    if (_condition != null) {
      map['condition'] = _condition?.toJson();
    }
    map['wind_mph'] = _windMph;
    map['wind_kph'] = _windKph;
    map['wind_degree'] = _windDegree;
    map['wind_dir'] = _windDir;
    map['pressure_mb'] = _pressureMb;
    map['pressure_in'] = _pressureIn;
    map['precip_mm'] = _precipMm;
    map['precip_in'] = _precipIn;
    map['humidity'] = _humidity;
    map['cloud'] = _cloud;
    map['feelslike_c'] = _feelslikeC;
    map['feelslike_f'] = _feelslikeF;
    map['vis_km'] = _visKm;
    map['vis_miles'] = _visMiles;
    map['uv'] = _uv;
    map['gust_mph'] = _gustMph;
    map['gust_kph'] = _gustKph;
    return map;
  }

}

@HiveType(typeId: 8)
class Location {
  Location({
      String? name, 
      String? region, 
      String? country, 
      double? lat, 
      double? lon, 
      String? tzId, 
      int? localtimeEpoch, 
      String? localtime,}){
    _name = name;
    _region = region;
    _country = country;
    _lat = lat;
    _lon = lon;
    _tzId = tzId;
    _localtimeEpoch = localtimeEpoch;
    _localtime = localtime;
}

  Location.fromJson(dynamic json) {
    _name = json['name'];
    _region = json['region'];
    _country = json['country'];
    _lat = json['lat'];
    _lon = json['lon'];
    _tzId = json['tz_id'];
    _localtimeEpoch = json['localtime_epoch'];
    _localtime = json['localtime'];
  }
  @HiveField(0)
  String? _name;
  @HiveField(1)
  String? _region;
  @HiveField(2)
  String? _country;
  @HiveField(3)
  double? _lat;
  @HiveField(4)
  double? _lon;
  @HiveField(5)
  String? _tzId;
  @HiveField(6)
  int? _localtimeEpoch;
  @HiveField(7)
  String? _localtime;

  String? get name => _name;
  String? get region => _region;
  String? get country => _country;
  double? get lat => _lat;
  double? get lon => _lon;
  String? get tzId => _tzId;
  int? get localtimeEpoch => _localtimeEpoch;
  String? get localtime => _localtime;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['region'] = _region;
    map['country'] = _country;
    map['lat'] = _lat;
    map['lon'] = _lon;
    map['tz_id'] = _tzId;
    map['localtime_epoch'] = _localtimeEpoch;
    map['localtime'] = _localtime;
    return map;
  }

}