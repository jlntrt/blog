header
  h1 Home
main
  ul
    - posts.each do |post|
      li
        strong= post.title
        div= post.content
        i author
        div= post



