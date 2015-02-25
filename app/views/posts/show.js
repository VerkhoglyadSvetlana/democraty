$('#content').html('<%= j render partial: "post", object: @post  %>').fadeOut(0).fadeIn(500)
window.history.replaceState({turbolinks: true},'', "<%= url_for @post %>")