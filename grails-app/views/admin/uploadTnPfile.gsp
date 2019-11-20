<!--
  To change this license header, choose License Headers in Project Properties.
  To change this template file, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>
<!doctype html>
<%
response.setHeader("Cache-Control","no-cache");  

response.setHeader("Cache-Control","no-store");     

response.setDateHeader("Expires", 0); 

response.setHeader("Pragma","no-cache");

%>
<html class="no-js" lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.13.5/xlsx.full.min.js"></script>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.13.5/jszip.js"></script>
    <asset:link rel="stylesheet" href="bootstrap.min.css"/>
    <asset:link rel="stylesheet" href="font-awesome.min.css"/>
    <asset:link rel="stylesheet" href="slicknav.min.css"/>
    <asset:link rel="stylesheet" href="dataTables.bootstrap4.min.css"/>
<!-- others css -->
    <asset:link rel="stylesheet" href="typography.css"/>
    <asset:link rel="stylesheet" href="metisMenu.css"/>
    <asset:link rel="stylesheet" href="default-css.css"/>
    <asset:link rel="stylesheet" href="header.css"/>
    <asset:link rel="stylesheet" href="scripts.css"/>
    <asset:link rel="stylesheet" href="responsive.css"/>


</head>
<body class="body-bg"> 
    <div id="header">
        <g:applyLayout name="adminHeader">
        </g:applyLayout>
              <!-- mobile_menu -->
        <div class="col-12 d-block d-lg-none">
            <div id="mobile_menu"></div>
        </div>
    </div>

 <!-- page title area end -->
    <div class="main-content-inner">
        <div class="wizard-container">
            <div class="row justify-content-center">
                
            <div class="card wizard-card">
                <div class="row justify-content-center">
                        <h3 class="wizard-header col-10" id="gradientBox">
                            <center>Upload Training & Placement Cell File</center>
                        </h3>
                            <div class="col-11">
                                <div class="offset-2 pull-left">
                                        <input type="file" class="btn btn-warning" id="fileUpload" accept=".csv, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet, application/vnd.ms-excel"/>
                                        <input type="button" class="btn btn-success upload" id="upload" value="Upload" onclick="Upload()" />
                                    </div>
                                <div class="pull-right">
                                            <a href="javascript:void(0);" onclick="exportTableToExcel('tblData')">
                                                <i class="fa fa-lg fa-cogs pull-right"> Sample Excel File</i>
                                            </a>
                                    
                                </div>
                            </div>
  
                                <g:form contoller="Admin" action="submitStudentBasicInformation">
                                    <div id="dvExcel" class="table table-striped form-group">                     


                                    </div>  
                                    <div id="dvButton">                     
                                        <input type ="submit" name="submit" value="submit" class="btn btn-success"/>
                                    </div>
                                </g:form>
                            </div>    

                        </div>

                    </div>

                </div>
            </div>

<!-- Textual inputs end -->
            <table id="tblData">
                <tr>
                    <th>rollNo</th>
                    <th>firstName</th>
                    <th>lastName</th>
                    <th>dateOfBirth</th>
                    <th>contactNo</th>
                    <th>email</th>
                    <th>branch</th>
                    <th>joiningYear</th>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
            </table>
       
            <!-- main content area end -->
           <!-- footer area start-->
        <div class="footer">
            <div class="container text-center">
                e-IPEC DigiLocker
            </div>
        </div>
        <!-- footer area end-->
        <!-- jquery latest version -->
        <asset:javascript src="jquery-2.2.4.min.js"/>
        <!-- bootstrap 4 js -->
        <asset:javascript src="popper.min.js"/>
        <asset:javascript src="bootstrap.min.js"/>
        <asset:javascript src="jquery.slimscroll.min.js"/>
        <asset:javascript src="jquery.slicknav.min.js"/>
        <asset:javascript src="metisMenu.min.js"/>
        <asset:javascript src="jquery.dataTables.min.js"/>
        <asset:javascript src="dataTables.bootstrap4.min.js.js"/>
        <asset:javascript src="plugins.js"/>
        <asset:javascript src="header.js"/>
        <asset:javascript src="uploadStudentFile.js"/>

</body>

</html>
