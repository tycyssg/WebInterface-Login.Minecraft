<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<nav class="navbar navbar-default" role="navigation">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#"><img src="http://d2r8jqmejizzox.cloudfront.net/361456-853098-65x38-logofinal.png"></a>
    </div>
  
    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="navbar-collapse style= collapse in" id="bs-megadropdown-tabs" style="
    padding-left: 0px;">
        <ul class="nav navbar-nav">
            <li><a href="/"><i class="fa fa-home"></i> HOME</a></li>
             <li><a href="#"><i class="fa fa-university"></i> POLITICS</a></li>
            
            <li class="dropdown mega-dropdown">
			   <a href="#" class="dropdown-toggle" data-toggle="dropdown"> <i class="fa fa-space-shuttle"></i> CATEGORIES <span class="caret"></span></a>				
				<div id="filters" class="dropdown-menu mega-dropdown-menu">
                    <div class="container-fluid2">
    				    <!-- Tab panes -->
                        <div class="tab-content">
   
                          <div class="tab-pane active" id="kids">
                   			 <jsp:include page="menulinks.jsp" />
                  	        </div>
                  	                                  
                        </div>
                    </div>
                   
				</div>				
			</li>
        </ul>
        <form:form class="navbar-form navbar-left" role="search">
            <div class="form-group">
              <input type="text" class="form-control" placeholder="Newsletter">
            </div>
            <button type="submit" class="btn btn-default">Submit</button>
        </form:form>

        <c:choose>
        <c:when test="${login eq true}">
          <ul class="nav navbar-nav navbar-right" style="margin-top:7px;">
          <li>
         <button class="btn btn-primary btn-md"><i class="fa fa-spinner fa-spin fa-fw"></i><span class="simpleUrl"><a href="cp"><strong>CPanel</strong> ${userLogat}&nbsp;&nbsp;</a></span></button>&nbsp;&nbsp;&nbsp;&nbsp;
          </li>
            <li>
            <form:form  action= "${pageContext.request.contextPath}/signout" method="post" >
            <button class="btn btn-primary btn-md">Log Out&nbsp;&nbsp;<i class="fa fa-sign-out"></i></button>
            </form:form>
            </li>
        </ul>
        </c:when>
       <c:otherwise>
        	 <ul class="nav navbar-nav navbar-right">
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-sign-in" aria-hidden="true"></i>&nbsp;&nbsp;SIGN IN <span class="caret"></span></a>
             <ul id="login-dp" class="dropdown-menu">
    			<li>
					 <div class="row">
							<jsp:include page="loginform.jsp" />
					 </div>
				</li>
			</ul>
            </li>
        </ul>
        </c:otherwise>
        </c:choose>
                
    </div>
  </div>
</nav>