package metiers;

public class Matiere {
private String nom;
private  int cours;
private  int td;
private  int tp;
private  int ci;
private  int creadit;
private  int coef;
private String controle;
public String getControle() {
	return controle;
}
public void setControle(String controle) {
	this.controle = controle;
}
public String getRegime() {
	return regime;
}
public void setRegime(String regime) {
	this.regime = regime;
}
private String regime;
public String getNom() {
	return nom;
}
public void setNom(String nom) {
	this.nom = nom;
}
public int getCours() {
	return cours;
}
public void setCours(int cours) {
	this.cours = cours;
}
public int getTd() {
	return td;
}
public void setTd(int td) {
	this.td = td;
}
public int getTp() {
	return tp;
}
public void setTp(int tp) {
	this.tp = tp;
}
public int getCi() {
	return ci;
}
public void setCi(int ci) {
	this.ci = ci;
}
public int getCreadit() {
	return creadit;
}
public void setCreadit(int creadit) {
	this.creadit = creadit;
}
public int getCoef() {
	return coef;
}
public void setCoef(int coef) {
	this.coef = coef;
}

}
