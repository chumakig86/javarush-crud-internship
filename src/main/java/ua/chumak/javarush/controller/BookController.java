package ua.chumak.javarush.controller;

import org.springframework.web.servlet.ModelAndView;
import ua.chumak.javarush.model.Book;
import ua.chumak.javarush.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.support.PagedListHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@Controller
public class BookController {

    
    private static int id = 0;
    private BookService bookService;

    @Autowired(required = true)
    @Qualifier(value = "bookService")
    public void setbookService(BookService bookService) {
        this.bookService = bookService;
    }


    @RequestMapping(value = "books/add", method = RequestMethod.POST)
    public String addbook(@ModelAttribute("book") Book book) {
        if (book.getId() == 0) this.bookService.addBook(book);
        else this.bookService.updateBook(book);
        return "redirect:/";
    }


    @RequestMapping("/remove/{id}")
    public String removebook(@PathVariable("id") int id) {
        this.bookService.removeBook(id);
        return "redirect:/";
    }


    @RequestMapping("/edit/{id}")
    public String editbook(@PathVariable("id") int id, Model model) {
        BookController.id = this.bookService.getBookById(id).getId();
        model.addAttribute("listbooks", this.bookService.listBooks());
        this.bookService.makeRead(true, bookService.getBookById(id));
        return "redirect:/";
    }

    @RequestMapping("readbook/{id}")
    public String readBook(@RequestParam(required = false) Integer page, @PathVariable("id") int id, Model model){
        BookController.id = this.bookService.getBookById(id).getId();
        this.bookService.makeRead(false, bookService.getBookById(id));
        model.addAttribute("book", this.bookService.listBooks());
        List<Book> books = this.bookService.listBooks();
        return "redirect:/";
    }

    @RequestMapping("bookdata{id}")
    public String bookData(@PathVariable("id") int id, Model model) {
        model.addAttribute("book", this.bookService.getBookById(id));
        return "redirect:/";
    }


    @RequestMapping(value = "/")
    public ModelAndView listOfBooks(@RequestParam(required = false) Integer page, @RequestParam(required = false) String bookName) {
        ModelAndView modelAndView = new ModelAndView("index");
        if (id != 0) {
            modelAndView.addObject("book", this.bookService.getBookById(id));
            id = 0;
        } else {
            modelAndView.addObject("book", new Book());
        }

        List<Book> books = null;
        if (bookName == null || bookName.length() < 3) {
            books = this.bookService.listBooks();
        } else {
            List<Book> tempbooks = this.bookService.listBooks();
            books = new ArrayList<Book>();
            for (Book tempbook : tempbooks) {
                if (tempbook.getTitle().toLowerCase().contains(bookName.toLowerCase())) {
                    System.out.println("filter: " + tempbook);
                    books.add(tempbook);
                }
            }
        }
        PagedListHolder<Book> pagedListHolder = new PagedListHolder<Book>(books);
        pagedListHolder.setPageSize(10);
        modelAndView.addObject("maxPages", pagedListHolder.getPageCount());

        if (page == null || page < 1 || page > pagedListHolder.getPageCount()) {
            page = 1;
        }

        modelAndView.addObject("page", page);
        if (page == null || page < 1 || page > pagedListHolder.getPageCount()) {
            pagedListHolder.setPage(0);
            modelAndView.addObject("listBooks", pagedListHolder.getPageList());
        } else if (page <= pagedListHolder.getPageCount()) {
            pagedListHolder.setPage(page - 1);
            modelAndView.addObject("listBooks", pagedListHolder.getPageList());
        }
        return modelAndView;
    }
}
