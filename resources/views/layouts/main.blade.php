<!DOCTYPE html>
<html lang="it">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <title>Sito E-commerce | @yield('title')</title>

    <!-- Google font -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">

    <!-- Bootstrap -->
    <link type="text/css" rel="stylesheet" href="/css/bootstrap.min.css"/>

    <!-- Slick -->
    <link type="text/css" rel="stylesheet" href="/css/slick.css"/>
    <link type="text/css" rel="stylesheet" href="/css/slick-theme.css"/>

    <!-- nouislider -->
    <link type="text/css" rel="stylesheet" href="/css/nouislider.min.css"/>

    <!-- Font Awesome Icon -->
    <link rel="stylesheet" href="/css/font-awesome.min.css">

    <!-- Custom stlylesheet -->
    <link type="text/css" rel="stylesheet" href="/css/style.css"/>

    <!--Shortcut Icon -->
    <link rel="shortcut icon" href="img/favicon.png">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<!-- HEADER -->
@include('partials.header')
<!-- NAVIGATION -->
<nav id="navigation">
    <!-- container -->
    <div class="container">
        <!-- responsive-nav -->
        <div id="responsive-nav">
            <!-- NAV -->
            <ul class="main-nav nav navbar-nav">
                <li class="{{ Request::is('home') ? 'active' : '' }}"><a href="{{ route('home') }}">Home</a></li>
                <li class="dropdown"><a hre="#" class="dropdown" data-toggle="dropdown" role="button" aria-expanded="false">Categorie</a>
                    <ul class="dropdown-menu" role="menu">
                        <li class="{{ Request::is('computer') ? 'active' : '' }} dropdown"><a href="{{ url('computer') }}">Computer</a></li>
                        <li class="{{ Request::is('accessori') ? 'active' : '' }} dropdown"><a href="{{ url('accessori') }}">Accessori</a></li>
                        <li class="{{ Request::is('video') ? 'active' : '' }} dropdown"><a href="{{ url('video') }}">Videocamere</a></li>
                        <li class="{{ Request::is('smart') ? 'active' : '' }} dropdown"><a href="{{ url('smart') }}">Smartphone e Tablet</a></li>
                    </ul>
                </li>
                <li class="{{ Request::is('lastprod') ? 'active' : '' }}"><a href="{{ url('lastprod') }}">Ultimi arrivi</a></li>
                <li class="{{ Request::is('help') ? 'active' : '' }}"><a href="{{ url('help') }}">Aiuto</a></li>
                <li class="{{ Request::is('about-us') ? 'active' : '' }}"><a href="{{ url('about-us') }}">Chi siamo</a></li>
            </ul>
            <!-- /NAV -->
        </div>
        <!-- /responsive-nav -->
    </div>
    <!-- /container -->
</nav>
<!-- /NAVIGATION -->
@yield('body')
<!-- FOOTER -->
@include('partials.footer')

