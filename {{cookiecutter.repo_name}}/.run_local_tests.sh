python -m coverage run --source {{ cookiecutter.package_name }} -m py.test tests -v --flake8
python -m coverage report -m
