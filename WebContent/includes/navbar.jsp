<%@page import="model.User"%>
<%
  User navBarauth = (User) request.getSession().getAttribute("auth");
%>



<nav id="nav" class="navbar navbar-expand-lg  navbar-light bg-warning">
    <div class="container" id="yellow">
        <a href="index.jsp" id="id-Nav">
            <img src="./product-image/logo_vinyle.jpg" class="logo" alt="logo vinyl vault" style=" width: 160px;height: 80px;border-radius: 5px;">
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse"
                data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto" id="nav-items">
                <li class="nav-item"><a class="nav-link" href="index.jsp">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="cart.jsp">Panier<span class="badge badge-danger">${cart_list.size()}</span> </a></li>

                <%
                    
                    if (navBarauth != null) {
                %>
                <li class="nav-item"><a class="nav-link" href="orders.jsp">Commandes</a></li>
                <li class="nav-item"><a class="nav-link" href="log-out">Logout</a></li>


                <%
                } else {
                %>
                <li class="nav-item"><a class="nav-link" href="login.jsp">Login</a></li>

                <%
                    }
                %>
            </ul>
        </div>
    </div>
</nav>