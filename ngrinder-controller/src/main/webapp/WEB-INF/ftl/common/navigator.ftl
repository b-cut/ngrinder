<#import "/spring.ftl" as spring />
<#assign security=JspTaglibs["http://www.springframework.org/security/tags"] />
<div class="navbar navbar-fixed-top">
	<div class="navbar-inner">
		<div class="container">
			<a class="brand" href="#" style="padding:5px 20px"><img src="${req.getContextPath()}/img/logo_ngrinder_a_header_inv.png" alt="nGrinder"></img></a>
			<div class="nav-collapse in collapse" style="height:auto">
				<ul class="nav">
				  <li id="n_test"><a href="${req.getContextPath()}/perftest/list">Load Test</a></li>
				  <li id="n_script"><a href="${req.getContextPath()}/script/list">Script</a></li>
				  <li id="n_alert"><a href="#contact">Alert</a></li>
				</ul>
				<ul class="nav pull-right">
					<@security.authorize ifAnyGranted="U, A, S">
						<li class><a href="#">Logout</a></li>
					</@security.authorize>
					<@security.authorize ifAnyGranted="A, S">
  			  	  		<li class id="n_user_manager"><a href="${req.getContextPath()}/user/list">Admin</a></li>
  			  	  	</@security.authorize>
					<li class="divider-vertical"></li>
					<li class="dropdown"><a href="#">Help</a></li>
				</ul>
			</div>
			<button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            	<span class="icon-bar"></span>
            	<span class="icon-bar"></span>
            	<span class="icon-bar"></span>
          	</button>
		</div>
	</div>
</div>