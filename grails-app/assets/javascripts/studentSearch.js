/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function showX(param_div_id) {
    document.getElementById('CriteriaX').innerHTML = document.getElementById(param_div_id).innerHTML;
    document.getElementById('CriteriaX').style.backgroundColor = "#28a745";
    document.getElementById('colorX').style.backgroundColor = "#28a745";
    }
function showXii(param_div_id) {
    document.getElementById('CriteriaXii').innerHTML = document.getElementById(param_div_id).innerHTML;
    document.getElementById('CriteriaXii').style.backgroundColor = "#28a745";
    document.getElementById('colorXii').style.backgroundColor = "#28a745";
    
  }
function showBtech(param_div_id) {
    document.getElementById('CriteriaBtech').innerHTML = document.getElementById(param_div_id).innerHTML;
    document.getElementById('CriteriaBtech').style.backgroundColor = "#28a745";
    document.getElementById('colorBtech').style.backgroundColor = "#28a745";
    
  }



$('.inp').each(function() {
    var default_value = this.value;
    $(this).focus(function() {
        if(this.value == default_value) {
            this.value = '';
        }
    });
    $(this).blur(function() {
        if(this.value == '') {
            this.value = default_value;
        }
    });
});
