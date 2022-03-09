import 'package:challenge2/story.dart';

class storyBrain {
  List<Story> _stories = [
    Story(
        "Vous venez de crevez un pneu à St André. Vous n'avez pas de téléphone vous décidez de faire du stop. Une ford fiesta rouge s'arrête et le conducteur vous demande si vous voulez qu'il vous dépanne.",
        "Vous lui remerciez et vous montez dans la voiture",
        "Vous lui demandez s'il n'est pas un meurtrier avant !"),
    Story(
        "Il acquiesce de la tête sans faire attention à la question.",
        "Au moins il est honnête. Vous montez !",
        "Attends, mais je sais comment changer un pneu voyons !"),
    Story(
        "Lorsqu'il commence à conduire, il vous demande d'ouvrir la boite à gant. À l’intérieur, vous trouverez un couteau ensanglanté, deux doigts coupés et un CD de T-Matt.",
        "J'adore T-Matt, je lui donne le CD.",
        "C'est lui ou moi, je prends le couteau et je le poignarde."),
    Story(" Woaw ! Quelle évasion !", " Recommencer", ""),
    Story(
        "En traversant la route du littoral, vous réfléchissez à la sagesse douteuse de poignarder quelqu’un pendant qu’il conduit une voiture dans laquelle vous êtes.",
        "Recommencer",
        ""),
    Story(
        "Vous vous faites un bon dalon et vous chantez le dernier son de T-matt ensemble. Il vous dépose à Cambaie et il vous demande si vous connaissez un bon endroit pour jeter un corps.",
        "Recommencer",
        ""),
  ];

  int _storyNumber = 0;

  String getQuestion() {
    return _stories[_storyNumber].question;
  }

  String getChoice1() {
    return _stories[_storyNumber].choice1;
  }

  String getChoice2() {
    return _stories[_storyNumber].choice2;
  }

  void suivant(int choice) {
    if (_storyNumber == 0 && choice == 1) {
      _storyNumber = 2;
    } else if (_storyNumber == 0 && choice == 2) {
      _storyNumber = 1;
    } else if (_storyNumber == 2 && choice == 1) {
      _storyNumber = 5;
    } else if (_storyNumber == 2 && choice == 2) {
      _storyNumber = 4;
    } else if (_storyNumber == 1 && choice == 2) {
      _storyNumber = 3;
    } else if (_storyNumber == 1 && choice == 1) {
      _storyNumber = 2;
    } else if (_storyNumber == 3 || _storyNumber == 4 || _storyNumber == 5) {
      _storyNumber = 0;
    }
  }

  bool buttonVisibleOrNot() {
    if (_storyNumber == 0 || _storyNumber == 1 || _storyNumber == 2) {
      return true;
    } else {
      return false;
    }
  }
}
