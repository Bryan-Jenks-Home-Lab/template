# USING THIS REPOSITORY

1. Everything above the next H1 should be deleted when completed with this process
2. Run a bulk text replacement for the following items:
   - `<BANNER>` this is the banner image in this README
   - `<REPO NAME>` this is the 2 part github url for the repo like `tallguyjenks/this_repo`
   - `<GH USERNAME>` this is your username on github
3. `funding.yml` is setup for me so if you want your stuff there edit it.
4. If Python project and using Poetry then add this to the `pyproject.toml` file:
   - 

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
5. When ready to begin run the setup bash script (COMING SOON)

================================================

# <REPO NAME>

<!-- TODO For mass updates replace en-masse the <REPO URL> and <REPO NAME> snippets -->

<!-- Header & Preview Image -->

<h1 align="center">
  <img src="/images/<BANNER>" height="50%" width="50%">
</h1>

<!-- Shields -->
<p align="center">
  <a href="https://github.com/<REPO NAME>/blob/master/LICENSE">
    <img src="https://img.shields.io/static/v1.svg?style=flat&label=License&message=MIT&logoColor=eceff4&logo=github&colorA=black&colorB=green"/>
  </a>
  <img src="https://img.shields.io/github/commit-activity/m/<REPO NAME>">
  <a href="https://github.com/<REPO NAME>/graphs/contributors">
    <img src="https://img.shields.io/github/contributors/<REPO NAME>">
  </a>
  <img src="https://img.shields.io/github/v/release/<REPO NAME>">
</p>

<!-- Description -->

> <++>

<++>

---

## Table of Contents

---

- [<REPO NAME>](#repo-name)
  - [Table of Contents](#table-of-contents)
  - [Features](#features)
  - [Requirements](#requirements)
    - [Recommended](#recommended)
  - [Installation](#installation)
    - [Users](#users)
    - [Contributors](#contributors)
  - [Usage](#usage)
    - [Example](#example)
  - [Documentation](#documentation)
  - [Resources](#resources)
  - [Development](#development)
    - [Security](#security)
    - [Future](#future)
    - [History](#history)
    - [Community](#community)
  - [Credits](#credits)
  - [License](#license)

---

## Features

---

[Return To Top](#table-of-contents)

<++>

---

## Requirements

---

[Return To Top](#table-of-contents)

<++>

---

### Recommended

---

[Return To Top](#table-of-contents)

<++>

---

## Installation

---

[Return To Top](#table-of-contents)

<++>

---

### Users

---

[Return To Top](#table-of-contents)

<++>

See [Usage](#usage)

---

### Contributors

---

[Return To Top](#table-of-contents)

See [CONTRIBUTING](#contributing)

---

## Usage

---

[Return To Top](#table-of-contents)

<++>

---

### Example

---

[Return To Top](#table-of-contents)

<++>

---

## Documentation

---

[Return To Top](#table-of-contents)

<++>

---

## Resources

---

[Return To Top](#table-of-contents)

<++>

---

## Development

---

[Return To Top](#table-of-contents)

<++>

See [CONTRIBUTING](CONTRIBUTING.md)

---

### Security

---

[Return To Top](#table-of-contents)

See [SECURITY](SECURITY.md)

---

### Future

---

[Return To Top](#table-of-contents)

See [ROADMAP](ROADMAP.md)

---

### History

---

[Return To Top](#table-of-contents)

See [RELEASES](https://github.com/<REPO NAME>/releases)

---

### Community

---

[Return To Top](#table-of-contents)

<++>

See [CODE OF CONDUCT](CODE_OF_CONDUCT.md)

---

## Credits

---

[Return To Top](#table-of-contents)

See [AUTHORS](AUTHORS.md)

---

## License

---

[Return To Top](#table-of-contents)

See [LICENSE](LICENSE)
