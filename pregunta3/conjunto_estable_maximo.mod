/*********************************************
 * OPL 12.6.1.0 Model
 * Author: Jose Lizarraga
 * Creation Date: Oct 29, 2022 at 3:18:58 AM
 *********************************************/
int A[1..15][1..22] = ... ;
dvar boolean x[1..15];

maximize sum(i in 1..15)x[i] ;

constraints {
    
    forall (i in 1..22)
      sum(j in 1..15) A[j][i]*x[j]<=1;

}