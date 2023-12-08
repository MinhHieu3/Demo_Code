package com.example.blog.sevices;

import com.example.blog.model.Blog;

import java.util.ArrayList;
import java.util.List;

public class BlogManager implements IManager<Blog>{
    List<Blog>blogList=new ArrayList<>();

    public BlogManager() {
        blogList.add(new Blog(1,"Content","title",10,"Gái Xinh"));
        blogList.add(new Blog(2,"Bui Anh Duc","title",1,"Kiếm Hiệp"));
        blogList.add(new Blog(3,"Dao Nhu Anh","title2",5,"Gái Xinh"));
        blogList.add(new Blog(4,"Li Tieu Long","title",6,"Kiếm Hiệp"));
    }

    public List<Blog> getBlogList() {
        return blogList;
    }

    @Override
    public void add(Blog add) {
        blogList.add(add);

    }

    @Override
    public void edit(int n, Blog edit) {
        int index=-1;
        for (int i = 0; i < blogList.size(); i++) {
            if(n==blogList.get(i).getId()){
                index=i;
            }
        }
        blogList.set(index,edit);

    }

    @Override
    public void delete(int n) {
        int index=-1;
        for (int i = 0; i < blogList.size(); i++) {
            if (n==blogList.get(i).getId()){
                index=i;
            }
        }
        blogList.remove(index);
    }

    @Override
    public Blog search(int n) {
        for (Blog b:blogList) {
            if (n==b.getId()){
                return b;
            }
        }
        return null;
    }

    @Override
    public List<Blog> showAll() {
        for (Blog b:blogList) {
            System.out.println();
        }
        return null;
    }
}
