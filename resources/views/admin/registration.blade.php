<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Login</title>
    <link href="{{asset('admin_assets/css/font-face.css')}}" rel="stylesheet" media="all">
    <link href="{{asset('admin_assets/vendor/font-awesome-4.7/css/font-awesome.min.css')}}" rel="stylesheet" media="all">
    <link href="{{asset('admin_assets/vendor/font-awesome-5/css/fontawesome-all.min.css')}}" rel="stylesheet" media="all">
    <link href="{{asset('admin_assets/vendor/mdi-font/css/material-design-iconic-font.min.css')}}" rel="stylesheet" media="all">
    <link href="{{asset('admin_assets/vendor/bootstrap-4.1/bootstrap.min.css')}}" rel="stylesheet" media="all">
    <link href="{{asset('admin_assets/css/theme.css')}}" rel="stylesheet" media="all">

</head>

<body class="animsition">
    <div class="page-wrapper">
        <div class="page-content--bge5">
            <div class="container">
                <div class="login-wrap">
                    <div class="login-content">
                        <div class="login-logo">
                            <a href="#">
                            {{Config::get('constants.site_name')}}
                            Admin Registeration 
                            </a>
                        </div>
                        <div class="col-md-6">
                          <div class="aa-myaccount-register">                 
                          
                           <form action="{{route('adminreg.registration_process')}}" method="post" class="aa-login-form" id="frmRegistration">
                              <label for="">Name<span>*</span></label>
                              <input type="text" name="name" class="au-input au-input--full" placeholder="Name" required>
                              <div id="name_error" class="field_error"></div>
                              
                              <label for="">Email<span>*</span></label>
                              <input type="email" name="email" class="au-input au-input--full" placeholder="Email" required>
                              <div id="email_error" class="field_error"></div>

                              <label for="">Password<span>*</span></label>
                              <input type="password" class="au-input au-input--full" placeholder="Password" name="password">
                              <div id="password_error" class="field_error"></div> 

                              <button type="submit" class="aa-browse-btn" id="btnRegistration">Register</button>    
                              @csrf                
                            </form>
                          </div>
                          <div id="thank_you_msg" class="field_error"></div>
                        </div>
                     
                    </div>
                </div>
            </div>
        </div>

    </div>

    <script src="{{asset('admin_assets/vendor/jquery-3.2.1.min.js')}}"></script>
    <script src="{{asset('admin_assets/vendor/bootstrap-4.1/popper.min.js')}}"></script>
    <script src="{{asset('admin_assets/vendor/bootstrap-4.1/bootstrap.min.js')}}"></script>
    <script src="{{asset('admin_assets/vendor/wow/wow.min.js')}}"></script>
    <script src="{{asset('admin_assets/js/main.js')}}"></script>
</body>
</html>
