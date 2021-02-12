#!/bin/bash
echo "=======Creating virtual env========="
python3 -m virtualenv  .venv_{{cookiecutter.package_name}}
source .venv_{{cookiecutter.package_name}}/bin/activate

echo "=======Install test requirements======="
pip install -r test_requirements.txt

echo "=======Install doc requirements======="
pip install -r doc_requirements.txt

echo "=======Install core requirements======"
pip install -r core_requirements.txt
{% if cookiecutter.packages.wandb.use %}
echo "=======Login to wandb (optional)==============="
wandb init
{% endif %}
