<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
            "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="s" uri="http://www.springframework.org/tags" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Goal</title>
        
        <style>
            .error {
                color: #ff0000;
            }
            .errorblock{
                color: #000;
                background-color: #ffeeee;
                border: 3px solid #ff0000;
                padding: 8px;
                margin: 16px;
            }
        </style>
        
    </head>
    <body>
        
        <f:form commandName="goal">
            <f:errors path="*" cssClass="errorblock" element="div" />
            <table>
                <tr>
                    <td>
                        Enter Minutes:
                    </td>
                    <td>
                        <f:input path="minutes" cssErrorClass="error"/>
                    </td>
                    <td>
                        <f:errors path="minutes" cssClass="error" />
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <input type="submit" value="Enter Goal Minutes"/>
                    </td>
                </tr>
            </table>
        </f:form>
        
    </body>
</html>
