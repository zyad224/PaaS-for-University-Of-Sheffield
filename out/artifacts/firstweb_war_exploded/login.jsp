<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<% if (session.getAttribute("email") == null) { %>

<% } else {%>
<div id="myDiv" class="w3-top">
    <div class="w3-bar w3-white w3-padding w3-card myDiv2" style="letter-spacing:4px;">
        <a id="homePage" href="#home" class="w3-bar-item w3-button">Welcome ${email}</a>
        <!-- Right-sided navbar links. Hide them on small screens -->
        <div class="w3-right w3-hide-small">
            <a href="#" class="w3-bar-item w3-button">Create Event</a>
            <a href="PaymentServlet" class="w3-bar-item w3-button">Peanut: ${amountPeanut}</a>
            <a href="LogoutServlet" class="w3-bar-item w3-button">Log out</a>
        </div>
    </div>
</div>
<% } %>

<%

    // for checking the session is available or not, If session dead go to Home page
    if (session == null) {
        session.invalidate();
    }
%>
<center>
    <br><br><br>
    <a href="EventManagement.jsp">
        <img src="Images\EMS.jpg" width="300" height="200"/></a>

    <a href="Peer2peer.jsp">
        <img src="Images\peer2peer.jpg" width="300" height="200"/></a>

    <a href="upload.jsp">
        <img src="Images\upload.png" width="300" height="200"/></a>
</center>