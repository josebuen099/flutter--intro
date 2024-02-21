void main(){
 String suma = sumarNUMEROS(21, 20).toString();

print(suma);
print('SUMA: ${sumarnum(1, 2)}');
print('SUMA con numero opcional: ${sumarnumopcional(1, )}');

}
 
int sumarNUMEROS (int num1, int num2){
  return num1+num2;
}
//funciones de flecha 
int sumarnum(int num1, int num2) =>  num1+num2;
// valor opcional  
int sumarnumopcional(int num1, [int? num2]){
  num2=num2 ?? 0;
  return num1+num2;
}