#include<iostream>
using namespace std;
void max(int a[3][3],int resul[4]){
  resul[0]=a[0][0];
  resul[1]=a[0][0];
  int b;
  
  for(int i=0;i<3;++i){
    for(int j=0;j<3;++j){
      if(resul[0]<a[i][j]){
        resul[0]=a[i][j];
      }
      if(resul[1]>a[i][j]){
        resul[1]=a[i][j];
      }
    }
  }
 cout<<resul[0]<<" "<<resul[1]<<"\n";
}
int main(){
  int matrix[3][3];
  int resul[4],r;
  
  cout<<"ingrese los datos de su matrix"<<"\n";
  for(int i=0;i<3;++i){
    for(int j=0;j<3;++j){
      cin>>matrix[i][j];
      
    }
  }
  for(int i=0;i<3;++i){
    for(int j=0;j<3;++j){
      cout<<matrix[i][j]<<" ";
    }
    cout<<"\n";
  }
  max(matrix[3][3],resul[4]);
  return 0;
}
