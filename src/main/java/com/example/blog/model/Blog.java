package com.example.blog.model;

import java.time.LocalTime;

public class Blog {
    private int id;
    private String content;
    private String title;
    private LocalTime createTime;
    private int likeCount;
    private String category;
    private String user;

    public Blog(int id, String content, String title, int likeCount, String category,String user) {
        this.id = id;
        this.content = content;
        this.title = title;
        this.createTime = LocalTime.now();
        this.likeCount = likeCount;
        this.category = category;
        this.user=user;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public LocalTime getCreateTime() {
        return createTime;
    }

    public void setCreateTime(LocalTime createTime) {
        this.createTime = createTime;
    }

    public int getLikeCount() {
        return likeCount;
    }

    public void setLikeCount(int likeCount) {
        this.likeCount = likeCount;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }
}
