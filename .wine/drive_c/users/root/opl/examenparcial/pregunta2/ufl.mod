/*********************************************
 * OPL 12.6.1.0 Model
 * Author: Jose Lizarraga
 * Creation Date: Oct 28, 2022 at 8:13:43 PM
 *********************************************/
// Matriz de costos variable por almacen
int  c[1..6][1..5] = ...;

// Vector de costos fijos de apertura de almacen
int  f[1..5] = ...;

dvar boolean  x[1..5][1..6] ;
dvar boolean  y[1..5];
 
minimize  (sum(i in 1..6,j in 1..5) c[i][j]*x[j][i] )  + (sum(j in 1..5)f[j]*y[j]); 

constraints{

         forall(i in 1..6)
           sum(j in 1..5)x[j][i]>=1;
           
        forall(i in 1..6)
           sum(j in 1..5)x[j][i]<=1;
           
        forall(i in 1..5)
           (sum(j in 1..6) (x[i][j])  ) <=6*y[i];
         
             
}



