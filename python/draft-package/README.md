How to make a package in python
=====

You need:

- a directory with the name `name_of_my_package`

- a setup.py file filled as in this example, it is important that `name` matches the name of your package `name_of_my_package`: `name='name_of_my_package'`

- `__init__.py` files to be able to import your functions

Now you should be able to run:

- `pip install -e .`

and then to import your functions:

- `from name_of_my_package.my_functions import my_function`
