#include "shapes.inc"
#include "shapesq.inc"
#include "shapes2.inc"
// various (mostly layered) wood textures
// T_Wood1 - T_Wood35
#include "woods.inc"
                     
union{   
union{
    
             //ESFERA PEQUEÑA               
    sphere { <0,0,0>, 4  scale<2,2,2>  rotate<0,0,0>  translate<0,6,0> }  // end of sphere ----------------------------------- 
                  
     
            //PALO ESFERA PEQUEÑA
    intersection{
        box{ <-2,-1.4,-2.5>,<2.2, 2,2.5> } 
        object{ Hyperboloid_Y }
        scale <1.2,2.3,1>*3.5 rotate<0,0,0> translate<0,21,0.0> } // end of intersection  -----------------------------
            
    
            //ESFERA CENTRAL
    sphere { <0,0,0>, 4   scale<2.4,2.4,2.4>  rotate<0,0,0>  translate<0,39.5,0> }  // end of sphere ----------------------------------- 
                                
    
    union{   
            //ESFERA GRANDE
        sphere { <0,0,0>, 4 scale<2.6,2.6,2.6>  rotate<0,0,0>  translate<20,52,-14.5>  }  // end of sphere ----------------------------------- 
        
       
            //PALO ESFERA GRANDE
        intersection{
            box{ <-2,-1,-2.5>,<2.2, 1,2.5> } 
            object{ Hyperboloid_Y }
            scale <1.2,2.1,1>*3.5 rotate<40,0,120> translate<10,46,-5> } // end of intersection  -----------------------------    
                                          
        rotate<-7, -25, -7>   translate <-6, -3, 0>
    }          
    
    
    union{   
            //ESFERA MEDIANA
        sphere { <0,0,0>, 4  scale<2.3,2.3,2.3>  rotate<0,0,0>  translate<-19.5,47,-16> }  // end of sphere ----------------------------------- 
        
            //PALO ESFERA MEDIANA
        intersection{
            box{ <-2,-1.2,-2.5>,<2.2, 1.5,2.5> } 
            object{ Hyperboloid_Y }
            scale <1.2,2.1,1>*3.5 rotate<35,0,-120> translate<-10,42,-8> } // end of intersection  -----------------------------    
        
        rotate<0, 0, 0>   translate <0, 0, 0>   
    }    
    
    
    
    union{   
            //ESFERA SUPERIOR
        sphere { <0,0,0>, 4   scale<2,2,2>  rotate<0,0,0>  translate<-18.5,47,-16> }  // end of sphere ----------------------------------- 
        
                     
            //PALO ESFERA SUPERIOR
        intersection{
            box{ <-2,-1.2,-2.5>,<2.2, 1.5,2.5> } 
            object{ Hyperboloid_Y }
            scale <1.2,2.1,1>*3.5 rotate<35,0,-120> translate<-10,42,-8> } // end of intersection  -----------------------------    
        
        rotate<0, 120, 0>   translate <0, 3.5, 2>    scale 1
         
    }   
    texture { pigment{ color rgb<0.4, 0.576, 0.486>}  }  
    scale 0.5        rotate<110,40,180>    translate<0,1,0.0>
}
    
 rotate<0, 60, 0>   translate <-10, 0, 30>   
}

/* //CAMARA BAJA BOLA MEDIANA
camera {
    location <-50, 0, 70>
    look_at <-10, 0, 10>
} */



/* //CAMARA VISTA PAJARO
camera {
    location <-6, 80, 20>
    look_at <0, 0, 0>
} */


 //CAMARA VISTA GRANDE
camera {
    location <0, 0, -80>
    look_at <10, 0, 10>
}   



/*  //CAMARA VISTA SUPERIOR
camera {
    location <10, 40, -50>
    look_at <10, 0, 10>
} */

/*  //CAMARA VISTA SUPERIOR  GIRADA
camera {
    location <40, 80, -80>
    look_at <10, 0, 10>
} */
   
   
/*   //LIGHT DELANTE
light_source {
    <30, 50, -60>
    color rgb <0.9, 0.85, 0.6>
}*/  


   //LIGHT DETRAS
light_source {
    //<30, 50, 60>     
    <-6, 80, 20>
    color rgb <0.9, 0.85, 0.6>
}


plane {
    <0,1,0>, -2  
    texture {       
        pigment {
            color rgb <1,1,1>
        }
    }
}        