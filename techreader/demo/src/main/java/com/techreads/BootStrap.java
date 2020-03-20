package com.techreads;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationListener;
import org.springframework.context.event.ContextRefreshedEvent;
import org.springframework.stereotype.Component;
import com.techreads.model.Book;
import com.techreads.repository.BookRepository;

@Component
public class BootStrap implements ApplicationListener<ContextRefreshedEvent> {
	@Autowired
	protected BookRepository bookRepository;

	@Override
	public void onApplicationEvent(ContextRefreshedEvent event) {
		if (bookRepository.count() < 3) {
			bookRepository.save(new Book("Beginning Groovy and Grails", "Chris Judd", "", null, null));
			bookRepository.save(new Book("Pro Eclipse JST", "he wore hair", "he wore hair", null, null));
			bookRepository.save(new Book("Enterprise Java Development on a Budget", "he wore hair", "he wore hair", null, null));
		}
	}
}