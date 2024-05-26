class Araba {
  int ulasabildigiHiz;
  String renk;
  String marka;
  bool dizelMi;

  Araba(this.ulasabildigiHiz, this.renk, this.marka, this.dizelMi);

  void rengiBastir(){
    return print(this.renk);
  }
}


void main(){
  var araba1=Araba(120,"mavi","bmw",false);
  var araba2=Araba(180,"siyah","Mercedes",true);

  araba1.rengiBastir();
}
