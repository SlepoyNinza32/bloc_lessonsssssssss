import 'package:bloc_lessons/net_model.dart';
import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'network_bloc.dart';
late Box<NetModel> box;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter<NetModel>(NetModelAdapter());
  Hive.registerAdapter<Forecast>(ForecastAdapter());
  Hive.registerAdapter<Forecastday>(ForecastdayAdapter());
  Hive.registerAdapter<Hour>(HourAdapter());
  Hive.registerAdapter<Condition>(ConditionAdapter());
  Hive.registerAdapter<Astro>(AstroAdapter());
  Hive.registerAdapter<Current>(CurrentAdapter());
  Hive.registerAdapter<Day>(DayAdapter());
  Hive.registerAdapter<Location>(LocationAdapter());
  box = await Hive.openBox<NetModel>('no_inet_ad',);
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => NetworkBloc(),
        child: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<NetworkBloc>(context).add(GetData());
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController townController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Bloc'),
        backgroundColor: Colors.grey,
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
          ),
        ),
      ),
      body: RefreshIndicator(
        // child: CircularProgressIndicator(
        //   color: Colors.black,
        //   backgroundColor: Colors.white,
        // ),
        child: BlocBuilder<NetworkBloc, NetworkState>(
          builder: (context, state) {
            if (state is NetworkLoading) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is NetworkError) {
              return Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.error,
                        size: 50,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(state.message),
                      SizedBox(
                        height: 20,
                      ),
                      MaterialButton(
                        onPressed: () {
                          BlocProvider.of<NetworkBloc>(context).add(GetData());
                        },
                        child: Text("Refresh"),
                        color: Colors.green,
                      )
                    ]),
              );
            } else if (state is NetworkSuccess) {
              return Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.network(
                      '${(state as NetworkSuccess).model.current!.condition!.icon.toString()}',
                    ),
                    //Image(image: NetworkImage('${(state as NetworkSuccess).model.current!.condition!.icon.toString()}',)),
                    Text('${(state as NetworkSuccess).model.current!.tempC}'),
                    Text(
                        '${(state as NetworkSuccess).model.current!.condition!.text}'),
                    Text('${(state as NetworkSuccess).model.location!.name}'),
                    Container(
                      //width: 600.0,
                      height: 250.0,
                      child: Sparkline(
                        data: [
                          (state as NetworkSuccess)
                                  .model
                                  .forecast!
                                  .forecastday![0]
                                  .hour![0]
                                  .tempC ??
                              0,
                          (state as NetworkSuccess)
                                  .model
                                  .forecast!
                                  .forecastday![0]
                                  .hour![1]
                                  .tempC ??
                              0,
                          (state as NetworkSuccess)
                                  .model
                                  .forecast!
                                  .forecastday![0]
                                  .hour![2]
                                  .tempC ??
                              0,
                          (state as NetworkSuccess)
                                  .model
                                  .forecast!
                                  .forecastday![0]
                                  .hour![3]
                                  .tempC ??
                              0,
                          (state as NetworkSuccess)
                                  .model
                                  .forecast!
                                  .forecastday![0]
                                  .hour![4]
                                  .tempC ??
                              0,
                          (state as NetworkSuccess)
                                  .model
                                  .forecast!
                                  .forecastday![0]
                                  .hour![5]
                                  .tempC ??
                              0,
                          (state as NetworkSuccess)
                                  .model
                                  .forecast!
                                  .forecastday![0]
                                  .hour![6]
                                  .tempC ??
                              0,
                          (state as NetworkSuccess)
                                  .model
                                  .forecast!
                                  .forecastday![0]
                                  .hour![7]
                                  .tempC ??
                              0,
                          (state as NetworkSuccess)
                                  .model
                                  .forecast!
                                  .forecastday![0]
                                  .hour![8]
                                  .tempC ??
                              0,
                          (state as NetworkSuccess)
                                  .model
                                  .forecast!
                                  .forecastday![0]
                                  .hour![9]
                                  .tempC ??
                              0,
                          (state as NetworkSuccess)
                                  .model
                                  .forecast!
                                  .forecastday![0]
                                  .hour![10]
                                  .tempC ??
                              0,
                          (state as NetworkSuccess)
                                  .model
                                  .forecast!
                                  .forecastday![0]
                                  .hour![11]
                                  .tempC ??
                              0,
                          (state as NetworkSuccess)
                                  .model
                                  .forecast!
                                  .forecastday![0]
                                  .hour![12]
                                  .tempC ??
                              0,
                          (state as NetworkSuccess)
                                  .model
                                  .forecast!
                                  .forecastday![0]
                                  .hour![13]
                                  .tempC ??
                              0,
                          (state as NetworkSuccess)
                                  .model
                                  .forecast!
                                  .forecastday![0]
                                  .hour![14]
                                  .tempC ??
                              0,
                          (state as NetworkSuccess)
                                  .model
                                  .forecast!
                                  .forecastday![0]
                                  .hour![15]
                                  .tempC ??
                              0,
                          (state as NetworkSuccess)
                                  .model
                                  .forecast!
                                  .forecastday![0]
                                  .hour![16]
                                  .tempC ??
                              0,
                          (state as NetworkSuccess)
                                  .model
                                  .forecast!
                                  .forecastday![0]
                                  .hour![17]
                                  .tempC ??
                              0,
                          (state as NetworkSuccess)
                                  .model
                                  .forecast!
                                  .forecastday![0]
                                  .hour![18]
                                  .tempC ??
                              0,
                          (state as NetworkSuccess)
                                  .model
                                  .forecast!
                                  .forecastday![0]
                                  .hour![19]
                                  .tempC ??
                              0,
                          (state as NetworkSuccess)
                                  .model
                                  .forecast!
                                  .forecastday![0]
                                  .hour![20]
                                  .tempC ??
                              0,
                          (state as NetworkSuccess)
                                  .model
                                  .forecast!
                                  .forecastday![0]
                                  .hour![21]
                                  .tempC ??
                              0,
                          (state as NetworkSuccess)
                                  .model
                                  .forecast!
                                  .forecastday![0]
                                  .hour![22]
                                  .tempC ??
                              0,
                          (state as NetworkSuccess)
                                  .model
                                  .forecast!
                                  .forecastday![0]
                                  .hour![23]
                                  .tempC ??
                              0,
                        ],
                        pointIndex: 0,
                        // kLine: [
                        //   'hello',
                        //   'hello',
                        //   'hello',
                        //   'hello',
                        //   'hello',
                        //   'hello',
                        //   'hello',
                        //   'hello',
                        //   'hello',
                        //   'hello',
                        //   'hello',
                        //   'hello',
                        //   'hello',
                        //   'hello',
                        //   'hello',
                        //   'hello',
                        //   'hello',
                        //   'hello',
                        //   'hello',
                        //   'hello',
                        //   'hello',
                        //   'hello',
                        //   'hello',
                        //   'hello',
                        //   'hello',
                        // ],
                        backgroundColor: Colors.transparent,
                        //lineColor: Colors.lightGreen[500]!,
                        fillMode: FillMode.below,
                        fillColor: Colors.blue[200]!,
                        pointsMode: PointsMode.all,
                        // pointSize: 5.0,
                        pointColor: Colors.amber,
                        useCubicSmoothing: false,
                        // lineWidth: 1.0,
                        //gridLinelabelPrefix: 'hello \$',
                        gridLineLabelPrecision: 3,
                        enableGridLines: true,
                        averageLine: true,
                        averageLabel: true,
                        //kLine: ['100', '-100', '0', '22'],
                        // max: 80,
                        // min: -80,
                        //enableThreshold: true,
                        thresholdSize: 0.1,
                        lineGradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.purple[800]!, Colors.purple[200]!],
                        ),
                        // fillGradient: LinearGradient(
                        //   begin: Alignment.topCenter,
                        //   end: Alignment.bottomCenter,
                        //   colors: [Colors.red[800]!, Colors.red[200]!],
                        // ),
                      ),
                    ),
                    Divider(
                      height: 3,
                    ),
                  ],
                ),
              );
            } else {
              return Container();
            }
          },
        ),
        onRefresh: () async {
          print('hello');
          BlocProvider.of<NetworkBloc>(context).add(GetData());
        },
      ),
      bottomNavigationBar: TextField(
        controller: townController,
        decoration: InputDecoration(
          suffix: IconButton(
            icon: Icon(Icons.send),
            onPressed: () {
              BlocProvider.of<NetworkBloc>(context)
                  .add(GetData(town: townController.value.text));
              townController.text = '';
            },
          ),
        ),
      ),
    );
  }
}
