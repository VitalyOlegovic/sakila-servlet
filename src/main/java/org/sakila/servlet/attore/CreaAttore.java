package org.sakila.servlet.attore;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.sakila.bean.ActorBean;
import org.sakila.dao.ActorDAO;


public class CreaAttore extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html; charset=UTF8;");
		PrintWriter pw = resp.getWriter();
		String f = req.getParameter("firstName");
		String l = req.getParameter("lastName");
		ActorBean ab = new ActorBean();
		ab.setFirstName(f);
		ab.setLastName(l);
		ActorDAO actorDAO = new ActorDAO();
		actorDAO.save(ab);
                pw.write("Attore inserito con successo.");
                
	}

}
