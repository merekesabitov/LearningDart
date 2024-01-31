/*
Упражнение № 1
Определите следующие классы.
1) Кубоид
Конструктор объекта для класса Cuboid должен получить ровно три аргумента в следующем порядке:
длина, ширина, высота и сохранить эти три значения в length, width и height соответственно.
Класс Cuboid должен иметь геттер SurfaceArea, который возвращает площадь поверхности кубоида,
и геттер Volume, который возвращает объем кубоида.
 
2) Куб
Класс Cube является подклассом класса Cuboid. Функция конструктора Cube должна получить только один аргумент,
его длину (length) и использовать это переданное значение, чтобы установить length, width и height.
Подсказка: используйте super, чтобы передать правильные параметры.
Входные данные:
Cuboid(1, 2, 3)
Cube(2)
Выходные данные:
Cuboid Surface Area = 22
Cuboid Volume = 6
Cube Surface Area = 24
Cube Volume = 8
  */

class Cuboid {
  int length;
  int width;
  int height;

  int get surfaceArea {return (2 * (length * width + length * height + width * height));}
  int get volume {return length * width * height;}
  
  Cuboid(this.length, this.width, this.height);
}

class Cube extends Cuboid {
  Cube(int length) : super(length,length,length);
}


void main() {
  final cuboid = Cuboid(1,2,3);
  final cube = Cube(2);
  print('''
CUBOID
---------
Length: ${cuboid.length}
Width:  ${cuboid.width}
Height: ${cuboid.height}
---------
Surface Area: ${cuboid.surfaceArea}
The volume of the cuboid: ${cuboid.volume}
CUBE
---------
Length: ${cube.length}
Width:  ${cube.width}
Height: ${cube.height}
---------
Surface Area: ${cube.surfaceArea}
The volume of the cuboid: ${cube.volume}
  ''');
}