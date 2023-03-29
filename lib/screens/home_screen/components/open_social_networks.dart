import 'package:url_launcher/url_launcher.dart';

launchURLTelegram() async {
  const url = 'https://t.me/your_little_demon_13';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

launchURLWhatsApp() async {
  const url = 'https://wa.me/+79096984591';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

launchURLTechSupport() async {
  const url = 'mailto:qertynon@gmail.com?subject=Вопрос по приложению FOXGOLD';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';  
  }
}