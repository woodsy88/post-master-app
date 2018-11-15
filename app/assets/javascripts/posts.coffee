jQuery ->
  console.log "autocomplete stuff"
  $('[data-behavior="autocomplete"]').atwho(
    at: "@",
    'data': "/users.json"
  )
