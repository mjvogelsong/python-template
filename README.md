# mjv-template

[![cicd](https://github.com/mjvogelsong/python-template/actions/workflows/cicd.yaml/badge.svg)](https://github.com/mjvogelsong/python-template/actions)
[![pypi](https://img.shields.io/pypi/v/mjv-template.svg)](https://pypi.org/project/mjv-template/)
[![python](https://img.shields.io/pypi/pyversions/mjv-template.svg)](https://pypi.org/project/mjv-template/)
[![license](https://img.shields.io/pypi/l/mjv-template.svg)](https://pypi.org/project/mjv-template/)

A template for python projects.

## Install

```shell
pip install mjv-template
```

## Development

```shell
make install
```

To see a full list of commands:

```shell
make help
```

### Python packages

Poetry is used to manage python packages, and we include `poetry.lock` in the repository for reproducible dev
environments.

#### Recommended Libraries

- pydantic - nicely typed data classes
- typer - easy CLIs
- pytest - testing

### CI/CD

- GitHub Actions
  - `lint`
  - `test`
  - `publish`

### IDE

I prefer [Cursor](https://cursor.sh/), which is a VSCode-fork with better AI-assisted coding tools.

#### Extensions

##### Python

- Python - basic language support
- Ruff - formatting and linting
- Mypy Type Checker - type checking
- Rewrap - text wrapping
- Pylens - see latest versions of packages in pyproject.toml

##### General

- Cursor Copilot++ - AI-assisted coding (or Github Copilot for VSCode)
- YAML - YAML configs
- Markdown All in One - Markdown previews
- GitLens - see git blame and history
- Code Spell Checker - spell checking
- Prettier - code formatting
- Shell-format - shell formatting

### Adjusting this template

1. Replace "mjv-template" with the name of your project.
1. Replace "python-template" with the name of your repo.
1. Replace "mjv_template" with the name of your module.
1. Remove this section.
1. Edit this README to have info on your project.
