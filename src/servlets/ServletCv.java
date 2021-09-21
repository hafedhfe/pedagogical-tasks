package servlets;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itextpdf.text.Document;
import com.itextpdf.text.PageSize;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfWriter;

/**
 * Servlet implementation class ServletCv
 */
@WebServlet("/ServletCv")
public class ServletCv extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletCv() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setContentType("application/pdf");
		PrintWriter out=response.getWriter();
		String nom=request.getParameter("nom");
		String mail=request.getParameter("mail");
		String tel=request.getParameter("tel");
		String adresse=request.getParameter("adresse");
		String grade=request.getParameter("grade");
		String titrehab=request.getParameter("titrehab");
		String titreThese=request.getParameter("titreThese");
		String titreMaster=request.getParameter("titreMaster");
		try {Connection cnx=null;
		Statement st=null;
			
		}catch (Exception e) {
			// TODO: handle exception
		}
		
		  Document document = new Document(PageSize.A4);
		  document.addAuthor("Mourad Kmimech");
		  document.addTitle("CV");
	        try{
	            PdfWriter.getInstance(document, new FileOutputStream("cv"+request.getAttribute("nom")+".pdf"));
	            document.open();
	            
	            Paragraph p1 = new Paragraph("Hello World!");
	            Paragraph p2 = new Paragraph("Examsmyantra.com is committed to provide you valuable information and tutorials on various technologies.");
					document.add(p1);
	            document.add(p2);
	        }
	        catch(Exception e){
	            System.out.println(e);
	        }
	        document.close();
	    }
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
