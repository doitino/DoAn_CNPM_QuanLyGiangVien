package control;


import bin.GiangVien;
import model.GiangVienEntity;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "CT_Add", urlPatterns = "/CT_Add")
public class CT_Add extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
        //demo_template
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            String ten = request.getParameter("ten");
            String ngaysinh =request.getParameter("ngaysinh");
            String gioitinh =request.getParameter("gioitinh");
            String makhoa = request.getParameter("makhoa");
            String hocvi = request.getParameter("hocvi");
            int count =GiangVienEntity.maxMaGiaoVien() +1;
            System.out.print(ten + ngaysinh+ hocvi);


            GiangVien gv = new GiangVien();

            if(ten!=null ||ngaysinh!=null|| gioitinh!=null || makhoa !=null ||hocvi !=null ) {
                gv.setMa_gv(count);
                gv.setTen_gv(ten);
                gv.setNgay_sinh(ngaysinh);
                gv.setGioi_tinh(gioitinh);
                gv.setMa_khoa(Integer.parseInt(makhoa));
                gv.setHoc_vi(hocvi);
                GiangVienEntity.addone(gv);
                request.getRequestDispatcher("CT_DanhSach").forward(request,response);
            }else {
                request.getRequestDispatcher("them_giang_vien.jsp").forward(request,response);
            }
        }finally {
            out.close();
        }



    }
}
