#include "colors.inc"
  
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
    translate<0,0,0>    
}  

   
camera {
    location<20,20,-20>
    look_at<0,0,15>
}
light_source {
    <40,80,-4>
    color rgb <0.9,0.85,0.6>
}             
plane { //Floor
    <0,1,0>, -2 //Normal and distance
    texture {
        pigment {    
            color rgb <1, 1, 1>
        }
    }
}

