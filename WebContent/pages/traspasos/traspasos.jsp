<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>Traspasos</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- <script type="text/javascript" src="requisicionesNew.js"></script> -->
<%@include file="../../Headers/headerIncludesRoot.jsp" %>
<script type="text/javascript" src="traspasos.js"></script>
 <link href="traspasos.css" rel="stylesheet">

</head>

<body>

    <div id="wrapper">

        <!-- Navigation Cabezera y menu lateral -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
          <%@include file="../sideMenu.jsp" %>
        </nav>

        <div id="fountainT" style="display: block;">
			<div id="fountainT_1" class="fountainT"></div>
			<div id="fountainT_2" class="fountainT"></div>
			<div id="fountainT_3" class="fountainT"></div>
			<div id="fountainT_4" class="fountainT"></div>
			<div id="fountainT_5" class="fountainT"></div>
			<div id="fountainT_6" class="fountainT"></div>
			<div id="fountainT_7" class="fountainT"></div>
			<div id="fountainT_8" class="fountainT"></div>
		</div>

        <!-- Navigation -->
		
		<div id="page-wrapper" class="tablePage">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">TRASPASOS</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            TRASPASOS
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="dataTable_wrapper">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                        	<th>Origen-Destino</th>
                                            <th>No. Traspaso</th>
                                            <th>Fecha de Traspaso</th>
                                            <th>No. Requisici&oacute;n</th>
                                            <th>Fecha de Requisici&oacute;n</th>
                                            <th>No. Embarque</th>
											<th>Fecha de Embarque</th>
											<th>Status</th>
                                        </tr>
                                    </thead>
                                    <tbody id="tbodyReq">
                                    
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            
        </div>
        <!-- /#page-wrapper -->
        
        <!-- #page-wrapper detalle-->
		<div id="page-wrapper" class="detail" style="display:none">
            <div class="row">
                <div class="col-lg-12">
                	
                    <h1 class="page-header" id="idorden2"><i class="fa fa-arrow-circle-left" style="color: #337ab7;margin-right: 2%;cursor:pointer" onclick="backPedidos()"></i>Orden 000985 </h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <div class="row" id="tabs">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading" id="idorden">
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <!-- Nav tabs -->
                            <ul class="nav nav-tabs">
                                <li class="active"><a href="#embarque" data-toggle="tab">Embarque</a>
                                </li>
                                <li><a href="#cliente" data-toggle="tab">Cliente</a>
                                </li>
<!--                                 <li><a href="#messages" data-toggle="tab">Documentos</a> -->
<!--                                 </li> -->
								<!-- 
                                <li><a href="#settings" data-toggle="tab">Settings</a>
                                </li> -->
                            </ul>

                            <!-- Tab panes -->
                            <div class="tab-content">
                                <div class="tab-pane fade in active" id="embarque">
									<table class="table table-bordered table-striped">
										<tbody>
											<tr>
												<th>Clave de Trasporte</th>
												<td id="trasporte"></td>
											</tr>
											<tr>
												<th>No. Guía (Porte)</th>
												<td id="guia"></td>
											</tr>
											<tr>
												<th>Fecha de Entrega al Trasportista:</th>
												<td>
													<code id="fechaT"></code>
												</td>
											</tr>
											<tr>
												<th>No. de Cajas</th>
												<td id="cajas" colspan="3"></td>
											</tr>
											<tr>
												<th>No. de Paquetes</th>
												<td id="paquetes"></td>
											</tr>
											<tr>
												<th>Placas de la Unidad.</th>
												<td id="placas" colspan="4"></td>
											</tr>
											<tr>
												<th>Nombre del Trasportista (CIA)</th>
												<td id="nombreT" colspan="4"></td>
											</tr>
											
										</tbody>
									</table>
                                </div>
                                <div class="tab-pane fade" id="cliente">
                                    <!-- <h4>Datos del Cliente</h4>
                                    <div class="row show-grid">
										<div class="col-md-8">.col-md-8</div>
										<div class="col-md-4">.col-md-4</div>
									</div> -->
									<div class="panel panel-green">
										<div class="panel-heading">
											Datos del Cliente
										</div>
										<div class="panel-body">
											<div class="row show-grid">
												<div class="col-md-4"><strong>Nombre/R. Social:</strong></div>
												<div class="col-md-8" id="razonS"></div>
											</div>
											<div class="row show-grid">
												<div class="col-md-3" ><strong>Calle y No.</strong></div>
												<div class="col-md-3" id="calle"></div>
												<div class="col-md-3"><strong>Col./Munic.</strong></div>
												<div class="col-md-3" id="colonia"></div>
												<div class="col-md-3"><strong>Ciudad/Estado:</strong></div>
												<div class="col-md-3" id="estado"></div>
												<div class="col-md-3"><strong>País y C.P.</strong></div>
												<div class="col-md-3" id="paisCP"></div>
											</div>
										</div>
										
										
									</div>
                                </div>
                                 <div class="tab-pane fade" id="messages">
                                    <h4>Embarque: </h4>
                                    <div class="row show-grid">
										<div class="col-md-6"><strong>Documentos Asociados a este embarque:</strong></div>
										<div class="col-md-2"></div>
										<div class="col-md-2"></div>
										<div class="col-md-2"></div>
										<div class="col-md-2"></div>
										<div class="col-md-2"></div>
										<div class="col-md-2"></div>
										<div class="col-md-2"></div>
									</div>
                                </div>
								<!--
                                <div class="tab-pane fade" id="settings">
                                    <h4>Settings Tab</h4>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                                </div> -->
                            </div>
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-6 -->
            </div>
            <!-- /.row -->
           
        </div>
    </div>
</body>
</html>