package com.lei.util;

public class PageUtil {
	public Integer page;
    public Integer rows;
    public Integer start;
    public int total;
    public int current=1;
    public int begin=1;
    public int end=0;
    public String url;
    public String pageHtml;
    public String searchAnds;
    public String searchColumnNames;
    public String searchConditions;
    public String searchVals;
    
    
    public PageUtil(Integer page, Integer rows, String searchAnds, String searchColumnNames, String searchConditions,
            String searchVals) {
        super();
        this.page = page;
        this.rows = rows;
        this.start=(page-1)*rows;
        this.searchAnds = searchAnds;
        this.searchColumnNames = searchColumnNames;
        this.searchConditions = searchConditions;
        this.searchVals = searchVals;
    }
    public PageUtil(Integer page, Integer rows) {
    	super();
    	this.page=page;
    	this.rows=rows;
    	this.start=(page-1)*rows;
	}
	public Integer getPage() {
        return page;
    }
    public void setPage(Integer page) {
        this.page = page;
    }
    public Integer getRows() {
        return rows;
    }
    public void setRows(Integer rows) {
        this.rows = rows;
    }
    public String getSearchAnds() {
        return searchAnds;
    }
    public void setSearchAnds(String searchAnds) {
        this.searchAnds = searchAnds;
    }
    public String getSearchColumnNames() {
        return searchColumnNames;
    }
    public void setSearchColumnNames(String searchColumnNames) {
        this.searchColumnNames = searchColumnNames;
    }
   
    public String getSearchConditions() {
        return searchConditions;
    }
    public void setSearchConditions(String searchConditions) {
        this.searchConditions = searchConditions;
    }
    public String getSearchVals() {
        return searchVals;
    }
    public void setSearchVals(String searchVals) {
        this.searchVals = searchVals;
    }
    
//	
//	<nav>
//    <ul class="pagination">
//        <li><a href="#" aria-label="Previous"><span aria-hidden="true">«</span></a></li>
//        <li><a href="#">1</a></li>
//        <li><a href="#">2</a></li>
//        <li><a href="#">3</a></li>
//        <li><a href="#">4</a></li>
//        <li><a href="#">5</a></li>
//        <li><a href="#" aria-label="Next"><span aria-hidden="true">»</span></a></li>
//    </ul>
//</nav>
	public void setPageHtml(Long total) {
		
		
	}
	public String getPageHtml(){
		return pageHtml;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public int getCurrent() {
		return current;
	}
	public void setCurrent(int current) {
		this.current = current;
	}
	public int getBegin() {
		return begin;
	}
	public void setBegin(int begin) {
		this.begin = begin;
	}
	public int getEnd() {
		return end;
	}
	public void setEnd(int end) {
		this.end = end;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	

}
