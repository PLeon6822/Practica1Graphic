#include "colors.inc"
#include "glass.inc"   
union{
    difference{
        ///sor Surface of Revolution 
        sor{
            7,
            <15.000,0.000> 
            <15.000,15.000>
            <15.500,25.000>
            <16.500,35.000>
            <19.000,45.000>
            <21.000,60.000> 
            <21.300,70.000>
            //open
            //  sturm  // optional!
            material{   //-----------------------------------------------------------
                texture { pigment{ color Col_Glass_Clear }
                          finish { diffuse 0.3 reflection{ 0.15 metallic 0.10}   
                                   specular 0.8 roughness 0.003 phong 1 phong_size 400}
                        } // end of texture -------------------------------------------
                interior{ ior 1.5 caustics 0.5
                        } // end of interior ------------------------------------------
                } // end of material ----------------------------------------------------
            scale 1.0  rotate<0,0,0> translate<0,-16,0>
        } // end of sor ---------------------------------         
    
        sor{
            7,
            <12.000,0.000> 
            <14.000,20.000>
            <14.500,25.000>
            <15.500,35.000>
            <17.000,45.000>
            <19.500,60.000>
            <19.800,70.000>
            //open
            //  sturm  // optional!
            material{   //-----------------------------------------------------------
                texture { pigment{ color Col_Glass_General }
                          finish { diffuse 0.3 reflection{ 0.15 metallic 0.10}   
                                 specular 0.8 roughness 0.003 phong 1 phong_size 400}
                        } // end of texture -------------------------------------------
                interior{ ior 1.5 caustics 0.5
                } // end of interior ------------------------------------------
            } // end of material ----------------------------------------------------
            scale 1.0  rotate<0,0,0> translate<0,-15.5,0>
        }
     scale 1.5
    }
    torus { 30,1.5  rotate<0,0,0>
        texture { pigment{ color Col_Glass_General}
                  finish { phong 1 reflection{ 0.15 metallic 0.10} } 
                } // end of texture
        scale <1,1,1> rotate<0,0,0>  translate<0,66,0>
      } // end of torus  -------------------------------              

} 
camera {
    location<120,95,-40>
    look_at<0,40,0>
}
light_source {
    <30,340,80>
    color rgb <1,1,1>
}             
plane { //Floor
    <0,1,0>, -2 //Normal and distance
    texture {
        pigment {    
            color rgb <1,1,1>
        }
    }
}


 


