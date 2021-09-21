package beans;

import java.util.List;

import metiers.Enseignant;

public class FicheDeVoeux {
private Enseignant enseignant;
private String Specialite;
//private List<MatiereDemande> matiere ;
private MatiereDemande matiere;
public Enseignant getEnseignant() {
	return enseignant;
}
public void setEnseignant(Enseignant e) {
	this.enseignant = e;
}
public String getSpecialite() {
	return Specialite;
}
public void setSpecialite(String specialite) {
	Specialite = specialite;
}
public  MatiereDemande getMatiere() {
	return matiere;
}
public void setMatiere(MatiereDemande matiere) {
	this.matiere = matiere;
}


}
