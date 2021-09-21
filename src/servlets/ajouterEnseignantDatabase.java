package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
 
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import metiers.Connexion;
import metiers.Enseignant;

/**
 * Servlet implementation class ajouterEnseignantDatabase
 */
 
public class ajouterEnseignantDatabase extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ajouterEnseignantDatabase() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
			}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		    Connection cnx=null;
		PrintWriter pw=response.getWriter();
		 PreparedStatement pstatement = null;
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
		 
		String dategrade = request.getParameter("date-grade");
		DateFormat dateFormat = new SimpleDateFormat("dd MMM yyyy");
		 Date startDategrade = dateFormat.parse(dategrade);
		 //recuperer date :ancienité de grade
		//String daterecrutement = request.getParameter("date-grade");
		//SimpleDateFormat dr = new SimpleDateFormat("yyyy-MM-dd");
		//Date startDate = dr.parse(daterecrutement);
		String daterecrutement = request.getParameter("date-recrutement");
	// DateFormat dr = new  DateFormat("yyyy-MM-dd");
		 
		Date startDaterec = dateFormat.parse(daterecrutement);
		
		String titrehabilitation=request.getParameter("titrehabilitation");
		String datehabilitation=request.getParameter("datehabilitation");

		//SimpleDateFormat dh = new SimpleDateFormat("yyyy-MM-dd");
	 Date startDate1 = dateFormat.parse(datehabilitation);


		String etablissementhabilitation=request.getParameter("etablissementhabilitation");


		String titreThese=request.getParameter("titreThese");
		String dateThese=request.getParameter("dateThese");

		//SimpleDateFormat dt = new SimpleDateFormat("yyyy-MM-dd");
		 Date startDate2 =  dateFormat.parse(dateThese);

		String etablissementThese=request.getParameter("etablissementThese");



		String titreMaster=request.getParameter("titreMaster");
		String dateMaster=request.getParameter("dateMaster");

		///SimpleDateFormat dm = new SimpleDateFormat("yyyy-MM-dd");
		//java.util.Date startDate3 = dt.parse(dateMaster);

		String etablissementMaster=request.getParameter("etablissementMaster");

		Enseignant e =new Enseignant();
		e.setNom(nom);
		e.setAdresse(adresse);
		e.setGrade(grade);
		e.setTell( tel);
		e.setEmail(mail);

		String password=e.calculePassword();



		// sql query to insert values in the secified table.
		String queryString ="INSERT INTO enseignants(nom,address,email,grade,passe,ancienitegrade,daterec,titrehabilitation,datehabilitation,etablissementhabilitation,titrethese,datethese,etablissementthese,titremastere,datemastere,etablissementmastere) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		        /* createStatement() is used for create statement
		object that is used for 
		  sending sql statements to the specified database. */ 
		pstatement = cnx.prepareStatement(queryString);
		            pstatement.setString(1,nom);
		            pstatement.setString(2,adresse);
		            pstatement.setString(3,mail);
		            pstatement.setString(4,grade);
		            pstatement.setString(5,password);
		           // pstatement.setString(6,startDaterec);
		            pstatement.setDate(6,(java.sql.Date) startDategrade);
		            pstatement.setDate(7,(java.sql.Date) startDaterec);
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
		            	  
		            	  pw.println("<html><head></head><body><table  border=1  cellpadding=10 style=width:95% >"+
		            			  "<tr><th>Data is inserted successfully"+ 
		               "in database.</th></tr>"+
		              "</table></body></html>");
		            	  
		              }
		              else{
		            	  pw.println("<html><head></head><body><table  border=1  cellpadding=10 style=width:95% >"+
	            			  "<tr><th>Data is inserted successfully"+ 
	               "in database.</th></tr>"+
	              "</table></body></html>");
		            	  
		              }  
		                 
	}catch(Exception e) {
		      e.printStackTrace();

		          }
		       finally {
		           // close all the connections.
		          //pstatement.close();
		        //  connection.close();
		               }
		     }
		   
		
	}