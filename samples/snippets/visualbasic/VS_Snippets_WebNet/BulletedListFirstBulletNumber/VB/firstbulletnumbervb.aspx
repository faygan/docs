<!--<Snippet1>-->
<%@ Page Language="VB" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
  <title>First Bullet Number Example</title>
  <script runat="server">

    Sub Index_Changed(ByVal sender As Object, ByVal e As System.EventArgs)
      
      ' Set the starting number for the bulleted list.
      ItemsBulletedList.FirstBulletNumber = StartValue.Text
      Select Case (BulletStylesListBox.SelectedIndex)
        Case 0
          ItemsBulletedList.BulletStyle = BulletStyle.Numbered
        Case 1
          ItemsBulletedList.BulletStyle = BulletStyle.LowerAlpha
        Case 2
          ItemsBulletedList.BulletStyle = BulletStyle.UpperAlpha
        Case 3
          ItemsBulletedList.BulletStyle = BulletStyle.LowerRoman
        Case 4
          ItemsBulletedList.BulletStyle = BulletStyle.UpperRoman
        Case Else
          Throw New Exception("You did not select a valid bullet style")
      End Select
    End Sub

  </script>

</head>
<body>

  <h3>First Bullet Number Example</h3>

  <form id="form1" runat="server">
                    
    <asp:BulletedList id="ItemsBulletedList"             
      BulletStyle="Disc" 
      DisplayMode="Text"
      runat="server">    
        <asp:ListItem Value="http://www.cohowinery.com">Coho Winery</asp:ListItem>
        <asp:ListItem Value="http://www.contoso.com">Contoso, Ltd.</asp:ListItem>
        <asp:ListItem Value="http://www.tailspintoys.com">Tailspin Toys</asp:ListItem>
    </asp:BulletedList>    
              
    <hr />
        
    <h4>Enter the first number to start the list</h4>        
        
    <asp:TextBox id="StartValue" 
      Text="1"
      runat="server">
    </asp:TextBox><br />    
            
    <asp:RangeValidator id="Range1" 
      ControlToValidate="StartValue"
      MinimumValue="1"
      MaximumValue="32000"
      Type="Integer"
      ErrorMessage="Please enter a number greater than zero and less than 32,000."
      runat="server" >
    </asp:RangeValidator><br />            
        
    <h4>Select a bullet type:</h4>
    <asp:ListBox id="BulletStylesListBox" 
      SelectionMode="Single"
      Rows="1"
      AutoPostBack="True"
      OnSelectedIndexChanged="Index_Changed"
      CausesValidation="true"
      runat="server" >        
        <asp:ListItem Value="Numbered">Numbered</asp:ListItem>
        <asp:ListItem Value="LowerAlpha">LowerAlpha</asp:ListItem>
        <asp:ListItem Value="UpperAlpha">UpperAlpha</asp:ListItem>
        <asp:ListItem Value="LowerRoman">LowerRoman</asp:ListItem>
        <asp:ListItem Value="UpperRoman">UpperRoman</asp:ListItem>
    </asp:ListBox><br />

    <hr />
  </form>

</body>
</html>
<!--</Snippet1>-->