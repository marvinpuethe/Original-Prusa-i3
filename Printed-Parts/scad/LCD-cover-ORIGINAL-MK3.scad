// PRUSA iteration4
// LCD cover
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org


module main_body()
{
    difference() 
    {
        union() 
        {
            // main body
            translate( [ -77 , -4.5 , 0 ] ) cube( [ 155 , 59.8 , 2 ] ); 
            translate( [ -77 , -4.5 , 0 ] ) rotate([35,0,0]) cube( [ 155 , 2 , 20.08 ] );
            translate( [ -77 , -3.5 , -1 ] ) rotate([35,0,0]) cube( [ 7 , 5 , 15 ] );
            translate( [ 71 , -3.5 , -1 ] ) rotate([35,0,0]) cube( [ 7 , 5 , 15 ] );
            translate( [ -77 , -14.7 , 14.2 ] )  cube( [ 155 , 2 , 11.8 ] );
            translate( [ -77 , 54 , 0 ] ) cube( [ 155 , 2 , 17 ] );
        }
        
        // LCD window
        translate( [ -71.5 , 11.5 , 1.2 ] ) cube( [ 75.5 , 29.5 , 1 ] ); 
        translate( [ -69.5 , 14.5 , -1 ] ) cube( [ 71 , 24 , 10 ] );  

        // buzzer holes
        translate( [ 55 , 1.5 , -1 ] ) cube( [ 1.3 , 4 , 10 ] );  
        translate( [ 57 , 1.5 , -1 ] ) cube( [ 1.3 , 4 , 10 ] );  
        translate( [ 59 , 1.5 , -1 ] ) cube( [ 1.3 , 4 , 10 ] );  
        translate( [ 61 , 1.5 , -1 ] ) cube( [ 1.3 , 4 , 10 ] );  
        translate( [ 63 , 1.5 , -1 ] ) cube( [ 1.3 , 4 , 10 ] );  
        translate( [ 65 , 1.5 , -1 ] ) cube( [ 1.3 , 4 , 10 ] );  
        translate( [ 67 , 1.5 , -1 ] ) cube( [ 1.3 , 4 , 10 ] );  

        // buzzer holes corners
        translate( [ 66.25 , 1.5 , -0.5 ] ) rotate([0,45,0]) cube( [ 2 , 4 , 2 ] );  
        translate( [ 64.25 , 1.5 , -0.5 ] ) rotate([0,45,0]) cube( [ 2 , 4 , 2 ] );  
        translate( [ 62.25 , 1.5 , -0.5 ] ) rotate([0,45,0]) cube( [ 2 , 4 , 2 ] );  
        translate( [ 60.25 , 1.5 , -0.5 ] ) rotate([0,45,0]) cube( [ 2 , 4 , 2 ] );  
        translate( [ 58.25 , 1.5 , -0.5 ] ) rotate([0,45,0]) cube( [ 2 , 4 , 2 ] );  
        translate( [ 56.25 , 1.5 , -0.5 ] ) rotate([0,45,0]) cube( [ 2 , 4 , 2 ] );  
        translate( [ 54.25 , 1.5 , -0.5 ] ) rotate([0,45,0]) cube( [ 2 , 4 , 2 ] );  

        // knob hole
        translate( [ 16.5 , 19.5 , -1 ] ) cylinder( h = 10, r = 5, $fn=30);
        translate( [ 16.5 , 19.5 , -1.2 ] ) cylinder( h = 2, r1 = 6, r2 = 5, $fn=30);

        // rear support cutout
        translate( [ -64.5 , -12.7 , 14 ] ) cube( [ 10 , 3 , 16 ] );  
        translate( [ 55.5 , -12.7 , 14 ] ) cube( [ 10 , 3 , 16 ] );  

    }
}

module pcb_clip()
{
    difference()
    {
    union()
        {
            translate( [ -3 , -12 , 17.5 ] ) cube( [ 7 , 4 , 5 ] ); 
            translate( [ -3 , -10.6 , 12.5 ] ) cube( [ 1 , 2.6 , 7 ] );  
            translate( [ 3 , -10.6 , 12.5 ] ) cube( [ 1 , 2.6 , 7 ] );  
        }
        translate( [ -4 , -8 , 18.5 ] ) rotate([30,0,0]) cube( [ 10 , 6 , 6 ] );  
        translate( [ 2.5 , -12 , 14.5 ] ) cube( [ 1 , 4 , 0.2 ] );  
        translate( [ -2.5 , -12 , 14.5 ] ) cube( [ 1 , 4 , 0.2 ] );  
        translate( [ 2.5 , -12 , 17.3 ] ) cube( [ 1 , 4 , 0.2 ] );  
        translate( [ -2.5 , -12 , 17.3 ] ) cube( [ 1 , 4 , 0.2 ] );          
    }
}



difference()
{
    union()
    {

    pcb_clip();
    main_body();

    //left side
    translate( [ -77 , -14.7 , 0 ] ) cube( [ 1.5 , 70.7 , 26 ] );  
    translate( [ -76.5 , -15 , 0 ] ) cube( [ 2 , 70 , 14.6 ] );  

    //right side
    translate( [ 76.5 , -14.7 , 0 ] ) cube( [ 1.5 , 70.7 , 26 ] ); 
    translate( [ 73.5 , -14 , 0 ] ) cube( [ 4 , 70 , 14.5 ] );  

    //rear side reinforcement
    translate( [ -54.5 , -11.7 , 8 ] ) cube( [ 110 , 4 , 6.5 ] );  
    translate( [ 65.5 , -11.7 , 8 ] ) cube( [ 12 , 4 , 6.5 ] );  
    translate( [ 65.5 , -13 , 14 ] ) cube( [ 12 , 2 , 12 ] );  
    translate( [ -76.5 , -11.7 , 8 ] ) cube( [ 12 , 4 , 6.5 ] );  
    translate( [ -76.5 , -14.7 , 14.5 ] ) cube( [ 12 , 4 , 11.5 ] );  
    translate( [ -44 , -14.7 , 14.5 ] ) cube( [ 89 , 4 , 11.5 ] );  
    translate( [ -43.5 , -10.7 , 15 ] ) rotate([90,0,0]) cylinder( h = 2, r = 11, $fn=60);  
    translate( [ 44.5 , -10.7 , 15 ] ) rotate([90,0,0]) cylinder( h = 2, r = 11, $fn=60);
    
    //front left side reinforcement
    difference()
    {
        union()
            {
                translate( [ -77 , 44.3 , 0 ] ) cube( [ 15 , 10 , 25 ] );  
                translate( [ -77 , 46.3 , 14 ] ) cube( [ 15 , 9 , 3 ] );    
            }
        translate( [ -64.5 , 40 , -3 ] ) cube( [ 4 , 8 , 40 ] );  
        translate( [ -75.5 , 40.3 , 14.5 ] ) cube( [15 , 6.5 , 25 ] ); 
    }


    //front right side reinforcement
    difference()
        {
            translate( [ 38 , 41.2 , 0 ] ) cube( [ 40 , 14 , 26 ] );  
            translate( [ 55 , 44.5 , 0 ] ) cube( [ 10.5 , 3.7 , 30 ] );  
            translate( [ 44 , 39.5 , 0 ] ) cube( [ 25.5 , 5 , 30 ] );  
            translate( [ 35 , 39.3 , 14.5 ] ) cube( [ 42.5 , 7 , 15 ] );  
            translate( [ 49 , 43.2 , 25 ] ) rotate([0,60,0]) cube( [ 12 , 5 , 10 ] );  
        }
   
    // M3 hole body
    translate( [ 6.5 , 41.5 , 0.5 ] ) rotate([0,0,90])  cylinder( h = 7, r = 4, $fn=6);  
    translate( [ -71 , 41.5 , 0.5 ] ) rotate([0,0,90])  cylinder( h = 7, r = 4, $fn=6);
    }  
    
    // SD card opening
    translate( [ -80 , 16.5 , 11.5 ] ) cube( [ 10 , 23 , 4.5 ] );  

    // front and rear angle
    translate( [ -81 , -9.3 , -17 ] ) rotate([35,0,0]) cube( [ 164 , 14 , 54.08 ] );  
    translate( [ -78 , 72.7 , -3 ] ) rotate([45,0,0]) cube( [ 160 , 14 , 54.08 ] );

    // M3 screw thread
    translate( [ 6.5 , 41.5 , 1 ] ) cylinder( h = 20, r = 1.4, $fn=30);  
    translate( [ -71 , 41.5 , 1 ] ) cylinder( h = 20, r = 1.4, $fn=30); 
    translate( [ 6.5 , 41.5 , 4.7 ] ) cylinder( h = 3, r1 = 1.4, r2=2.2, $fn=30);  
    translate( [ -71 , 41.5 , 4.7 ] ) cylinder( h = 3, r = 1.4, r2=2.2, $fn=30); 

    // ORIGINAL PRUSA text
    translate([-67,51,0.6]) rotate([180,0,0]) linear_extrude(height = 2) 
    { text("MARVINS",font = "helvetica:style=Bold", size=7, center=true); }
    translate([-18,51,0.6]) rotate([180,0,0]) linear_extrude(height = 2) 
    { text("PRUSA",font = "helvetica:style=Bold", size=11, center=true); }
    translate( [ -66 , 40.5 , -0.4 ] )  cube( [ 45 , 1.6 , 1 ] );  
    translate( [ -66 , 41.3 , -0.4 ] ) cylinder( h = 1, r = 0.8, $fn=30);  
    translate( [ -21 , 41.3 , -0.4 ] ) cylinder( h = 1, r = 0.8, $fn=30);  

    // front cleanup
    translate( [ -100 , -64 , 0 ] ) cube( [ 200 , 50 , 50 ] ); 

    // corners
    translate( [ 73 , -5 , -1 ] ) rotate([0,45,0]) cube( [ 7, 80, 7 ] );  
    translate( [ -82 , -5 , -1 ] ) rotate([0,45,0]) cube( [ 7, 80, 7 ] );  

    translate( [ -82 , 58 , -5 ] ) rotate([45,0,0]) cube( [ 200, 7, 7 ] );  
    translate( [ -77 , 51 , -4 ] ) rotate([0,0,45]) cube( [ 8, 8, 50 ] );  
    translate( [ 78 , 51 , -4 ] ) rotate([0,0,45]) cube( [ 8, 8, 50 ] );  
    translate( [ 78 , -19 , -4 ] ) rotate([0,0,45]) cube( [ 5, 5, 50 ] );  
    translate( [ -77 , -19 , -4 ] ) rotate([0,0,45]) cube( [ 5, 5, 50 ] );  

    // LCD corners
    translate( [ -69.5 , 16 , -5.2 ] ) rotate([45,0,0]) cube( [ 71 , 5 , 5 ] );  // LCD window
    translate( [ -69.5 , 37 , -5.2 ] ) rotate([45,0,0]) cube( [ 71 , 5 , 5 ] );  // LCD window
    rotate([35,0,0]) translate( [ -78 , -8 , -4 ] ) rotate([0,0,45]) cube( [ 6, 6, 50 ] );  
    rotate([35,0,0]) translate( [ 79 , -8 , -4 ] ) rotate([0,0,45]) cube( [ 6, 6, 50 ] );  
    translate( [ -100 , -40 , -50 ] ) cube( [ 200 , 50 , 50 ] ); 

    // version
    translate([-71,15,3]) rotate([90,0,90]) linear_extrude(height = 2) 
    { text("R2",font = "helvetica:style=Bold", size=7, center=true); }
    
    // statement
    translate([40,18,0.6]) rotate([180,0,0]) linear_extrude(height = 2) 
    { text("Everyone is",font = "helvetica:style=Bold", size=4, center=true); }
    translate([40,24,0.6]) rotate([180,0,0]) linear_extrude(height = 2) 
    { text("a maker,",font = "helvetica:style=Bold", size=4, center=true); }
    translate([40,30,0.6]) rotate([180,0,0]) linear_extrude(height = 2) 
    { text("only I am",font = "helvetica:style=Bold", size=4, center=true); }
    translate([40,36,0.6]) rotate([180,0,0]) linear_extrude(height = 2) 
    { text("a printer",font = "helvetica:style=Bold", size=4, center=true); }
    
}

// print support for SD card opening
translate( [ -76.5 , 20.5 , 11.70 ] ) cube( [ 1 , 5 , 4.1 ] );
translate( [ -76.5 , 30 , 11.70 ] ) cube( [ 1 , 5 , 4.1 ] );

