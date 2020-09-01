<p>
  <img alt="Version 0.0.2.1" src="https://img.shields.io/badge/version-0.0.2.1-148ecb">
</p>

# Bashist

CLI HTML generator with Terminal style

# Docs

**Option**

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

**Start**

$ `bashist body -init`

Create a file to append tags

---

**Create tags**

$ `bashist body <number_line> <option> <text> ... <text>`

- `<number_line>`: Number line to append the tag

- `<option>`: Type of tag (h1, p or ul)

- `<text>`: Text to append

## Example:

- `$ bashist body 1 -t my projects`

  Output in HTML in line 1:

  `<h1>~$ my projects</h1>`

---

**Generate HTML**

$ `bashist index`

---

# TODO

* [ ] bashist, body, index command/ add env var
* [ ] li options with multiple words
* [ ] treat link in commands
* [ ] treat argument errors
* [ ] add help flag
* [ ] change index var into IO process
* [ ] add fav icon
* [ ] update readme

# Disclaimer

This is a project to practice Bash Script