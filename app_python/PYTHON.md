# Python Best Practices
### 1. Create a Code Repository and Implement Version Control

 
#### **Structure of the Python Project**:
#### License
This is in the root directory and is where you should add a license for your project.
#### README
This is in the root directory too and is where you describe your project and what it does.
#### Module Code
This holds your actual code that may be inside a subdirectory or inside root.

#### requirements.txt
This is not mandatory, but if you use this, you put it in the root directory.

Here, you mention the modules and dependencies of the project - the things it will not run without.

#### setup.py
This script in the root lets distutils build and distribute modules needed by the project.

#### Documentation
Readable documentation is essential. This is placed in the docs directory.

#### Tests
Most projects have tests - keep these in the tests directory.
### 2. Create Readable Documentation
So, next in python best practices is readable documentation. You may find it burdensome, but it creates clean code.

For this, you can use Markdown, reStructuredText, Sphinx, or docstrings.

- Markdown and reStructuredText are markup languages with plain text formatting syntax to make it easier to mark up text and convert it to a format like HTML or PDF.
- reStructuredText lets you create in-line documentation.
- Sphinx is a tool to easily create intelligent and beautiful documentation. It lets you generate Python documentation from existing reStructuredText and export documentation in formats like HTML.
- Docstrings are documentation strings at the beginning of each module, class, or method.
### 3.  Follow Style Guidelines
The PEP8 holds some great community-generated proposals.

PEP stands for Python Enhancement Proposals- these are guidelines and standards for development. This is to make sure all Python code looks and feels the same.

One such guideline is to name classes with the CapWords convention.

- Use proper naming conventions for variables, functions, methods, and more.
- Variables, functions, methods, packages, modules: this_is_a_variable
- Classes and exceptions: CapWords
- Protected methods and internal functions: _single_leading_underscore
- Private methods: __double_leading_underscore
- Constants: CAPS_WITH_UNDERSCORES
- Use 4 spaces for indentation. For more conventions, refer to PEP8.
### 4.  Correct Broken Code Immediately
Like with the broken code theory, correct your broken code immediately. If you let it be while you work on something else, it can lead to worse problems later.

This is what Microsoft does. It once had a terrible production cycle with MS Word’s first version.

So now, it follows a ‘zero defects methodology’, and always corrects bugs and defects before proceeding.
### 5.  Use the PyPI Instead of Doing it Yourself
One of the reasons behind Python’s popularity is the PyPI- this is the Python Package Index; it has more than 198,190 projects at the time of writing.

You should use code from this instead of writing it yourself- this saves time and lets you focus on the more important things.

Install these using pip. You can also create and upload your own package here.
### 6.  The Zen of Python
Tim Peters wrote this short poem to express what values you should follow while coding in Python.

You can get this by running “import this” in the IDLE:

> import this
### 7.  Use the Right Data Structures
Know the benefits and limitations of different data structures, and choose the right one while Coding in Python.
### 8.  Write Readable Code
- You should use line breaks and indent your code.
- Use naming conventions for identifiers- this makes it easier to understand the code.
- Use comments, and whitespaces around operators and assignments.
- Keep the maximum line length 79 characters.
### 9.  Use Virtual Environments
You should create a virtual environment for each project you create.

This will avoid any library clashes, since different projects may need different versions of a certain library.
### 10.  Write Object-Oriented Code
Python is an object-oriented language, and everything in Python is an object. You should use the object-oriented paradigm if writing code for Python.

This has the advantages of data hiding and modularity. It allows reusability, modularity, polymorphism, data encapsulation, and inheritance.
### 11.  What Not to Do while Programming in Python
- Avoid importing everything from a package- this pollutes the global namespace and can cause clashes.
- Don’t implement best practices from other languages.
- Do not turn off error reporting during development- turn it off after it.
- Don’t alter sys.path, use distutils for that.

# Testing 
The only test I created for this application is comparing time returned by API and current Moscow time and checking that returning status code is 200(OK)

# Testing best practices 
- A testing unit should focus on one tiny bit of functionality and prove it correct
- Each test unit must be fully independent
- Try hard to make tests that run fast
- Learn your tools and learn how to run a single test or a test case
- Always run the full test suite before a coding session, and run it again after
- It is a good idea to implement a hook that runs all tests before pushing code to a shared repository
- f you are in the middle of a development session and have to interrupt your work, it is a good idea to write a broken unit test about what you want to develop next
- The first step when you are debugging your code is to write a new test pinpointing the bug
- Use long and descriptive names for testing functions
- When something goes wrong or has to be changed, and if your code has a good set of tests, you or other maintainers will rely largely on the testing suite to fix the problem or modify a given behavior
- An introduction to new developers. When someone will have to work on the code base, running and reading the related testing code is often the best thing that they can do to start

#### Sources I used :
[Python Best Practices – Every Python Developer Must Know](https://data-flair.training/blogs/python-best-practices/)
[Testing Your Code](https://docs.python-guide.org/writing/tests/)
