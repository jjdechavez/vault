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
 (description "Place to store your ideas")
 (depends
  (ocaml (>= 5.1.1))
  (dune
  (>= 3.12))
  (dream
  (= 1.0.0~alpha5))
  (dream-html
  (= 2.0.0)))
 (tags
  (topics "to describe" your project)))

; See the complete stanza docs at https://dune.readthedocs.io/en/stable/dune-files.html#dune-project
