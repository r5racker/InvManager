<%-- 
    Document   : CollectionManagerSupplies
    Created on : 21 Apr, 2020, 3:28:26 PM
    Author     : Zalak Bhingradiya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta charset="utf-8">
 	 <meta name="viewport" content="width=device-width, initial-scale=1">
	  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
 	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
 	 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>


		<title>Supplies</title>
		<style>
	

			body{
						min-height: 100vh;
						background-color: #FFDAB9;
				 background-image: url("bg.png");
				}
			table {
				 border-collapse: collapse;
				  width: 100%;
				background-color:#00FA9A;
				margin:0% 1%;
			}
		
			th, td {
				  padding: 5px;
				  text-align: left;
				  border-bottom: 1px solid #008B8B;
			}
		
			
		
			</style>
		
    </head>
    <body>
         <hr>
        <br>
        <div class="container">
  
  		<ul class="list-inline">
    			<li><a href="/InvManager/CollectionManager/CollectionManagerHome" class="btn btn-primary"><h4>Home</h4></a></li>
    			<li><a href="/InvManager/CollectionManager/CollectionManagerNewSupply" class="btn btn-primary"><h4>New Supply</h4></a></li>
    			<li><a href="/InvManager/CollectionManager/CollectionManagerSupplies" class="btn btn-primary"><h4>My Supplies</h4></a></li>
    			<li><a href="/InvManager/CollectionManager/CollectionManagerHistory" class="btn btn-primary"><h4>View Supply History</h4></a></li>
			
    			<li><a href="/InvManager/Login/LogOut.jsp" class="btn btn-primary"><h4>Log out</h4></a></li>
  		</ul>
	</div>
        <hr>
        <br>
        
        <table width="100%"  align="center" style="height:200px" >
            <tr>
             <td colspan="5" rowspan="10">
                 <h3>Table for upcoming requests</h3>
             		<table width="100%">
             			<tr>
             				<th>Supply no.</th>
             				<th>Status</th>
             				<th>Fruit</th>
             				<th>Quantity(Kg.)</th>
             				<th>Source</th>
             				<th>Request Date</th>
             				<th>Action</th>
             			</tr>
             			<tr>
             				<td>S2001230001</td>
             				<td>Pending</td>
             				<td>Apple</td>
             				<td>30</td>
             				<td>F0100100001</td>
             				<td>23/01/2020</td>
             				<td><input type="button" class="btn btn-success" name="gen_rec" value="Generate receipt"/></td>
             			</tr>
             		</table>
             		
             		
             		
             </td></tr>
             
        </table> 
    </body>
</html>
