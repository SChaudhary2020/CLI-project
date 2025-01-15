# ruby-cli-template

Use this repository as a template for your Ruby CLI (command line interface) project.

- Ruby version: `3.2.1`

# CLI Project
 A command line interface app stimulates library. It provides various commands to interact with the library, making it easy to perform tasks.

CLI-project main % ruby app.rb
Welcome to DPI library!
1. Add a books
2. List all ebooks
3. Search 
4. Exit
choose an option1

Enter ebook title: 
Amy
Enter author name: 
Stewart
Enter description: 
 true story of one of America's first female deputy sheriffs and her two rambunctious sisters. 
Ebook added successfully!

Welcome to DPI library!
1. Add a books
2. List all ebooks
3. Search 
4. Exit
choose an option2

Ebooks in the library: 
title: Amy by author: Stewart and content:  true story of one of America's first female deputy sheriffs and her two rambunctious sisters.

Welcome to DPI library!
1. Add a books
2. List all ebooks
3. Search 
4. Exit
choose an option3

Enter the title of the book to search: 
Amy
Search ebooks in the library: 
Book found in the library!

Welcome to DPI library!
1. Add a books
2. List all ebooks
3. Search 
4. Exit
choose an option4

Thank you for visiting DPI library!

# Usage
require_relative "library"

library = Library.new
library.run
