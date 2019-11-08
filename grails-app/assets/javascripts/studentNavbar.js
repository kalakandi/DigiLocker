/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$("#coCurriculumCertificate").change(function () {
    readCoCurriculumCertificate(this);
});
function readCoCurriculumCertificate() {
    var fileInput = document.getElementById('coCurriculumCertificate');
    var filePath = fileInput.value;
    var allowedExtensions = /(\.jpg|\.jpeg)$/i;
    if(!allowedExtensions.exec(filePath)){
        alert('Please upload file having extensions .jpg/.jpeg only.');
        fileInput.value = '';
        return false;
    }else{
        //Image preview
        if (fileInput.files && fileInput.files[0]) {
            var reader = new FileReader();
            reader.onload = function(e) {
                $('#coCurriculumCertificatePreview').attr('src', e.target.result).fadeIn('slow');
            },
            reader.readAsDataURL(fileInput.files[0]);
        }
    }
}
$("#trainingInternshipCertificate").change(function () {
    readTrainingInternshipCertificate(this);
});
function readTrainingInternshipCertificate() {
    var fileInput = document.getElementById('trainingInternshipCertificate');
    var filePath = fileInput.value;
    var allowedExtensions = /(\.jpg|\.jpeg)/;
    if(!allowedExtensions.exec(filePath)){
        alert('Please upload file having extensions .jpg/.jpeg only.');
        fileInput.value = '';
        return false;
    }else{
        //Image preview
        if (fileInput.files && fileInput.files[0]) {
            var reader = new FileReader();
            reader.onload = function(e) {
                $('#trainingInternshipCertificatePreview').attr('src', e.target.result).fadeIn('slow');
            },
            reader.readAsDataURL(fileInput.files[0]);
        }
    }
}
$("#btechMarksheet").change(function () {
    readBtechMarksheet(this);
});
function readBtechMarksheet() {
    var fileInput = document.getElementById('btechMarksheet');
    var filePath = fileInput.value;
    var allowedExtensions = /(\.jpg|\.jpeg)/;
    if(!allowedExtensions.exec(filePath)){
        alert('Please upload file having extensions .jpeg only.');
        fileInput.value = '';
        return false;
    }else{
        //Image preview
        if (fileInput.files && fileInput.files[0]) {
            var reader = new FileReader();
            reader.onload = function(e) {
                $('#btechMarksheetPreview').attr('src', e.target.result).fadeIn('slow');
            },
            reader.readAsDataURL(fileInput.files[0]);
        }
    }
}


jQuery.validator.addMethod("lettersonly", function (value, element) {
    return this.optional(element) || /^[a-z\s]+$/i.test(value);
}, $.validator.messages.lettersonly = 'only alphabets are allowed');

jQuery.validator.addMethod("filesize", function (value, element, param) {
    return this.optional(element) || (element.files[0].size <= param);
}, 'File size must be less than 1 MB');

jQuery.validator.addMethod("extension", function(value, element, param) {
	param = typeof param === "string" ? param.replace(/,/g, '|') : "jpg";
	return this.optional(element) || value.match(new RegExp(".(" + param + ")$", "i"));
}, 'Please enter a value with a valid extension.');

$('[data-toggle="checkbox"]').click(function () {
    if ($(this).hasClass('active')) {
        $(this).removeClass('active');
        $(this).find('[type="checkbox"]').removeAttr('checked');
    } else {
        $(this).addClass('active');
        $(this).find('[type="checkbox"]').attr('checked', 'true');
    }
});


$('#btechMarksheetForm').validate({
    rules: {
        session: {
            required: true,
            digitsonly: true
        },
        branch: {
            required: true
        },
        studentName: {
            required: true,
            minlength: 2,
            lettersonly: true
        },
        year: {
            required: true
        },
        rollNumber: {
            required: true,
            minlength: 9,
            maxlength: 10,
            digitsonly: true
        },
        companyName: {
            required: true,
            minlength: 3,
            lettersonly: true
        },
        city: {
            required: true,
            minlength: 3,
            lettersonly: true
        },
        projectTitle: {
            required: true,
            minlength: 3,
            lettersonly: true
        },
        mentorName: {
            required: true,
            minlength: 3,
            lettersonly: true
        },
        areaOfProject: {
            required: true,
            minlength: 3,
            lettersonly: true
        },
        trainingInternshipCertificate: {
            required: true,
            filesize: 1048576
        }

    },
    messages: {

        session: {
            required: "This field is Mandatory"
        },
        branch: {
            required: "This field is Mandatory"
        },
        studentName: {
            required: "This field is Mandatory",
            minlength: "Please enter a valid value",
            lettersonly: "Only Alphabets Allowed"
        },
        year: {
            required: "This field is Mandatory"
        },
        rollNumber: {
            required: "This field is Mandatory",
            minlength: "Please enter a valid value",
            maxlength: "Please enter a valid value",
            digitsonly: "Only Numbers Allowed"
        },
        companyName: {
            required: "This field is Mandatory",
            minlength: 3,
            lettersonly: "Only Alphabets Allowed"
        },
        city: {
            required: "This field is Mandatory",
            minlength: "Please enter a valid value",
            lettersonly: "Only Alphabets Allowed"
        },
        projectTitle: {
            required: "This field is Mandatory",
            minlength: "Please enter a valid value",
            lettersonly: "Only Alphabets Allowed"
        },
        mentorName: {
            required: "This field is Mandatory",
            minlength: "Please enter a valid value",
            lettersonly: "Only Alphabets Allowed"
        },
        areaOfProject: {
            required: "This field is Mandatory",
            minlength: "Please enter a valid value",
            lettersonly: "Only Alphabets Allowed"
        },
        trainingInternshipCertificate: {
            required: "This field is Mandatory",
            filesize: "Maximum file size is 1 MB"
        }
    },
    highlight: function (element) {
        $(element).parent().addClass('has-error');
    },
    unhighlight: function (element) {
        $(element).parent().removeClass('has-error');
    },
    submitHandler: function (form) {
        form.submit();
    }
});

$('#trainingAndInternshipForm').validate({
    rules: {
        session: {
            required: true,
            digitsonly: true
        },
        branch: {
            required: true
        },
        studentName: {
            required: true,
            minlength: 2,
            lettersonly: true
        },
        year: {
            required: true
        },
        rollNumber: {
            required: true,
            minlength: 9,
            maxlength: 10,
            digitsonly: true
        },
        companyName: {
            required: true,
            minlength: 3,
            lettersonly: true
        },
        city: {
            required: true,
            minlength: 3,
            lettersonly: true
        },
        projectTitle: {
            required: true,
            minlength: 3,
            lettersonly: true
        },
        mentorName: {
            required: true,
            minlength: 3,
            lettersonly: true
        },
        areaOfProject: {
            required: true,
            minlength: 3,
            lettersonly: true
        },
        trainingInternshipCertificate: {
            required: true,
            filesize: 1048576
        }

    },
    messages: {

        session: {
            required: "This field is Mandatory"
        },
        branch: {
            required: "This field is Mandatory"
        },
        studentName: {
            required: "This field is Mandatory",
            minlength: "Please enter a valid value",
            lettersonly: "Only Alphabets Allowed"
        },
        year: {
            required: "This field is Mandatory"
        },
        rollNumber: {
            required: "This field is Mandatory",
            minlength: "Please enter a valid value",
            maxlength: "Please enter a valid value",
            digitsonly: "Only Numbers Allowed"
        },
        companyName: {
            required: "This field is Mandatory",
            minlength: 3,
            lettersonly: "Only Alphabets Allowed"
        },
        city: {
            required: "This field is Mandatory",
            minlength: "Please enter a valid value",
            lettersonly: "Only Alphabets Allowed"
        },
        projectTitle: {
            required: "This field is Mandatory",
            minlength: "Please enter a valid value",
            lettersonly: "Only Alphabets Allowed"
        },
        mentorName: {
            required: "This field is Mandatory",
            minlength: "Please enter a valid value",
            lettersonly: "Only Alphabets Allowed"
        },
        areaOfProject: {
            required: "This field is Mandatory",
            minlength: "Please enter a valid value",
            lettersonly: "Only Alphabets Allowed"
        },
        trainingInternshipCertificate: {
            required: "This field is Mandatory",
            filesize: "Maximum file size is 1 MB"
        }
    },
    highlight: function (element) {
        $(element).parent().addClass('has-error');
    },
    unhighlight: function (element) {
        $(element).parent().removeClass('has-error');
    },
    submitHandler: function (form) {
        form.submit();
    }
});

$('#coCurriculumForm').validate({
    rules: {
        status: {
            required: true
        },
        category: {
            required: true
        },
        eventOrganizer: {
            required: true,
            minlength: 2
        },
        coCurriculumCertificate: {
            required: true,
            filesize: 1048576
        },
        position: {
            required: true
        }

    },
    messages: {
        status: {
            required: "This field is Mandatory"
        },
        category: {
            required: "This field is Mandatory"
        },
        eventOrganizer: {
            required: "This field is Mandatory",
            minlength: "Enter a Valid Name"
        },
        coCurriculumCertificate: {
            required: "This field is Mandatory",
            filesize: "Maximum file size is 1 MB"
        },
        position: {
            required: "This field is Mandatory"
        }
    },
    errorPlacement: function (error, element) {
        if (element.attr("name") == "status") {
            error.insertAfter("#statusLabel");
        }
        if (element.attr("name") == "category") {
            error.insertAfter("#categoryLabel");
        }
        if (element.attr("name") == "position") {
            error.insertAfter("#positionLabel");
        }
        if (element.attr("name") == "eventOrganizer") {
            error.insertAfter("#eventOrganizerLabel");
        }
        if (element.attr("name") == "coCurriculumCertificate") {
            error.insertAfter("#certificateLabel");
        }
    },
    highlight: function (element) {
        $(element).parent().addClass('has-error');
    },
    unhighlight: function (element) {
        $(element).parent().removeClass('has-error');
    },
    submitHandler: function (form) {
        form.submit();
    }
});