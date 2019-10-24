package com.zlk.gjj_01.register.util;

/**
 * 分页工具类
 */
public class Pagination {
    //每页显示条数
    private Integer limit;
    //当前页
    private Integer page;
    //起始页
    private Integer startPage;

    public Integer getLimit() {
        return limit;
    }

    public void setLimit(Integer limit) {
        this.limit = limit;
    }

    public Integer getPage() {
        return page;
    }

    public void setPage(Integer page) {
        this.page = page;
    }

    public Integer getStartPage() {
        return startPage;
    }

    public void setStartPage(Integer startPage) {
        this.startPage = startPage;
    }

}
