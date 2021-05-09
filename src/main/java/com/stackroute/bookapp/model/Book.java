package com.stackroute.bookapp.model;

public class Book {

	 private String bookid;
	 private String bookname;
	 private String author;
	 
	 public Book() {
		 
	 }
	 
	 public Book(String bookid, String bookname,String author) {
		 this.bookid = bookid;
		 this.bookname = bookname;
		 this.author = author;
	 }
	 
	 
	 public void setBookid(String bookid) {
		 this.bookid = bookid;
	 }
	 
	 public String getBookid() {
		 return bookid;
	 }
	
	 public void setBookname(String bookname) {
		 this.bookname = bookname;
	 }
	 
	 public String getBookname() {
		 return bookname;
	 }
	 
	 
	 public void setAuthor(String author) {
		 this.author = author;
	 }
	 
	 public String getAuthor() {
		 return author;
	 }

	@Override
	public String toString() {
		return "Book [bookid=" + bookid + ", bookname=" + bookname + ", author=" + author + "]";
	}
	 
	 
	 
	 
	 
	 
	 
	
}
