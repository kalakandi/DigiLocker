<!--
  To change this license header, choose License Headers in Project Properties.
  To change this template file, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <asset:link rel="stylesheet" href="studentNavbar.css"/>

</head>
<body>
    <div class="modal fade" id="coCurriculumModal">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">

  <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title">Upload Co-Curriculum Certificates</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>

<!-- Modal body -->
                <div class="modal-body">
                    <div class="row">
                        <div class="col-12">
                            <g:form controller="Certificate" action ="saveCoCurriculum" method="POST" id="coCurriculumForm" enctype="multipart/form-data">
                                <div class="form-group">
                                    <input name="rollNo" class="form-control" id="rollNo"  type="hidden">
                                </div>
                                <h5 id="statusLabel">Status</h5>
                                <div class="row">
                                    <div class="col-sm-5 offset-sm-1">
                                        <div class="form-group">
                                            <input type="radio" id="interCollege" name="status">
                                            <a>Inter College</a>
                                        </div>
                                    </div>
                                    <div class="col-sm-5">
                                        <div class="form-group">
                                            <input type="radio" id="intraCollege" name="status">
                                            <a>Intra College</a>
                                        </div>
                                    </div>
                                </div>
                                <hr>
                                <h5 id="categoryLabel">Category</h5>
                                <div class="row">
                                    <div class="col-sm-5 offset-sm-1">
                                        <div class="form-group">
                                            <input type="radio" name="category">
                                            <a>Literary </a>
                                        </div>
                                    </div>
                                    <div class="col-sm-5">
                                        <div class="form-group">
                                            <input type="radio" name="category">
                                            <a>Cultural</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-5 offset-sm-1">
                                        <div class="form-group">
                                            <input type="radio" name="category">
                                            <a>Technical</a>
                                        </div>
                                    </div>
                                    <div class="col-sm-5">
                                        <div class="form-group">
                                            <input type="radio" name="category">
                                            <a>Sports</a>
                                        </div>
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-5">
                                        <div class="form-group">
                                            <h5 id="eventOrganizerLabel">Event Organized By</h5>
                                            <input name="eventOrganizer" type="text" class="form-control offset-sm-2" placeholder="Enter organiser name....">
                                        </div>
                                    </div>
                                    <div class="col-sm-5">
                                        <h5 id="certificateLabel" class="offset-sm-3">Upload Certificate</h5>
                                        <div class="picture-container">
                                            <div class="picture">
                                                <g:img src="default-icon.png" class="picture-src" id="coCurriculumCertificatePreview" title=""/>
                                            </div>
                                        </div>
                                        <input type="file" id="coCurriculumCertificate" class="offset-sm-2" method="post" name="coCurriculumCertificate" accept="image/jpeg"/>
                                    </div>
                                </div>
                                <hr>
                                <h5 id="positionLabel">Position</h5>
                                <div class="row">
                                    <div class="col-sm-5 offset-sm-1">
                                        <div class="form-group">
                                            <input type="radio" name="position">
                                            <a>1<sup>st</sup> Position</a>
                                        </div>
                                    </div>
                                    <div class="col-sm-5">
                                        <div class="form-group">
                                            <input type="radio" name="position">
                                            <a>2<sup>nd</sup> Position</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-5 offset-sm-1">
                                        <div class="form-group">
                                            <input type="radio" name="position">
                                            <a>3<sup>rd</sup> Position</a>
                                        </div>
                                    </div>
                                    <div class="col-sm-5">
                                        <div class="form-group">
                                            <input type="radio" name="position">
                                            <a>Member</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-5 offset-sm-1">
                                        <div class="form-group">
                                            <input type="radio" name="position">
                                            <a>Participant</a>
                                        </div>
                                    </div>
                                </div>
                                <hr>
                                <input type="submit" class="btn btn-success pull-right" value="Upload">
                               

                            </g:form>
                        </div>
                    </div>




                </div>


            </div>
        </div>
    </div>
<!-- --- --- --- --- --- --- --- --- ---   Modal 2   --- --- --- --- --- --- --- --- --- -->

<div class="modal fade" id="trainingInternshipModal">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">

  <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title">Upload Training & Internship Certificates</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>

<!-- Modal body -->
                <div class="modal-body">
                    <div class="row">
                        <div class="col-12">
                            <form controller="student" method="POST" id="trainingAndInternshipForm" enctype="multipart/form-data">
                                <div class="form-group">
                                    <input name="rollNo" class="form-control" id="rollNo"  type="hidden">
                                </div>
                                <div class="row">
                                    <div class="col-sm-5 offset-sm-1">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">Roll Number </label>
                                            <input name="rollNo" id="rollNo" type="text" class="form-control" placeholder="Enter your roll no...">
                                        </div>
                                    </div>
                                    <div class="col-sm-5">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">Student Name </label>
                                            <input name="studentName" id="studentName" type="text" class="form-control" placeholder="Enter your name....">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-5 offset-sm-1">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">Branch </label>
                                            <select class="form-control" name="branch">
                                                <option disabled="true" selected="selected">Select Branch</option>
                                                <option value="CSE">C.S.E. </option>
                                                <option value="IT">I.T.</option>
                                                <option value="CSE">C.E. </option>
                                                <option value="IT">E.E.</option>
                                                <option value="CSE">ME. </option>
                                                <option value="IT">E.C.</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-sm-5">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">Year of Study </label>
                                            <select class="form-control" name="year">
                                                <option disabled="true" selected="selected">Select Year</option>
                                                <option value="first">1<sup>st</sup> Year </option>
                                                <option value="second">2<sup>st</sup> Year </option>
                                                <option value="third">3<sup>rd</sup> Year </option>
                                                <option value="fourth">4<sup>th</sup> Year </option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-5 offset-sm-1">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">Project Title </label>
                                            <input name="projectTitle" id="projectTitle" type="text" class="form-control" placeholder="Title of your project...">
                                        </div>
                                    </div>
                                    <div class="col-sm-5">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">Area of Project </label>
                                            <input name="areaOfProject" id="areaOfProject" type="text" class="form-control" placeholder="Ex- Machine Learning">
                                            </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-5 offset-sm-1">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">Session </label>
                                            <input name="session" id="session" type="text" class="form-control" placeholder="Ex- 2019">
                                            </div>
                                    </div>
                                    <div class="col-sm-5">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">Company Name </label>
                                            <input name="companyName" id="companyName" type="text" class="form-control" placeholder="Enter Company's name...">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-5 offset-sm-1">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">Mentor Name </label>
                                            <input name="mentorName" id="mentorName" type="text" class="form-control" placeholder="Project Mentor's name...">
                                        </div>
                                    </div>
                                    <div class="col-sm-5">
                                        <div class="form-group label-floating">
                                        <label class="form-control-label">City </label>
                                            <input name="city" id="city" type="text" class="form-control" placeholder="Ex- Noida">
                                            </div>
                                    </div>
                                </div>
                                <hr>
                                <div class="row justify-content-center">
                                <div class="col-sm-12">
                                        <h5 class="offset-sm-5">Upload Certificate</h5>
                                        <div class="picture-container">
                                            <div class="picture wide">
                                                <g:img src="default-icon.png" class="picture-src" id="trainingInternshipCertificatePreview" title=""/>
                                            </div>
                                        </div>
                                        <input type="file" id="trainingInternshipCertificate" class="offset-sm-5" name="trainingInternshipCertificate" accept="image/jpeg"/>
                                    </div>
                                </div>
                            <hr>
                            
                                <input type="submit" class="btn btn-success pull-right" value="Upload">
                            
                        </form>
                        </div>
                    </div>




                </div>


            </div>
        </div>
    </div>
    <!-- --- --- --- --- --- --- --- --- ---   Modal 3   --- --- --- --- --- --- --- --- --- -->

<div class="modal fade" id="btechModal">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">

  <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title">Upload B. Tech Marksheet</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>

<!-- Modal body -->
                <div class="modal-body">
                    <div class="row">
                        <div class="col-12">
                            <form controller="student" method="POST" id="trainingAndInternshipForm" enctype="multipart/form-data">
                                <div class="form-group">
                                    <input name="rollNo" class="form-control" id="rollNo"  type="hidden">
                                </div>
                                <div class="row">
                                    <div class="col-sm-5 offset-sm-1">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">B. Tech. Percentage <sub id="error">( Not Mandatory)</sub></label>
                                            <input name="btechPercentage" id="btechPercentage" type="text" class="form-control" placeholder="Overall B.Tech. Percentage...">
                                        </div>
                                    </div>
                                    <div class="col-sm-5">
                                        <h5 class="form-control-label offset-sm-3">Upload Certificate</h5>
                                        <div class="picture-container">
                                            <div class="picture">
                                                <g:img src="default-icon.png" class="picture-src" id="btechMarksheetPreview" title=""/>
                                            </div>
                                        </div>
                                        <input type="file" id="btechMarksheet" class="offset-sm-3" name="btechMarksheet" accept="image/jpeg"/>
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-5 offset-sm-1">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">1<sup>st</sup> Semester Percentage </label>
                                            <input name="firstSemesterMarks" id="firstSemesterMarks" type="text" class="form-control" placeholder="Enter your name....">
                                        </div>
                                    </div>
                                    <div class="col-sm-5">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">2<sup>nd</sup> Semester Percentage </label>
                                              <input name="secondSemesterMarks" id="secondSemesterMarks" type="text" class="form-control" placeholder="Enter training session...">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-5 offset-sm-1">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">3<sup>rd</sup> Semester Percentage </label>
                                            <input name="thirdSemesterMarks" id="thirdSemesterMarks" type="text" class="form-control" placeholder="Roll no...">
                                        </div>
                                    </div>
                                    <div class="col-sm-5">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">4<sup>th</sup> Semester Percentage </label>
                                            <input name="fourthSemesterMarks" id="fourthSemesterMarks" type="text" class="form-control" placeholder="Company name...">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-5 offset-sm-1">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">5<sup>th</sup> Semester Percentage </label>
                                            <input name="fifthSemesterMarks" id="fifthSemesterMarks" type="text" class="form-control" placeholder="Comapny city name...">
                                        </div>
                                    </div>
                                    <div class="col-sm-5">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">6<sup>th</sup> Semester Percentage </label>
                                            <input name="sixthSemesterMarks" id="sixthSemesterMarks" type="text" class="form-control" placeholder="Title of your project...">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-5 offset-sm-1">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">7<sup>th</sup> Semester Percentage </label>
                                            <input name="seventhSemesterMarks" id="seventhSemesterMarks" type="text" class="form-control" placeholder="Project mentor name...">
                                        </div>
                                    </div>
                                    <div class="col-sm-5">
                                        <div class="form-group label-floating">
                                            <label class="form-control-label">8<sup>th</sup> Semester Percentage  </label>
                                            <input name="eightSemesterMarks" id="eightSemesterMarks" type="text" class="form-control" placeholder="Area of project...">
                                        </div>
                                    </div>
                                </div>
                                <hr>
                                
                            
                                <input type="submit" class="btn btn-success pull-right" value="Upload">
                            
                        </form>
                        </div>
                    </div>




                </div>


            </div>
        </div>
    </div>






</body>
</html>
