(lang dune 3.12)

(name vault)

(generate_opam_files true)

(source
 (github username/reponame))

(authors "John Jerald De Chavez")

(maintainers "John Jeral De Chavez")

(license LICENSE)

(documentation https://url/to/documentation)

(package
 (name vault)
 (synopsis "A short synopsis")
 (description "A longer description")
 (depends ocaml dune dream dream-html)
 (tags
  (topics "to describe" your project)))

; See the complete stanza docs at https://dune.readthedocs.io/en/stable/dune-files.html#dune-project
