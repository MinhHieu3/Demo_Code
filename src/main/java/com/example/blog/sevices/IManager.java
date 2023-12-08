package com.example.blog.sevices;

import java.util.List;

public interface IManager <T>{
    void add(T add);
    void edit(int n , T edit);
    void delete(int n);
    T search(int n);
    List<T> showAll();
}
