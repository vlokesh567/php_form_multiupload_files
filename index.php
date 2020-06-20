<!DOCTYPE html>
<html lang="en">
  <head>
    <title>PHP TASK || FORM SUBMISSION</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.2/jquery.validate.js"></script>
    <link rel="stylesheet" type="text/css" href="css/style.css">
  </head>
  <body>
    <!-- header navigation -->

    <nav class="navbar navbar-expand-md bg-dark navbar-dark">
     
      <div class="container">
         <!-- Brand -->
        <a class="navbar-brand" href="#">
          <img src="img/logo.png">
        </a>
        <!-- Toggler/collapsibe Button -->
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
          <span class="navbar-toggler-icon"></span>
        </button>

        <!-- Navbar links -->
        <div class="collapse navbar-collapse" id="collapsibleNavbar">
          <div class="m-auto"></div>
          <ul class="navbar-nav">
            <li class="nav-item">
              <a class="nav-link" href="#">About</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Services</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Contact</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <div class="container">
      <div class="row">
        <div class="col-md-6 offset-md-3">
          <div class="card mt-5">
            <div class="card-header text-center">
              <h3>USER FORM</h3>
            </div>
            <div class="card-body">
              <form  method="post" enctype="multipart/form-data" id="myform">
                <div class="form-group">
                  <label for="name">Name:</label>
                  <input type="text" class="form-control" placeholder="Enter Your Name" id="name" name="name">
                </div>
                <div class="form-group">
                  <label for="email">EMailId</label>
                  <input type="email" class="form-control" placeholder="Enter Email ID" id="email" name="email">
                </div>
                <div class="form-group">
                  <label for="phone">Contact</label>
                  <input type="text" class="form-control" placeholder="Enter Mobile Number" id="phone" name="phone">
                </div>
                <div class="form-group">
                  <label for="">Upload Images</label>
                  <input type="file"   id="upload" name="files[]" multiple required>
                </div>
                <button type="submit" class="btn btn-primary btn-block" >Submit</button>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="footer">
      <p>© 2020 Copyright:
    <a href="#"> sampletext.com</a></p>
    </div>
    <script type="text/javascript" src="js/form.js"></script>
  </body>
</html>