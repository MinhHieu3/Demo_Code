package com.example.blog.controller;

import com.example.blog.model.Blog;
import com.example.blog.sevices.BlogManager;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

@WebServlet(name = "blog", value = "/blogs")
public class BlogServler extends HttpServlet {
    BlogManager blogManager = new BlogManager();


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                showFormCreate(req, resp);
                break;
            case "edit":
                showFormEdit(req, resp);
                break;
            case "delete":
                showDelete(req, resp);
                break;
            case "option":
                showOption(req, resp);
                break;
            case "option1":
                showOption1(req, resp);
                break;
            case "sortTime":
                showSortTime(req, resp);
                break;
            case "sortlike":
                showSortLike(req, resp);
                break;
            case "createUser":
                showFromCreateUser(req,resp);
                break;

            default:
                showListComputer(req, resp);
        }
    }

    private void showFromCreateUser(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/blog/createUser.jsp");
        requestDispatcher.forward(req, resp);
    }

    private void showSortLike(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("blog/list.jsp");
        List<Blog> blogSort = new ArrayList<>(blogManager.getBlogList());
        Collections.sort(blogSort, Comparator.comparing(Blog::getLikeCount));
        req.setAttribute("danhSachBlog", blogSort);
        requestDispatcher.forward(req, resp);
    }

    private void showSortTime(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("blog/list.jsp");
        List<Blog> blogSort = new ArrayList<>(blogManager.getBlogList());
        Collections.sort(blogSort, Comparator.comparing(Blog::getCreateTime));
        req.setAttribute("danhSachBlog", blogSort);
        requestDispatcher.forward(req, resp);
    }

    private void showOption1(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("blog/list.jsp");
        String option = "Kiếm Hiệp";
        List<Blog> blog = new ArrayList<>();
        for (int i = 0; i < blogManager.getBlogList().size(); i++) {
            if (blogManager.getBlogList().get(i).getCategory().equals(option)) {
                blog.add(blogManager.getBlogList().get(i));
            }
        }
        req.setAttribute("danhSachBlog", blog);
        requestDispatcher.forward(req, resp);
    }

    private void showOption(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("blog/list.jsp");
        String option = "Gái Xinh";
        List<Blog> blog = new ArrayList<>();
        for (int i = 0; i < blogManager.getBlogList().size(); i++) {
            if (blogManager.getBlogList().get(i).getCategory().equals(option)) {
                blog.add(blogManager.getBlogList().get(i));
            }
        }
        req.setAttribute("danhSachBlog", blog);
        requestDispatcher.forward(req, resp);

    }

    private void showDelete(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        blogManager.delete(id);
        resp.sendRedirect("/blogs");

    }

    private void showFormEdit(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/blog/edit.jsp");
        int id = Integer.parseInt(req.getParameter("id"));
        Blog blog = blogManager.search(id);
        req.setAttribute("sua", blog);
        requestDispatcher.forward(req, resp);

    }

    private void showFormCreate(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/blog/create.jsp");
        requestDispatcher.forward(req, resp);
    }

    private void showListComputer(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("blog/list.jsp");
        List<Blog> list = blogManager.getBlogList();
        req.setAttribute("danhSachBlog", list);
        requestDispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                Create(req, resp);
                break;
            case "createUser":
                Create2(req,resp);
                break;
            case "edit":
                Edit(req, resp);
                break;
            case "seach":
                Seach(req, resp);
                break;


        }
    }

    private void Create2(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        String content = req.getParameter("content");
        String title = req.getParameter("title");
        int like = Integer.parseInt(req.getParameter("like"));
        String category = req.getParameter("category");
        String user=req.getParameter("user");
        blogManager.add(new Blog(id, content, title, like, category,user));
        resp.sendRedirect("/blogs");
    }

    private void Seach(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("blog/list.jsp");
        String seachTitle = req.getParameter("seach");
        List<Blog> blogs = new ArrayList<>();
        for (int i = 0; i < blogManager.getBlogList().size(); i++) {
            if (blogManager.getBlogList().get(i).getTitle().contains(seachTitle) || blogManager.getBlogList().get(i).getContent().contains(seachTitle)) {
                blogs.add(blogManager.getBlogList().get(i));
            }
        }
        req.setAttribute("danhSachBlog", blogs);
        requestDispatcher.forward(req, resp);
    }

    private void Edit(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        String content = req.getParameter("content");
        String title = req.getParameter("title");
        int like = Integer.parseInt(req.getParameter("like"));
        String category = req.getParameter("category");
        blogManager.edit(id, new Blog(id, content, title, like, category,""));
        resp.sendRedirect("/blogs");
    }

    private void Create(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        String content = req.getParameter("content");
        String title = req.getParameter("title");
        int like = Integer.parseInt(req.getParameter("like"));
        String category = req.getParameter("category");
        String user=req.getParameter("user");
        blogManager.add(new Blog(id, content, title, like, category,user));
        resp.sendRedirect("/blogs");
    }

}
