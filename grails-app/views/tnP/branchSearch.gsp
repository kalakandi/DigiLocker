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
        <g:applyLayout name="tnpHeader">
        </g:applyLayout>
              <!-- mobile_menu -->
        <div class="col-12 d-block d-lg-none">
            <div id="mobile_menu"></div>
        </div>
    </div>

 <!-- page title area end -->
    <div class="main-content-inner">
        <div class="container">
            <div class="just-middle">
                <h2>Generate Students Basic Information Report</h2>
            </div>
            <div class="wizard-container">
                <div class="card wizard-card" id="wizard">
                    <div class="row justify-content-center">
                        <div class="col-8" id="borderbox">
                            <g:form controller="tnP" action="index" class="p-3">
                                <div class="form-group p-3">
                                    <label for="Branch">Select Branch</label>
                                    <select class="form-control">
                                        <option select="selected">Select Branch</option>
                                        <option value="yes">CSE</option>
                                        <option value="yes">IT</option>
                                        <option value="yes">ME</option>
                                        <option value="yes">CE</option>
                                        <option value="yes">EE</option>
                                        <option value="yes">ECE</option>
                                        <option value="yes">All Branches</option>
                                    </select>
                                </div>
                                <div class="form-group p-3">
                                    <label for="Year">Select Year</label>
                                    <select class="form-control">
                                        <option select="selected">Select Year</option>
                                        <option value="yes">1</option>
                                        <option value="yes">2</option>
                                        <option value="yes">3</option>
                                        <option value="yes">4</option>
                                        <option value="yes">All Years</option>
                                    </select>
                                </div>

<!--Optional-->
                                <div class="mt-1">
                                    <div class="text-center">Additional Fields (Not Mandatory)</div>

<!--Marks X-->

                                    <div class="form-group DashBorder" id="MarksXDiv">
                                        <div class="text-middle m-1">
                                            <a>Enter X<sup>th</sup> Percentage</a>  
                                        </div>
                                        <div class="input-group-prepend form-select criteria" id="MarksX">
                                            <button class="btn btn-sm btn-primary dropdown-toggle" id="CriteriaX" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" >Criteria</button>
                                            <div class="dropdown-menu">
                                                <button class="btn btn-sm btn-outline-success dropdown-item" id="CriteriaValueEqual" type="button" onclick="showX('CriteriaValueEqual')" aria-expanded="false">
                                                    Equal to </button>
                                                <div role="separator" class="dropdown-divider"></div>
                                                <button class="btn btn-sm btn-outline-success dropdown-item" id="CriteriaValueGreat" type="button" onclick="showX('CriteriaValueGreat')" aria-expanded="false">
                                                    Greater than </button>
                                                <div role="separator" class="dropdown-divider"></div>
                                                <button class="btn btn-sm btn-outline-success dropdown-item" id="CriteriaValueLess" type="button" onclick="showX('CriteriaValueLess')" aria-expanded="false">
                                                    Less than </button>
                                            </div>
                                            <input type="text" id="X" class="form-control  inp" value="Click to Enter Value" onkeypress='return event.charCode >= 48 && event.charCode <= 57'>
                                            <div class="input-group-append">
                                                <span class="btn btn-sm" id="colorX">%</span>
                                            </div>
                                        </div>
                                    </div>

<!--Marks XII-->

                                    <div class="form-group DashBorder" id="MarksXiiDiv">
                                        <div class="text-middle m-1">
                                            <a>Enter XII<sup>th</sup> Percentage</a>
                                        </div>
                                        <div class="input-group-prepend form-select criteria" id="MarksXii">
                                            <button class="btn  btn-sm btn-primary dropdown-toggle" id="CriteriaXii" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" >Criteria</button>
                                            <div class="dropdown-menu">
                                                <button class="btn btn-sm btn-outline-success dropdown-item" id="CriteriaValueEqual" type="button" onclick="showXii('CriteriaValueEqual')" aria-expanded="false">
                                                    Equal to </button>
                                                <div role="separator" class="dropdown-divider"></div>
                                                <button class="btn btn-sm btn-outline-success dropdown-item" id="CriteriaValueGreat" type="button" onclick="showXii('CriteriaValueGreat')" aria-expanded="false">
                                                    Greater than </button>
                                                <div role="separator" class="dropdown-divider"></div>
                                                <button class="btn btn-sm btn-outline-success dropdown-item" id="CriteriaValueLess" type="button" onclick="showXii('CriteriaValueLess')" aria-expanded="false">
                                                    Less than </button>
                                            </div>
                                            <input type="text" class="form-control inp" value="Click to Enter Value" onkeypress='return event.charCode >= 48 && event.charCode <= 57'>
                                            <div class="input-group-append">
                                                <span class="btn btn-sm" id="colorXii">%</span>
                                            </div>
                                        </div>

                                    </div>        

<!--Btech Marks-->

                                    <div class="form-group DashBorder" id="BtechMarksDiv">
                                        <div class="text-middle m-1">
                                            <a>Enter B. Tech. Percentage</a>
                                        </div>
                                        <div class="input-group-prepend form-select criteria" id="BtechMarks">
                                            <button class="btn btn-sm btn-primary dropdown-toggle" id="CriteriaBtech" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" >Criteria</button>
                                            <div class="dropdown-menu">
                                                <button class="btn btn-sm btn-outline-success dropdown-item" id="CriteriaValueEqual" type="button" onclick="showBtech('CriteriaValueEqual')" aria-expanded="false">
                                                    Equal to </button>
                                                <div role="separator" class="dropdown-divider"></div>
                                                <button class="btn btn-sm btn-outline-success dropdown-item" id="CriteriaValueGreat" type="button" onclick="showBtech('CriteriaValueGreat')" aria-expanded="false">
                                                    Greater than </button>
                                                <div role="separator" class="dropdown-divider"></div>
                                                <button class="btn btn-sm btn-outline-success dropdown-item" id="CriteriaValueLess" type="button" onclick="showBtech('CriteriaValueLess')" aria-expanded="false">
                                                    Less than </button>
                                            </div>
                                            <input type="text" class="form-control inp" value="Click to Enter Value" onkeypress='return event.charCode >= 48 && event.charCode <= 57'>
                                            <div class="input-group-append">
                                                <span class="btn btn-sm" id="colorBtech">%</span>
                                            </div>
                                        </div>  
                                    </div>  

                                </div>  
                          <!--Optional Features end-->

<!--Form Buttons-->


                                <div class="form-group col-12">

                                    <button type="reset" id="resetSearch" class="btn btn-dark pull-left">Reset Form</button>
                                    <button type="button" id="generateSearch" href="#searchDyanmicTable" class="btn btn-success pull-right">Generate Report</button>

                                </div>

<!--Optional div end -->
                            </g:form>


                        </div>

                    </div>
                    <div id="searchResultDiv1">
                        <div class="row justify-content-center">
                            <div class="wizard-header" id="gradientBox">
                                <h3>Student Basic Information Table</h3>
                                <hr/>
                            </div>
                        </div>
                        <div class="row justify-content-center">
                            <h4 class="error">Help Instruction here</h4>

                            <div class="col-12">

                                <div class="col-12 mt-2">
                                    <table class="table table-bordered table-striped table-hover" id="searchDyanmicTable">
                                        <thead>
                                            <tr>
                                                <th>First Name</th>
                                                <th>Last Name</th>
                                                <th>Date Of Birth</th>
                                                <th>Gender</th>
                                                <th>Email</th>
                                                <th>Branch</th>
                                                <th>Joining Year</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr data-id="0">
                                                <td data-field="firstName">Kumar</td>
                                                <td data-field="lastName">Shivay</td>
                                                <td data-field="dateOfBirth">11/03/1998</td>
                                                <td data-field="gender">male</td>
                                                <td data-field="email">krshivay08@dbz.xz</td>
                                                <td data-field="branch">CSE</td>
                                                <td data-field="joiningYear">2017</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                
                                </div>
                            </div>


                        </div>
                    </div>
                </div>
            </div>
        </div>    
    </div>
<!-- Textual inputs end -->


   <!-- main content area end -->
   <!-- footer area start-->
    <div class="footer">
        <div class="container text-center">
            e-IPEC
        </div>
    </div>
    <!-- footer area end-->

<asset:javascript src="jquery-2.2.4.min.js"/>
<!-- bootstrap 4 js -->
<asset:javascript src="popper.min.js"/>
<asset:javascript src="bootstrap.min.js"/>
<asset:javascript src="jquery.slimscroll.min.js"/>
<asset:javascript src="jquery.slicknav.min.js"/>
<asset:javascript src="metisMenu.min.js"/>
<asset:javascript src="plugins.js"/>
<asset:javascript src="header.js"/>
<asset:javascript src="branchSearch.js"/>
</body>

</html>
