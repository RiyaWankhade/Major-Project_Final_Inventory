

                                                       
      <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="generatedclass.connectionclass"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
 <!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Inventory</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="AdminLTE-3.1.0/plugins/fontawesome-free/css/all.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="AdminLTE-3.1.0/dist/css/adminlte.min.css">
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script type="text/javascript">   
        function deleteScheme(val)
        {
        	var a=val;
        	//alert(a);
        	
        	$("#prodtId_d").val(a);
        	$("#myModalDelete").modal();
        }
        
       
        </script>
  <style>
 table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
th, td {
  padding: 2px;
 
  text-align: center;    
} 

}
</style>
</head>              
<body class="hold-transition sidebar-mini">
<div class="wrapper">
  <!-- Navbar -->
   <nav class="main-header navbar navbar-expand navbar-white navbar-light">
   
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="homepage" class="nav-link">Home</a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="dashboard" class="nav-link">Dashboard</a>
      </li>
    </ul>

    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
      <!-- Navbar Search -->

      <li class="nav-item">
        <a class="nav-link" data-widget="fullscreen" href="#" role="button">
          <i class="fas fa-expand-arrows-alt"></i>
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" data-widget="control-sidebar" data-slide="true" href="#" role="button">
          <i class="fas fa-th-large"></i>
        </a>
      </li>
    </ul>
  </nav>
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="index3.html" class="brand-link">
      <img src="AdminLTE-3.1.0/dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
      <span class="brand-text font-weight-light">Inventory</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
       <!--  <div class="image">
          <img src="AdminLTE-3.1.0/dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
        </div> -->
        <div class="info">
          <a href="#" class="d-block"></a>
        </div>
      </div>

      <!-- SidebarSearch Form -->
      <div class="form-inline">
        <div class="input-group" data-widget="sidebar-search">
          <input class="form-control form-control-sidebar" type="search" placeholder="Search" aria-label="Search">
          <div class="input-group-append">
            <button class="btn btn-sidebar">
              <i class="fas fa-search fa-fw"></i>
            </button>
          </div>
        </div>
      </div>

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <li class="nav-item menu-open">
            <a href="#" class="nav-link active">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                Dashboard
                <i class="right fas fa-angle-left"></i>
              </p>
             
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="dashboard" class="nav-link active">
                  <i class="nav-icon far fa-circle text-info"></i>
                  <p>Dashboard </p>
                </a>
              </li>
             <!--  <li class="nav-item">
                <a href="./index2.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Dashboard v2</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="./index3.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Dashboard v3</p>
                </a>
              </li> -->
            </ul>
          </li>
         <!--  <li class="nav-item">
            <a href="pages/widgets.html" class="nav-link">
              <i class="nav-icon fas fa-th"></i>
              <p>
                Widgets
                <span class="right badge badge-danger">New</span>
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-copy"></i>
              <p>
                Layout Options
                <i class="fas fa-angle-left right"></i>
                <span class="badge badge-info right">6</span>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="pages/layout/top-nav.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Top Navigation</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/layout/top-nav-sidebar.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Top Navigation + Sidebar</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/layout/boxed.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Boxed</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/layout/fixed-sidebar.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Fixed Sidebar</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/layout/fixed-sidebar-custom.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Fixed Sidebar <small>+ Custom Area</small></p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/layout/fixed-topnav.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Fixed Navbar</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/layout/fixed-footer.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Fixed Footer</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/layout/collapsed-sidebar.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Collapsed Sidebar</p>
                </a>
              </li>
            </ul>
          </li> -->
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon far fa-circle text-info"></i>
              <p>
                Master
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="companymaster" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Company Master</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="vendor" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Vendor</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="customer" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Customer</p>
                </a>
              </li>
                <li class="nav-item">
                <a href="product" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Products</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="taxmaster" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Tax </p>
                </a>
              </li>
            </ul>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon far fa-circle text-info"></i>
              <p>
               Stock
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="stock" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Stock</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="stockreport" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Report</p>
                </a>
              </li>
           <!--    <li class="nav-item">
                <a href="pages/UI/buttons.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Buttons</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/UI/sliders.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Sliders</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/UI/modals.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Modals & Alerts</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/UI/navbar.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Navbar & Tabs</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/UI/timeline.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Timeline</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/UI/ribbons.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Ribbons</p>
                </a>
              </li>-->
            </ul>
          </li> 
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon far fa-circle text-info"></i>
              <p>
               Sales
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="sales" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Orders</p>
                </a>
              </li>
              <!-- <li class="nav-item">
                <a href="pages/forms/advanced.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Advanced Elements</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/forms/editors.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Editors</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/forms/validation.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Validation</p>
                </a>
              </li> -->
            </ul>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon far fa-circle text-info"></i>
              <p>
              Employee
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="employee" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Employee</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="attendance" class="nav-link">
                
                  <i class="far fa-circle nav-icon"></i>
                  <p>Attendance</p>
                </a>
              </li>
             <!--  <li class="nav-item">
                <a href="pages/tables/jsgrid.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>jsGrid</p>
                </a>
              </li> -->
            </ul>
          </li>
            <li class="nav-item">
            <a href="#" class="nav-link">
              <i class=" nav-icon far fa-circle text-info"></i>
              <p>
             Reports
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="sales report" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Sales Report</p>
                </a>
              </li>
          
             <!--  <li class="nav-item">
                <a href="pages/tables/jsgrid.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>jsGrid</p>
                </a>
              </li> -->
            </ul>
          </li>
           <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon far fa-circle text-info"></i>
              <p>
            Visit
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="homepage" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Homepage</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="login" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Logout</p>
                </a>
              </li>
             
          </li> 
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
   
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
          
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
             
              <li class="breadcrumb-item active">
               <button type="button" id="addNewButton" class=" btn btn-secondary btn-sm">Add New Product</button>
              <button type="button" id="showTableButton" class="btn btn btn-secondary btn-sm">Show Table</button> 
              </li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <!-- left column -->
           <div class="container-fluid">
        <div class="row">
          <!-- left column -->
           <div class="col-lg-12">
                      <div class="card card-primary">
          
         <div class="card-header"><strong>Products</strong>
                                <!-- <button type="button" id="addNewButton" class=" btn btn-secondary btn-sm">Add New Product</button>
                                <button type="button" id="showTableButton" class="btn btn-secondary btn-sm">Show Table</button>  -->
                            </div>
                            
                             <!-- Start Struts Validation -->
			 
										 <s:if test="hasActionErrors()">
											<div class="errorDiv">
												<div class="alert alert-error has-error" role="alert">
													<s:actionerror/>
												</div>
											</div>
										</s:if>
										
										<%if(request.getSession().getAttribute("successmsg")!=null){ %>
										<div class="welcome">
										  <div class="btn btn-default swalDefaultQuestion" role="alert">
										 <%=request.getSession().getAttribute("successmsg")%>
										  </div>
										  </div>
										<%request.getSession().removeAttribute("successmsg"); } %>
										
				<!-- End Struts Validation -->

                            <div class="card-body card-block">
                                <div id="addNewForm">
                                
                                
                                 <form role="form" action="productInsert">
                                <div class="form-group"> 
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <label for="company" class=" form-control-label">ProductID</label>
											<input type="text" pattern="[a-zA-Z0-9]+" title="Please enter valid Product ID"  id="company" placeholder="" class="form-control"name="ProductId"></div>
										<div class="col-lg-6">
											<label for="company" class=" form-control-label">Product name</label>
											<input type="text"   pattern="[a-zA-Z][a-zA-Z\s]*" title="Please enter alphabets only" id="company" placeholder="" class="form-control"
									name="Name" required>	</div></div><br>  
									<div class="form-group">
										<div class="row">
											<div class="col-lg-6">
												<label for="company address" class=" form-control-label">Product quantity</label>								
												<input type="text" id="vat" placeholder="" class="form-control" name="Quantity"></div>
											<div class="col-lg-6">
												<label for="company" class=" form-control-label">Unit</label>
												<input type="text"   pattern="[0-9]+" title="Please enter digits only" id="company" placeholder="" class="form-control"name="Unit">
											</div></div></div>
									<div class="form-group">
										<div class="row">
											<div class="col-lg-6">
												<label for="Country" class=" form-control-label">Selling price(in Rs)</label>								
												<input type="text" pattern="[0-9]+" title="Please enter proper price" id="vat" placeholder="" class="form-control" name="SellingPrice"></div>
											<div class="col-lg-6">
											<label for="company" class=" form-control-label">Selling tax (in %)</label>
												<input type="text" pattern="[0-9]+" title="Please enter digits only" id="company" placeholder="" class="form-control"name="SellingTax">	
											</div></div></div>

									<!-- <div class="form-group">
										<div class="row">
											<div class="col-lg-6">
												<label for="city" class=" form-control-label">Purchase price</label>
												<input type="text" id="street" placeholder="" class="form-control" name="PurchasePrice"></div>
											<div class="col-lg-6">
												<label for="street" class=" form-control-label">Purchase tax</label>
												<input type="text" id="street" placeholder="" class="form-control"name="PurchaseTax"></div>
										</div></div> -->
								<div class="form-group">
									<div class="row">
										<div class="col-lg-6">
											<label for="email id" class=" form-control-label">GST</label>
											<input type="text"  pattern="[a-zA-Z0-9]{15}" title="Please enter valid GST.no" id="street" placeholder="" class="form-control" name="GST"></div>
										<div class="col-lg-6">
											<label for="company website" class=" form-control-label">HSN</label>
											<input type="text" pattern="[0-9]+" title="Please enter valid HSN no"  id="street" placeholder="" class="form-control" name="HSN"></div>
									</div></div>


								<div class="form-group">
									<div class="row">
										<div class="col-lg-6">
											<label for="Registration no" class=" form-control-label">EAN code</label>
											<input type="text"  pattern="[0-9]+" title="Please enter valid EAN code"  id="registration no" placeholder="" class="form-control" name="EANcode"></div>
										</div>
								</div>

								<div align="center">
									<button type="submit" class="btn btn-primary mb-1" >Submit</button>
									
                                </div>
							</form>
                            </div>
                            </div>
                           
                           
                           
                                                             <%
                                            String id1=request.getParameter("id");
                                            if(id1!=null){
                                            %>
                                            
                                            
                        <!-- for update  -->
                         <div class="card-body card-block ">
                            <%
                 try{
                                Connection con1=new connectionclass().getConnection();
                        		Statement stm=con1.createStatement();
                        		String sql="select * from product where id= '"+id1+ "'";
                        		ResultSet rs=stm.executeQuery(sql);
                        		while(rs.next()){
                        			
                 %>
              
                          
                 <form action="productUpdate" method="post">
                 
              
             
             <%System.out.println(id1); %>
                    <input type="hidden" value="<%=id1%>" name="prodtId">
                    
           <div class="row">
            <div class="col-sm-6">
                 <div class="form-group"> 
                                    
                                       
                                            <label for="company" class=" form-control-label">ProductId</label>
                                            <input type="text" pattern="[a-zA-Z0-9]+" title="Please enter valid Product ID"  id="company" placeholder="" class="form-control" name="ProductId" value="<%=rs.getString("ProductId") %>">
                                            </div>
                                            </div>
                                        <div class="col-sm-6">
                                        <div class="form-group"> 
                                            <label for="company" class=" form-control-label">Product Name</label>
                                            <input type="text" pattern="[a-zA-Z][a-zA-Z\s]*" title="Please enter alphabets only" id="company" placeholder="" class="form-control" name="Name" value="<%=rs.getString("Name") %>">
                                        </div></div>
                                        </div> 
                                        
                                         <div class="row">
                                    
                                       
                                            <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="company address" class=" form-control-label">Quantity</label>                
                                                <input type="text" id="vat" placeholder="" class="form-control" name="Quantity" value="<%=rs.getString("Quantity") %>">
                                                </div>
                                                </div>
                                            <div class="col-md-6">
                                             <div class="form-group">
                                                <label for="company" class=" form-control-label">Unit</label>
                                                <input type="text"  pattern="[0-9]+" title="Please enter digits only" id="company" placeholder="" class="form-control" name="Unit" value="<%=rs.getString("Unit") %>">
                                            </div></div></div>
                                    
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label for="city" class=" form-control-label">Selling Price (in Rs)</label>
                                                <input type="text" pattern="[0-9]+" title="Please enter proper price" id="street" placeholder="" class="form-control" name="SellingPrice" value="<%=rs.getString("SellingPrice") %>"></div>
                                            <div class="col-md-6">
                                                <label for="street" class=" form-control-label">Selling Tax (in %)</label>
                                                <input type="text"  pattern="[0-9]+" title="Please enter digits only" id="street" placeholder="" class="form-control" name="SellingTax" value="<%=rs.getString("SellingTax") %>"></div>
                                        </div></div>
                            <%--  <div class="form-group">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <label for="email id" class=" form-control-label">Purchase Price (in Rs)</label>
                                            <input type="text" id="street" placeholder="" class="form-control" name="PurchasePrice" value="<%=rs.getString("PurchasePrice") %>"></div>
                                       <div class="col-md-6">
                                                    <label for="company website" class=" form-control-label">Purchase Tax </label> 
                                            <input type="text" id="street" placeholder="" class="form-control" name="PurchaseTax" value="<%=rs.getString("PurchaseTax") %>"></div>
                                    </div></div>  --%>


                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <label for="Registration no" class=" form-control-label">GST</label>
                                            <input type="text" pattern="[a-zA-Z0-9]{15}" title="Please enter valid GST.no" id="registration no" placeholder="" class="form-control" name="GST" value="<%=rs.getString("GST") %>"></div>
                                        <div class="col-md-6">
                                            <label for="Bank Name" class=" form-control-label">HSN</label>
                                            <input type="text"  pattern="[0-9]+" title="Please enter valid HSN no" id="bank name"  class="form-control" name="HSN" value="<%=rs.getString("HSN") %>"></div>
                                    </div></div>
                                      <div class="form-group">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <label for="GST No" class=" form-control-label">EAN code</label>
                                            <input type="text" pattern="[0-9]+" title="Please enter valid EAN code"  id="registration no" placeholder="" class="form-control" name="EANcode" value="<%=rs.getString("EANcode") %>"></div>
                                        
                                    </div></div>
                                     
                                           
                                    </div></div>
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    


               			 <div class="row">
                                      <div class="col-md-12">          
                         <button type="submit" class="btn btn-primary">Submit</button>
                         <button type="reset" class="btn btn-primary">Reset</button>
                           </div>
                           </div>
                           </div></div>
                           
                                     
                            </form>
                           <%
                           		} // end of while
                           			
                           			rs.close();
                           		    stm.close();
                           		    con1.close();
                 }catch(Exception e){
                	 e.printStackTrace();
                 }
                              
                           %>
                            
                        
                       
                        
                          <% 
                                            }  // end of if
                          %>       
                                 




 <div class="col-md-12">
            <div class="card">
                         
                                <div id="showTable">
                                <div class="table-responsive">
                                    
                                   
                                    
                                   <table id="bootstrap-data-table" class="table  table-bordered table style="width:100%""  >
                                        <thead>
                                            <tr>
                                                <th>Sr.no</th>
                                                <th>ProductId</th>
                                                <th>Product Name</th>
                                                <th>Quantity</th>
                                               
                                                <th>Purchase Price</th>
                                                <th>Selling Price</th>
                                               <th>Status</th>
                                                <th colspan="3">Action</th>
                                            </tr>
                                        </thead>
                                        
                                        
                                        <tbody>
                                         <%
                                                                                           int i=1;
                                                                                           try{
                                                                                           Connection con=new connectionclass().getConnection();
                                                                                           Statement smt=con.createStatement();
                                                                                           String sql = "select * from product";
                                                                                           ResultSet rs= smt.executeQuery(sql);
                                                                                           while(rs.next()){                                  		

                                                                                           %>
                                            <tr>
                                           
                                           <%
                              int quantity=rs.getInt("quantity");
                                             %> 
                                
                                             
                                             
                                           
 																									 <td><%=i%><input type="hidden" id="id" value="<%rs.getString("id");%>"> </td>                         
                                                                                               <td id="ProductId_<%rs.getString("id");%>"><%=rs.getString("ProductId") %></td>
                                                                                                <td id="Name_<%rs.getString("id");%>"><%=rs.getString("Name") %></td>
                                                                                              
                                                                                              
                                                                                                <td id="Quantity_<%rs.getString("id");%>"><%=rs.getString("Quantity") %></td>
                                                                                               
                                                                                             
                                                                                             
                                                                                                <td id="PurchasePrice_<%rs.getString("id");%>"><%=rs.getString("PurchasePrice") %></td>
                                                                                                  <td id="SellingPrice_<%rs.getString("id");%>"><%=rs.getString("SellingPrice") %></td>
                                                                                                   <td>
                                 	
										<%if(quantity<=0 ){ %>
									<button type="button" class="btn btn-block btn-danger disabled  btn-sm">Out of Stock!</button>
             
										<%/* request.getSession().removeAttribute("Out Of Stock"); */ } %>
										<%if(quantity>0 && quantity<=10){ %>
									<button type="button" class="btn btn-block btn-warning disabled  btn-sm">Low Stock !</button>
             
										<%/* request.getSession().removeAttribute("Out Of Stock"); */ } %>
										<%if(quantity>10){ %>
									<button type="button" class="btn btn-block btn-success  disabled   btn-sm">InStock </button>
             
										<%/* request.getSession().removeAttribute("Out Of Stock"); */ } %>
										</td>
                        
                                                                                            <td> <a href="product?id=<%=rs.getString("id")%>"class="btn btn-success btn-sm" >Update</a>  </td>
                            				                                                       <td><a onclick="deleteScheme(<%=rs.getString("id")%>)" class="btn btn-danger btn-sm" data-toggle="modal" data-target="#myModalDelete">Delete</a> </td>
                                                                                             <td> <a href="stock?id=<%=rs.getString("id")%>"class="btn btn-primary float-right  btn-sm"><i class="fas fa-plus"></i>Add Stock</a>  </td>  
 																								</tr>
																						   <%
                                                                                               i++;
                                                                                               }  //end of while

                                                                                               rs.close();
                                                                                               smt.close();
                                                                                               con.close();

                                                                                               } catch(Exception e){
                                                                                               e.printStackTrace();

                                                                                               }
                                                                                               %>
                                        </tbody>
                                    </table>
                                </div>

                            </div>
                            </div>

                        </div>
                    

        
          
          
               <script>
                                      
                                      
                                        /*  addNewForm1 */
                                        $(document).ready(function() {
                                            $("#addNewButton").show();
                                            $("#showTable").show();
                                            $("#addNewForm").hide();
                                            $("#showTableButton").hide();
                                            /*   $("#addNewForm1").hide(); */

                                            $("#addNewButton").click(function() {
                                                $("#addNewButton").hide();
                                                $("#showTable").hide();
                                                $("#addNewForm").show();
                                                $("#showTableButton").show();
                                                /*   $("#addNewForm1").hide(); */
                                            });
                                            $("#showTableButton").click(function() {
                                                $("#addNewButton").show();
                                                $("#showTable").show();
                                                $("#addNewForm").hide();
                                                $("#showTableButton").hide();
                                                /*  $("#addNewForm1").hide(); */
                                            });
                                        });

                                    </script>
          
          
          
          
          	  <div class="modal fade" id="myModalDelete" role="dialog">
		    <div class="modal-dialog">
		      <!-- Modal content-->
		      <div class="modal-content">
		        <div class="modal-header">
		         
		          <h4 class="modal-title" style="text-align: right">Delete Under Product</h4>
		        </div>
		       <form action="productDelete" method="POST">
		        <div class="modal-body">
		          
		          
		          	<input type="hidden" id="prodtId_d" name="prodtId">
		          	
				    <div class="form-group">
				      <label><p>Do you want to delete</p></label>
				     
				    </div>
				  
				  
		        </div>
		        <div class="modal-footer">
		          <button type="submit" class="btn btn-primary btn-sm"  >Delete</button>
		          <button type="button" class="btn btn-primary btn-sm" data-dismiss="modal" >Close</button>
		        </div>
		        </form>
		      </div>
		      
		    </div>
		  </div>
          
          
          
          
          
          
          
          
          
          
          
    
          
          <!--/.col (left) -->
          <!-- right column -->
         
          <!--/.col (right) -->
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
 

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="AdminLTE-3.1.0/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="AdminLTE-3.1.0/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- bs-custom-file-input -->
<script src="AdminLTE-3.1.0/plugins/bs-custom-file-input/bs-custom-file-input.min.js"></script>
<!-- AdminLTE App -->
<script src="AdminLTE-3.1.0/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="AdminLTE-3.1.0/dist/js/demo.js"></script>
<!-- Page specific script -->
<script>
$(function () {
  bsCustomFileInput.init();
});
</script>
</body>
</html>