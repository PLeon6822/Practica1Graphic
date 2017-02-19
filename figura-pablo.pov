#include "colors.inc"

union{            
    sphere{<0,10,0> 10 texture{pigment{color Green}}}
    sphere{<10,10,5> 10 texture{pigment{color Blue}}}
}            
camera {
    location<20,0,-20>
    look_at<0,10,0>
}
light_source {
    <40,80,-4>
    color rgb <1,1,1>
}             
plane { //Floor
    <0,1,0>, -2 //Normal and distance
    texture {
        pigment {    
            color rgb <1, 1, 1>
        }
    }
}