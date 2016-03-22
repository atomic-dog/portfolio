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