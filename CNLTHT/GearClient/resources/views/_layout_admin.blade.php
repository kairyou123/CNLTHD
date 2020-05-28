<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Gear Gaming - @yield('title')</title>
    <link href="{{ asset('/css/main.css') }}" rel="stylesheet">
    <link href="{{ asset('/css/bootstrap.min.css') }}" rel="stylesheet">
    <link href="{{ asset('/css/gear-admin.css') }}" rel="stylesheet">
    <link href="{{ asset('/css/gear.css') }}" rel="stylesheet">
    <link rel="stylesheet" href="{{ asset('css/fontawesome.min.css') }}">
    <link rel="stylesheet" href="{{ asset('css/brands.min.css') }}">
    <link rel="stylesheet" href="{{ asset('css/regular.min.css') }}">
    <link rel="stylesheet" href="{{ asset('css/svg-with-js.css') }}">
    <link rel="stylesheet" href="{{ asset('css/all.min.css') }}">
    <script src="{{ asset('js/jquery.min.js') }}"></script>
    <script src="{{ asset('js/bootstrap.min.js') }}"></script>
</head>
<body>

    @include('Admin.AdminIndex')

</body>
</html>
