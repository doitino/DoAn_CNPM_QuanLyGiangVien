package control;

import bin.GiangVien;
import model.GiangVienEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Collection;

@WebServlet(name = "CT_DanhSach", urlPatterns = "/CT_DanhSach")
public class CT_DanhSach extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
        //demo_template
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Collection<GiangVien> values = new GiangVienEntity().getAll();
        request.setAttribute("list",values);
        request.getRequestDispatcher("danh_sach_giang_vien.jsp").forward(request,response);
    }
}
