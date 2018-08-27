package com.yc.bean;

import java.io.Serializable;
import java.util.List;

public class Page<T> implements Serializable  {
	 private static final long serialVersionUID = 1L;
	    private long total; //总记录数
	    private List<T> list; //结果集
	    private int pageNum; //第几页
	    private int pageSize; //每页记录数
	    private int pages; // 总页数
	    private int size; //当前页的数量<=pageSize
	    private int start;
	    
	    
	    public int getStart() {
			return start;
		}

		public void setStart(int start) {
			this.start = start;
		}

		@Override
		public String toString() {
			return "Page [total=" + total + ", list=" + list + ", pageNum=" + pageNum + ", pageSize=" + pageSize
					+ ", pages=" + pages + ", size=" + size + ", start=" + start + "]";
		}

		public Page() {
			super();
		}
	    
	   /**
	    * 
	    * @param list
	    * @param total2
	    * @param pagesize
	    * @param pageNum
	    */
		public Page(List<T> list,long total2,int pagenum,int pagesize){
	        	this.pageSize=pagesize;
	            this.list = list;
	            this.size=list.size();
	            this.total =total2;
	          // this.start = start;
	            if(total%pagesize==0 ){
	            	pages=(int) (total/pagesize);
	            }else{
	            	pages=(int) (total/pagesize)+1;
	            }
	           
	            pageNum=pagenum;

	    }
	    public long getTotal() {
	        return total;
	    }
	    public void setTotal(long total) {
	        this.total = total;
	    }
	    public List<T> getList() {
	        return list;
	    }

	    public void setList(List<T> list) {
	        this.list = list;
	    }
	    public int getSize() {
	        return size;
	    }
	    public void setSize(int size) {
	        this.size = size;
	    }
	    public int getPageNum() {
	        return pageNum;
	    }
	    public void setPageNum(int pageNum) {
	        this.pageNum = pageNum;
	    }
	    public int getPageSize() {
	        return pageSize;
	    }

	    public void setPageSize(int pageSize) {
	        this.pageSize = pageSize;
	    }
	    public int getPages() {
	        return pages;
	    }
	    public void setPages(int pages) {
	        this.pages = pages;
	    }
	}