package com.example.tpchifoumi.servlet;

import java.io.*;
import java.util.ArrayList;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(urlPatterns = {"/jouer","/"})
public class ChifoumiServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/jouer.jsp");
        rd.forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("post");

        HttpSession session = req.getSession();
        List<String> listUserWin = new ArrayList<>();
        if (session.getAttribute("nbUserWin") != null) {
            listUserWin = (List<String>) session.getAttribute("nbUserWin");
        }
        List<String> listServerWin = new ArrayList<>();
        if (session.getAttribute("nbServerWin") != null) {
            listServerWin = (List<String>) session.getAttribute("nbServerWin");
        }

        String playerChoix = req.getParameter("playerChoix");
        System.out.println("test "+playerChoix);
        req.setAttribute("playerChoix",playerChoix);

        String[] serverChoix = {"pierre","feuille","ciseaux"};
        int nb = (int) (Math.random() * serverChoix.length);
        req.setAttribute("serverChoix",serverChoix[nb]);
        String resultat;
        if (playerChoix.equals(serverChoix[nb])){
            resultat = "Egale";
        } else if (playerChoix.equals("pierre")&& serverChoix[nb].equals("ciseaux")
                ||playerChoix.equals("feuille") && serverChoix[nb].equals("pierre")
                ||playerChoix.equals("ciseaux") && serverChoix[nb].equals("feuille")) {
            resultat = "L’utilisateur a gagner";
            listUserWin.add("win");
            session.setAttribute("nbUserWin", listUserWin);
            int userWin = listUserWin.size();
            session.setAttribute("userWin",userWin);
        }else {
            resultat = "Le serveur a gagner";
            listServerWin.add("win");
            session.setAttribute("nbServerWin", listServerWin);
            int serverWin = listServerWin.size();
            session.setAttribute("serverWin",serverWin);
        }
        String partieResultat;
        if (listUserWin.size()==3){
            partieResultat = "L’utilisateur a gagner la partie";
            session.setAttribute("partieResultat",partieResultat);
        } else if (listServerWin.size()==3) {
            partieResultat = "Le serveur a gagner la partie";
            session.setAttribute("partieResultat",partieResultat);
        }



        req.setAttribute("resultat",resultat);
        RequestDispatcher rd = req.getRequestDispatcher(req.getContextPath() + "WEB-INF/resultat.jsp");
        rd.forward(req, resp);


    }
}