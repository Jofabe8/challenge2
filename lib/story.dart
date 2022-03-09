class Story {
  String _question;
  String _choice1;
  String _choice2;

  Story(this._question, this._choice1, this._choice2);

  String get choice2 => _choice2;

  String get choice1 => _choice1;

  String get question => _question;
}
