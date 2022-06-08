package com.example.t2009m1helloworld.controller;

import com.example.t2009m1helloworld.Model.ProductModel;
import com.example.t2009m1helloworld.util.ShoppingCartHelper;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class SubCartServlet extends HttpServlet {
    private ProductModel productModel;

    public SubCartServlet(){
        this.productModel = new MySqlProduct();
    }
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            //lấy tham số khi người dùng tiến hành click add to cart
            Integer productId = Integer.parseInt(req.getParameter("productId"));
            Integer quantity = Integer.parseInt(req.getParameter("quantity"));
            // check sản phẩm tồn tại không , còn hàng không ?
            Product product = productModel.findById(productId);
            if (product == null){
                resp.getWriter().println("product is not found!");
                return;
            }
            // check số lượng sản phẩm có nhỏ hơn hoặc bằng 0?
            if (quantity <=0){
                resp.getWriter().println("invalid quantity");
                return;
            }
            // check xem shopping cart có trong seesion chưa , có rồi thì lấy ra
            // chưa có thì tạo mới
            ShoppingCartHelper shoppingCartHelper = new ShoppingCartHelper(req);
            Shoppingcart shoppingcart = shoppingCartHelper.getCart();
            // thêm sản phẩm vào shopping cart
            shoppingcart.sub(product, quantity);
            // lưu shopping cart và seesion
            shoppingCartHelper.saveCart(shoppingcart);
        }catch (Exception ex){
            resp.getWriter().println(ex.getMessage());
        }
    }
}
