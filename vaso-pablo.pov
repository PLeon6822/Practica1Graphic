#include "colors.inc"
#include "glass.inc"   
merge{
    difference{
        ///sor Surface of Revolution 
        sor{
            7,
            <15.000,0.000> 
            <15.000,15.000>
            <15.500,35.000>
            <16.500,45.000>
            <19.000,55.000>
            <21.000,70.000> 
            <21.300,80.000>
            //open
            //  sturm  // optional!
            scale 1.0  rotate<0,0,0> translate<0,-16,0>
        } // end of sor ---------------------------------         
    
        sor{
            7,
            <14.000,0.000> 
            <14.000,20.000>
            <14.500,35.000>
            <15.500,45.000>
            <18.000,55.000>
            <20.000,70.000>
            <21.300,70.000>
            //open
            //  sturm  // optional!
            scale 1.0  rotate<0,0,0> translate<0,-15.5,0>
        }
     scale 1.5
    }
    torus { 30,1.5  rotate<0,0,0>
        scale 1 rotate<0,0,0>  translate<0,80,0>
      } // end of torus  -------------------------------
      material{   //-----------------------------------------------------------
                texture { pigment { color rgb<1,1,1,0.96> }
                finish {
                    ambient 0.15
                    diffuse 0.4
                    reflection 0.07
                    specular 0.5
                    roughness 0.05
                }
                        } // end of texture -------------------------------------------
                interior{ ior 1.33 caustics 1.8
                } // end of interior ------------------------------------------
            } // end of material ----------------------------------------------------              
     scale 0.9
} 
camera {
    location<120,80,0>
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
difference{
    superellipsoid{<0.18,0.18> 
        texture{pigment{color rgb<1,0,0,0.32>}finish {specular 0.3 diffuse 0.5}} // end of texture
        scale <5,5,5> rotate<0,0,0> translate<5,3.1,5>
    } // -------------- end superellipsoid  
    //1
    sphere{<0,3.5,5> 1 texture{pigment{color White}}}     
    // 1 ends here
    
    // 2
    sphere{<7.5,8.5,7.5> 1 texture{pigment{color White}}}
    sphere{<2.5,8.5,2.5> 1 texture{pigment{color White}}}
    // 2 ends here
    
    // 3
    sphere{<2.5,5.5,0> 1 texture{pigment{color White}}}
    sphere{<5,3,0> 1 texture{pigment{color White}}}
    sphere{<7.5,0.5,0> 1 texture{pigment{color White}}}    
    // Gato ends here    
    
    // 4
    sphere{<2.5,5.5,10.5> 1 texture{pigment{color White}}}
    sphere{<2.5,0.5,10.5> 1 texture{pigment{color White}}}
    sphere{<7.5,0.5,10.5> 1 texture{pigment{color White}}}
    sphere{<7.5,5.5,10.5> 1 texture{pigment{color White}}}
    // 4 ends here
            
    // 5
    sphere{<5,-2,5> 1 texture{pigment{color White}}}
    sphere{<2.5,-2,2.5> 1 texture{pigment{color White}}}
    sphere{<7.5,-2,2.5> 1 texture{pigment{color White}}}
    sphere{<2.5,-2,7.5> 1 texture{pigment{color White}}}
    sphere{<7.5,-2,7.5> 1 texture{pigment{color White}}}
    // 5 ends here
    
    // 6
    sphere{<10,0.5,2.5> 1 texture{pigment{color White}}} 
    sphere{<10,0.5,5> 1 texture{pigment{color White}}}
    sphere{<10,0.5,7.5> 1 texture{pigment{color White}}}
    sphere{<10,5.5,2.5> 1 texture{pigment{color White}}} 
    sphere{<10,5.5,5> 1 texture{pigment{color White}}}
    sphere{<10,5.5,7.5> 1 texture{pigment{color White}}} 
    //6 ends here
    
    rotate<0,0,0>
    translate<-80,0,-10>    
}


 


