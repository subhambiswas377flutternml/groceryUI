import 'package:groceryapp/util/barrer.dart';
import 'package:groceryapp/screens/homepage/homepage.dart';

void main()
{
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,overlays: []);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget
{
  const MyApp({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return Sizer(
      builder: (context, orientation, deviceType)
      {
        return const MaterialApp(
          home: HomePage(),
        );
      },
    );
  }
}