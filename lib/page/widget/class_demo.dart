main(List<String> args) {
  final man = Man("男神");
  man.classes();
  man.study();
}

class Person {
  final String name;
  Person(this.name);

  talk() {
    print("person talk");
  }

  run() {
    print("person run");
  }
}

class Man extends Person with Student {
  Man(String name) : super(name);

  @override
  study() {
    print("man study");
  }

  classes() {
    print("三年8班");
  }
}

mixin Student {
  int age;
  study();
  classes() {
    print("三年二班");
  }

  run() {
    print("student run");
  }
}

class Woman implements Person {
  @override
  // TODO: implement name
  String get name => throw UnimplementedError();

  @override
  run() {
    // TODO: implement run
    throw UnimplementedError();
  }

  @override
  talk() {
    // TODO: implement talk
    throw UnimplementedError();
  }
}
