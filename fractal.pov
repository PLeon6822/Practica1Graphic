#include "colors.inc"  
#include "textures.inc"

camera {
    location<5,0,5>
    look_at<0,0,0>
}   
light_source {
    <0,0.5,0>
    color rgb <1,1,1>
}
light_source {
    <0,1,0>
    color rgb <1,1,1>			// Decidimos incluir tres fuentes de luz para aumentar la cantidad de sombras que generan las piramides de Sierpinski
}								// Todas las luces estan en el interior de las piramides
light_source {
    <0,1.5,0>
    color rgb <1,1,1>
}             
plane { //Floor
    <0,1,0>, -2 //Normal and distance
    texture {
        pigment {    
            color rgb <1,1,1>
        }                 
    }                     
    finish {
        reflection 0
    }
}
background {
    color rgb <0.2,0.2,0.2>
}



#macro pyramid(pos,siz,rec)

   #local halfsize = siz / 2;   

   #if (rec <= 0)	// Si la iteracion de recursividad es menor o igual a 0, se crea la piramide (4 triangulos de lados y 2 de base)
      
      triangle { pos,pos+< halfsize,-siz, halfsize>,pos+<-halfsize,-siz, halfsize> texture { pigment { color rgb <1,1,1, 0.9> } } finish { phong 0.2 } interior { ior 1.33 caustics 1 } }
      triangle { pos,pos+<-halfsize,-siz, halfsize>,pos+<-halfsize,-siz,-halfsize> texture { pigment { color rgb <1,1,1, 0.9> } } finish { phong 0.2 } interior { ior 1.33 caustics 1 } }
      triangle { pos,pos+<-halfsize,-siz,-halfsize>,pos+< halfsize,-siz,-halfsize> texture { pigment { color rgb <1,1,1, 0.9> } } finish { phong 0.2 } interior { ior 1.33 caustics 1 } }   
      triangle { pos,pos+< halfsize,-siz,-halfsize>,pos+< halfsize,-siz, halfsize> texture { pigment { color rgb <1,1,1, 0.9> } } finish { phong 0.2 } interior { ior 1.33 caustics 1 } }  

      triangle { pos+< halfsize,-siz, halfsize>,pos+<-halfsize,-siz, halfsize>,pos+<-halfsize,-siz,-halfsize> texture { pigment { color rgb <1,1,1,0.9> } } finish { phong 0.2 } interior { ior 1.33 caustics 1 } }
      triangle { pos+<-halfsize,-siz,-halfsize>,pos+< halfsize,-siz,-halfsize>,pos+< halfsize,-siz, halfsize> texture { pigment { color rgb <1,1,1,0.9> } } finish { phong 0.2 } interior { ior 1.33 caustics 1 } }
      
   #else	// Si la iteracion es mayor que 0, se "encolan" una piramide superior de halfsize y 4 piramides de fourthsize en cada esquina inferior

      #local fourthsize = halfsize / 2;

      pyramid(pos,halfsize,rec-1)

      pyramid(pos+< fourthsize,-halfsize, fourthsize>,halfsize,rec-1)
      pyramid(pos+<-fourthsize,-halfsize, fourthsize>,halfsize,rec-1)
      pyramid(pos+<-fourthsize,-halfsize,-fourthsize>,halfsize,rec-1)
      pyramid(pos+< fourthsize,-halfsize,-fourthsize>,halfsize,rec-1)
      calc(pos, pos+< fourthsize,-halfsize, fourthsize>,pos+<-fourthsize,-halfsize, fourthsize>,pos+<-fourthsize,-halfsize,-fourthsize>,pos+< fourthsize,-halfsize,-fourthsize>, halfsize)
      // Tras las piramides se agregan 3 triangulos en cada lateral de la piramide superior, a modo de "aumentar" el efecto visual
   #end
#end   

#macro calc(top, pos1, pos2, pos3, pos4, siz)		// Macro de creacion de paneles laterales (triangulos en los lados de cada piramide) Su size es la cuarta parte (fourthsize) del size original

    #local halfsize = siz/2;
    #local fourthsize = halfsize/2;
    #local doublesize = siz*2;
    //Cara 1
    triangle { pos1,pos1+<-halfsize,0,0>,pos1+<-fourthsize,-halfsize,fourthsize> texture { pigment { color rgb <1,1,1, 0.5> } } finish { phong 0.2 } interior { ior 1.33 caustics 1 }}
    triangle { pos2,pos1+<-halfsize,0,0>,pos1+<-halfsize-fourthsize,-halfsize,fourthsize> texture { pigment { color rgb <1,1,1, 0.5> } } finish { phong 0.2 } interior { ior 1.33 caustics 1 }}
    triangle { pos1+<-fourthsize,-halfsize,fourthsize>,pos1+<-halfsize-fourthsize,-halfsize,fourthsize>,top-<0,doublesize,-siz> texture { pigment { color rgb <1,1,1, 0.5> } } finish { phong 0.2 } interior { ior 1.33 caustics 1 }}
    //Cara 2
    triangle { pos2,pos2+<0,0,-halfsize>,pos2+<-fourthsize,-halfsize,-fourthsize> texture { pigment { color rgb <1,1,1, 0.5> } } finish { phong 0.2 } interior { ior 1.33 caustics 1 }}
    triangle { pos3,pos2+<0,0,-halfsize>,pos2+<-fourthsize,-halfsize,-fourthsize-halfsize> texture { pigment { color rgb <1,1,1, 0.5> } } finish { phong 0.2 } interior { ior 1.33 caustics 1 }}
    triangle { pos2+<-fourthsize,-halfsize,-fourthsize>,pos2+<-fourthsize,-halfsize,-fourthsize-halfsize>,top-<siz,doublesize,0> texture { pigment { color rgb <1,1,1, 0.5> } } finish { phong 0.2 } interior { ior 1.33 caustics 1 }}
    //Cara 3
    triangle { pos3,pos3+<halfsize,0,0>,pos3+<fourthsize,-halfsize,-fourthsize> texture { pigment { color rgb <1,1,1, 0.5> } } finish { phong 0.2 } interior { ior 1.33 caustics 1 }}
    triangle { pos4,pos3+<halfsize,0,0>,pos3+<fourthsize+halfsize,-halfsize,-fourthsize> texture { pigment { color rgb <1,1,1, 0.5> } } finish { phong 0.2 } interior { ior 1.33 caustics 1 }}
    triangle { pos3+<fourthsize,-halfsize,-fourthsize>,pos3+<fourthsize+halfsize,-halfsize,-fourthsize>,top-<0,doublesize,siz> texture { pigment { color rgb <1,1,1, 0.5> } } finish { phong 0.2 } interior { ior 1.33 caustics 1 }}
    //Cara 4
    triangle { pos4,pos4+<0,0,halfsize>,pos4+<fourthsize,-halfsize,fourthsize> texture { pigment { color rgb <1,1,1, 0.5> } } finish { phong 0.2 } interior { ior 1.33 caustics 1 }}
    triangle { pos1,pos4+<0,0,halfsize>,pos4+<fourthsize,-halfsize,fourthsize+halfsize> texture { pigment { color rgb <1,1,1, 0.5> } } finish { phong 0.2 } interior { ior 1.33 caustics 1 }}
    triangle { pos4+<fourthsize,-halfsize,fourthsize>,pos4+<fourthsize,-halfsize,fourthsize+halfsize>,top-<-siz,doublesize,0> texture { pigment { color rgb <1,1,1, 0.5> } } finish { phong 0.2 } interior { ior 1.33 caustics 1 }}
    
	// Para determinar los puntos necesarios hicimos los calculos basandonos en los 5 puntos de entrada (el pico y las 4 esquinas de la piramide superior)

#end
      
pyramid(<0,1,0>,2,3) 

object { merge {pyramid(<0,0.5,0>2,3)} rotate <0,0,180> }	// Con el fin de aumentar el efecto visual, agregamos una piramide invertida sobre una sin voltear
