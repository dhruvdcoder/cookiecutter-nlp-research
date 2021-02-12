# {{ cookiecutter.project.name }}

{{ cookiecutter.project.description }}

# Directory Structure



# Contributors

{% for contributor in cookiecutter.project.contributors %}
[{{ contributor.name }}]({{ contributor.website }})
{% endfor %}

# Cite
{% for pub in cookiecutter.project.publications %}
{{ pub.bibtex }}
{% endfor %}
