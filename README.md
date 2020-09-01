# Bashist

CLI HTML generator with Terminal style

# Docs

## Install

Soon

---

## Start

$ `bashist -i`

Create a file to append tags

---

## Create tags

$ `bashist <option> <number_line> <text> ... <text>`

- `<option>`: Type of tag (see [Option tags](https://gitlab.com/claromes/bashist#option-tags))

- `<number_line>`: Number line to append the tag

- `<text>`: Text to append

Example:

  `$ bashist -t 1 my projects`

  Output in HTML in line 1:

  `<h1>~$ my projects</h1>`

## Option tags

- `-t` or `--title`

  Add `<h1>` tag

- `-d` or `--description`

  Add `<p>` tag

- `-l` or `--list`

  Add `<ul>/<li>` tags

- `-s` or `--show`

  Show `<body>` with number lines

- `-del` or `--delete`

  Delete a line

---

## Generate HTML

$ `bashist -g`

---

# TODO

* [ ] add env var
* [ ] li options with multiple words
* [ ] treat link in commands
* [ ] treat argument errors
* [ ] add help flag
* [ ] change index var into IO process
* [ ] add fav icon
* [ ] update readme
* [ ] project badge

# Disclaimer

This is a project to practice Bash Script