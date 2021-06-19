package control;

import bin.Khoa;
import bin.MonHoc;
import model.KhoaEntity;
import model.MonHocEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Collection;

@WebServlet(name = "CT_Mon_Hoc", urlPatterns = "/CT_Mon_Hoc")
public class CT_Mon_Hoc extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
        //demo_template
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Collection<MonHoc> values = new MonHocEntity().getAll();
        request.setAttribute("list",values);
        request.getRequestDispatcher("mon_hoc.jsp").forward(request,response);
    }
}
