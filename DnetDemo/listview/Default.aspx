<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="listview_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        body,div,p,img,h1,h2,h3,h4,h5{margin:0px;padding:0px;}
        body{width:760px;}

        .fl{float:left;}
        .fr{float:right;}
        .clr{clear:both;}

        h1{ padding:15px;
            border-bottom:1px solid #dedede;
        }

        #div_listview{width:550px;}
        #div_menu{width:210;}

        .divItem{border-bottom:1px dashed #ededed;margin-bottom:10px;
                 padding:10px;
        }
        .divItem img{margin-right:10px; float:left; padding:3px;background-color:white;border:1px solid #eaeaea;}
        .divItem h2{ font-family:微软雅黑;font-size:16px;color:#444; letter-spacing:1px;
                     margin:0px 0px 10px 0px;
        }
        .divItem p{font-size:12px;color:#888;margin-bottom:10px; }
        .divItem a{text-decoration:none;color:gray;}
        .divItem a:hover{color:red;}
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>新闻列表</h1>
            
            <div id="div_listview" class="fl">
                <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource2"
                    ItemPlaceholderID="itemHolder" >
                    <LayoutTemplate>
                        <div runat="server" id="itemHolder"></div>
                    </LayoutTemplate>

                    <ItemTemplate>
                        <div class="divItem" id="a1" runat="server">
                            <img alt="" src='<%#Eval("pic","../image/{0}") %>'  />
                            <div class="fl" style="margin-left:10px">
                                <h2><%#Eval("nickname") %></h2>
                                <p><%#Eval("time","{0:D}") %></p>
                                <a href='<%#Eval("id","dabiantai.aspx?nid={0}") %>'>详细信息</a>
                            </div>
                            <div class="clr"></div>
                        </div>
                    </ItemTemplate>
                </asp:ListView>

                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:madMaterialsConnectionString %>" SelectCommand="SELECT * FROM [t_Remark] WHERE ([sort] = @sort)">
                    <SelectParameters>
                        <asp:SessionParameter DefaultValue="1" Name="sort" SessionField="CID" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>

            <div id="div_menu" class="fr">
                <asp:BulletedList ID="BulletedList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="id" DisplayMode="LinkButton" OnClick="BulletedList1_Click"></asp:BulletedList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:madMaterialsConnectionString %>" SelectCommand="SELECT [id], [name] FROM [t_Materials]"></asp:SqlDataSource>
            </div>

            <div class="clr"></div>

        </div>
    </form>
</body>
</html>
