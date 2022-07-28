<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="Info_Med.HomePage" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style type="text/css">  
        .Background  
        {  
            background-color: Black;  
            filter: alpha(opacity=90);  
            opacity: 0.8;  
        }  
        .Popup  
        {  
            background-color: #FFFFFF;  
            border-width: 3px;  
            border-style: solid;  
            border-color: black;  
            padding-top: 10px;  
            padding-left: 10px;  
            width: 400px;  
            height: 350px;  
        }  
        .lbl  
        {  
            font-size:16px;  
            font-style:italic;  
            font-weight:bold;  
        }  
    </style>  
</head>
<body>
    <form id="form1" runat="server">
          <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
       
     <asp:Label ID="lblHidden" runat="server" Text=""></asp:Label>
      <ajaxToolkit:ModalPopupExtender ID="mpePopUp" runat="server" TargetControlID="lblHidden" PopupControlID="divPopUp" BackgroundCssClass="modalBackground"></ajaxToolkit:ModalPopupExtender>
 



        <div>
            <asp:Button ID="btnIsActive" runat="server" Text="Active Doctors" OnClick="btnIsActive_Click" />
              <asp:Button ID="btnIsPaid" runat="server" Text="Paid Doctors" OnClick="btnIsPaid_Click" />
        
              <asp:Button ID="Button1" runat="server" Text="Contact Us" />  
<cc1:ModalPopupExtender ID="mp1" runat="server" PopupControlID="Panl1" TargetControlID="Button1"  
    CancelControlID="Button2" BackgroundCssClass="Background">  
</cc1:ModalPopupExtender>  
<asp:Panel ID="Panl1" runat="server" CssClass="Popup" align="center" style = "display:none">  
    <iframe style=" width: 350px; height: 300px;" id="irm1" src="WebForm2.aspx" runat="server"></iframe>  
   <br/>  
    <asp:Button ID="Button2" runat="server" Text="send"  />  
</asp:Panel>  
            <asp:GridView ID="gvDoctors" runat="server"></asp:GridView>
        </div>



     <div id="divPopUp" class="pnlBackGround" onclick="btnOpenPopUp_Click">
         <asp:Label ID="lblName" runat="server" Text="Name: "></asp:Label>
         <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
          <asp:Label ID="lblPhone" runat="server" Text="Phone: "></asp:Label>
            <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
          <asp:Label ID="lblMail" runat="server" Text="Email: "></asp:Label>
            <asp:TextBox ID="txtMail" runat="server"></asp:TextBox>
     <div id="buttons">
   
         
     </div>
</div>


      
    </form>
</body>
</html>
