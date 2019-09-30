<!DOCTYPE html>
<html>
<head>
	<title>Ё-твоё!</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="csrf-token" content="{{ csrf_token() }}">
	<link rel="stylesheet" type="text/css" href={{asset("css/style.css")}}>
	<link rel="shorticon icon" type="image/png" href={{asset("img/favicon.png")}}>
    <script src="https://code.jquery.com/jquery-3.4.1.js" integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin="anonymous"></script>
    <script src="{{asset('js/main.js')}}"></script>
</head>
<body>
	<div class="wrapper">

		<header>
			<a href="{{url('/')}}"><img src={{asset("img/logo.png")}} alt="logo"></a>
			<div class="header_text">
				<p style="margin-bottom: 5px"><span>Ё-твоё жильё</span></p>
				<p>агенство недвижимости</p>
			</div>
		</header>
		<section>
				<nav>
					<div class="nav_overlay"></div>
					<div class="controls">
                        <form id="search-form" method="POST" action="{{route('search')}}">
						<input type="text" name="house" id="search" placeholder="Поиск по номеру дома...">
                            @csrf
                        </form>
						<div class="price_filter">
                            Цена: <a href="{{url('/asc')}}"><span @if(isset($sort) && $sort=="asc")id="underlined"@endif>по возрастанию</span></a> / <a href="{{url('/desc')}}"><span @if(isset($sort) && $sort=="desc")id="underlined"@endif>по убыванию</span></a>
						</div>
					</div>
                    @if(Auth::check())
                    <div class="welcome-msg">
                        Добро пожаловать, {{Auth::user()->name}}
                    </div>
                    <div class="reg">
                        <a href="{{ route('logout') }}"onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
                            {{ __('Выйти') }}
                        </a>

                        <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                            @csrf
                        </form>
                    </div>
                    @else
                        <div class="reg">
							<a href="{{ route('register') }}">Регистрация</a>
						</div>
                    @endif
				</nav>
				<div class="objects">
					<div class="title">
						@yield('title')
					</div>
					<div class="box_objects">
						@yield('objects')
					</div>
				</div>
				<div class="sidebar">
                    @guest
					<div class="form_login">
						<div class="title">Авторизация пользователя</div>
                        <form method="POST" action="{{ route('login') }}">
                            @csrf
                            <div class="form-group row">
                                <label for="email" class="col-md-4 col-form-label text-md-right">{{ __('E-Mail') }}</label>

                                <div class="col-md-6">
                                    <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email" autofocus>

                                    @error('email')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="password" class="col-md-4 col-form-label text-md-right">{{ __('Пароль') }}</label>

                                <div class="col-md-6">
                                    <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="current-password">

                                    @error('password')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                </div>
                            </div>
							<input type="submit" value="Войти">
						</form>
					</div>
                    @endif
					<div class="slider">
						<div class="title">Наши объекты</div>
						<div class="slides">
							<img src={{asset("img/slide1.png")}}>
						</div>
					</div>
				</div>
		</section>
		<footer>
			<span>Ё-твоё жильё</span>
			<span>+7 999 999 999 99</span>
		</footer>
	</div>
</body>
</html>
