package org.sakila.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.sakila.bean.ActorBean;
import org.sakila.dao.ActorDAO;

public class ModificaAttore extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String actorId = req.getParameter("id");
		String f = req.getParameter("firstName");
		String l = req.getParameter("lastName");
		try{
			short id = Short.parseShort(actorId);
			ActorBean ab = new ActorBean();
			ab.setActorId(id);
			ab.setFirstName(f);
			ab.setLastName(l);
			ActorDAO actorDAO = new ActorDAO();
			actorDAO.update(ab);
			PrintWriter pw = resp.getWriter();
                        pw.write("Attore modificato con successo");
		}catch(NumberFormatException nfe){
			resp.getWriter().write(nfe.getMessage());
		}
	}

}
