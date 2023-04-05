package kz.bitlab.techorda.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kz.bitlab.techorda.db.DBUtil;
import kz.bitlab.techorda.db.Worker;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

@WebServlet(value = "/task-2")
public class Task1Servlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        ArrayList<Worker> workers = DBUtil.getWorkers();

        for(Worker worker : workers){
            out.print("<h2>"+worker.getName()+ " " + worker.getSurname() +" "+ worker.getDepartment() + " " + worker.getSalary()+ "</h2>");
        }
    }
}