package top.yjzloveyzh.common.pojo;

import java.util.List;

public class Pagination<T> {
    List<T> results;
    List<Integer> pagesList;
    int totalCount; // 总记录数
    int totalPage; // 总页数
    int currentPage;

    String searchKeyWord;

    public Pagination() {
        super();
    }

    public List<T> getResults() {
        return results;
    }

    public List<Integer> getPagesList() {
        return pagesList;
    }

    public int getTotalCount() {
        return totalCount;
    }

    public int getTotalPage() {
        return totalPage;
    }

    public int getCurrentPage() {
        return currentPage;
    }

    public String getSearchKeyWord() {
        return searchKeyWord;
    }

    public void setResults(List<T> results) {
        this.results = results;
    }

    public void setPagesList(List<Integer> pagesList) {
        this.pagesList = pagesList;
    }

    public void setTotalCount(int totalCount) {
        this.totalCount = totalCount;
    }

    public void setTotalPage(int totalPage) {
        this.totalPage = totalPage;
    }

    public void setCurrentPage(int currentPage) {
        this.currentPage = currentPage;
    }

    public void setSearchKeyWord(String searchKeyWord) {
        this.searchKeyWord = searchKeyWord;
    }
}
