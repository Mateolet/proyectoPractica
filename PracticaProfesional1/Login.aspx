<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PracticaProfesional1.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<link href="Styles/css/login.css" rel="stylesheet" type="text/css" />
<body>
    <h2>Weekly Coding Challenge #1: Sign in/up Form</h2>
    <div class="container" id="container">
	    <div class="form-container sign-up-container">
		    <form action="#">
			    <h1>Create Account</h1>
			    <div class="social-container">
				    <a href="#" class="social"><i class="fab fa-facebook-f"></i></a>
				    <a href="#" class="social"><i class="fab fa-google-plus-g"></i></a>
				    <a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>
			    </div>
			    <span>or use your email for registration</span>
			    <input type="text" placeholder="Name" />


			    <input type="email" placeholder="Email" />
			    <input type="password" placeholder="Password" />
			    <button>Sign Up</button>
		    </form>
	    </div>
	    <div class="form-container sign-in-container">
		    <form id="Form1" runat="server" action="#">
			    <h1>Sign in</h1>
			    <div class="social-container">
				    <a href="#" class="social"><i class="fab fa-facebook-f"></i></a>
				    <a href="#" class="social"><i class="fab fa-google-plus-g"></i></a>
				    <a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>
			    </div>
			    <span>or use your account</span>

                <asp:TextBox ID="txtEmail" runat="server" Text=""></asp:TextBox>
	
                <asp:TextBox ID="txtPassword" runat="server" Text=""></asp:TextBox>
			    <a href="#">Forgot your password?</a>
			    <%--<button>Sign In</button>--%>
                <asp:button text="Sign In" ID="btnLogin" runat="server" CssClass="ghost" 
                    onclick="btnLogin_Click" />
		    </form>--%>
	    </div>
	    <div class="overlay-container">
		    <div class="overlay">
			    <div class="overlay-panel overlay-left">
				    <h1>Welcome Back!</h1>
				    <p>To keep connected with us please login with your personal info</p>
				    <button class="ghost" id="signIn">Sign In</button>
			    </div>
			    <div class="overlay-panel overlay-right">
				    <h1>Hello, Friend!</h1>
				    <p>Enter your personal details and start journey with us</p>
				    <button class="ghost" id="signUp">Sign Up</button>
			    </div>
		    </div>
	    </div>
    </div>

    <footer>
	    <p>
		    Created with <i class="fa fa-heart"></i> by
		    <a target="_blank" href="https://florin-pop.com">Florin Pop</a>
		    - Read how I created this and how you can join the challenge
		    <a target="_blank" href="https://www.florin-pop.com/blog/2019/03/double-slider-sign-in-up-form/">here</a>.
	    </p>
    </footer>
    <script src="Styles/js/login.js" type="text/javascript"></script>
</body>
