package com.techreads.controller;

import static org.springframework.web.bind.annotation.RequestMethod.POST;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;
import javax.servlet.ServletContext;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;


import com.techreads.model.Book;
import com.techreads.repository.BookRepository;

@Controller
@RequestMapping("/books")
public class BookController {

	@Autowired

	BookRepository bookRepository;

	@RequestMapping({ "", "/" })
	public ModelAndView books() {
		ModelAndView mav = new ModelAndView("books");
		List<Book> books = bookRepository.findAll();
		mav.addObject("books", books);
		return mav;

	}

	@RequestMapping("/delete/{bookId}")
	public String delete(@PathVariable(name = "bookId") int bookId, Model model) {
		long longId = bookId;
		Book book = bookRepository.getOne(longId);
		bookRepository.delete(book);
		return "redirect:/books";
	}

	@RequestMapping("/add")
	public String add(Model model) {
		model.addAttribute("bookForm", new Book());
		return "add";
	}

	@RequestMapping("/details/{bookId}")
	public String details(@PathVariable(name = "bookId") int bookId, Model model) {
		long longId = bookId;
		Book book = bookRepository.getOne(longId);
		model.addAttribute("book", book);
		return "details";
	}

	@RequestMapping("/edit/{bookId}")
	public String edit(@PathVariable(name = "bookId") int bookId, Model model) {
		long longId = bookId;
		Book book = bookRepository.getOne(longId);
		model.addAttribute("book", book);
		return "edit";
	}

	@RequestMapping(value = { "", "/" }, method = POST)

	public RedirectView addBook(Book book) {
		bookRepository.saveAndFlush(book);
		return new RedirectView("books");
	}

}