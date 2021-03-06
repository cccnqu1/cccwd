var Complex = {
  add:function(c2) {
    return createComplex(this.r+c2.r, this.i+c2.i);
  }
}

var createComplex=function(r,i) {
  var c = Object.create(Complex);
  c.r = r;
  c.i = i;
  return c;
}

var c = console;

var c1=createComplex(1,2), c2=createComplex(2,1);

var c3 = c1.add(c2).add(c2).add(c2).add(c2);

c.log("c1=%j", c1);
c.log("c2=%j", c2);
c.log("c1.add(c2)=%j", c1.add(c2));
c.log("c3=%j", c3);
