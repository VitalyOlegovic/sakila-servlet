package org.sakila.servlet.attore;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.sakila.dao.ActorDAO;

public class EliminazioneAttore extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String p1 = req.getParameter("actor_id");
		PrintWriter pw = resp.getWriter();

		try {
			short actorId = Short.parseShort(p1);
			ActorDAO actorDAO = new ActorDAO();
			actorDAO.delete(actorId);
                        pw.write("Attore eliminato con successo");
		} catch (NumberFormatException nfe) {
			pw.write(nfe.getMessage());
		}
	}

}
