# Geomancer

A simple program for doing geomancy readings, 
building ascii geomantic charts, reading basic 
information on each geomantic figure and combining 
any two figures together.

## Install

You can install this geomancer by downloading 
a [pre-compiled binary]() or by running the 
following command if you have Nim and Nimble 
installed:

```
nimble install geomancer
```

## Usage

You can get a random geomancy reading with 
the command `geomancer chart` which will give 
you a shield chart like this one

```shell
$ geomancer chart
Shield Chart
+---Daughters---+----Mothers----+
|• •| • |• •|• •| • | • |• •|• •|
|• •|• •| • |• •| • | • | • |• •|
| • |• •| • | • | • |• •|• •| • |
|• •| • | • | • |• •| • |• •|• •|
+---+---+---+---+---+---+---+---+
|   •   |  • •  |  • •  |  • •  |
|  • •  |   •   |  • •  |   •   |
|   •   |  • •  |   •   |   •   |
|   •   |  • •  |   •   |  • •  |
+-------+-------+-------+-------+
|       •       |       •       |
|       •       |       •       |
|       •       |       •       |
|       •       |       •       |
+---------------+---------------+
|               •               |
|              • •              |
|               •               |
|              • •              |
+-------------------------------+
```

You can get an additional house chart for 
more detailed readings by adding the `house` 
option.

```
$ geomancer chart house
Shield Chart
+---Daughters---+----Mothers----+
| • | • |• •|• •|• •|• •|• •|• •|
| • | • | • |• •|• •|• •| • |• •|
| • | • |• •|• •|• •| • | • | • |
|• •|• •|• •|• •|• •| • | • | • |
+---+---+---+---+---+---+---+---+
|  • •  |  • •  |  • •  |  • •  |
|  • •  |   •   |  • •  |   •   |
|  • •  |  • •  |   •   |  • •  |
|  • •  |  • •  |   •   |  • •  |
+-------+-------+-------+-------+
|      • •      |      • •      |
|       •       |       •       |
|      • •      |      • •      |
|      • •      |      • •      |
+---------------+---------------+
|              • •              |
|              • •              |
|               •               |
|               •               |
+-------------------------------+
House Chart
+---------------------------+
|\    • •    / \    • •    /|
| \    •    /   \    •    / |
|  \  • •  / • • \  • •  /  |
|   \ • • /  • •  \ • • /   |
|• • \   /    •    \   /  • |
|• •  \ /     •     \ /   • |
|• •  /+-------------+\   • |
|• • / | • •     • • | \ • •|
|   /  |  •       •  |  \   |
|  /   | • •     • • |   \  |
| / • •| • •     • • | •  \ |
|/  • •|             | •   \|
|\   • |     • •     | •   /|
| \  • |     • •     |• • / |
|  \   |      •      |   /  |
|   \  |      •      |  /   |
|• • \ |             | / • •|
| •   \+-------------+/   • |
| •   / \    • •    / \  • •|
| •  /   \   • •   /   \ • •|
|   / • • \  • •  / • • \   |
|  /  • •  \ • • /  • •  \  |
| /    •    \   /   • •   \ |
|/     •     \ /    • •    \|
+---------------------------+
```

If you prefer generating the four mothers 
with more traditional methods or would like
to generate an ascii chart for an existing 
reading then use `--build/-b` option to input 
the four mothers. You will need to wrap 
Caput/Cauda Draconis and Fortuna Major/Minor 
in quotes.

```shell
$ geomancer chart -b "Caput Draconis" Via Puer Albus
Shield Chart
+---Daughters---+----Mothers----+
|• •| • | • | • |• •| • | • | • |
| • | • | • | • |• •| • | • | • |
| • |• •| • | • | • |• •| • | • |
|• •| • |• •|• •|• •| • | • |• •|
+---+---+---+---+---+---+---+---+
|   •   |  • •  |   •   |  • •  |
|  • •  |  • •  |   •   |  • •  |
|   •   |  • •  |   •   |  • •  |
|   •   |  • •  |   •   |   •   |
+-------+-------+-------+-------+
|       •       |       •       |
|      • •      |       •       |
|       •       |       •       |
|       •       |      • •      |
+---------------+---------------+
|              • •              |
|               •               |
|              • •              |
|               •               |
+-------------------------------+
```

Alternatively, you can use a minimalist notation 
for each figure using the `.` and `:` characters.

```shell
$ geomancer chart --build .:.. :.:. :..: :::.
Shield Chart
+---Daughters---+----Mothers----+
| • | • |• •| • |• •|• •|• •| • |
| • |• •| • |• •|• •| • | • |• •|
|• •| • | • |• •|• •| • |• •| • |
| • |• •|• •|• •| • |• •| • | • |
+---+---+---+---+---+---+---+---+
|  • •  |   •   |  • •  |   •   |
|   •   |   •   |   •   |   •   |
|   •   |   •   |   •   |   •   |
|   •   |  • •  |   •   |  • •  |
+-------+-------+-------+-------+
|       •       |       •       |
|      • •      |      • •      |
|      • •      |      • •      |
|       •       |       •       |
+---------------+---------------+
|              • •              |
|              • •              |
|              • •              |
|              • •              |
+-------------------------------+
```

You can combine any two figures together with the `sum` 
command.

```shell
$ geomancer sum ::.: ..:.
Combination of 1: Albus and 2: Puer

 1     2
• •    •
• •    •
 •    • •
• •    •

3: Via
 •
 •
 •
 •
```

Finally, you get basic information on any figure with 
the `info` command.

```shell
$ geomancer info Carcer
Figure Information: Carcer

 •     Fire
• •    Air
• •    Water
 •     Earth

Outer Element: Earth
Inner Element: Earth
Planet: Saturn
Sign: Capricorn
Houses: Carcer is strengthened in the tenth house and weakened in the fourth
```

## License

This program is licensed under the Unlicense license.
