#include "colors.inc"
#include "glass.inc" 


difference{
    superellipsoid{ <0.15,0.15> 

        texture{ 
     
            pigment{ color rgb<1,0,0,0.6> }
                finish { specular 0.5 diffuse 0.8 }
            } // end of texture
        scale <5,5,5> 
        rotate<0,0,0> 
        translate<5,3.1,5>
    } // -------------- end superellipsoid
    
    
    //2
    sphere{<2.5,5.5,0> 1
         texture{ pigment {color White}}
    } 
    sphere{<7,1,0> 1
         texture{ pigment {color White}}
    }     
    //End of 2
    
    //1
    sphere{<5,8,5> 1
         texture{pigment {color White}}
    }  
    //End of 1
    
    //5
     sphere{<5,3.5,10> 1
         texture{ pigment {color White}}
    } 
    sphere{ <2.5,6,10> 1
         texture{pigment {color White}}
    }
    sphere{ <7.5,6,10> 1
         texture{pigment {color White}}
    }
    sphere{<2.5,0.5,10> 1
         texture{pigment {color White}}
    }
    sphere{<7.5,0.5,10> 1
         texture{ pigment {color White}}
    }
    //End of 5
    
    //4  
    sphere{<0,5.5,2.5> 1
         texture{pigment {color White}}
    } 
    sphere{<0,5.5,7.5> 1
         texture{pigment {color White}} 
    } 
    sphere{<0,0.5,2.5> 1
         texture{pigment {color White}}
    } 
    sphere{<0,0.5,7.5> 1
         texture{pigment {color White}}
    } 
    //End of 4
    
    //3  
    sphere{<10,1,2.5> 1
         texture{pigment {color White}}
    } 
    sphere{<10,3.5,5> 1
         texture{pigment {color White}}
    } 
    sphere{<10,6,7.5> 1
         texture{pigment {color White}}
    }  
    //End of 3
    
    //6
    sphere{<7.5,-1.5,2.5> 1
         texture{pigment {color White}}
    } 
    sphere{<5,-1.5,2.5> 1
         texture{pigment {color White}}
    }
    sphere{<2.5,-1.5,2.5> 1
         texture{pigment {color White}}
    }
    sphere{<7.5,-1.5,7.5> 1
         texture{pigment {color White}}
    } 
    sphere{<5,-1.5,7.5> 1
         texture{pigment {color White}}
    }
    sphere{<2.5,-1.5,7.5> 1
         texture{pigment {color White}}
    }
    
    
    rotate<0, 0,0>   
    translate<0,0,0>
}

camera {
    location <13, 20, -40>
    look_at <0, 10, 10>
}

light_source {
    <-20, 10, -20>
    color rgb <1, 1, 1>
} 

plane {
    <0,1,0>, -2  
    texture {       
        pigment {
            color rgb <1,1,1>
        }
    }
}        
