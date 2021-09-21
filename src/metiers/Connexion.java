package metiers;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

  
public class Connexion {

    // Connection vers la base
    private static Connection cnx;
    


 
	
	public Connexion() {
		
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
		    System.out.println("driver sava sava!");

			cnx=DriverManager.getConnection("jdbc:mysql://localhost:3306/lfi","root","");
		    System.out.println("connnexion sava!");
		}catch(Exception e) {e.getMessage();} }
	public boolean isConnected() {
		
       return cnx!=null;

	    }


	
	public Connection getCnx() {
		return cnx;
	}
	

	





public List<Matiere> showPlanEtude(){
	Matiere m=null;
	 // Connection cnx=null;
	 	//Statement st=null;
	 	 //rst=null;
	
	 List<Matiere> list=new ArrayList<Matiere>();
		try{
	Statement st=cnx.createStatement();
     ResultSet rst=st.executeQuery("select * from matiere m,semestre s where (m.id_matiere=s.id_matiere)");
	String nom=rst.getString("nom_matiere");
	int cours=rst.getInt("cours");
	int td=rst.getInt("td");
	int tp=rst.getInt("tp");
	int ci=rst.getInt("ci");
	int credit=rst.getInt("CREDIT_ECUE");
	int coef=rst.getInt("COEF_ECUE");
	String controle=rst.getString("CONTROLE CONTINU");
	String regime=rst.getString("REGIME MIXTE");
	
	System.out.println(nom);
	m.setNom(nom);
	m.setCours(cours);
	m.setTd(td);
	m.setTp(tp);
	m.setCi(ci);
	m.setCreadit(credit);
	m.setCoef(coef);
	m.setControle(controle);
	m.setRegime(regime);
	list.add(m);
	}catch(Exception e){
		e.printStackTrace();
	}
	return list;
	

}
}

	


















































/*public List<String> executerTests( HttpServletRequest request ) {
// Chargement du driver JDBC pour MySQL
try {
    messages.add( "Chargement du driver..." );
    Class.forName( "com.mysql.jdbc.Driver" );
    messages.add( "Driver chargé !" );
} catch ( ClassNotFoundException e ) {
    messages.add( "Erreur lors du chargement : le driver n'a pas été trouvé dans le classpath ! <br/>"
            + e.getMessage() );
}

//  Connexion à la base de données  
String url = "jdbc:mysql://localhost:3306/bdd_sdzee";
String utilisateur = "java";
String motDePasse = "SdZ_eE";
Connection connexion = null;
Statement statement = null;
ResultSet resultat = null;
try {
    messages.add( "Connexion à la base de données..." );
    connexion = DriverManager.getConnection( url, utilisateur, motDePasse );
    messages.add( "Connexion réussie !" );

   //  Création de l'objet gérant les requêtes 
    statement = connexion.createStatement();
    messages.add( "Objet requête créé !" );

    //  Exécution d'une requête de lecture  
    resultat = statement.executeQuery( "SELECT id, email, mot_de_passe, nom FROM Utilisateur;" );
    messages.add( "Requête \"SELECT id, email, mot_de_passe, nom FROM Utilisateur;\" effectuée !" );

 // Récupération des données du résultat de la requête de lecture 
    while ( resultat.next() ) {
        int idUtilisateur = resultat.getInt( "id" );
        String emailUtilisateur = resultat.getString( "email" );
        String motDePasseUtilisateur = resultat.getString( "mot_de_passe" );
        String nomUtilisateur = resultat.getString( "nom" );
     //  Formatage des données pour affichage dans la JSP finale. 
        messages.add( "Données retournées par la requête : id = " + idUtilisateur + ", email = " + emailUtilisateur
                + ", motdepasse = "
                + motDePasseUtilisateur + ", nom = " + nomUtilisateur + "." );
    }
} catch ( SQLException e ) {
    messages.add( "Erreur lors de la connexion : <br/>"
            + e.getMessage() );
} finally {
    messages.add( "Fermeture de l'objet ResultSet." );
    if ( resultat != null ) {
        try {
            resultat.close();
        } catch ( SQLException ignore ) {
        }
    }
    messages.add( "Fermeture de l'objet Statement." );
    if ( statement != null ) {
        try {
            statement.close();
        } catch ( SQLException ignore ) {
        }
    }
    messages.add( "Fermeture de l'objet Connection." );
    if ( connexion != null ) {
        try {
            connexion.close();
        } catch ( SQLException ignore ) {
        }
    }
}

return messages;
}



}	
*/
