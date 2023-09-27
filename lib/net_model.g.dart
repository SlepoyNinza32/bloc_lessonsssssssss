// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'net_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class NetModelAdapter extends TypeAdapter<NetModel> {
  @override
  final int typeId = 0;

  @override
  NetModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return NetModel()
      .._location = fields[0] as Location?
      .._current = fields[1] as Current?
      .._forecast = fields[2] as Forecast?;
  }

  @override
  void write(BinaryWriter writer, NetModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj._location)
      ..writeByte(1)
      ..write(obj._current)
      ..writeByte(2)
      ..write(obj._forecast);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NetModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ForecastAdapter extends TypeAdapter<Forecast> {
  @override
  final int typeId = 1;

  @override
  Forecast read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Forecast().._forecastday = (fields[0] as List?)?.cast<Forecastday>();
  }

  @override
  void write(BinaryWriter writer, Forecast obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj._forecastday);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ForecastAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ForecastdayAdapter extends TypeAdapter<Forecastday> {
  @override
  final int typeId = 2;

  @override
  Forecastday read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Forecastday()
      .._date = fields[0] as String?
      .._dateEpoch = fields[1] as int?
      .._day = fields[2] as Day?
      .._astro = fields[3] as Astro?
      .._hour = (fields[4] as List?)?.cast<Hour>();
  }

  @override
  void write(BinaryWriter writer, Forecastday obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj._date)
      ..writeByte(1)
      ..write(obj._dateEpoch)
      ..writeByte(2)
      ..write(obj._day)
      ..writeByte(3)
      ..write(obj._astro)
      ..writeByte(4)
      ..write(obj._hour);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ForecastdayAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class HourAdapter extends TypeAdapter<Hour> {
  @override
  final int typeId = 3;

  @override
  Hour read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Hour()
      .._timeEpoch = fields[0] as int?
      .._time = fields[1] as String?
      .._tempC = fields[2] as double?
      .._tempF = fields[3] as double?
      .._isDay = fields[4] as int?
      .._condition = fields[5] as Condition?
      .._windMph = fields[6] as double?
      .._windKph = fields[7] as double?
      .._windDegree = fields[8] as int?
      .._windDir = fields[9] as String?
      .._pressureMb = fields[10] as double?
      .._pressureIn = fields[11] as double?
      .._precipMm = fields[12] as double?
      .._precipIn = fields[13] as double?
      .._humidity = fields[14] as int?
      .._cloud = fields[15] as int?
      .._feelslikeC = fields[16] as double?
      .._feelslikeF = fields[17] as double?
      .._windchillC = fields[18] as double?
      .._windchillF = fields[19] as double?
      .._heatindexC = fields[20] as double?
      .._heatindexF = fields[21] as double?
      .._dewpointC = fields[22] as double?
      .._dewpointF = fields[23] as double?
      .._willItRain = fields[24] as int?
      .._chanceOfRain = fields[25] as int?
      .._willItSnow = fields[26] as int?
      .._chanceOfSnow = fields[27] as int?
      .._visKm = fields[28] as double?
      .._visMiles = fields[29] as double?
      .._gustMph = fields[30] as double?
      .._gustKph = fields[31] as double?
      .._uv = fields[32] as double?;
  }

  @override
  void write(BinaryWriter writer, Hour obj) {
    writer
      ..writeByte(33)
      ..writeByte(0)
      ..write(obj._timeEpoch)
      ..writeByte(1)
      ..write(obj._time)
      ..writeByte(2)
      ..write(obj._tempC)
      ..writeByte(3)
      ..write(obj._tempF)
      ..writeByte(4)
      ..write(obj._isDay)
      ..writeByte(5)
      ..write(obj._condition)
      ..writeByte(6)
      ..write(obj._windMph)
      ..writeByte(7)
      ..write(obj._windKph)
      ..writeByte(8)
      ..write(obj._windDegree)
      ..writeByte(9)
      ..write(obj._windDir)
      ..writeByte(10)
      ..write(obj._pressureMb)
      ..writeByte(11)
      ..write(obj._pressureIn)
      ..writeByte(12)
      ..write(obj._precipMm)
      ..writeByte(13)
      ..write(obj._precipIn)
      ..writeByte(14)
      ..write(obj._humidity)
      ..writeByte(15)
      ..write(obj._cloud)
      ..writeByte(16)
      ..write(obj._feelslikeC)
      ..writeByte(17)
      ..write(obj._feelslikeF)
      ..writeByte(18)
      ..write(obj._windchillC)
      ..writeByte(19)
      ..write(obj._windchillF)
      ..writeByte(20)
      ..write(obj._heatindexC)
      ..writeByte(21)
      ..write(obj._heatindexF)
      ..writeByte(22)
      ..write(obj._dewpointC)
      ..writeByte(23)
      ..write(obj._dewpointF)
      ..writeByte(24)
      ..write(obj._willItRain)
      ..writeByte(25)
      ..write(obj._chanceOfRain)
      ..writeByte(26)
      ..write(obj._willItSnow)
      ..writeByte(27)
      ..write(obj._chanceOfSnow)
      ..writeByte(28)
      ..write(obj._visKm)
      ..writeByte(29)
      ..write(obj._visMiles)
      ..writeByte(30)
      ..write(obj._gustMph)
      ..writeByte(31)
      ..write(obj._gustKph)
      ..writeByte(32)
      ..write(obj._uv);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HourAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ConditionAdapter extends TypeAdapter<Condition> {
  @override
  final int typeId = 4;

  @override
  Condition read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Condition()
      .._text = fields[0] as String?
      .._icon = fields[1] as String?
      .._code = fields[2] as int?;
  }

  @override
  void write(BinaryWriter writer, Condition obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj._text)
      ..writeByte(1)
      ..write(obj._icon)
      ..writeByte(2)
      ..write(obj._code);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ConditionAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class AstroAdapter extends TypeAdapter<Astro> {
  @override
  final int typeId = 5;

  @override
  Astro read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Astro()
      .._sunrise = fields[0] as String?
      .._sunset = fields[1] as String?
      .._moonrise = fields[2] as String?
      .._moonset = fields[3] as String?
      .._moonPhase = fields[4] as String?
      .._moonIllumination = fields[5] as String?
      .._isMoonUp = fields[6] as int?
      .._isSunUp = fields[7] as int?;
  }

  @override
  void write(BinaryWriter writer, Astro obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj._sunrise)
      ..writeByte(1)
      ..write(obj._sunset)
      ..writeByte(2)
      ..write(obj._moonrise)
      ..writeByte(3)
      ..write(obj._moonset)
      ..writeByte(4)
      ..write(obj._moonPhase)
      ..writeByte(5)
      ..write(obj._moonIllumination)
      ..writeByte(6)
      ..write(obj._isMoonUp)
      ..writeByte(7)
      ..write(obj._isSunUp);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AstroAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class DayAdapter extends TypeAdapter<Day> {
  @override
  final int typeId = 6;

  @override
  Day read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Day()
      .._maxtempC = fields[0] as double?
      .._maxtempF = fields[1] as double?
      .._mintempC = fields[2] as double?
      .._mintempF = fields[3] as double?
      .._avgtempC = fields[4] as double?
      .._avgtempF = fields[5] as double?
      .._maxwindMph = fields[6] as double?
      .._maxwindKph = fields[7] as double?
      .._totalprecipMm = fields[8] as double?
      .._totalprecipIn = fields[9] as double?
      .._totalsnowCm = fields[10] as double?
      .._avgvisKm = fields[11] as double?
      .._avgvisMiles = fields[12] as double?
      .._avghumidity = fields[13] as double?
      .._dailyWillItRain = fields[14] as int?
      .._dailyChanceOfRain = fields[15] as int?
      .._dailyWillItSnow = fields[16] as int?
      .._dailyChanceOfSnow = fields[17] as int?
      .._condition = fields[18] as Condition?
      .._uv = fields[19] as double?;
  }

  @override
  void write(BinaryWriter writer, Day obj) {
    writer
      ..writeByte(20)
      ..writeByte(0)
      ..write(obj._maxtempC)
      ..writeByte(1)
      ..write(obj._maxtempF)
      ..writeByte(2)
      ..write(obj._mintempC)
      ..writeByte(3)
      ..write(obj._mintempF)
      ..writeByte(4)
      ..write(obj._avgtempC)
      ..writeByte(5)
      ..write(obj._avgtempF)
      ..writeByte(6)
      ..write(obj._maxwindMph)
      ..writeByte(7)
      ..write(obj._maxwindKph)
      ..writeByte(8)
      ..write(obj._totalprecipMm)
      ..writeByte(9)
      ..write(obj._totalprecipIn)
      ..writeByte(10)
      ..write(obj._totalsnowCm)
      ..writeByte(11)
      ..write(obj._avgvisKm)
      ..writeByte(12)
      ..write(obj._avgvisMiles)
      ..writeByte(13)
      ..write(obj._avghumidity)
      ..writeByte(14)
      ..write(obj._dailyWillItRain)
      ..writeByte(15)
      ..write(obj._dailyChanceOfRain)
      ..writeByte(16)
      ..write(obj._dailyWillItSnow)
      ..writeByte(17)
      ..write(obj._dailyChanceOfSnow)
      ..writeByte(18)
      ..write(obj._condition)
      ..writeByte(19)
      ..write(obj._uv);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DayAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class CurrentAdapter extends TypeAdapter<Current> {
  @override
  final int typeId = 7;

  @override
  Current read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Current()
      .._lastUpdatedEpoch = fields[0] as int?
      .._lastUpdated = fields[1] as String?
      .._tempC = fields[2] as double?
      .._tempF = fields[3] as double?
      .._isDay = fields[4] as int?
      .._condition = fields[5] as Condition?
      .._windMph = fields[6] as double?
      .._windKph = fields[7] as double?
      .._windDegree = fields[8] as int?
      .._windDir = fields[9] as String?
      .._pressureMb = fields[10] as double?
      .._pressureIn = fields[11] as double?
      .._precipMm = fields[12] as double?
      .._precipIn = fields[13] as double?
      .._humidity = fields[14] as int?
      .._cloud = fields[15] as int?
      .._feelslikeC = fields[16] as double?
      .._feelslikeF = fields[17] as double?
      .._visKm = fields[18] as double?
      .._visMiles = fields[19] as double?
      .._uv = fields[20] as double?
      .._gustMph = fields[21] as double?
      .._gustKph = fields[22] as double?;
  }

  @override
  void write(BinaryWriter writer, Current obj) {
    writer
      ..writeByte(23)
      ..writeByte(0)
      ..write(obj._lastUpdatedEpoch)
      ..writeByte(1)
      ..write(obj._lastUpdated)
      ..writeByte(2)
      ..write(obj._tempC)
      ..writeByte(3)
      ..write(obj._tempF)
      ..writeByte(4)
      ..write(obj._isDay)
      ..writeByte(5)
      ..write(obj._condition)
      ..writeByte(6)
      ..write(obj._windMph)
      ..writeByte(7)
      ..write(obj._windKph)
      ..writeByte(8)
      ..write(obj._windDegree)
      ..writeByte(9)
      ..write(obj._windDir)
      ..writeByte(10)
      ..write(obj._pressureMb)
      ..writeByte(11)
      ..write(obj._pressureIn)
      ..writeByte(12)
      ..write(obj._precipMm)
      ..writeByte(13)
      ..write(obj._precipIn)
      ..writeByte(14)
      ..write(obj._humidity)
      ..writeByte(15)
      ..write(obj._cloud)
      ..writeByte(16)
      ..write(obj._feelslikeC)
      ..writeByte(17)
      ..write(obj._feelslikeF)
      ..writeByte(18)
      ..write(obj._visKm)
      ..writeByte(19)
      ..write(obj._visMiles)
      ..writeByte(20)
      ..write(obj._uv)
      ..writeByte(21)
      ..write(obj._gustMph)
      ..writeByte(22)
      ..write(obj._gustKph);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CurrentAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class LocationAdapter extends TypeAdapter<Location> {
  @override
  final int typeId = 8;

  @override
  Location read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Location()
      .._name = fields[0] as String?
      .._region = fields[1] as String?
      .._country = fields[2] as String?
      .._lat = fields[3] as double?
      .._lon = fields[4] as double?
      .._tzId = fields[5] as String?
      .._localtimeEpoch = fields[6] as int?
      .._localtime = fields[7] as String?;
  }

  @override
  void write(BinaryWriter writer, Location obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj._name)
      ..writeByte(1)
      ..write(obj._region)
      ..writeByte(2)
      ..write(obj._country)
      ..writeByte(3)
      ..write(obj._lat)
      ..writeByte(4)
      ..write(obj._lon)
      ..writeByte(5)
      ..write(obj._tzId)
      ..writeByte(6)
      ..write(obj._localtimeEpoch)
      ..writeByte(7)
      ..write(obj._localtime);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LocationAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
