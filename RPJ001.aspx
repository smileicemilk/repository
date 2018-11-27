<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RPJ001.aspx.cs" Inherits="RoadSm_RPJ001" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>桃園市養護工程處 在建工程資訊管理系統</title>
    <link rel="Shortcut Icon" type="image/x-icon" href="/images/logo-s.ico" />

    <meta name="keywords" content="桃園市養護工程處 在建工程資訊管理系統">
    <meta name="description" content="桃園市養護工程處 在建工程資訊管理系統">
    <meta name="author" content="dora">
    <meta name="copyright" content="© 2017 桃園市養護工程處">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge, chrome=1">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta itemprop="name" content="桃園市養護工程處 在建工程資訊管理系統">
    <meta itemprop="url" content="index.html">
    <meta itemprop="description" content="在建工程資訊管理系統">
    <meta property="og:title" content="桃園市養護工程處"></meta>
    <meta name="og:description" content="在建工程資訊管理系統">
    <meta property="og:type" content="website"></meta>

    <script src="../js/allRP.js"></script>
  
    <link rel="stylesheet" href="../css/all.css" />
    <link rel="stylesheet" href="../css/slideShow with PopContent.css"/>
    
</head>

<body>
    <form id="form1" runat="server">
        <div class="leftmenu">
            <a href="#"><img src="../images/icon/menu-back.png" alt="關閉左側選單" class="menubar-close"/></a><br/>
        
            <a href="../ENGMANAGE/SBASE001.aspx" title="年度工程">年度工程</a>
            <a href="../ENGMANAGE/RBW001.aspx" title="專案性工程">專案性工程</a>
            <a href="../RoadSm/RoadPjList.aspx" title="路平專案">路平專案</a>
            <a href="../ENGMANAGE/SBASE001.aspx" title="防災資訊">防災資訊</a>
            <a href="../ENGMANAGE/RWUser01.aspx" title="內部控管">內部控管</a>
            
            <div class="leftmenu-child">
                <a href="../ENGMANAGE/RWUser01.aspx">帳號管理</a>
                <br/>
                <a href="../ENGMANAGE/SBASE001.aspx">資料上傳</a><br/>
                <%--<a href="ENGMANAGE/RBW001.aspx">工程詳情</a>--%>
            </div>
        </div>
    
        <div class="wrapmask"></div>
        
        <div class="wrap">
            <div class="header clearfix">
                <a href="../MainPage.aspx" class="logo"></a>
                <div class="menu">
                    <a href="../ENGMANAGE/SBASE001.aspx" class="menu_year" title="年度工程"></a>
                    <a href="../ENGMANAGE/RBW001.aspx" class="menu_project" title="專案性工程"></a> 
                    <a href="../RoadSm/RoadPjList.aspx" class="menu_road" title="路平專案"></a> 
                    <a href="../ENGMANAGE/SBASE001.aspx" class="menu_disater" title="防災資訊"></a>
                    <a href="../ENGMANAGE/RWUser01.aspx" class="menu_ctrl" title="內部控管"></a>
                </div>
                <a href="#leftmenu" class="menubar-open">
                <img src="../images/icon/menu-button.png" alt="" class="menubar-js"/></a>
            </div>
  
            <div class="content">
                <div class="detailsTEdit detailsTEdit_login" style="margin-bottom:20px;">
                <!-- 登入顯示區塊 -->
                    <div class="detailsTEdit_title">
                        <img src="../images/title/title-account.png" alt="帳號管理" title="帳號管理" style="opacity:0;" class="detailsTEdit_title_img"/>
                        <div class="nameWrap">
                            <div class="idName">
                            <asp:Literal ID="TextUserName" runat="server">您好，千層麵</asp:Literal></div>
                            <asp:Button ID="SignOut" runat="server" Text="登出" OnClick="SignOut_Click" CssClass="SignOutCss" />
                        </div>
                    </div>
                </div>

                <div class="detailsTEdit_btn">
                    <img src="../images/btn/btn-road-detail.png" alt="案件詳情" title="案件詳情" class="detailsTEdit_btn_img"/>
                    <div>
                        <a href="RoadPjList.aspx?MODE=GBK"><img src="../images/btn/btn-returnMaster.png" alt="返回總表" title="返回總表" /></a>
                    </div>
                </div>
            </div>
            <div class="detailsBar">
                <h2 class="detailsBar_title_basic">專案資料</h2>
                <div class="detailsBar_tb_wrap">
                    <table class="detailsBar_TB_blue2">
                    <tr><td style="text-align:center;background-color:#FFFAEF;">專案編號</td>
                        <td style="color: #32D10B;background-color:#FFFAEF;">
                            <asp:label ID="LBRPJ001" runat="server" /><span style="font-size:16px; color:#32D10B;">(系統帶入) PJ123456789</span></td></tr>
                    <tr><td style="text-align:center;background-color:#FFFAEF;">專案類型 <span style="color: #FF0000">*</span></td>
                        <td style="background-color:#FFFAEF;">
                            <asp:DropDownList ID="DDLRPJ002" runat="server">
                                <asp:ListItem Text="開口派設" Value="開口派設"></asp:ListItem>
                                <asp:ListItem Text="申請前瞻計畫" Value="申請前瞻計畫"></asp:ListItem>
                                <asp:ListItem Text="經濟部工務局前瞻計畫" Value="經濟部工務局前瞻計畫"></asp:ListItem>
                                <asp:ListItem Text="移交公所施作" Value="移交公所施作"></asp:ListItem>
                            </asp:DropDownList></td></tr>
     <tr>
      <td align="center" bgcolor="#FFFAEF">專案進度 <span style="color: #FF0000">*</span></td>
      <td bgcolor="#FFFAEF">
          <asp:DropDownList ID="DDLRPJ003" runat="server">
               <asp:ListItem Text="派工中" Value="派工中"></asp:ListItem>
               <asp:ListItem Text="施工中" Value="施工中"></asp:ListItem>
               <asp:ListItem Text="停工中" Value="停工中"></asp:ListItem>
               <asp:ListItem Text="已完工" Value="已完工"></asp:ListItem>
          </asp:DropDownList>
      </td>
    </tr>
   
    <tr>
      <td align="center" bgcolor="#FFFAEF">專案年度 <span style="color: #FF0000">*</span></td>
      <td bgcolor="#FFFAEF">
          <asp:DropDownList ID="DDLRPJ004" runat="server">
          </asp:DropDownList>
        </td>
    </tr>
    <tr>
      <td align="center" bgcolor="#FFFAEF">專案名稱 <span style="color: #FF0000">*</span></td>
      <td bgcolor="#FFFAEF">
          <asp:TextBox ID="TXTRPJ005" runat="server" Width="180px" ></asp:TextBox>
        </td>
    </tr>
    <tr>
      <td align="center" bgcolor="#FFFAEF">預算金額 <span style="color: #FF0000">*</span></td>
      <td bgcolor="#FFFAEF">
          <asp:TextBox ID="TXTRPJ006" runat="server" Width="180px" onkeypress="numtxt()" ></asp:TextBox>
        &nbsp;元 </td>
    </tr
<%--if(event.keyCode < 48 || event.keyCode > 57) if (event.keyCode != 44){ event.returnValue = false; }>--%>
    <tr>
      <td align="center" bgcolor="#FFFAEF">決標金額 <span style="color: #FF0000" >*</span></td>
      <td bgcolor="#FFFAEF">
          <asp:TextBox ID="TXTRPJ007" runat="server" Width="180px" onkeypress="numtxt()" ></asp:TextBox>
        &nbsp;元</td>
    </tr>
                        <%--    <tr>
      <td align="center" bgcolor="#FFFAEF">已派工工程費</td>
      <td bgcolor="#FFFAEF">
          <asp:TextBox ID="TXTRPJ008" runat="server" Width="180px" ></asp:TextBox>
        &nbsp;元 <span style="font-size:16px; color:#32D10B;">*加千分號 </span></td>
    </tr>--%><%--    <tr>
      <td align="center" bgcolor="#FFFAEF">剩餘可派工工程費</td>
      <td bgcolor="#FFFAEF">
          <asp:TextBox ID="TXTRPJ009" runat="server" Width="180px" ></asp:TextBox>
        &nbsp;元 <span style="font-size:16px; color:#32D10B;">*加千分號(決標金額-已派工) </span></td>
    </tr>--%>
   </table>

      
                    
                     <div class="btn">
                         <%--<asp:Button ID="GoCaseList" runat="server" Text="放棄編修，返回總表" />--%>
                         <asp:Button ID="BtnSave" runat="server" Text="存檔" OnClick="BtnSave_Click" />
                    </div> 

                </div>
            </div>
        </div>

        <div style="margin-top:3em;"></div>
                    
        <script src="../js/jquery-3.1.1.min.js"></script>
        <script src="../js/slideShow with PopContent.js"></script>
        <script src="../js/alljq.js"></script>
        <script src="../js/alljs.js"></script>
    </form>
</body>
</html>
