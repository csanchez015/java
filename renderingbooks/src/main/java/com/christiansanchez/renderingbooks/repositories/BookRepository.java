package com.christiansanchez.renderingbooks.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.christiansanchez.renderingbooks.models.Book;

public interface BookRepository extends CrudRepository<Book, Long>{
	List<Book> findAll();

}
