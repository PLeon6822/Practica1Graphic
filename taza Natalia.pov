
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
                          finish { reflection{ 0.05 }   
                                   specular 0.8 phong 0.5 }
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
                texture { pigment{ color rgb <0.0005, 0.0005, 0.0005> }
                          finish { reflection{ 0.05 }   
                                   specular 0.15 phong 0.5 }
                        } // end of texture -------------------------------------------
               
              } // end of material ----------------------------------------------------
           scale 0.93  rotate<0,0,0> translate<10,3,0>
        } // end of sor --------------------------------- 
    }   
    torus { 15.45,0.55 
        texture { pigment{ color rgb<0.0005,0.0005,0.0005>}
                  finish { phong 0.5 reflection { 0.02 } specular 0.3}
                } // end of texture
        scale <1,1,1> rotate<0,0,0> translate<10,23.9,0>
      } // end of torus  -------------------------------              
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