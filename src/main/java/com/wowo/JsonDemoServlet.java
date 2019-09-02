package com.wowo;

import com.fasterxml.jackson.databind.ObjectMapper;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/jsonDemoServlet")
public class JsonDemoServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        PrintWriter out = response.getWriter();
        //String[] arr = {"JSP","ASP","PHP"};
        //送给客户端的数据是JSON数组
        //out.print(mapper.writeValueAsString(arr));
        //送给客户端的数据是User对象
        //User user = new User(1,"Eriri",16);
        //out.print(mapper.writeValueAsString(user));
        //List集合
        List<User> users= new ArrayList<>();
        users.add(new User(1,"miao",8));
        users.add(new User(2,"pa",8));
        users.add(new User(3,"si",8));
        out.print(mapper.writeValueAsString(users));
        out.close();
    }
}
