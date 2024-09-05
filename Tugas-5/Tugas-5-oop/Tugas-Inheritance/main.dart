import 'armor_titan.dart';
import 'attack_titan.dart';
import 'beast_titan.dart';
import 'human.dart';

void main() {
  ArmorTitan armorTitan = ArmorTitan();
  AttackTitan attackTitan = AttackTitan();
  BeastTitan beastTitan = BeastTitan();
  Human human = Human();

  armorTitan.setPowerPoint(3);
  attackTitan.setPowerPoint(10);
  beastTitan.setPowerPoint(4);
  human.setPowerPoint(6);

  print("Armor Titan PowerPoint: ${armorTitan.getPowerPoint()}");
  print("Armor Titan ability: ${armorTitan.terjang()}");

  print("Attack Titan PowerPoint: ${attackTitan.getPowerPoint()}");
  print("Attack Titan ability: ${attackTitan.punch()}");

  print("Beast Titan PowerPoint: ${beastTitan.getPowerPoint()}");
  print("Beast Titan ability: ${beastTitan.lempar()}");

  print("Human PowerPoint: ${human.getPowerPoint()}");
  print("Human ability: ${human.killAlltitan()}");
}
