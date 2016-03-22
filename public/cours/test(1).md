# Sujets du Qcm

## Javascript/jQuery

$('.class').html('truc');

$ est jQuery

.class est un selecteur css
``` html
  <div data-position="1"></div>

<div data-position="2"></div>
```
dataset
``` javascript
function myClick() {
  alert(this.dataset.position);
}
```

### Les boucles

- while

``` javascript
var i = 0;
while(i < 10) {
  // du code
  i++;
}
```

- for

``` javascript
for(i = 0; i < 10; i++) {
  // du code
}
```

### Les tableaux

``` javascript
tab = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8]
];
```

``` javascript
tab[0][2] = 2;
tab[2][1] = 7;
tab[1][2] = 5;
```

Attention aux fautes dans le Qcm

### Les objets

``` javascript
function User(id, name) {
  this.id = id;
  this.name = name;
}

User.prototype.test = function() {
  alert(this.name);
}

var user = new User(1, 'toto');

```

public,
private,
protected,

- L'encapsulation n'existe pas en Javascript

- L'encapsulation c'est la visibilité des variables

- Le prototype c'est là où on met les méthodes

sessionStorage -> volatile
localStorage -> persistant

XmlHttpRequest => ajax

``` javascript
var tab = [1, 2, 3, 4];
tab.foreach(function(value) {
  alert('value');
});

$('document').ready(function() {
  'body';
});
```
### Les types

Bool
Undefined
Number
String
Object   // les array ne sont pas des types
Null

## Php

$_GET est sensible à la casse

isset => est défini
$tab['page'] = null;

isset($page['page']); false

array_key_exists($tab['page']); true

### Héritage

on hérite de tout ce qui n'est pas private
max 1 class

abstract
Méthode abstraite => la classe est forcement abstraite en entier

Quand on hérite d'un classe abstraite on doit réécrire toutes les méthodes abstraites

(true || false) && true && $var

Polymorphisme
Une classe abstraite dont plusieurs classes héritent

Structures de contrôle du flux d'execution => conditions ou boucles

### POO Programmation Orientée Objet

Exceptions

### Sécurité

injection sql
xss -> cross site scripting

SQL -> INSERT '/#
mysqli_real_escape_string
PDO::quote -> stringintval -> int
floatval -> float

### Mvc

- Models -> Objets -> Db Coeur
- Views -> Vues -> Html -> moteur de template -> Twig/Smarty
- Controller -> Routes -> liens -> vues -> manager -> form

héritage -> hériter d'un parent -> êtres
composition -> utiliser une autre class -> avoir

- Canvas -> Js
- Svg -> Html

### Http
client -> Xml -> html
server -> json -> Api

### Parcourir un tableau associatif

$tab = [
  'a' => 'b',
  'b' => 'c',
  'age' => 42
];

foreach($tab as $k => $v) {
  $tab;
  $key -> a, b, age
  $value -> b, c, 42
}

Foreach sert exclusivement pour parcourir un tableau associatif mais on ne doit pas l'utiliser parce que c'est 800 fois plus lent qu'un while ou un for, donc on s'en bat les steaks

Syntaxe alternative dans les vues pour les structures de contrôle

### Fonction d'aggrégation Sql

AVG -> moyenne
MIN -> minimum
MAX -> 1 seul résultat celui qui est le maximum
SUM -> la somme
COUNT -> le compte
-----------------------------------------------------------
clé primaire -> id (unique/auto-increment/index)
clé étrangère -> id_xxx index

User          Comment
id            # id
login         @ user_id
email         content (on s'en bât les steaks)

Relation

Jointures
SELECT * FROM comment LEFT JOIN user ON user.id = comment.user_id

http://jojo:lapin@exemple.com:8888/chemin/d/acces.php?q=req&a=req2#signet

