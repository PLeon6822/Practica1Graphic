#include "colors.inc"
#include "glass.inc" 
#include "shapes.inc"
#include "shapesq.inc"
#include "shapes2.inc"        

//*****************************   DADOS   *****************************

union{          
    ///DADO 1 - FILA SUPERIOR 
    difference{
        superellipsoid{ <0.15,0.15> 
            texture{ 
                pigment{ color rgb<1,0.05,0,0.9> }   finish { specular 0.5 diffuse 0.8 }} // end of texture
            scale <5,5,5>  
            translate<5,3.1,5>
        } // -------------- end superellipsoid
        
        //2
        sphere{<2.5,5.5,0> 1 } sphere{<7,1,0> 1     }      //End of 2
        
        //1
        sphere{<5,8,5> 1  }  //End of 1
        
        //5
        sphere{<5,3.5,10> 1   } sphere{ <2.5,6,10> 1  } sphere{ <7.5,6,10> 1  } sphere{<2.5,0.5,10> 1 } sphere{<7.5,0.5,10> 1 } //End of 5
        
        //3  
        sphere{<0,5.5,2.5> 1 } sphere{<0,3.25,5> 1 }  sphere{<0,0.5,7.5> 1 }   //End of 3
        
        //4  
        sphere{<10,1,2.5> 1 } sphere{<10,1,7.5> 1 } sphere{<10,6,2.5> 1 } sphere{<10,6,7.5> 1 }    //End of 4
        
        //6
        sphere{<7.5,-1.5,2.5> 1 } sphere{<5,-1.5,2.5> 1   } sphere{<2.5,-1.5,2.5> 1 } sphere{<7.5,-1.5,7.5> 1 } sphere{<5,-1.5,7.5> 1   } sphere{<2.5,-1.5,7.5> 1 }
    
        rotate<0,5,0>   translate<0,10,0>     texture{pigment{ color rgb <1,1,1> }}
    }  
        
        
    ///DADO 2 - FILA SUPERIOR 
    difference{
        superellipsoid{ <0.15,0.15> 
            texture{ 
                pigment{ color rgb <1,0.05,0,0.9> }   finish { specular 0.5 diffuse 0.8 }} // end of texture
            scale <5,5,5>  
            translate<5,3.1,5>
        } // -------------- end superellipsoid
        
        
        //2
        sphere{<2.5,5.5,0> 1 } sphere{<7,1,0> 1     }      //End of 2
        
        //1
        sphere{<5,8,5> 1  }   //End of 1
        
        //5
        sphere{<5,3.5,10> 1   } sphere{ <2.5,6,10> 1  } sphere{ <7.5,6,10> 1  } sphere{<2.5,0.5,10> 1 } sphere{<7.5,0.5,10> 1 } //End of 5
        
        //3  
        sphere{<0,5.5,2.5> 1 } sphere{<0,3.25,5> 1 }  sphere{<0,0.5,7.5> 1 }  //End of 3
        
        //4  
        sphere{<10,1,2.5> 1 } sphere{<10,1,7.5> 1 } sphere{<10,6,2.5> 1 } sphere{<10,6,7.5> 1 }   //End of 4
        
        //6
        sphere{<7.5,-1.5,2.5> 1 } sphere{<5,-1.5,2.5> 1   } sphere{<2.5,-1.5,2.5> 1 } sphere{<7.5,-1.5,7.5> 1 } sphere{<5,-1.5,7.5> 1   } sphere{<2.5,-1.5,7.5> 1 }
        
        rotate<90, -80,2>   translate<21,18,-2>   texture{pigment{ color rgb <1,1,1> }}
    }
    
    
    
    ///DADO 1 - FILA INFERIOR 
    difference{
        superellipsoid{ <0.15,0.15> 
            texture{ 
                pigment{ color rgb <1,0.05,0,0.9> }   finish { specular 0.5 diffuse 0.8 }} // end of texture
            scale <5,5,5>  
            translate<5,3.1,5>
        } // -------------- end superellipsoid
        
        //2
        sphere{<2.5,5.5,0> 1 } sphere{<7,1,0> 1     }     //End of 2
        
        //1
        sphere{<5,8,5> 1  }  //End of 1
        
        //5
        sphere{<5,3.5,10> 1   } sphere{ <2.5,6,10> 1  } sphere{ <7.5,6,10> 1  } sphere{<2.5,0.5,10> 1 } sphere{<7.5,0.5,10> 1 }  //End of 5
        
        //3  
        sphere{<0,5.5,2.5> 1 } sphere{<0,3.25,5> 1 }   sphere{<0,0.5,7.5> 1 }   //End of 3
        
        //4  
        sphere{<10,1,2.5> 1 } sphere{<10,1,7.5> 1 } sphere{<10,6,2.5> 1 } sphere{<10,6,7.5> 1 }   //End of 4
        
        //6
        sphere{<7.5,-1.5,2.5> 1 } sphere{<5,-1.5,2.5> 1   } sphere{<2.5,-1.5,2.5> 1 } sphere{<7.5,-1.5,7.5> 1 } sphere{<5,-1.5,7.5> 1   } sphere{<2.5,-1.5,7.5> 1 }
        
        rotate<-2, 270,90>   translate<3,8,1>    texture{pigment{ color rgb <1,1,1> }}     
    }
    
    
    ///DADO 2 - FILA INFERIOR 
    difference{
        superellipsoid{ <0.15,0.15> 
            texture{ 
                pigment{ color rgb <1,0.05,0,0.9> }   finish { specular 0.5 diffuse 0.8 }} // end of texture
            scale <5,5,5>  
            translate<5,3.1,5>
        } // -------------- end superellipsoid
        
        
        //2
        sphere{<2.5,5.5,0> 1 } sphere{<7,1,0> 1     }      //End of 2
        
        //1
        sphere{<5,8,5> 1  }   //End of 1
        
        //5
        sphere{<5,3.5,10> 1   } sphere{ <2.5,6,10> 1  } sphere{ <7.5,6,10> 1  } sphere{<2.5,0.5,10> 1 } sphere{<7.5,0.5,10> 1 }   //End of 5
        
        //3  
        sphere{<0,5.5,2.5> 1 } sphere{<0,3.25,5> 1 }   sphere{<0,0.5,7.5> 1 }  //End of 3
        
        //4  
        sphere{<10,1,2.5> 1 } sphere{<10,1,7.5> 1 } sphere{<10,6,2.5> 1 } sphere{<10,6,7.5> 1 }  //End of 4
        
        //6
        sphere{<7.5,-1.5,2.5> 1 } sphere{<5,-1.5,2.5> 1   } sphere{<2.5,-1.5,2.5> 1 } sphere{<7.5,-1.5,7.5> 1 } sphere{<5,-1.5,7.5> 1   } sphere{<2.5,-1.5,7.5> 1 }
        
        
        rotate<185,5,90>   translate<9.5,-1,10>     texture{pigment{ color rgb <1,1,1> }}
    }  
    
    
    
    ///DADO 3 - FILA INFERIOR 
    
    difference{
        superellipsoid{ <0.15,0.15> 
            texture{ 
                pigment{ color rgb <1,0.05,0,0.9> }   finish { specular 0.5 diffuse 0.8 }} // end of texture
            scale <5,5,5>  
            translate<5,3.1,5>
        } // -------------- end superellipsoid
        
        
        //2
        sphere{<2.5,5.5,0> 1 } sphere{<7,1,0> 1     }     //End of 2
        
        //1
        sphere{<5,8,5> 1  }  //End of 1
        
        //5
        sphere{<5,3.5,10> 1   } sphere{ <2.5,6,10> 1  } sphere{ <7.5,6,10> 1  } sphere{<2.5,0.5,10> 1 } sphere{<7.5,0.5,10> 1 }//End of 5
        
        //3  
        sphere{<0,5.5,2.5> 1 } sphere{<0,3.25,5> 1 }   sphere{<0,0.5,7.5> 1 }  //End of 3
        
        //4  
        sphere{<10,1,2.5> 1 } sphere{<10,1,7.5> 1 } sphere{<10,6,2.5> 1 } sphere{<10,6,7.5> 1 }   //End of 4
        
        //6
        sphere{<7.5,-1.5,2.5> 1 } sphere{<5,-1.5,2.5> 1   } sphere{<2.5,-1.5,2.5> 1 } sphere{<7.5,-1.5,7.5> 1 } sphere{<5,-1.5,7.5> 1   } sphere{<2.5,-1.5,7.5> 1 }
    
        rotate<9,5,90>   translate<26.5,-2,-2>   texture{pigment{ color rgb <1,1,1> }}
    }

       scale 0.5
}       
       
       
       
       
       
       
       
       
       
//*****************************   TAZA   *****************************

///sor Surface of Revolution 
union{
    difference{
        sor{
          8,
          <0, 0>
          <7, 0> 
          <9, 2>  
          <14, 4>
          <16, 7.5>
          <16, 20>
          <16, 24>
          <16, 27>
        
            //  sturm  // optional!
            material{   //-----------------------------------------------------------
                texture { 
                            pigment{ color rgb <0.0005, 0.0005, 0.0005> }
                          finish { reflection{ 0}   
                                   specular 0.05 phong 0.5 }
                        } // end of texture -------------------------------------------
               
              } // end of material ----------------------------------------------------
           scale 1  rotate<0,0,0> translate<10,0,0>
        } // end of sor --------------------------------- 
        
        
        sor{
          7,
          <0, 0>
          <9, 2>  
          <14, 4>
          <16, 7.5>
          <16, 20>
          <16, 24>
          <16, 27>
        
            //  sturm  // optional!
            material{   //-----------------------------------------------------------
                texture { pigment{ color rgb <0, 0, 0> }
                          finish { reflection{ 0.000000005 }   
                                   specular 0 phong 0.5 }
                        } // end of texture -------------------------------------------
               
              } // end of material ----------------------------------------------------
           scale 0.93  rotate<0,0,0> translate<10,3,0>
        } // end of sor --------------------------------- 
    }   
    torus { 15.45,0.55 
        texture { pigment{ color rgb<0,0,0>}
                  finish { phong 0.5 reflection { 0 } specular 0.3}
                } // end of texture
        scale <1,1,1> rotate<0,0,0> translate<10,23.9,0>
      } // end of torus  -------------------------------              

    translate <30, 0, 10>   scale 0.9
}
       
       
       







//*****************************   MASAJE   *****************************     
union{
    union{   
    
        
                 //ESFERA PEQUE�A               
        sphere { <0,0,0>, 4  scale<2,2,2>  rotate<0,0,0>  translate<0,6,0> }  // end of sphere ----------------------------------- 
                      
         
                //PALO ESFERA PEQUE�A
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
       





       
       

camera {
    location <12, 30, -80>
    look_at <15, 0, 10>
}

light_source {
    <30, 50, -60>
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
