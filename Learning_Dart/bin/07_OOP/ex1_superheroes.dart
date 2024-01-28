/*
#1 задача. Класс "Супергерой"
    1) Создайте класс "Супергерой", который имеет следующие свойства: имя, принадлежность (хороший или злой), и список способностей. 
    2) Класс должен иметь следующие методы:
       - Метод "добавить_способность", который принимает строку и добавляет ее в список способностей.
       - Метод "вывести_способности", который выводит на экран все способности супергероя.
    3) Класс должен иметь конструктор который принимает имя и принадлежность,и инициализирует список способностей пустым списком.

#2 задача. Класс "Команда супергероев"
    1) Создайте класс "Команда", который имеет следующие свойства: название команды и список участников.
    2) Класс должен иметь следующие методы:
       - Метод "добавить_участника", который принимает экземпляр класса "Супергерой" и добавляет его в команду.
       - Метод "вывести_участников", который выводит на экран имена всех участников команды и их способности.
    3) Класс должен иметь конструктор, который принимает название команды и инициализирует список участников пустым списком.

#3 задача. Класс "Битва"
    1) Создайте класс "Битва", который имеет следующие свойства: список команд. Класс должен иметь следующие методы:
       - Метод "добавить_команду", который принимает экземпляр класса "Команда" и добавляет его в список команд.
       - Метод "начать_битву", который случайным образом выбирает победившую команду из списка команд и выводит на экран ее название и участников.
    2) Пусть победа в битве определяется просто случайным выбором, без каких-либо сложных алгоритмов.
    3) Класс должен иметь конструктор, который инициализирует список команд пустым списком.
*/

import 'dart:math';

class SuperHero {
  String name;
  String character;
  List<String?> skills = [];
  
  SuperHero({required this.name, required this.character}) {
    print(skills);
  }
  
  void addSkill(String skill) => skills.add(skill);
  
  void allSkills() => print(skills);
}
 

class Team {
  String name;
  List<SuperHero> heroList = [];
  
  Team({required this.name}) {
    print(heroList);
  }
  
  void addHero(SuperHero hero) => heroList.add(hero);
  
  void allHeroes() {
    for (final i in heroList) {
      print(i.name);
    }
  }
}

class Fight {
  List<Team> teamList = [];
  
  Fight() {
    print(teamList);
  }
  
  void addTeam(Team team) => teamList.add(team);
  
  void startFighting(List<Team> team) {
    final winner = team[Random().nextInt(team.length)];
    print(winner.name);
}
}

void main() {
  final ironMan = SuperHero(name: 'Iron Man', character: 'good');
  ironMan.addSkill('fight');
  ironMan.addSkill('fly');
  
  final spiderMan = SuperHero(name: 'Spiderman', character: 'good');
  spiderMan.addSkill('fight');
  spiderMan.addSkill('climb');
  
  final team1 = Team(name: 'Marvel Heroes');
  team1.addHero(ironMan);
  team1.addHero(spiderMan);
  team1.allHeroes();
  
  final deadpool = SuperHero(name: 'Deadpool', character: 'bad');
  final venom = SuperHero(name: 'Venom', character: 'bad');
  
  final team2 = Team(name: 'Marvel Anti-Heroes');
  team2.addHero(deadpool);
  team2.addHero(venom);
  
  final fight = Fight();
  fight.addTeam(team1);
  fight.addTeam(team2);
  fight.startFighting(fight.teamList);
  
}
