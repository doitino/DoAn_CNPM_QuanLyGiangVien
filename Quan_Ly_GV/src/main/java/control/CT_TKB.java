package control;

import bin.MonHoc;
import model.MonHocEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Collection;

@WebServlet(name = "CT_TKB", urlPatterns = "/CT_TKB")
public class CT_TKB extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
        //demo_template
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        PrintWriter out = response.getWriter();
//        try{
//        String id = request.getParameter("ma_gv");
//        System.out.print(id +"ssssssssssssssssss");
//        if (id !=null) {
//            Collection<MonHoc> values = new MonHocEntity().getAll_MH(id);
//            request.setAttribute("list", values);
//            request.setAttribute("ten", id);
//            request.getRequestDispatcher("thoi_khoa_bieu.jsp").forward(request, response);
//        }
//    }finally {
//        out.close();
//    }
        response.setContentType("text/html; charset=UTF-8");
//        String id = request.getParameter("ma_gv");
            Collection<MonHoc> values = new MonHocEntity().getAll_MH(2);
            request.setAttribute("list", values);
            request.getRequestDispatcher("thoi_khoa_bieu.jsp").forward(request, response);
    }
}
