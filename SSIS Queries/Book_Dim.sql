SELECT    book.book_id,
          book.title,
		  book.isbn13,
		  book.language_id,
		  book.num_pages,
		  book.publication_date,
		  book.publisher_id,
		  book_language.language_code,
		  book_language.language_name,
		  publisher.publisher_name
FROM    book left JOIN
        book_language ON book.language_id = book_language.language_id left JOIN
        publisher ON book.publisher_id = publisher.publisher_id