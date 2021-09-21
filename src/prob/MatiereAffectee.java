package prob;

public class MatiereAffectee {
private String nom_matiere;
private String nom_enseignant;
private float cours;
private float td;
private float tp;

	public MatiereAffectee(String nom_matiere, String nom_enseignant, float cours, float td, float tp) {
	super();
	this.nom_matiere = nom_matiere;
	this.nom_enseignant = nom_enseignant;
	this.cours = cours;
	this.td = td;
	this.tp = tp;
}
	public String getNom_matiere() {
	return nom_matiere;
}
public void setNom_matiere(String nom_matiere) {
	this.nom_matiere = nom_matiere;
}
public String getNom_enseignant() {
	return nom_enseignant;
}
public void setNom_enseignant(String nom_enseignant) {
	this.nom_enseignant = nom_enseignant;
}
public float getCours() {
	return cours;
}
public void setCours(float cours) {
	this.cours = cours;
}
public float getTd() {
	return td;
}
public void setTd(float td) {
	this.td = td;
}
public float getTp() {
	return tp;
}
public void setTp(float tp) {
	this.tp = tp;
}
	public MatiereAffectee() {
		// TODO Auto-generated constructor stub
	}

}
