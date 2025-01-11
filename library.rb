require_relative "ebook"

class Library
  def initialize(book = []) 
    @ebooks = book
  end

  def run
    loop do
      puts "\n"
      puts "Welcome to DPI library!"
      puts "1. Add a books"
      puts "2. List all ebooks"
      puts "3. Search "
      puts "4. Exit"
      print "choose an option"
      option = gets.chomp.to_i
      puts "\n"

      case option
      when 1
        add_books
      when 2
        list_books
      when 3
        # search_books
        puts "Enter the title of the book to search: "
        book_title = gets.chomp
        if search_books(book_title)
          puts "Book found in the library!"
        else
          puts "Book not found in the library."
        end
      when 4
        puts "Thank you for visiting DPI library!"
        break
      else
        puts "Invalid option, try again"
      end

    end
  end

  private

  def add_books
    puts "Enter ebook title: "
    title = gets.chomp
    puts "Enter author name: "
    author = gets.chomp
    puts "Enter description: "
    content = gets.chomp
    @ebooks << Ebook.new(title, author, content)
    puts "Ebook added successfully!"
  end

  def list_books
    puts "Ebooks in the library: "
    @ebooks.each do |ebook|
      puts ebook
    end
  end

  def search_books(book_title)
    puts "Search ebooks in the library: "
    @ebooks.each do |ebook|
      if ebook.title.downcase == book_title.downcase
        return true
      end
    end
    false
  end
end
