<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<f:view>
	<html xmlns="http://www.w3.org/1999/xhtml"
		xmlns:h="http://xmlns.jcp.org/jsf/html"
		xmlns:pt="http://xmlns.jcp.org/jsf/passthrough">
 
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Insert title here</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-image: url("fund2.jpg");
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            height: 100%;
        }
        .container {
            width: 50%;
            margin: 50px auto;
            background-color: rgba(255, 255, 255, 0.8);
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h1 {
            text-align: center;
            color: #333;
        }
        .form-group {
            margin-bottom: 20px;
        }
        label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }
        input[type="text"],
        select {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .btn {
            background-color: #4CAF50;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            width: 100%;
        }
        .btn:hover {
            background-color: #45a049;
        }
        .error-message {
            color: red;
        }
    </style>

</head>

<body>

			
			
			<h:form>
        <h:panelGrid columns="2">
            <h:outputLabel value="Donation Amount:" />
            <h:inputText value="#{fundraiserBean.donationAmount}" />
            
            <h:outputLabel value="Name:" />
            <h:inputText value="#{fundraiserBean.donorName}" />
            
            <h:outputLabel value="Email:" />
            <h:inputText value="#{fundraiserBean.donorEmail}" />
            
            <h:outputLabel value="Payment Method:" />
            <h:selectOneMenu value="#{fundraiserBean.paymentMethod}">
                <f:selectItem itemValue="Credit Card" itemLabel="Credit Card" />
                <f:selectItem itemValue="PayPal" itemLabel="PayPal" />
                <f:selectItem itemValue="Bank Transfer" itemLabel="Bank Transfer" />
            </h:selectOneMenu>
        </h:panelGrid>
        
        <h:commandButton value="Donate" action="#{fundraiserBean.processDonation}" />
    </h:form>
		
		
</body>
</html>
</f:view>