package org.sakila.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.sakila.bean.ActorBean;
import org.sakila.dao.ActorDAO;

public class TabellaAttori extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html; charset=UTF8;");
		PrintWriter pw = resp.getWriter();
		pw.write("<h1>Attori</h1>");
		
		ActorDAO ad = new ActorDAO();
		List<ActorBean> l = ad.getList();
		
		pw.write("<table border='1'>");
		pw.write("<tr><td>id</td><td>name</td><td>last name</td><td>last update</td></tr>");
		for(ActorBean bean : l){
                    pw.write("<tr>");
                    pw.write("<td>" + bean.getActorId() + "</td>");
                    pw.write("<td>" + bean.getFirstName() + "</td>");
                    pw.write("<td>" + bean.getLastName() + "</td>");
                    pw.write("<td>" + bean.getLastUpdate() + "</td>");
                    pw.write("<td><a href='EliminazioneAttore?actor_id=" + 
                    bean.getActorId() + "'>Elimina</a></td>");
                    pw.write("<td><a href='modificaAttore.jsp?actor_id=" + bean.getActorId() + "'>Modifica</a></td>");
                    pw.write("</tr>");
		}
		pw.write("</table>");
		
	}

}
















