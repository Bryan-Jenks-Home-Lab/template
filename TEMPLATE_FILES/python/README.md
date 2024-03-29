# USING THIS REPOSITORY

If Python project and using Poetry then add this to the `pyproject.toml` file:

```toml

[tool.black]
line-length = 88
include = '\.pyi?$'
exclude = '''
/(
    \.git
  | \.hg
  | \.mypy_cache
  | \.tox
  | \.venv
  | _build
  | buck-out
  | build
  | dist
  | docs
  | notes
)/
'''

[tool.isort]
line_length = 88
multi_line_output = 3
include_trailing_comma = true
skip_glob = [ "docs", "notes", "img" ]
known_third_party = ["loguru", "pytest"]

[tool.vulture]
exclude = []
ignore_decorators = ["@app.route", "@require_*"]
ignore_names = []
make_whitelist = true
min_confidence = 80
paths = ["pyrm/"]
sort_by_size = true
verbose = false

[tool.interrogate]
ignore-init-method = false
ignore-init-module = false
ignore-magic = false
ignore-semiprivate = false
ignore-private = false
ignore-property-decorators = false
ignore-module = false
ignore-nested-functions = false
ignore-nested-classes = false
ignore-setters = false
fail-under = 95
exclude = ["setup.py", "docs", "build"]
ignore-regex = ["^get$", "^mock_.*", ".*BaseClass.*"]
verbose = 2
quiet = false
whitelist-regex = []
color = true
generate-badge = "img"
badge-format = "svg"
```
