doctype html
html
  head
    title Blog using Amber
    meta charset="utf-8"
    meta http-equiv="X-UA-Compatible" content="IE=edge"
    meta name="viewport" content="width=device-width, initial-scale=1"
    link rel="stylesheet" href="/dist/main.bundle.css"
    link rel="apple-touch-icon" href="/favicon.png"
    link rel="icon" href="/favicon.png"
    link rel="icon" type="image/x-icon" href="/favicon.ico"

  body
    == content


    script src="/dist/main.bundle.js"
    - if Amber.settings.auto_reload?
      script src="/js/client_reload.js"
