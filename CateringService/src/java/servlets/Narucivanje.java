package servlets;

import beans.Korisnik;
import beans.Narudzbina;
import beans.Proizvod;
import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Narucivanje extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession();
        Narudzbina narudzbina;

        if (session.getAttribute("User") == null) {
            request.setAttribute("msg", "Ulogujte se da bi naručili!");
            request.setAttribute("msgTip", "greska");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }

        switch (request.getParameter("zahtev")) {
            case "Dodaj u korpu!":
                // Dodaj
                Proizvod zaDodavanje = new Proizvod(Integer.parseInt(request.getParameter("proizvodID")));
                if (session.getAttribute("Narudzbina") != null) { // ako se dodaje u postojecu narudzbu
                    narudzbina = (Narudzbina) session.getAttribute("Narudzbina");
                } else { // Ako je nova narudzba;                    
                    narudzbina = new Narudzbina();
                    narudzbina.setKorisnik(new Korisnik(session.getAttribute("User").toString()));
                }

                try {
                    narudzbina.dodajProizvod(zaDodavanje, Integer.parseInt(request.getParameter("kolicina")));
                } catch (SQLException sqle) {
                    response.sendRedirect("Profil?User=" + session.getAttribute("User").toString() + "&View=Poruka&Status=greska");
                }
                session.setAttribute("Narudzbina", narudzbina);
                response.sendRedirect("Pocetna");
                break;
            case "Naruči":
                narudzbina = (Narudzbina) session.getAttribute("Narudzbina");
                if (!request.getParameter("poeni").equals("")) {
                    narudzbina.izracunajPopust(Integer.valueOf(request.getParameter("poeni")));
                } else {
                    narudzbina.setPopust(0);
                    narudzbina.setUkupnaCena(narudzbina.getTotalBezPopusta());
                }
                try {
                    narudzbina.naruci();
                } catch (SQLException sqle) {
                    response.sendRedirect("Profil?User=" + session.getAttribute("User").toString() + "&View=Poruka&Status=greska&");
                }
                int dobijeniPoeni = (int) (narudzbina.getUkupnaCena() / 1000);
                session.removeAttribute("Narudzbina");
                session.setAttribute("Poeni", (int)session.getAttribute("Poeni") + dobijeniPoeni);
                response.sendRedirect("Profil?User=" + session.getAttribute("User").toString() + "&View=Poruka&Status=uspeh&Poeni=" + Integer.toString(dobijeniPoeni));
                break;

            case "Otkaži":
                session.removeAttribute("Narudzbina");
                response.sendRedirect("Profil?User=" + session.getAttribute("User").toString() + "&View=Korpa");
                break;
            default:
                break;
        }
    }

    @Override
    public String getServletInfo() {
        return "Hendluje pozive za narucivanje, dodavanje u i brisanje iz korpe";
    }

}