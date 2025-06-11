package org.example.exo3;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(value = "/tableau")
public class ServletTableau extends HttpServlet {
    private List<String> prenoms = new ArrayList<>();
    private List<String> noms = new ArrayList<>();
    private List<Integer> ages = new ArrayList<>();

    @Override
    public void init() throws ServletException {
        prenoms.add("Maryline");
        prenoms.add("Amy");
        prenoms.add("Jessica");
        noms.add("Monroe");
        noms.add("Toto");
        noms.add("Tata");
        ages.add(30);
        ages.add(25);
        ages.add(42);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("noms", noms);
        req.setAttribute("prenoms", prenoms);
        req.setAttribute("ages", ages);
        req.getRequestDispatcher("/tableau.jsp").forward(req, resp);
    }
}
