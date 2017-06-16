<%@ Import Namespace="System.Configuration" %>
<%@ Control Language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="dnn" TagName="STYLES" Src="~/Admin/Skins/Styles.ascx" %>
<%@ Register TagPrefix="dnn" TagName="CURRENTDATE" Src="~/Admin/Skins/CurrentDate.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LANGUAGE" Src="~/Admin/Skins/Language.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGO" Src="~/Admin/Skins/Logo.ascx" %>
<%@ Register TagPrefix="dnn" TagName="SEARCH" Src="~/Admin/Skins/Search.ascx" %>
<%@ Register TagPrefix="dnn" TagName="USER" Src="~/Admin/Skins/User.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGIN" Src="~/Admin/Skins/Login.ascx" %>
<%@ Register TagPrefix="dnn" TagName="PRIVACY" Src="~/Admin/Skins/Privacy.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TERMS" Src="~/Admin/Skins/Terms.ascx" %>
<%@ Register TagPrefix="dnn" TagName="BREADCRUMB" Src="~/Admin/Skins/BreadCrumb.ascx" %>
<%@ Register TagPrefix="dnn" TagName="COPYRIGHT" Src="~/Admin/Skins/Copyright.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LINKTOMOBILE" Src="~/Admin/Skins/LinkToMobileSite.ascx" %>
<%@ Register TagPrefix="dnn" TagName="META" Src="~/Admin/Skins/Meta.ascx" %>
<%@ Register TagPrefix="dnn" TagName="MENU" Src="~/DesktopModules/DDRMenu/Menu.ascx" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>
<%@ Register TagPrefix="dnn" TagName="jQuery" Src="~/Admin/Skins/jQuery.ascx" %>

<dnn:META ID="META1" runat="server" Name="viewport" Content="width=device-width,initial-scale=1" />

<%--<link href="<%#SkinPath %>/css/myStyles.css" type="text/css" rel="stylesheet">--%>

<!--[if lt IE 9]>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->
<a href="#" id="scroll" title="Scroll to Top" style="display: none;">Top<span></span></a>
<div id="siteWrapper">

    <!-- UserControlPanel  -->
    <div id="topHeader">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div id="search-top" class="pull-right small-screens hidden-sm hidden-md hidden-lg">
                        <dnn:SEARCH ID="dnnSearch2" runat="server" ShowSite="false" ShowWeb="false" EnableTheming="true" Submit="Search" CssClass="SearchButton" />
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="language">
                        <dnn:LANGUAGE runat="server" ID="LANGUAGE1" ShowMenu="False" ShowLinks="True" />
                    </div>
                    <div class="search hidden-xs">
                        <dnn:SEARCH ID="dnnSearch" runat="server" ShowSite="false" ShowWeb="false" EnableTheming="true" Submit="Search" CssClass="SearchButton" />
                    </div>
                    <%-- search action for Search function on small devices --%>
                    <a href="#" id="search-action">
                        <img src="<% =SkinPath %>images/search-icon.png" alt="Zoeken">
                    </a>
                    <div id="login" class="pull-right">
                        <dnn:LOGIN ID="dnnLogin" CssClass="LoginLink" runat="server" LegacyMode="false" />
                        <dnn:USER ID="dnnUser" runat="server" LegacyMode="false" />
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!--Header -->
    <header role="banner">
        <div id="mainHeader-inner" class="container">
            <div class="clearfix"></div>
            <div class="navbar navbar-inverse navbar-static-top" role="navigation">
                <div id="navbar-top-wrapper">
                    <%--<div id="logo">
                        <span class="brand">
                            <dnn:LOGO runat="server" ID="dnnLOGO" />
                        </span>
                    </div>--%>
                </div>
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>
                <div id="navbar" class="collapse navbar-collapse pull-right">
                    <dnn:MENU ID="MENU" MenuStyle="Menus/MainMenu" runat="server" NodeSelector="*"></dnn:MENU>
                </div>
            </div>
        </div>
    </header>

    <!-- Page Content -->
    <div class="container">
        <main role="main">
            <div class="row dnnpane">
                <div id="HeaderPane" class="col-md-12 headerPane" runat="server"></div>
            </div>
            <div id="mainContent-inner">
                <div class="row dnnpane">
                    <div id="ContentPane" class="col-md-12 contentPane" runat="server"></div>
                </div>
                <div class="row dnnpane">
                    <div id="ContentPane1" class="col-md-12 contentPane" runat="server"></div>
                </div>

                <div class="row dnnpane">
                    <div id="P1_75_1" class="col-md-8 spacingTop" runat="server"></div>
                    <div id="P1_25_2" class="col-md-4 spacingTop" runat="server"></div>
                </div>

                <div class="row dnnpane">
                    <div id="P2_25_1" class="col-md-4 spacingTop" runat="server"></div>
                    <div id="P2_75_2" class="col-md-8 spacingTop" runat="server"></div>
                </div>

                <div class="row dnnpane">
                    <div id="P3_33_1" class="col-md-4 spacingTop" runat="server"></div>
                    <div id="P3_33_2" class="col-md-4 spacingTop" runat="server"></div>
                    <div id="P3_33_3" class="col-md-4 spacingTop" runat="server"></div>
                </div>

                <div class="row dnnpane">
                    <div id="ContentPaneLower" class="col-md-12 contentPane spacingTop" runat="server"></div>
                </div>
            </div>
            <!-- /.mainContent-inner -->
        </main>
        <!-- /.mainContent -->
    </div>
    <!-- /.container -->

    <!-- Footer -->
    <footer role="contentinfo">

        <div class="container">
            <p class="col-xs-12 col-sm-12 col-md-12">Copyright &copy;2016 American College of Radiology</p>
        </div>
    </footer>
    
</div>
<div class="modal"><!-- Place at bottom of page --></div>

<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
<%--<script type='text/javascript' src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>--%>
<link href="<%#SkinPath %>/Css/jquery-ui.css" rel="stylesheet" />
<link href="<%#SkinPath %>/Css/multiselect/jquery.multiselect.css" rel="stylesheet" />
<link href="<%#SkinPath %>/Css/multiselect/jquery.multiselect.filter.css" rel="stylesheet" />

<link href="<%#SkinPath %>/Css/myStyles.css" rel="stylesheet" />
<%--<link href="<%#SkinPath %>/Js/vendor/jquery.min.js" type="text/javascript"></link>--%>
<script href="<%#SkinPath %>/Js/vendor/jquery.min.js" type="text/javascript"></script>
<script src="<%#SkinPath %>/Js/vendor/jquery-ui-1.12.0.min.js" type="text/javascript"></script>

<script src="<%#SkinPath %>/Bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="<%#SkinPath %>/Js/vendor/holder.min.js" type="text/javascript"></script>
<script src="<%#SkinPath %>/Js/ie10-viewport-bug-workaround.js" type="text/javascript"></script>

<script src="<%#SkinPath %>/Js/multiselect/jquery.multiselect.js" type="text/javascript"></script>
<script src="<%#SkinPath %>/Js/multiselect/jquery.multiselect.filter.js" type="text/javascript"></script>





<script type="text/javascript">     
    var Activity = '',         
           selectedMeasures = [],
           selectedActivity = [],
           selectedWeight = [],
           Addremove = [],
           ServerUrl = "http://localhost:82";

    var gblselectedMeasuresCount = 0;
    var gblselectedOutcomeCoumt = 0;
    var gblselectedPriorityCount = 0;
    var Total_Bonus_Point = 0;

    var globalVarCount = 0;
      
    $(window).scroll(function () {
        if ($(this).scrollTop() > 100) {
            $('#scroll').fadeIn();
        } else {
            $('#scroll').fadeOut();
        }
    });

    $('#scroll').click(function () {
        $("html, body").animate({ scrollTop: 0 }, 600);
        return false;
    });

    $(document).ready(function () {       
       
        GetAllActivitiesList();
        $.ajax({

            url: ServerUrl + "/api/mips/GetActivities",
            type: "GET",
            dataType: 'json',
            success: function (data) {
                var html = '';
                for (var i = 0; i < data.length; i++) {
                    html += '<div><label><div style="float: left; margin-right: 2px;"><input type="checkbox" category="Activity" id="' + data[i].Id + '" onclick="MeasureTypes(this,event)" /></div>' + data[i].SubcategoryName + '</label></div>';
                }
                $('#Activity').empty().append(html);
                $('input[name="accordion-1"]').trigger('click');
            },
            error: function (xhr, ajaxOptions, thrownError) {
                console.log(xhr.responseText);
            }
        })

        //Add all measures click event
        $('#addall').on('click', function () {
            $('.modal').show();
            $.each($('.buttonBlock').find(':checkbox'), function (index, value) {
                if (!$(this).is(':checked')) {
                    $(this).trigger('click');
                }
            });
            $('.alert-success').text("").text($('.buttonBlock').find(':checkbox').length + " Measures Added");
            $('#hideclearall').show();
            setTimeout(function () {
                $('.modal').hide();
            }, 2000);
           
        });
        //End
    });
    function removemeasure(ctrl) {
        $('.buttonBlock').find(':checkbox[id=' + $(ctrl).parent().data("id") + ']').trigger('click');
        if ($('.buttonBlock').find(':checkbox[id=' + $(ctrl).parent().data("id") + ']').length == 0) {
            Addremove = $.grep(Addremove, function (n) {
                return (n != $(ctrl).parent().data("id"));
            });
        }
        $(ctrl).parent().remove();
        CalculateMeasures();
    }

    function ClearAllSelections() {
        $('.addedmeasures').empty();
        $('.alert-success').text("").text("0 Measures Added");
        Addremove = [];
        $.each($('.buttonBlock').find(':checkbox'), function (index, value) {
            if ($(this).is(':checked')) {
                $(this).trigger('click');
            }
        });

    }

    function deleteMeasure(data) {
        var checkboxID = $(data).parent().attr('id');
        $('input[type="checkbox"][id="' + checkboxID + '"]').trigger('click');        
        data.parentElement.remove();
    }

    function bindingSelectedvalues(selectedvalues, checkBoxValue,Ischecked) {
        if (Ischecked && $.inArray(checkBoxValue, selectedvalues) <= 0) {
            selectedvalues.push(checkBoxValue);
        }
        else if ($.inArray(checkBoxValue, selectedvalues) > 0 || !Ischecked) {
            selectedvalues = $.grep(selectedvalues, function (value) {
                return value != checkBoxValue;
            });
        }
        return selectedvalues;
    }

    function MeasureTypes(Ctrl, event, ui) {
	    $('#divBelowBonusPoint').html('');
	    var checkBoxValue = Ctrl.attributes.id.value,
	        category = Ctrl.attributes.category.value.toUpperCase();
	    if (category == "Activity".toUpperCase()) {
	        selectedActivity = bindingSelectedvalues(selectedActivity, checkBoxValue, Ctrl.checked);
        }
	    if (category == "Weighing".toUpperCase()) {
	        selectedWeight = bindingSelectedvalues(selectedWeight, checkBoxValue, Ctrl.checked);
        }
        if (Ctrl.checked) {
            $("#selectedMeasures").append('<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 no-padding" id="' + checkBoxValue + '"><label>' + $(Ctrl).closest('label').text() + '</label><button class="btn btn-danger pull-right btn-xs" type="button" onclick="deleteMeasure(this)">X</button>');
        }
        else {
            $('#'+checkBoxValue.replace(/ /g, '-')).remove();
        }
        getFilteredActivities(selectedActivity.toString(), selectedWeight.toString());
        
    }

    function ClearAll() {
            $('.chkBoxes').children().find(":checkbox:checked").attr("checked", false);
            $('#selectedMeasures').children().remove();
            GetAllActivitiesList();
            $('#clear').attr("disabled", true);
            selectedActivity = []; selectedWeight=[];
    }

    function ResetTotal() {
        gblselectedMeasuresCount =gblselectedOutcomeCoumt=gblselectedPriorityCount =0;
        $('#lblTotalOutComes,#lblTotalPrioritys,#lblTotalMeasures,#divBonusPoint').text('');
    }

    function getFilteredActivities(chkActivity, chkWeight)
    {
        //gblselectedMeasuresCount = 0;
        if ((chkActivity == "") && (chkWeight == "")) {
            $('.buttonBlock').html('');
            $('#divBonusPoint').html('');
            $('#divAboveBonusPoint').html('');
            ResetTotal();
            $('#ShowTotal').find('p b').text('Total Measures meeting criteria : ' + 0);
            alert("No Activity Found.");
            $('#clear').attr("disabled", "disabled");
            GetAllActivitiesList();
        }
        else {
            var obj = {
                Sc: chkActivity,
                Wt: chkWeight
            };
            $.ajax({

                url: ServerUrl + "/api/mips/GetActivitiesList",
                type: "GET",
                data: obj,
                dataType: 'json',
                success: function (data) {
                    if ((data != null) && (data.length) && (data != "")) {
                        ResetTotal();
                        $('#divAboveBonusPoint,#divBelowBonusPoint,.buttonBlock').html('');
                        ShowTotal(data.length);
                        $.each(data, function (key, value)
                        {
                            var x = "<div class='div-border mydiv col-xs-12 col-sm-12 col-md-12 col-lg-12 paddingTB10 marginBot10'>";
                            x = x + "<div class='col-xs-12 col-sm-10 col-md-10 col-lg-10 no-padding measureData'><p>" + value.ActivityName + "</p><p><em>" + value.Description + "</em></p></div>";
                            x = x + "<div class='col-xs-12 col-sm-2 col-md-2 col-lg-2 no-padding text-right'><label class='switch'>";
                            x = x + "<input class='switch-input' id='" + value.ActivityID + "'type='checkbox' onclick='TotalMeasures(this);'/>  <div class='slider'></div>";
                            //x = x + "<input type='hidden' id='hdntypecode" + value.MeasureNumber.replace(/ /g, '_')+"' value='" + value.measureTypeCode + "' />";
                            //x = x + "<input type='hidden' id='hdnpriority" + value.MeasureNumber.replace(/ /g, '_') +"' value='" + value.measure_priority + "' />";
                            x = x + "</label><a href='#' style='color:green' class='myanchor' onclick='return readmoreclick(this)'>read more...</a></div></div>";
                            x = x + "<div style='display:none' class='actdiv div-border col-xs-12 col-sm-12 col-md-12 col-lg-12 paddingTB10 marginBot10'><div class='row'>";
                            x = x + "<div class='innerACR'>";
                            x = x + '<div class="row row-eq-height no-padding box-shadow margin0"> <div class="col-xs-12 col-sm-4 col-md-4"> <div class="media-body"> <h3>Activity ID</h3> <p>' + value.ActivityID + '</p> </div> </div> <div class="col-xs-12 col-sm-4 col-md-4"> <div class="media-body"> <h3>Subcategory Name </h3> <p>' + value.SubcategoryName + '</p> </div> </div> <div class="col-xs-12 col-sm-4 col-md-4"> <div class="media-body"> <h3>Activity Weighing</h3> <p>' + value.Weighing + '</p> </div> </div> </div>';
                            x = x + "<section class='ac-container'>";
                            var result = Math.floor(1000 + Math.random() * 9000);
                            x = x + "<div><input id='acr-" + result + "' type='checkbox' /> <label class='mLabel' for='acr-" + result + "'>Description</label><article class='ac-xs'><div class='chkBoxes' id='Description'>" + value.ActivityDescription + "</div></article></div>";
                            var result1 = Math.floor(1000 + Math.random() * 9000);
                            x = x + "<div><input id='acr-" + result1 + "' type='checkbox' /> <label class='mLabel' for='acr-" + result1 + "'>Validation</label><article class='ac-sm'><div class='chkBoxes' id='Validation'>" + value.Validations + "</div></article></div>";
                            var result2 = Math.floor(1000 + Math.random() * 9000);
                            x = x + '<div><input id="acr-' + result2 + '" type="checkbox" /> <label class="mLabel" for="acr-' + result2 + '">CMS Suggested Documentations</label><article class="ac-lg"><div class="chkBoxes" id="Cmssd">' + value.CMSsuggesteddocuments + '</div></article></div>';
                            var result3 = Math.floor(1000 + Math.random() * 9000);
                            x = x + '<div><input id="acr-' + result3 + '" type="checkbox" /> <label class="mLabel" for="acr-' + result3 + '">ACR Suggested Activities</label><article class="ac-smlst"><div class="chkBoxes" id="ACRsa">' + value.ACRsuggesteddocuments + '</div></article></div>';
                            x = x + '</section></div></div></div>';
                            $('.buttonBlock').append(x);
                        });
                        $.each(Addremove, function (index, value) {
                            $('#' + value + '').trigger('click');
                        });
                        $('#clear').attr("disabled", false);
                       
                    }
                    else {
                        $('#divAboveBonusPoint,#divBelowBonusPoint,.buttonBlock').html('');
                        $('#ShowTotal').find('p b').text('Total Measures meeting criteria : ' + 0);                       
                        alert("No Activity Found.");
                    }
                    CalculateMeasures();                    
                },
                error: function (xhr, ajaxOptions, thrownError) {
                }
            });
        }
    }

    $('#getAllActivities').click(function () {
        ClearAll();
        GetAllActivitiesList();
        setTimeout(function () {
            $('#clear').attr("disabled", "disabled")},500);
    });

    function readmoreclick(ctrl) {
        $('.actdiv:visible').hide();
        $(ctrl).parents('.mydiv').next('.actdiv').show();
        return false;

    }
    function CalculateMeasures() {
        var highPriority = ($('.addedmeasures').find(':hidden[value="!!"]').length + $('.addedmeasures').find(':hidden[value="!"]').length),
            totalOutcome = $('.addedmeasures').find(':hidden[value="OC"]').length,
            totalMeasures = Addremove.length;
        $('.alert-success').text("").text(Addremove.length + " Measures Added");
        $('#lblTotalOutComes').text(totalOutcome>0?totalOutcome:"");
        $('#lblTotalMeasures').text(totalMeasures>0?totalMeasures:"");
        $('#lblTotalPrioritys').text(highPriority>0?highPriority:"");
        if (totalMeasures<6) {
            $('#lblTotalMeasures').addClass('lblTotalMeasuresClass');
        }
        else {
            $('#lblTotalMeasures').removeClass('lblTotalMeasuresClass').addClass('lblGreen');
        }
    }

    function GetAllActivitiesList() {
        $.ajax({

            url: ServerUrl + "/api/mips/GetAllActivitiesList",
            type: "GET",
            dataType: 'json',
            success: function (data) {
              
                if (data != null) {
                    ResetTotal();
                    $('#divAboveBonusPoint,#divBelowBonusPoint,.buttonBlock').html('');
                    ShowTotal(data.length);
                    $.each(data, function (key, value) {
                        var x = "<div class='div-border mydiv col-xs-12 col-sm-12 col-md-12 col-lg-12 paddingTB10 marginBot10'>";
                        x = x + "<div class='col-xs-12 col-sm-10 col-md-10 col-lg-10 no-padding measureData'><p>" + value.ActivityName + "</p><p><em>" + value.Description + "</em></p></div>";
                        x = x + "<div class='col-xs-12 col-sm-2 col-md-2 col-lg-2 no-padding text-right'><label class='switch'>";
                        x = x + "<input class='switch-input' id='" + value.ActivityID + "'type='checkbox' onclick='TotalMeasures(this);'/>  <div class='slider'></div>";
                        //x = x + "<input type='hidden' id='hdntypecode" + value.MeasureNumber.replace(/ /g, '_')+"' value='" + value.measureTypeCode + "' />";
                        //x = x + "<input type='hidden' id='hdnpriority" + value.MeasureNumber.replace(/ /g, '_') +"' value='" + value.measure_priority + "' />";
                        x = x + "</label><a href='#' style='color:green' class='myanchor' onclick='return readmoreclick(this)'>read more...</a></div></div>";
                        x = x + "<div style='display:none' class='actdiv div-border col-xs-12 col-sm-12 col-md-12 col-lg-12 paddingTB10 marginBot10'><div class='row'>";
                        x = x + "<div class='innerACR'>";
                        x = x + '<div class="row row-eq-height no-padding box-shadow margin0"> <div class="col-xs-12 col-sm-4 col-md-4"> <div class="media-body"> <h3>Activity ID</h3> <p>' + value.ActivityID + '</p> </div> </div> <div class="col-xs-12 col-sm-4 col-md-4"> <div class="media-body"> <h3>Subcategory Name </h3> <p>' + value.SubcategoryName + '</p> </div> </div> <div class="col-xs-12 col-sm-4 col-md-4"> <div class="media-body"> <h3>Activity Weighing</h3> <p>' + value.Weighing + '</p> </div> </div> </div>';
                        x = x + "<section class='ac-container'>";
                        var result = GetRandomNumber(4);
                        x = x + "<div><input id='acr-" + result + "' type='checkbox' /> <label class='mLabel' for='acr-" + result + "'>Description</label><article class='ac-xs'><div class='chkBoxes' id='Description'>" + value.ActivityDescription + "</div></article></div>";
                        var result1 = GetRandomNumber(4);
                        x = x + "<div><input id='acr-" + result1 + "' type='checkbox' /> <label class='mLabel' for='acr-" + result1 + "'>Validation</label><article class='ac-sm'><div class='chkBoxes' id='Validation'>" + value.Validations + "</div></article></div>";
                        var result2 = GetRandomNumber(4);
                        x = x + '<div><input id="acr-' + result2 + '" type="checkbox" /> <label class="mLabel" for="acr-' + result2 + '">CMS Suggested Documentations</label><article class="ac-lg"><div class="chkBoxes" id="Cmssd">' + value.CMSsuggesteddocuments + '</div></article></div>';
                        var result3 = GetRandomNumber(4);
                        x = x + '<div><input id="acr-' + result3 + '" type="checkbox" /> <label class="mLabel" for="acr-' + result3 + '">ACR Suggested Activities</label><article class="ac-smlst"><div class="chkBoxes" id="ACRsa">' + value.ACRsuggesteddocuments + '</div></article></div>';
                        x = x + '</section></div></div></div>';
                        $('.buttonBlock').append(x);
                    });
                    $.each(Addremove, function (index, value) {
                        $('#' + value + '').trigger('click');             
                    });
                }
            },
            error: function (xhr, ajaxOptions, thrownError) {
            }
        });

    }

    function GetRandomNumber(length) {

        return ("" + Math.random()).substr(2, length);
    };

    function ShowTotal(count)
    {
        if(count > 0)
        {
            // Total Measures meeting criteria: count
            $('#ShowTotal').find('p b').text('Total Measures meeting criteria : ' + count);
        }
        else
        {
            // search found no resu.
            $('#ShowTotal').find('p b').text('Total Measures meeting criteria : ' + count);
        }
    }
    
    function TotalMeasures(Ctrl) {

        $('#lblTotalMeasures').removeClass('lblTotalMeasuresClass');
        $('#lblTotalMeasures').removeClass('lblGreen');
        $('#divAboveBonusPoint,#divBelowBonusPoint').html('');
        if ($(Ctrl).is(":checked")) {
            if ($.inArray(Ctrl.attributes.id.value, Addremove) < 0) {
                Addremove.push(Ctrl.attributes.id.value);
            }
            $('.addedmeasures').find("[data-id='" + Ctrl.attributes.id.value + "']").remove();
            var addedMeasure = $(Ctrl).parents().children().closest('.measureData').find('p').eq(0).text() == "" ? $(Ctrl).parents().children().closest('.measureData').find('a').text() : $(Ctrl).parents().children().closest('.measureData').find('p').eq(0).text();
            var html = "<div class='measure-item' data-id='" + Ctrl.attributes.id.value + "'><p>" + addedMeasure + "</p><button type='button' class='js-remove-self remove-self' onclick=removemeasure(this)></button><input type=hidden value='" + $(Ctrl).parent().find('input[type="hidden"]').last().val() + "'/><input type=hidden value='" + $(Ctrl).parent().find('input[type="hidden"]').first().val() + "'/></div>";
            $('.addedmeasures').append(html);
            

        }
        else {
            Addremove = $.grep(Addremove, function (n) {
                return (n != Ctrl.attributes.id.value);
            });
            $('.addedmeasures').find("[data-id='" + Ctrl.attributes.id.value + "']").remove();
        }
        CalculateMeasures();
        if ($('.addedmeasures').children().length > 0) {
            $('#hideclearall').show();
        }
        else {
            $('#hideclearall').hide();
        }
    }

    $('#divQuality').click(function () {


        location.href = "/Calc/Calculator";
    });

    $('#divQualityCal').click(function () {
        location.href = "/Calculator2";     
    });
    
    $('#divImprovement').click(function () {
        location.href = "/Improvements";       
    });

   

    $('#divAdvancing').click(function () {

        alert("Advance page is in progress");

    });

    $('#divResource').click(function () {

        alert("Resource page is in progress");

    });

    $('.btnDone').click(function () {
        
        calculateBonus();

    });
    
    function calculateBonus(value)
    {
        $('#divAboveBonusPoint,#divBelowBonusPoint').html('');
        $('#lblTotalMeasures').removeClass('lblTotalMeasuresClass');
        $('#lblTotalMeasures').removeClass('lblGreen');

        var Bonus_Point = 0 ;
        var Outcome_Bonus_Point = 2;
        var High_Prioirty_Bonus_Point = 1;
        Total_Bonus_Point = 0;
        gblselectedOutcomeCoumt = parseInt($('#lblTotalOutComes').text() == "" ? 0 : $('#lblTotalOutComes').text());
        gblselectedMeasuresCount = parseInt($('#lblTotalMeasures').text() == "" ? 0 : $('#lblTotalMeasures').text());
        gblselectedPriorityCount = parseInt($('#lblTotalPrioritys').text() == "" ? 0 : $('#lblTotalPrioritys').text());
         if (gblselectedOutcomeCoumt > 0) {
  
             Total_Bonus_Point = ((gblselectedOutcomeCoumt - 1) * Outcome_Bonus_Point) + gblselectedPriorityCount;
            
             
        }
        else if (gblselectedPriorityCount > 0)
        {
            Total_Bonus_Point = ((gblselectedPriorityCount - 1) * High_Prioirty_Bonus_Point);
        }
        else {
            $('#divBelowBonusPoint').html('');
            if (gblselectedMeasuresCount == 0 && value!=1)
            {
                alert('No Activity Selected.');
            }
           
        }

        if (gblselectedMeasuresCount > 0 && gblselectedMeasuresCount < 6)
        {
           
            $('#divAboveBonusPoint').html("You have not selected enough measures to meet the full requirements; to review other options please visit the <a target='_blank' href='http://www.acr.org/Quality-Safety/National-Radiology-Data-Registry/Qualified-Clinical-Data-Registry'> QCDR</a> page.");
         
        }
        if (gblselectedMeasuresCount > 0 && Total_Bonus_Point == 0 && value != 1)
        {
            alert('Total Bonus points of calculation are: ' + Total_Bonus_Point);
        }
         if (Total_Bonus_Point > 0 )
         {
             $('#divBelowBonusPoint').html("With your selections you potentially would have <b>" + Total_Bonus_Point + "</b> bonus points (cap at 10% of total possible quality points; for most radiologists that is 6 points)");
                       
             if (value != 1) {

                 alert('Total Bonus points of calculation are: ' + Total_Bonus_Point);
             }
         }
         else if ((Total_Bonus_Point == 0) && (gblselectedMeasuresCount > 5) && value != 1)
         {
             alert("Your selections meet the CMS requirement.");
         }
         else {
             $('#divBelowBonusPoint').html('');
           
            //alert('No Points for selection');
         }


    }
    
    $('#getDownload').click(function () {
        var arr = [];

        if (Addremove.length > 0) {
            for (var i = 0; i < Addremove.length; ++i) {
                arr.push(Addremove[i].replace("_", " "));
            }
            var strSelectedMeasures = arr.join(",");
            calculateBonus(1);
            var obj =
                {
                    MC: gblselectedMeasuresCount,
                    OC: gblselectedOutcomeCoumt,
                    PC: gblselectedPriorityCount,
                    TBP: Total_Bonus_Point,
                    SM: strSelectedMeasures
                };
            var str = '/DesktopModules/DNNAPI/API/RoleSubScription/ExportToExcel?' + $.param(obj);
            window.open(str, '_self');
        }
        else {
            alert("Please select atleast one item.");
        }
    });
</script>
