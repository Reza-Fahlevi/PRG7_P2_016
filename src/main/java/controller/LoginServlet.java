package controller;

import model.LoginData;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "LoginServlet", value = "/LoginServlet")
public class LoginServlet extends HttpServlet {

    private int angka1;
    private int angka2;

    public void init() {
        angka1 = (int) ((Math.random() * (10 - 1)) + 1);
        angka2 = (int) ((Math.random() * (10 - 1)) + 1);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("angka1", angka1);
        request.setAttribute("angka2", angka2);
        request.getRequestDispatcher("login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        LoginData loginData = new LoginData();
        loginData.setNama(request.getParameter("username"));
        loginData.setAngkaVerif(Integer.parseInt(request.getParameter("verifNumber")));

        PrintWriter out = response.getWriter();
        String username = loginData.getNama();
        int verifNumber = loginData.getAngkaVerif();

        if (verifNumber == (angka1 + angka2)) {
            out.println("<!DOCTYPE html>");
            out.println("<html><head><title>Login berhasil</title></head><body>");
            out.println("<h1>Selamat datang, " + username + "</h1>");
            out.println("</body></html>");
        } else {
            out.println("<!DOCTYPE html>");
            out.println("<html><head><title>Login gagal</title></head><body>");
            out.println("<h1>Maaf, verifikasi tidak berhasil. Silahkan coba lagi.</h1>");
            out.println("</body></html>");
        }
    }
}
