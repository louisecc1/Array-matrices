#include <iostream>
using namespace std;
int ordenar(int a[9]){//creo una funcion que ordene una lista y retorna la mediana
  bool b;
  b=true;
  int c=9;
  while(b){
    int d;
    for(int i=0;i<c-1;++i){
      b=false;
      if(a[i]>a[i+1]){
        d=a[i+1];
        a[i+1]=a[i];
        a[i]=d;
        b=true;
      }
    }
    --c;
  }
  return a[4];
}
int max(int a[3][3],int b[4]){//creo una funcion que retorna el maximo,y cambia los
  int c;    //valores de un array por referencia
  c=a[0][0];
  b[1]=a[0][0];
  b[2]=0;
  for(int i=0;i<3;++i){
    for(int j=0;j<3;++j){
      b[2]=b[2]+a[i][j];
      if(c<a[i][j]){
        c=a[i][j];
      }
      if(b[1]>a[i][j]){
        b[1]>a[i][j];
      }
    }
  }
  return c;
}
int main(){ 
  int matrix[3][3]; int resul[4],r[9],p{0};//creo una matrix,una lista de resultados
  cout<<"ingrese los datos de su matrix"<<"\n";//que contiene maximo,minimo,promedio
  for(int i=0;i<3;++i){//y mediana
    for(int j=0;j<3;++j){ 
      cin>>matrix[i][j];
    }
  }
  for(int i=0;i<3;++i){
     for(int j=0;j<3;++j){//realizo una copia de la matrix para poder ordenarla
       r[p]=matrix[i][j];
       ++p;
       cout<<matrix[i][j]<<" ";
     }
      cout<<"\n";
  }
  resul[0]=max(matrix,resul);
  resul[3]=ordenar(r);
  cout<<resul[0]<<" "<<resul[1]<<" "<<float(resul[2]/2.0)<<" "<<resul[3];
  return 0;
}
