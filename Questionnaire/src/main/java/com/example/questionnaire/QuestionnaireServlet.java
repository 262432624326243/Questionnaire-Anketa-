package com.example.questionnaire;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.Map;
import java.util.Set;

@WebServlet(name = "QuestionnaireServlet", value = "/QuestionnaireServlet")
public class QuestionnaireServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter pw = response.getWriter();
        Map<String, String[]> params = request.getParameterMap();
        Set<String> keys = params.keySet();
        pw.println("<html><body>");
        for (String k : keys) {
            pw.println("<p><h3>" + k + " " + "</h3></p>");
            Arrays.stream(params.get(k)).forEach(a -> pw.println("<p>" + a + "</a>"));
        }
        pw.println("</body></html>");
    }
}
