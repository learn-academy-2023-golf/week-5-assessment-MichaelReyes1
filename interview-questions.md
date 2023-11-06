# ASSESSMENT 5: Interview Practice Questions

Answer the following questions.

First, without external resources. Challenge yourself to answer from memory.

Then, research the question to expand on your answer. Even if you feel you have answered the question completely on your own, there is always something more to learn. Write your researched answer in your OWN WORDS.

1. Compare and contrast arrays and hashes in Ruby. Include at least two differences and two similarities.

Your answer: they both store a collection and both use each to support iteration and identify it by []. there differ by arrays holding objects and hashes using a key and value.

array

fruits = ['apple', 'orange', 'grape']

hash

person = { 'name' => 'Mike', age' => 30, 'city' => 'San Diego' }

Researched answer: they both are mutators where they both can be modified ,added or removed and both can store data types. They differ in where arrays are effective for maintaining ordered collections, where hashes are more suitable for managing key-value and faster retrieval. 

2. What does it mean to implement a TTD workflow?

Your answer: A test-driven development is where you write a test and want it to fail, than write the code to make it pass. You can refactor after.

Researched answer: also known as red-green-refactor, the first ouput should be red from the failing test, than green from adding the code to pass and than the code is protected and can be refactored. 

3. Why would super be used in a Ruby class?

Your answer: super would be used in a Ruby class when using a subclass method and it helps transfer new code or modifying the code. 

Researched answer: the super method is used in subclasses and after invoking super the subclass will have access to borrow those instance variable. 

4. STRETCH: What is the difference between inheritance in JavaScript and inheritance in Ruby?

Researched answer: In JavaScript inheritance are passing down qualities from parents to children ;while Ruby inheritance  is more like a family tree, where classes are like family members and each family has its unique traits. 

## Looking Ahead: Terms for Next Week

Research and define the following terms to the best of your ability.

1. PostgreSQL: is a powerful, open-source, and highly extensible relational database management system (RDBMS). It is known for its reliability, robustness, and support for advanced features such as complex queries, indexing, and extensive data types. PostgreSQL supports SQL (Structured Query Language) for managing and manipulating data, and it also allows the use of procedures, functions, and triggers.

2. Ruby on Rails: Rails is an open-source, full-stack web application framework written in the Ruby programming language. It follows the principle of Convention over Configuration (CoC) and Don't Repeat Yourself (DRY). Rails provides a structure for developing web applications by emphasizing the use of well-established patterns for software design. It includes various tools and libraries that make common development tasks easier, allowing developers to build web applications efficiently by minimizing the time spent on routine tasks.

3. Active Record: s an Object-Relational Mapping (ORM) layer within the Ruby on Rails framework. It facilitates the interaction between the application and the database by abstracting the database and representing its data in a more object-oriented manner. Active Record allows developers to work with database records as if they were objects in Ruby, enabling easy manipulation, querying, and handling of database records through intuitive Ruby methods and syntax. 
