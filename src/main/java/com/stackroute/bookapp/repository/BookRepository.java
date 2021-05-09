package com.stackroute.bookapp.repository;

import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;

import org.springframework.stereotype.Repository;

import com.stackroute.bookapp.model.Book;



@Repository
public class BookRepository {

	private List<Book> booklist = new ArrayList<>();
	
	public Book addBook(Book book) {
		booklist.add(book);
		return book;
	}
	
	public List<Book> getAllBooks() {
		return booklist;
	}
	
	public Book deleteBook(String bookid) {
		Book deletedBook = new Book();
		Book bok;
		ListIterator<Book> boklist = booklist.listIterator();
		
		while(boklist.hasNext()) {
			if((bok = boklist.next()).getBookid().equals(bookid)) {
				boklist.remove();
				deletedBook = bok;

			}
		}
		
		return deletedBook;
	}
	public Book getBookById(String bookid) {
		Book bookdata = null;
		for(Book book: booklist) {
			if(bookid.equals(book.getBookid())) {
				bookdata = book;
				break;
			}
		}
		return bookdata;
	}
	
	public List<Book> updateBook(Book book) {
		
		for(Book b : booklist) {
			if(b.getBookid().equals(book.getBookid())) {
				b.setBookname(book.getBookname());
				b.setAuthor(book.getAuthor());
				break;
			}
		}
		return booklist;
	}
	
}
