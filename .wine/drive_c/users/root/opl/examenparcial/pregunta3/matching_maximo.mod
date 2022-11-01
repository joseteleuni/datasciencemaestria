/*********************************************
 * OPL 12.6.1.0 Model
 * Author: Jose LIzarraga
 * Creation Date: Oct 29, 2022 at 2:35:02 AM
 *********************************************/
int A[1..15][1..22] = ... ;
dvar boolean x[1..22];

maximize sum(i in 1..22)x[i] ;

constraints {
    
    forall (i in 1..15)
      sum(j in 1..22) A[i][j]*x[j]<=1;

}