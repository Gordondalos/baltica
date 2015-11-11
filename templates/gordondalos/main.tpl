<!DOCTYPE html>
<!--[if lt IE 7 ]>
<html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]>
<html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]>
<html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="ru"> <!--<![endif]-->

<head>


	<meta charset="utf-8">

	<title>ООО «Балтспецсервис»</title>
	<meta name="description" content="">
	<link rel="shortcut icon" href="{THEME}/img/favicon/favicon.ico" type="image/x-icon">
	<link rel="apple-touch-icon" href="{THEME}/img/favicon/apple-touch-icon.png">
	<link rel="apple-touch-icon" sizes="72x72" href="{THEME}/img/favicon/apple-touch-icon-72x72.png">
	<link rel="apple-touch-icon" sizes="114x114" href="{THEME}/img/favicon/apple-touch-icon-114x114.png">

	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

	<link rel="stylesheet" href="{THEME}/libs/bootstrap/css/bootstrap.min.css">
	<link href="{THEME}/css/zoom.css" rel="stylesheet">
	<link href="{THEME}/css/font-awesome/css/font-awesome.css" rel="stylesheet">
	<link href="{THEME}/css/font-awesome/css/font-awesome.css" rel="stylesheet">
	<link href="{THEME}/css/jquery-ui.css" rel="stylesheet">


	<!--<link rel="stylesheet" href="{THEME}/css/engine.css">-->
	<link rel="stylesheet" href="{THEME}/css/main.css">
	<link href="{THEME}/feedback-form/css/style.css" rel="stylesheet">


</head>

<body>{AJAX}

<!--<div class="podlojka" style="width: 100%; height: 1150px; background-image: url(img/bgnn.png);-->
<!--background-position: center; opacity: 0.2; position: absolute; "></div>-->

{include file="header.tpl"}




<section class="section_3">
	<div class="container">
		<div class="row">



			<div class="col-md-6 col-md-offset-1 company">

				{info}{content}

			</div>

			{include file="right_side_bar.tpl"}

			<!--<div class="col-md-4 bumaga">
				<h2>Диллерские свидетельства</h2>
				<div class="img-wrap">
					<img src="{THEME}/img/sertifikat1.png" alt="Сертификат" data-action="zoom">
					<img src="{THEME}/img/sertifikat2.png" alt="Сертификат2" data-action="zoom">
					<img src="{THEME}/img/svidetelstwo.png" alt="Свидетельство" data-action="zoom">
				</div>

			</div>-->




		</div>
	</div>
</section>

{include file="footer.tpl"}








<section class="section_10">
	<div class="container">
		<div class="row">
			<div id="popupform">
				<div class="feedback_text">
					<h2>У Вас есть вопросы?</h2>

					<div class="comment">Укажите Ваш номер телефона и мы перезвоним Вам в самое ближайшее время.</div>
				</div>
				<form method="post" id="form-feedback">
					<input type="text" placeholder="Ваше имя?" name="client_name" id="client_name" class="input_text"
					       autofocus/>

					<div class="phone_number">
						<input type="text" placeholder="Ваш телефон?" name="client_phone" id="client_phone"
						       class="input_text"/>
					</div>
					<input class="button" type="submit" value="Жду звонка"/><br/>

					<div id="bthrow_error_name"></div>
					<div id="bthrow_error_phone"></div>
					<div class="throw_error"></div>
				</form>
			</div>
			<a href="#popupform" id="popupbutton"><img title="Телефон" id="phoneimg" src="{THEME}/feedback-form/img/phone-logo.png"/></a>
		</div>
	</div>

</section>







<div class="loader">
	<div class="loader_inner"></div>
</div>

<!--[if lt IE 9]>
<script src="{THEME}/libs/html5shiv/es5-shim.min.js"></script>
<script src="{THEME}/libs/html5shiv/html5shiv.min.js"></script>
<script src="{THEME}/libs/html5shiv/html5shiv-printshiv.min.js"></script>
<script src="{THEME}/libs/respond/respond.min.js"></script>
<![endif]-->


<script src="{THEME}/libs/modernizr/modernizr.js"></script>
<script src="{THEME}/libs/jquery/jquery-1.11.2.min.js"></script>
<script src="{THEME}/libs/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="{THEME}/feedback-form/js/jquery.mask.min.js"></script>
<script type="text/javascript" src="{THEME}/feedback-form/js/jquery.fancybox.pack.js"></script>
<script type="text/javascript" src="{THEME}/feedback-form/js/script.js"></script>
<script src="{THEME}/js/zoom.js"></script>
<script src="{THEME}/libs/waypoints/waypoints.min.js"></script>
<script src="{THEME}/libs/animate/animate-css.js"></script>
<script src="{THEME}/libs/plugins-scroll/plugins-scroll.js"></script>


<script src="{THEME}/js/jquery-ui.js"></script>




<script src="{THEME}/js/common.js"></script>

</body>
</html>v