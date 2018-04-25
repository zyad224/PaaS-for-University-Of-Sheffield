<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Login Page</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="CSS\util.css">
<link rel="stylesheet" type="text/css" href="CSS\main.css">
</head>
<body>
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<form class="login100-form validate-form p-l-55 p-r-55 p-t-178"
					action="/LoginServlet" method="post">
					<span class="login100-form-title"> Member Login </span>

					<div class="wrap-input100 validate-input m-b-16"
						data-validate="Please enter username">
						<input class="input100" type="text" name="email"
							placeholder="Username"> <span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input"
						data-validate="Please enter password">
						<input class="input100" type="password" name="password"
							placeholder="Password"> <span class="focus-input100"></span>
					</div>

					<div class="text-right p-t-13 p-b-23">
						<span class="txt1"> Forgot </span> <a href="#" class="txt2">
							Username / Password? </a>
					</div>

					<div class="container-login100-form-btn">
						<button class="login100-form-btn" type="submit">Sign In</button>
					</div>

					<div class="flex-col-c p-t-170 p-b-40">
						<span class="txt1"> Do not have an account ? </span> <a href="registerUser.jsp" class="txt2">
						Sing Up </a>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>