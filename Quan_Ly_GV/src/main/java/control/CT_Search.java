package control;

import bin.GiangVien;
import bin.Khoa;
import bin.MonHoc;
import model.GiangVienEntity;
import model.KhoaEntity;
import model.MonHocEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Collection;

@WebServlet(name = "CT_Search", urlPatterns = "/CT_Search")
public class CT_Search extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
        //demo_template
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        String name = request.getParameter("search");
        System.out.print(name);
        Collection<GiangVien> values = new GiangVienEntity().getSearchAll(name);
        Collection<Khoa> values2 = new KhoaEntity().getSearchKhoa(name);
        Collection<MonHoc> values3 = new MonHocEntity().getSearchMonHoc(name);


        request.setAttribute("list",values);
        request.setAttribute("list2",values2);
        request.setAttribute("list3",values3);
        request.getRequestDispatcher("search.jsp").forward(request,response);
    }
}
