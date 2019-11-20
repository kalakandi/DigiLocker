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
    <asset:link rel="stylesheet" href="bootstrap.min.css"/>
    <asset:link rel="stylesheet" href="font-awesome.min.css"/>
    <asset:link rel="stylesheet" href="slicknav.min.css"/>

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
        <g:applyLayout name="studentHeader">
        </g:applyLayout>
              <!-- mobile_menu -->
        <div class="col-12 d-block d-lg-none">
            <div id="mobile_menu"></div>
        </div>
    </div>

 <!-- page title area end -->
    <div class="main-content-inner">
        <div class="just-middle">
            <h2>Welcome to Dashboard ${name}</h2>
        </div>

        <div class="wizard-container col-9">
            <div class="card wizard-card">
                <div class="wizard-header">

                    <h3 class="wizard-title">
                        B. Tech. Mark Sheet   

                    </h3>
                </div>
                <hr>
                <div class="row justify-content-center">
                    <div class="col-12">
                        <g:form controller="Certificate" action="index" id="bTechMarkSheetDisplay" name="bTechMarkSheetDisplay">
                            <g:each var="number" in="${(1..5)}">
                                <div>
                <div class="row justify-content-center">
                    <div class="col-8" id="borderbox">
                                <div class="form-group">
                                    <input name="rollNo" class="form-control" id="rollNo"  type="hidden">
                                </div>
                                <div class="row">
                                    <div class="col-sm-5 offset-sm-1">
                                        <div class="form-group label-floating text-center">
                                            <h6>Semester</h6>
                                            <span name="semester" id="semester" class="form-control">1</span>
                                        </div>
                                        <div class="form-group label-floating text-center">
                                            <h6>Semester Percentage</h6>
                                            <span name="semesterPercentage" id="semesterPercentage" type="text" class="form-control">71.5<span> %</span></span>
                                        </div>
                                    </div>
                                    <div class="col-sm-5">
                                        <h6 class="form-control-label offset-sm-3">Semester Mark Sheet</h6>
                                        <div class="picture-container">
                                            <div class="picture">
                                                <g:img src="default-icon.png" class="picture-src" id="semesterMarksheetPreview" title=""/>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                </div>
                            </div>
                            </g:each>
                            <div class="row justify-content-center">
                                <div class="col-sm-9" id="borderboxFinal" >
                                    <div class="form-group label-floating text-center">
                                        <h6>B.Tech Percentage <sub id="error">(Overall)</sub></h6>
                                        <span name="bTechPercentage" id="bTechPercentage" type="text" class="form-control">71.5<span> %</span></span>
                                    </div>
                                </div>

                            </div>
                        </g:form> 
                    </div>
                </div>
                <div class="wizard-header">

                    <h6 class="wizard-title">
                        Co Curriculum Certificates   

                    </h6>
                </div>
                <hr>
                

            </div>    
        </div>
    </div>    
<!-- Textual inputs end -->

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
<asset:javascript src="plugins.js"/>
<asset:javascript src="header.js"/>
<asset:javascript src="scripts.js"/>
<asset:javascript src="jquery.validate.min.js"/>
<asset:javascript src="studentNavbar.js"/>

</body>

</html>
