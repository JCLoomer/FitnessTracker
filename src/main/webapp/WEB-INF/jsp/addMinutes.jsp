<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
            "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="s" uri="http://www.springframework.org/tags" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Minutes Page</title>
        <script type="text/javascript" src="jquery-3.2.1.js"></script>
        
        <script type="text/javascript">
            $(document).ready(
            function(){
                $.getJSON('<s:url value="activities.json"/>', {
                    ajax : true
                }, function(data){
                    var html = '<option value ="">--Please select one-- </option>';
                    var len = data.length;
                    for(var i = 0; i < len; i++){
                        html+= '<option value="' + data[i].desc + '">' + data[i].desc + '</option>';
                    }
                    html += '</option>';
                    $('#activities').html(html);
                });
            });
        </script>
        
    </head>
    <body>
        <h1>Add Minutes Exercised</h1>
        
        Language : <a href="?language=en">English</a> | <a href="?language=es">Spanish</a>
        
        <f:form commandName="exercise">
            <table>
                <tr>
                    <td>
                        <s:message code="goal.text" />
                    </td>
                    <td>
                        <f:input path="minutes"/>
                    </td>
                    <td>
                        <f:select path="activity" id="activities"></f:select>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <input type="submit" value ="Enter Exercise"/>
                    <td>
                </tr>
            </table>
        </f:form>
        
        <h1>Our goal for today is: ${goal.minutes} minutes.</h1>
    </body>
</html>