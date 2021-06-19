package control;

import bin.Khoa;
import model.KhoaEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Collection;

@WebServlet(name = "CT_DS_Khoa", urlPatterns = "/CT_DS_Khoa")
public class CT_DS_Khoa extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
        //demo_template
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Collection<Khoa> values = new KhoaEntity().getAll();
        request.setAttribute("list",values);
        request.getRequestDispatcher("danh_sach_khoa.jsp").forward(request,response);
    }
}
