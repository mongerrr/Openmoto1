module plate(){
    import("/Users/aaron/Documents/plate\ model/smooth.stl", convexity=3);
};

module mount(){
    bmx=14;
    bmy=12;
    bmz=6;
    difference(){
hull(){
    translate([-85,-84,6.5])cube([1,1,1],  centre=true);
    translate([-85,-85+bmy,12])cube([1,1,1],  centre=true);
    translate([-85+bmx,-85,8])cube([1,1,1],  centre=true);
    translate([-85+bmx,-85+bmy,13])cube([1,1,1],  centre=true);
    translate([-85,-84,6-bmz])cube([1,1,1],  centre=true);
    translate([-85,-85+bmy,6-bmz])cube([1,1,1],  centre=true);
    translate([-85+bmx,-84,6-bmz])cube([1,1,1],  centre=true);
    translate([-85+bmx,-85+bmy,6-bmz])cube([1,1,1],  centre=true);
};
translate([-88+0.5*bmx,-86,2])cube([7,100,3]);
};
};

module mount2(){
    bmx=14;
    bmy=12;
    bmz=5;
    difference(){
hull(){
    translate([40,-90,12.5])cube([1,1,1],  centre=true);
    translate([40,-90+bmy,16])cube([1,1,1],  centre=true);
    translate([40+bmx,-90,12.2])cube([1,1,1],  centre=true);
    translate([40+bmx,-90+bmy,16])cube([1,1,1],  centre=true);
    translate([40,-90,7-bmz])cube([1,1,1],  centre=true);
    translate([40,-90+bmy,7-bmz])cube([1,1,1],  centre=true);
    translate([40+bmx,-90,7-bmz])cube([1,1,1],  centre=true);
    translate([40+bmx,-90+bmy,7-bmz])cube([1,1,1],  centre=true);
};
translate([37+0.5*bmx,-92,5])cube([7,100,3]);
};
};

module pen(){
difference(){
    px=40;
    py=39.5;
    pz=17.75;
translate([px,py,pz])rotate([0,90,0])cylinder(h=10,r1=9,r2=9,centre=true);
translate([px-1,py,pz])rotate([0,90,0])cylinder(h=14,r1=7,r2=7,centre=true);
};
};

a=10;
b=-9.8;
c=-5;
x=68;
y=-13;
z=32;

union(){
difference(){
union(){
mirror([0,1,0]){
difference(){
translate([a,b,c])
   rotate([x,y,z])plate();

translate([-130,-200,-50])cube([300,200,100], centre=true);
};
};

difference(){
translate([a,b,c])
   rotate([x,y,z])plate();

translate([-130,-200,-50])cube([300,200,100], centre=true);
};

mount();
mirror([0,1,0])mount();
mount2();
mirror([0,1,0])mount2();
};

fw=90;
fz=-19.5;
translate([-250,-fw,fz])rotate([0,89.5,0])cylinder(h=500,r1=19.5,r2=19.5,centre=true);

translate([-250,fw,fz])rotate([0,89.5,0])cylinder(h=500,r1=19.5,r2=19.5,centre=true);
};
 pen();
translate([-35,0,-0.5])pen();
hull(){
  translate([45,25,27.8])sphere(r=2);
  translate([45,25,20])sphere(r=2);  
     translate([46,25,19])sphere(r=1);
    translate([44,25,19])sphere(r=1);
 };
hull(){
  translate([45,-25,27.8])sphere(r=2);
  translate([45,-25,20])sphere(r=2);  
     translate([46,-25,19])sphere(r=1);
    translate([44,-25,19])sphere(r=1);
 };
 hull(){
  translate([46,25,19])sphere(r=1);
  translate([46,-25,19])sphere(r=1); 
    translate([44,25,19])sphere(r=1);
  translate([44,-25,19])sphere(r=1);  
 };
};
