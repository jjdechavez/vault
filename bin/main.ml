let app_layout content =
  let open Dream_html in
  HTML.html
    [ HTML.lang "en" ]
    [ HTML.head
        []
        [ HTML.title [] "Vault"
        ; HTML.script
            [ HTML.src "https://unpkg.com/htmx.org@1.9.10"
            ; HTML.integrity
                "sha384-D1Kt99CQMDuVetoL1lrYwg5t+9QdHe7NLX/SoJYkXDFfX37iInKRy5xLSi8nO7UC"
            ; HTML.crossorigin `anonymous
            ]
            ""
        ; HTML.link
            [ HTML.rel "stylesheet"; HTML.href "/static/css/pico.classless.min.css" ]
        ]
    ; HTML.body
        []
        [ HTML.header
            []
            [ HTML.hgroup
                []
                [ HTML.h1 [] [ txt "Welcome Jerald" ]
                ; HTML.h2 [] [ txt "Start adding your ideas" ]
                ]
            ; HTML.nav
                []
                [ HTML.ul
                    []
                    [ HTML.li
                        []
                        [ HTML.details
                            [ HTML.role "list" ]
                            [ HTML.summary [ HTML.role "button" ] [ txt "Pages" ]
                            ; HTML.ul
                                [ HTML.role "listbox" ]
                                [ HTML.li [] [ HTML.a [ HTML.href "/" ] [ txt "Home" ] ]
                                ; HTML.li
                                    []
                                    [ HTML.a [ HTML.href "/about" ] [ txt "About" ] ]
                                ]
                            ]
                        ]
                    ]
                ]
            ]
        ; content
        ]
    ]
;;

let home_page =
  let open Dream_html in
  let open HTML in
  let content =
    main
      []
      [ section
          []
          [ h2 [] [ txt "Home" ]
          ; p
              []
              [ txt
                  "Aliquam lobortis vitae nibh nec rhoncus. Morbi mattis neque eget \
                   efficitur feugiat. Vivamus porta nunc a erat mattis, mattis feugiat \
                   turpis pretium. Quisque sed tristique felis. "
              ]
          ]
      ]
  in
  app_layout content
;;

let about_page =
  let open Dream_html in
  let open HTML in
  let content =
    main
      []
      [ section
          []
          [ h2 [] [ txt "About" ]
          ; p
              []
              [ txt
                  "Aliquam lobortis vitae nibh nec rhoncus. Morbi mattis neque eget \
                   efficitur feugiat. Vivamus porta nunc a erat mattis, mattis feugiat \
                   turpis pretium. Quisque sed tristique felis. "
              ]
          ]
      ]
  in
  app_layout content
;;

let () =
  Dream.run ~port:8081
  @@ Dream.logger
  @@ Dream.router
       [ Dream.get "/static/**" (Dream.static "static")
       ; Dream.get "/" (fun _ -> Dream_html.respond home_page)
       ; Dream.get "/about" (fun _ -> Dream_html.respond about_page)
       ]
;;
