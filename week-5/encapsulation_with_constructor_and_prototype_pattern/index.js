function Pen() {
  this._sheepCount = [];
};

function Sheep(name) {
  this._name = name;
};


Sheep.prototype.show = function() {
  return this._name;
};

Pen.prototype.sheepCount = function() {
  list = [];
   this._sheepCount.forEach(function(names) {
    list.push(names.show());
  })
  return list;
};

Pen.prototype.addSheep = function(newSheep) {
  this._sheepCount.push(newSheep)
};
var sheep1 = new Sheep("Gary");
var sheep2 = new Sheep("Em")

var pen = new Pen();
pen.addSheep(sheep1);
pen.addSheep(sheep2);
console.log(pen);
console.log(sheep1.show());
console.log(pen.sheepCount());