[not-group=5]

<a style="color: white; padding: 0 20px" class="lbn" id="logbtn" href="#"><b>{login}</b></a>
<a style="color: white;padding: 0 20px" class="thide lexit" href="{logout-link}">Выход</a>

[admin-link]
<a style="color: white; padding: 0 20px" href="{admin-link}" target="_blank">
	<b>Админпанель</b>
</a>
[/admin-link]


[/not-group]
[group=5]



		<form method="post" action="" class="form-inline">


			<input class="form-control"  placeholder="Login" type="text" name="login_name" id="login_name"/>
			<input class="form-control" placeholder="Password" type="password" name="login_password" id="login_password"/>
			<button class="btn btn-default" onclick="submit();" type="submit" title="Войти"><span>Войти</span></button>
				<input name="login" type="hidden" id="login" value="submit"/>

		</form>



[/group]