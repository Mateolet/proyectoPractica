<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="Contacto.aspx.cs" Inherits="PracticaProfesional1.Contacto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 id="myrian"> M<sup>3</sup>  te sugiere que ingreses tus datos:</h2>
<div class="wrapper">
        <div class="logo">
            <img src="https://www.freepnglogos.com/uploads/twitter-logo-png/twitter-bird-symbols-png-logo-0.png" alt="">
        </div>
       
        <div class="text-center mt-4 name">
      
        </div>
        <form class="p-3 mt-3" runat="server">
        <asp:Label ID="Label1" runat="server" Text="Ingrese su nombre:"></asp:Label>
            
            <div class="form-field d-flex align-items-center">
<%-- <span class="far fa-user"></span>--%>
                <%--<input type="text" name="userName" id="userName" placeholder="Username">--%>
                              
                
                <asp:TextBox ID="username" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Text= "*" controltovalidate="username" runat="server" ErrorMessage="El campo no puede estar vacio" ForeColor="red"></asp:RequiredFieldValidator>
           
           
            </div>
            <asp:Label ID="Label2" runat="server" Text="Edad:"></asp:Label>
            <div class="form-field d-flex align-items-center">
               <%-- <span class="far fa-user"></span>--%>
                <%--<input type="text" name="userName" id="userName" placeholder="Username">--%>
               
               
                <asp:TextBox ID="edad" runat="server"></asp:TextBox>
                <asp:RangeValidator ID="RangeValidator1" runat="server" Text= "*" ControlToValidate="edad" MinimumValue=100 MaximumValue=18 ErrorMessage="No puede ser menor a 18"></asp:RangeValidator>
           
            </div>
            <asp:Label ID="Label3" runat="server" Text="Ingrese su contraseña"></asp:Label>

            <div class="form-field d-flex align-items-center">
               <%-- <span class="fas fa-key"></span>--%>
               
                <%--<input type="password" name="password" id="pwd" placeholder="Password">--%>
                
                <asp:TextBox ID="psw1" runat="server"  TextMode="Password"></asp:TextBox>
           </div>
          
           <asp:Label ID="Label4" runat="server" Text="Repita su contraseña:"></asp:Label>
           <div class="form-field d-flex align-items-center">
                <span class="fas fa-key"></span>
               
                <%--<input type="password" name="passwordB" id="PasswordB" placeholder="Password">--%>
               
               <asp:TextBox ID="psw2" runat="server"  TextMode="Password"></asp:TextBox>
               <asp:CompareValidator ID="CompareValidator1" Text="*" ForeColor="red" runat="server"  controltovalidate ="psw1" ControlToCompare= "psw2" ErrorMessage="Las contraseñas no coincide" ></asp:CompareValidator>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="El campo no puede quedar vacío" ControlToValidate="psw2"></asp:RequiredFieldValidator>
           </div>
           
            <button class="btn mt-3">Verificar</button>
        
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" forecolor="red"/>
        </form>
        <div class="text-center fs-6">
            <a href="#">Forget password?</a> or <a href="#">Sign up</a>
        </div>
    </div>


</div>
</asp:Content>
