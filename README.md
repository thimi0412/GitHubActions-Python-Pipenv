# GitHubActions-Python-Pipenv
Pipenv : https://pipenv-ja.readthedocs.io/

a GitHubActions for Pipenv.

## Example
Run flake8 when pushed.

Project
```
.
├── .github
│   └── main.workflow
├── Pipfile
├── Pipfile.lock
├── README.md
└── main.py
```

Pipfile
```
[[source]]
name = "pypi"
url = "https://pypi.org/simple"
verify_ssl = true

[dev-packages]
flake8 = "*"

[packages]
numpy = "*"

[requires]
python_version = "3.7"

```

main.py
```python
import numpy as np

a = np.array([[1, 2, 3], [-2, 4, 5]])
a_T = a.T

print(a)
print(a_T)
```

main.workflow
```
workflow "New workflow" {
  on = "push"
  resolves = ["thimi0412/GitHubActions-Python-Pipenv"]
}

action "thimi0412/GitHubActions-Python-Pipenv" {
  uses = "thimi0412/GitHubActions-Python-Pipenv@master"
  args = "pipenv install --dev; pipenv run flake8 ."
}

```
