<%@page import="java.security.MessageDigest"%>
<%@page import="metiers.SendMail"%>
<%@page import="java.sql.Date"%>
<%@page import="metiers.Enseignant"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Ajouter un Enseignant</title>
 
</head>
<body>

<%
Connection cnx=null;
	//PrintWriter pw=response.getWriter();
	 PreparedStatement pstatement = null,pstatement1 = null;
	int updateQuery = 0;
	try {
		Class.forName("com.mysql.jdbc.Driver");
	    System.out.println("driver sava sava!");

		cnx=DriverManager.getConnection("jdbc:mysql://localhost:3306/enseignantdb","root","");
	    System.out.println("connnexion sava!");


	String nom=request.getParameter("name");
	String adresse=request.getParameter("adresse");
	String tel=request.getParameter("tell");
	String mail=request.getParameter("mail");
	String grade=request.getParameter("grade");
	String dategrade = request.getParameter("dategrade");

 
	String daterec = request.getParameter("daterecrutement");
 
	String titrehabilitation=request.getParameter("titrehab");
	String datehabilitation=request.getParameter("datehab");
 


	String etablissementhabilitation=request.getParameter("etablissementhab");


	String titreThese=request.getParameter("titreThese");
	String dateThese=request.getParameter("dateThese");

	 

	String etablissementThese=request.getParameter("etablissementThese");



	String titreMaster=request.getParameter("titreMaster");
	String dateMaster=request.getParameter("dateMaster");

	 

	String etablissementMaster=request.getParameter("etablissementMaster");

	Enseignant e =new Enseignant();
	e.setNom(nom);
	e.setAdresse(adresse);
	e.setGrade(grade);
	e.setTell( tel);
	e.setEmail(mail);

	String password=e.calculePassword();



	// sql query to insert values in the secified table.
	String queryString ="INSERT INTO enseignants(nom,adresse,email,grade,passe,ancienitegrade,daterec,titrehabilitation,datehabilitation,etablissementhabilitation,titrethese,datethese,etablissementthese,titremastere,datemastere,etablissementmastere) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
	String queryString2 ="INSERT INTO users(username, email, password) VALUES (?,?,?)";
	pstatement1 = cnx.prepareStatement(queryString2);
    pstatement1.setString(1,nom);
    pstatement1.setString(2,mail);
    //pstatement1.setString(3,password);
    MessageDigest alg = MessageDigest.getInstance("MD5");

 // Reset the digest, in case it's been used already during this section of code
 // This probably isn't needed for pages of 210 simplicity
 alg.reset(); 

 // Calculate the md5 hash for the password. md5 operates on bytes, so give
 // MessageDigest the byte verison of the string
 alg.update(password.getBytes());

 // Create a byte array from the string digest
 byte[] digest = alg.digest();

 // Convert the hash from whatever format it's in, to hex format
 // which is the normal way to display and report md5 sums
 // This is done byte by byte, and put into a StringBuffer
 StringBuffer hashedpasswd = new StringBuffer();
 String hx;
 for (int i=0;i<digest.length;i++){
 	hx =  Integer.toHexString(0xFF & digest[i]);
 	//0x03 is equal to 0x3, but we need 0x03 for our md5sum
 	if(hx.length() == 1){hx = "0" + hx;}
 	hashedpasswd.append(hx);
 }
 pstatement1.setString(3,hashedpasswd.toString());
    /* createStatement() is used for create statement
	object that is used for 
	 
	sending sql statements to the specified database. */ 
	
	int updateQuery1 = pstatement1.executeUpdate();
	pstatement = cnx.prepareStatement(queryString);
	            pstatement.setString(1,nom);
	            pstatement.setString(2,adresse);
	            pstatement.setString(3,mail);
	            pstatement.setString(4,grade);
	            pstatement.setString(5,password);
	           // pstatement.setString(6,startDaterec);
	            pstatement.setString (6,  dategrade);
	          //  pstatement.setDate(7,(Date) result1);
	           pstatement.setString (7,  daterec);
	            pstatement.setString(8,titrehabilitation);
	            pstatement.setString(9,datehabilitation);
	            pstatement.setString(10,etablissementhabilitation);
	            pstatement.setString(11,titreThese);
	            pstatement.setString(12,dateThese);
	            pstatement.setString(13,etablissementThese);
	            pstatement.setString(14,titreMaster);
	            pstatement.setString(15,dateMaster);
	            pstatement.setString(16,etablissementMaster);
	    
	updateQuery = pstatement.executeUpdate();
	              if (updateQuery != 0) {
	            	  System.out.println("query>0");
	                  String autho="departementc4@gmail.com";
	  	            String passe="departementInfo1" ;
	  	            String from="departementc4@gmail.com" ;
	  	            String to=mail;
	  	            String subject="votre login et mot de passe";
	  	            String message="login :\t\n"+mail+"\t\npassword :\t\n"+password;
	  	          SendMail sendEmail = new SendMail(autho,passe,from,to,subject,message);
	  	          sendEmail.start(); 
	  	          System.out.println("message envoyer");
	            	 RequestDispatcher rdsucceed=request.getRequestDispatcher("successAddPro.html");
	            	 rdsucceed.forward(request, response) ;
	              }
	              else{
	            	  System.out.println("query=0");
	            	  RequestDispatcher rdsucceed=request.getRequestDispatcher("successAddPro.html");
		            	 rdsucceed.forward(request, response) ;
 
	              }  
	                 
}catch(Exception e) {
	      e.printStackTrace();
 	          }finally{
 	        		cnx.close();
 	        		 
 	        	}
 %>
<dialog id="favDialog" hidden>
  <form method="dialog">
    <section>
      <p><label for="enseignant"><h3>Enseignant ajouté avec succée</h3></label>
        </p>
    </section>
    <menu>
      <button id="cancel" type="reset">Annuler</button>
      <button type="submit">Confirmer</button>
    </menu>
  </form>
</dialog>
<script type="text/javascript">
function success() {
	alert " ok" ;
	
}
</script>
 


</body>
</html>