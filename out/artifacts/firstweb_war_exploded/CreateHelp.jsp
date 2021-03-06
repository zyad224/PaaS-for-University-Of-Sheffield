<%--
  Created by IntelliJ IDEA.
  User: Zeyad
  Date: 4/26/2018
  Time: 12:25 AM
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Create Event</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="CSS\createEvent.css">
    <link rel="stylesheet" type="text/css" href="CSS\createEventUtil.css">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body>

<% if (session.getAttribute("email") == null) { %>
<div id="myDiv" class="w3-top">
    <div class="w3-bar w3-white w3-padding w3-card myDiv2" style="letter-spacing:4px;">
        <a href="index.jsp" class="w3-bar-item w3-button">Login</a>
        <a href="upload.jsp" class="w3-bar-item w3-button"><img src="Images\upload.png" width="25" height="25"/>  Upload</a>
        <!-- Right-sided navbar links. Hide them on small screens -->
        <div class="w3-right w3-hide-small">
            <a href="login.jsp" class="w3-bar-item w3-button">Applications</a>
        </div>
    </div>
</div>
<% } else {%>
<div id="myDiv" class="w3-top">
    <div class="w3-bar w3-white w3-padding w3-card myDiv2" style="letter-spacing:4px;">
        <a id="homePage"  href="#home" class="w3-bar-item w3-button">Welcome ${email}</a>
        <!-- Right-sided navbar links. Hide them on small screens -->
        <div class="w3-right w3-hide-small">
            <a href="upload.jsp" class="w3-bar-item w3-button"><img src="Images\upload.png" width="25" height="25"/>  Upload</a>
            <a href="login.jsp" class="w3-bar-item w3-button">Applications</a>
            <a href="TransactionHistory.jsp" class="w3-bar-item w3-button">Transaction History</a>
            <a href="#" class="w3-bar-item w3-button">Peanut: ${amountPeanut}</a>
            <a href="LogoutServlet" class="w3-bar-item w3-button">Log out</a>
        </div>
    </div>
</div>
<% } %>

<div class="container-contact100">
    <div class="wrap-contact100">
        <form class="contact100-form validate-form" action="CreateHelpServlet" method="post">
            <span class="contact100-form-title">
               Create Your Help Request
            </span>

            <div class="wrap-input100 validate-input" data-validate="Event title is required">
                <span class="label-input100">Help Title</span>
                <input class="input100" type="text" name="Title" placeholder="Enter your help title">
                <span class="focus-input100"></span>
            </div>

            <div class="wrap-input100 validate-input" data-validate = "Event place is required">
                <span class="label-input100">Place</span>
                <input class="input100" type="text" name="Place" placeholder="Enter your help place">
                <span class="focus-input100"></span>
            </div>

            <div class="wrap-input100 validate-input" data-validate="Event date is required">
                <span class="label-input100">Date</span>
                <input class="input100" type="text" name="Date" placeholder="Enter your help date">
                <span class="focus-input100"></span>
            </div>

            <div class="wrap-input100 validate-input" data-validate = "Event Time is required">
                <span class="label-input100">Time</span>
                <input class="input100" type="text" name="Time" placeholder="Enter your help time">
                <span class="focus-input100"></span>
            </div>

            <div class="wrap-input100 validate-input" data-validate = "Topic is required">
                <span class="label-input100">Topic</span>
                <input class="input100" name="Topic" placeholder="What is your help topic?"></input>
                <span class="focus-input100"></span>
            </div>

            <div class="wrap-input100 validate-input" data-validate = "Description is required">
                <span class="label-input100">Description</span>
                <input class="input100" name="Description" placeholder="What is your help description?"></input>
                <span class="focus-input100"></span>
            </div>

            <div class="wrap-input100 validate-input" data-validate = "Mobile Number is required">
                <span class="label-input100">Mobile</span>
                <input class="input100" name="Mobile" placeholder="What is your mobile number?"></input>
                <span class="focus-input100"></span>
            </div>

            <div class="wrap-input100 validate-input" data-validate = "Price is required">
                <span class="label-input100">Price</span>
                <input class="input100" name="Price" placeholder="What is your help price?"></input>
                <span class="focus-input100"></span>
            </div>

            <div class="wrap-input100 validate-input" data-validate = "Price is required">
                <span class="label-input100">People To Attend</span>
                <input class="input100" name="People" placeholder="What is number of people to help?"></input>
                <span class="focus-input100"></span>
            </div>

            <div class="container-contact100-form-btn">
                <div class="wrap-contact100-form-btn">
                    <div class="contact100-form-bgbtn"></div>
                    <button class="contact100-form-btn" type="submit">Submit
                        <span><i class="fa fa-long-arrow-right m-l-7" aria-hidden="true"></i></span>
                    </button>
                </div>
            </div>
        </form>
    </div>
</div>
<div id="dropDownSelect1"></div>
<%

    // for checking the session is available or not, If session dead go to Home page
    if (session == null) {
        session.invalidate();
    }
%>
</body>
</html>
