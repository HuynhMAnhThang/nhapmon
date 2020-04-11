
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Control;

import cart.CartBean;
import cart.ProductDTO;
import entities.Sanpham;
import entities.Users;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;
import model.Load;
import model.LoginBean;
import model.Product;
import model.Products;
import org.apache.catalina.User;

/**
 *
 * @author msi
 */
public class Controller extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            String action = request.getParameter("btnAction");
            if (action.equals("Login")) {
                String user = request.getParameter("txtUser");
                String pass = request.getParameter("txtPass");
                LoginBean login = new LoginBean();
                login.LoadData();
                boolean result = login.checkLogin(user, pass);
                String quyen = login.checkQuyen(user, pass);
                String url = "Login_1.jsp";
                if (result) {
                    HttpSession session = request.getSession(true);
                    session.setAttribute("USER", user);
                    session.setAttribute("log", "none");
                    session.setAttribute("logout", "");
                    url = "Trangchu.jsp";
                }
                if (quyen.equals("admin")) {
                    HttpSession session = request.getSession(true);
                    session.setAttribute("lg1", "");
                    session.setAttribute("lg", "");
                     url = "Thanhvien.jsp";
                } else if (quyen.equals("nv")) {
                    HttpSession session = request.getSession(true);
                    session.setAttribute("lg1", "none");
                }

                String[] dangky = request.getParameterValues("Dangky");
                if (dangky != null) {

                }
                RequestDispatcher rd = request.getRequestDispatcher(url);
                rd.forward(request, response);
            } else if (action.equals("Dangnhap")) {
                RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
                rd.forward(request, response);
            } else if (action.equals("Dangxuat")) {
                RequestDispatcher rd = request.getRequestDispatcher("Trangchu_2.jsp");
                rd.forward(request, response);
            } else if (action.equals("Thanhvien")) {
                LoginBean login = new LoginBean();
                login.LoadData();
                RequestDispatcher rd = request.getRequestDispatcher("Thanhvien.jsp");
                rd.forward(request, response);
            } else if (action.equals("Sanpham")) {
                LoginBean login = new LoginBean();
                login.LoadData();
                RequestDispatcher rd = request.getRequestDispatcher("SanPham.jsp");
                rd.forward(request, response);
            } else if (action.equals("Giohang")) {
                LoginBean login = new LoginBean();
                login.LoadData();
                RequestDispatcher rd = request.getRequestDispatcher("showcart.jsp");
                rd.forward(request, response);
            } else if (action.equals("Giohanga")) {
                LoginBean login = new LoginBean();
                login.LoadData();
                RequestDispatcher rd = request.getRequestDispatcher("showcart_1.jsp");
                rd.forward(request, response);
            } else if (action.equals("Dangky")) {
                RequestDispatcher rd = request.getRequestDispatcher("NewLogin_1.jsp");
                rd.forward(request, response);
            } else if (action.equals("Trangchu")) {
                RequestDispatcher rd = request.getRequestDispatcher("Trangchu.jsp");
                rd.forward(request, response);
            } else if (action.equals("ADDPRO")) {
                LoginBean login = new LoginBean();
                login.LoadData();
                RequestDispatcher rd = request.getRequestDispatcher("NewLogin.jsp");
                rd.forward(request, response);
            } else if (action.equals("Update")) {

                LoginBean loginBean = new LoginBean();
                Users users = new Users();
                users.setUserName(request.getParameter("txt2User"));
                users.setPassword(request.getParameter("txt2Pass"));
                users.setTen(request.getParameter("txt2Name"));
                users.setSdt(request.getParameter("txt2Sdt"));
                users.setPermission(request.getParameter("cbo2Quyen"));
                boolean status = request.getParameter("status") != null;
                users.setStatus(status);
                if (loginBean.update(users)) {
                    request.setAttribute("msg", "Successful");
                } else {
                    request.setAttribute("msg", "Failed");
                }

                RequestDispatcher rd = request.getRequestDispatcher("Thanhvien.jsp");
                rd.forward(request, response);
            } else if (action.equals("SUA")) {
                Products products = new Products();
                Sanpham sp = new Sanpham();
                sp.setMasp(request.getParameter("txtMasp"));
                sp.setTensp(request.getParameter("txtTensp"));
                sp.setGia(request.getParameter("txtGia"));
                boolean status = request.getParameter("status") != null;
                sp.setStatus(status);
                if (products.update(sp)) {
                    request.setAttribute("msg", "Successful");
                } else {
                    request.setAttribute("msg", "Failed");
                }
                RequestDispatcher rd = request.getRequestDispatcher("SanPham.jsp");
                rd.forward(request, response);
            } else if (action.equals("Them vao gio")) {
                HttpSession session = request.getSession(true);
                CartBean shop = (CartBean) session.getAttribute("SHOP");
                if (shop == null) {
                    shop = new CartBean();
                }
                String code = request.getParameter("txtCode");
                String name = request.getParameter("txtName");
                String pri = request.getParameter("txtPrice");
                Product s = new Product(code, name, pri);
                ProductDTO sp = new ProductDTO(s);
                shop.addSanPham(sp);
                session.setAttribute("SHOP", shop);
                RequestDispatcher rd = request.getRequestDispatcher("Trangchu_1.jsp");
                rd.forward(request, response);
            } else if (action.equals("Add to Cart")) {
                HttpSession session = request.getSession(true);
                CartBean shop = (CartBean) session.getAttribute("SHOP");
                if (shop == null) {
                    shop = new CartBean();
                }
                String code = request.getParameter("txtCode");
                String name = request.getParameter("txtName");
                String pri = request.getParameter("txtPrice");
                Product s = new Product(code, name, pri);
                ProductDTO sp = new ProductDTO(s);
                shop.addSanPham(sp);
                session.setAttribute("SHOP", shop);
                RequestDispatcher rd = request.getRequestDispatcher("Trangchu.jsp");
                rd.forward(request, response);
            } else if (action.equals("Delete")) {
                try {
                    String code = request.getParameter("txtCode");
                    Products s = new Products();
                    s.delete(code);
                    RequestDispatcher rd = request.getRequestDispatcher("SanPham.jsp");
                    rd.forward(request, response);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            } else if (action.equals("X")) {
                try {
                    String user = request.getParameter("txtUser");
                    LoginBean login = new LoginBean();
                    login.Delete(user);
                    RequestDispatcher rd = request.getRequestDispatcher("Thanhvien.jsp");
                    rd.forward(request, response);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            } else if (action.equals("View Cart")) {
                RequestDispatcher rd = request.getRequestDispatcher("showcart.jsp");
                rd.forward(request, response);
            } else if (action.equals("AddMore")) {
                RequestDispatcher rd = request.getRequestDispatcher("Trangchu.jsp");
                rd.forward(request, response);
            } else if (action.equals("Remove")) {
                String[] list = request.getParameterValues("rmv");
                if (list != null) {
                    HttpSession session = request.getSession();
                    if (session != null) {
                        CartBean shop = (CartBean) session.getAttribute("SHOP");
                        if (shop != null) {
                            for (int i = 0; i < list.length; i++) {
                                shop.removeSanPham(list[i]);
                            }
                            session.setAttribute("SHOP", shop);
                        }
                    }
                }
                String url = "Controller?btnAction=View Cart";
                RequestDispatcher rd = request.getRequestDispatcher(url);
                rd.forward(request, response);
            } else if (action.equals("XOA")) {
                String[] list = request.getParameterValues("rmv");
                if (list != null) {
                    HttpSession session = request.getSession();
                    if (session != null) {
                        CartBean shop = (CartBean) session.getAttribute("SHOP");
                        if (shop != null) {
                            for (int i = 0; i < list.length; i++) {
                                shop.removeSanPham(list[i]);
                            }
                            session.setAttribute("SHOP", shop);
                        }
                    }
                }

                RequestDispatcher rd = request.getRequestDispatcher("showcart_1.jsp");
                rd.forward(request, response);
            } else if (action.equals("Thanh Toan")) {
                String[] list = request.getParameterValues("rmv");
                if (list != null) {
                    HttpSession session = request.getSession();
                    if (session != null) {
                        CartBean shop = (CartBean) session.getAttribute("SHOP");
                        if (shop != null) {
                            for (int i = 0; i < list.length; i++) {

                                shop.removeSanPham(list[i]);
                            }
                            session.setAttribute("SHOP", shop);
                        }
                    }
                }
                String url = "Controller?btnAction=View Cart";
                RequestDispatcher rd = request.getRequestDispatcher(url);
                rd.forward(request, response);
            }

        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
