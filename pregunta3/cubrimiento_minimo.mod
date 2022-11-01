/*********************************************
 * OPL 12.6.1.0 Model
 * Author: root
 * Creation Date: Oct 29, 2022 at 2:48:32 AM
 *********************************************/
int A[1..15][1..22] = ... ;
dvar boolean y[1..15];

minimize sum(i in 1..15)y[i] ;

constraints {
    
    forall (i in 1..22)
      sum(j in 1..15) A[j][i]*y[j]>=1;

}