/*********************************************
 * OPL 12.6.1.0 Model
 * Author: Jose Lizarraga Trebejo
 * Creation Date: Oct 28, 2022 at 12:48:53 PM
 *********************************************/
 
 dvar boolean x[1..8][1..8];
 
 // Funcion objetivo
 maximize sum(i in 1..8 , j in 1..8) (x[i,j]);
 
 // Constraints ( restricciones)
 
 constraints{
  
 
     forall( j in 1..8)
       sum(i in 1..8) x[i][j] <=1;
   
     forall(i in 1..8)
       sum(j in 1..8) x[i][j] <=1;   
    
    forall(k in -6..6)
       sum(i in 1..8 , j in 1..8 : k == i-j) x[i][j] <=1;
     
    forall(k in 3..15)
       sum(i in 1..8 , j in 1..8 : k == i+j) x[i][j] <=1;
        
    }
  
 
 
