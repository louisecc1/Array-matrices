#include <iostream>
using namespace std;

int main(){
  int a{0};
  string comp;
  char lol[10];
  cout<<"ingrese su expresion";cin>>comp;
  char ar[26]={'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'};
  for(int i=0;i<comp.size();++i){//comparo mi caneda de caracteres ingresados 
    for(int j=0;j<26;++j){    //con una lista del abecedario 
      if(ar[j]==comp[i]){ //filtrando solo las letras
        lol[a]=ar[j];
        ++a;
      }
      if(comp[i]=='|'){
        lol[a]=' ';
        ++a;
      }
    }
  }
  for(int l=0;l<a;++l){
    cout<<lol[l];
  }
return 0;
}
