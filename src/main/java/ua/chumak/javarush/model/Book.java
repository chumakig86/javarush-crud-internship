package ua.chumak.javarush.model;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

@Entity
@Table(name = "book")
public class Book {
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy =  GenerationType.IDENTITY)
    private int id;

    @Column(name = "title")
    @NotNull
    @Pattern(regexp = "([a-zа-яA-ZА-Я0-9 $]|[\\-_+#])+")
    private String title;

    @Column(name = "description")
    @Pattern(regexp ="^$||([a-zа-яA-ZА-Я0-9 $]|[\\-_+#])+")
    private String description;

    @Column(name = "author")
    @NotNull
    @Pattern(regexp = "([a-zа-яA-ZА-Я0-9 $]|[\\-_+#])+")
    private String author;

    @Column(name = "isbn")
    @NotNull
    @Pattern(regexp = "([0-9]|[\\-+#])+")
    private String isbn;

    @Column(name = "printYear")
    @NotNull
    private int printYear;

    @Column(name = "readAlready")
    private boolean readAlready;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getIsbn() {
        return isbn;
    }

    public void setIsbn(String isbn) {
        this.isbn = isbn;
    }

    public int getPrintYear() {
        return printYear;
    }

    public void setPrintYear(int printYear) {
        this.printYear = printYear;
    }

    public boolean isReadAlready() {
        return readAlready;
    }

    public void setReadAlready(boolean readAlready) {
        this.readAlready = readAlready;
    }

    @Override
    public String toString() {
        return "Book{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", description='" + description + '\'' +
                ", author='" + author + '\'' +
                ", isbn='" + isbn + '\'' +
                ", printYear=" + printYear +
                ", readAlready=" + readAlready +
                '}';
    }
}
