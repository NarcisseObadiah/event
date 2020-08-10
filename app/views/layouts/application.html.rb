<!DOCTYPE html>
<html>

<head>
  <title><%= yield(:title) %> | The Gossips Project</title>

  <%= csrf_meta_tags %>
  <%= csp_meta_tag %>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <%= stylesheet_link_tag    'application', media: 'all', 'data-turbolinks-track': 'reload' %>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css"
    crossorigin="anonymous">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
    integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
  <%= javascript_include_tag 'application', 'data-turbolinks-track': 'reload' %>

</head>

<body>

  <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top py-2" id="main-nav">
    <div class="container">
      <a class="navbar-brand" href="<%= root_path %>">
        <img href=<%= asset_path('logo.png')%>>
      </a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav ml-4">

          <!-- Search form -->
          <form class="form-inline">
            <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
          </form>

        </ul>
        <ul class="navbar-nav ml-auto">
          <li class="nav-item <%= active_class(login_path) %>">
            <a href="#" class="nav-link">Browse Events</a>>
          </li>
          <li class="nav-item <%= active_class(login_path) %>">
            <a href="#" class="nav-link"><i class="fas fa-plus"></i> Create Events</a>>
          </li>
          <li class="nav-item <%= active_class(login_path) %>">
            <a href="#" class="nav-link">Browse Events</a>>
          </li>


          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button"
              data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              <img src="https://s3.eu-central-1.amazonaws.com/bootstrapbaymisc/blog/24_days_bootstrap/fox.jpg"
                width="40" height="40" class="rounded-circle">
            </a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
              <a class="dropdown-item" href="#">Collections</a>
              <a class="dropdown-item" href="#">Manage Events</a>
              <a class="dropdown-item" href="#">Organizer Profile</a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="#">Create Event</a>
              <a class="dropdown-item" href="#">Account Settings</a>
              <a class="dropdown-item" href="#">Log Out</a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="#">Help</a>
            </div>
          </li>


      </div>
    </div>
  </nav>


  <!-- Main content of body -->
  <div class="" style="margin-top:100px; margin-bottom:60px; ">

    <section id="alert-section">
      <% flash.each do |key, value| %>
      <div class="alert-dismissible text-center p-2 container <%= flash_class(key) %>">
        <button type="button" class="close" data-dismiss="alert">&times;</button>
        <%= value unless value.blank? %>
      </div>
      <% end %>
    </section>

    <%= yield %>
  </div>

  <!-- FOOTER -->
  <footer id="main-footer" class="text-center pt-3 pb-0 mb-0 bg-light bg-dark text-white">
    <div class="container-fluid">
      <div class="row">
        <div class="col">
          <p>Copyright &copy;
            <span id="year"></span> The Best Team</p>
        </div>
        <div class="container">
          <div class="row">
            <div class="col-md-12">
              <nav role="navigation">
                <ul class="nav navbar-nav">
                  <li><a href="#">About</a></li>
                  <li><a href="#users">Locations</a></li>
                  <li><a href="#">Contact</a></li>
                </ul>
              </nav>
            </div>
          </div>
        </div>
      </div>
    </div>
  </footer>

  <!-- Script -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"
    integrity="sha512-3P8rXCuGJdNZOnUx/03c1jOTnMn3rP63nBip5gOP2qmUh5YAdVAvFZ1E+QLZZbC1rtMrQb+mah3AfYW11RUrWA=="
    crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
    integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous">
  </script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
    integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous">
  </script>
  <script>
    $('#year').text(new Date().getFullYear());
    $(".alert").fadeOut(3000);
  </script>

</body>

</html>