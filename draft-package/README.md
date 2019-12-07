How to make a package in python
=====

You need:

- a directory with the name `name_of_my_package`

- a `setup.py` file filled as in this example, it is important that in the `setup.py` file the variable `name` matches the name of your package:
`name='name_of_my_package'`

- multiple (empty) `__init__.py` files in order to be able to import your functions.
Remark: you just need to create empty files with this name in each directory for relative import

Now you should be able to install your package, in a terminal run:

- `pip install -e .`

Now you should be able to import your function, in a python console run:

- `from name_of_my_package.my_functions import my_function`

and:

- `my_function()`
