<%@ Page Title="" Language="C#" MasterPageFile="~/customer.master" AutoEventWireup="true" CodeFile="Faculty.aspx.cs" Inherits="Faculty" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .classMargin{
            padding:3px 10px;
        }
        .filldiv{
            width:100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="content_section">
				<!-- Gallery -->
                	<div class="gallery">
                    	<div class="gallery_top">
                        	<div class="gallery_heading" style="width:960px">
                            	<h2>Faculty</h2>

                            </div>
                            <div class="select_gallery">
                            	<%--<a  class="photo pactive" href="#">&nbsp;</a>--%>
                            	<%--<a class="movie " href="#">&nbsp;</a>--%>
                            </div>
                            <div class="clear"></div>
                        </div>
                    	<!-- Col1 -->
                        	<div class="categorydiv">
                            	<ul>
                                	<li><a class="selected" href="#cf">Core Faculty</a></li>
                                    <li><a href="#vf">Visiting Faculty</a></li>
                                    <li><a href="contactUs.aspx">ContactUs</a></li>
                                </ul>
                            </div>
                    		<div class="thumbdiv hideScrollbar" style="height:720px;overflow:scroll;scroll-behavior:smooth;">
                                
                            	
                                <div style="text-align:justify">
                                    <div id="cf" >
                                        <div class="content_heading">
                                            <div class="heading"><h2>Core Faculty</h2> </div>
                                        </div>
                                        <p>Well experience, qualified and dedicated faculty drawn both from industry and academic has been appointed to bridge the gap between theory and practical. It aims to support the Institute both theoretically and practically. The members are professionally qualified and always help the students to tackle real life situation with greater confidence, zeal and vigor. Apart from this, regularly visiting faculties keep students update the latest happenings in the business world</p>
                                        <br />
                                    </div>
                                    <div>
                                        <div class="hideScrollbar" style="width:245px;margin-right:7px;float:left;overflow:scroll">
                                            <span style="color:blue;font-weight:500;font-size:15px">MBA Faculty</span><br /><br />
                                            <asp:GridView DataKeyNames="facultyId" AutoGenerateColumns="False" CssClass="grdBackground filldiv" ID="grdMBAFaculty" runat="server">
                                                <Columns>    
                                                 <asp:TemplateField HeaderText="SNo." HeaderStyle-CssClass="grdHeaderStyle classMargin">
                                                    <ItemTemplate>
                                                        <span style="color:black;font-weight:700;margin-left:20px">

                                                        <%# Container.DataItemIndex + 1 %>.
                                                            </span>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                 <asp:TemplateField HeaderText="FacultyInfo" HeaderStyle-CssClass="grdHeaderStyle classMargin">
                                                    <ItemTemplate>
                                                        <div style="margin:3px 10px">
                                                        <asp:Label ID="lblName" runat="server" style="font-weight:600;color:black" Text='<%#Bind("facultyName") %>'></asp:Label><br />
                                                        <asp:Label ID="lblDesignation" runat="server" Text='<%#Bind("facultyDesignation") %>'></asp:Label><br />
                                                        <asp:Label ID="lblQualification" runat="server" Text='<%#Bind("facultyQualifications") %>'></asp:Label>
                                                        </div>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                
                                            </Columns>
                                        </asp:GridView>   
                                        </div>
                                        
                                        <div class="hideScrollbar" style="width:245px;margin-right:7px;float:left;overflow:scroll">
                                            <span style="color:blue;font-weight:500;font-size:15px">MCA Faculty</span><br /><br />
                                            <asp:GridView DataKeyNames="facultyId" AutoGenerateColumns="False" CssClass="grdBackground filldiv" ID="grdMCAFaculty" runat="server">
                                                <Columns>    
                                                 <asp:TemplateField HeaderText="SNo." HeaderStyle-CssClass="grdHeaderStyle classMargin">
                                                    <ItemTemplate>
                                                        <span style="color:black;font-weight:700;margin-left:20px">

                                                        <%# Container.DataItemIndex + 1 %>.
                                                            </span>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                 <asp:TemplateField HeaderText="FacultyInfo" HeaderStyle-CssClass="grdHeaderStyle classMargin">
                                                    <ItemTemplate>
                                                        <div style="margin:3px 10px">
                                                        <asp:Label ID="lblName" runat="server" style="font-weight:600;color:black" Text='<%#Bind("facultyName") %>'></asp:Label><br />
                                                        <asp:Label ID="lblDesignation" runat="server" Text='<%#Bind("facultyDesignation") %>'></asp:Label><br />
                                                        <asp:Label ID="lblQualification" runat="server" Text='<%#Bind("facultyQualifications") %>'></asp:Label>
                                                        </div>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                
                                            </Columns>
                                        </asp:GridView>   
                                        </div>
                                    
                                        <div class="hideScrollbar" style="width:245px;margin-right:7px;float:left;overflow:scroll">
                                            <span style="color:blue;font-weight:500;font-size:15px">BBA Faculty</span><br /><br />
                                            <asp:GridView DataKeyNames="facultyId" AutoGenerateColumns="False" CssClass="grdBackground filldiv" ID="grdBBAFaculty" runat="server">
                                                <Columns>    
                                                 <asp:TemplateField HeaderText="SNo." HeaderStyle-CssClass="grdHeaderStyle classMargin">
                                                    <ItemTemplate>
                                                        <span style="color:black;font-weight:700;margin-left:20px">

                                                        <%# Container.DataItemIndex + 1 %>.
                                                            </span>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                 <asp:TemplateField HeaderText="FacultyInfo" HeaderStyle-CssClass="grdHeaderStyle classMargin">
                                                    <ItemTemplate>
                                                        <div style="margin:3px 10px">
                                                        <asp:Label ID="lblName" runat="server" style="font-weight:600;color:black" Text='<%#Bind("facultyName") %>'></asp:Label><br />
                                                        <asp:Label ID="lblDesignation" runat="server" Text='<%#Bind("facultyDesignation") %>'></asp:Label><br />
                                                        <asp:Label ID="lblQualification" runat="server" Text='<%#Bind("facultyQualifications") %>'></asp:Label>
                                                        </div>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                
                                            </Columns>
                                        </asp:GridView>   
                                        </div>
                                    </div>
                                    
                                    <div class="clear"></div>
                                     <br /><br />
                                    <div id="vf" style="margin-top:20px;margin-bottom:600px">
                                        <span style="color:#0086b2;font-size:18px;font-weight:600">Visiting Faculty</span><br /><br /> 
                                        <asp:Repeater ID="rptVisitingFaculty" runat="server">
                                            <ItemTemplate>
                                                <asp:Label ID="lblName" style="font-weight:600;color:black" runat="server" Text='<%#Bind("facultyName") %>'></asp:Label><br />
                                                <asp:Label ID="lblfacultyQualification" runat="server" Text='<%#Bind("facultyQualifications") %>'></asp:Label><br /><br />
                                                <hr />
                                            </ItemTemplate>
                                        </asp:Repeater>  
                                    </div>
                                    
                                    
                                </div>
                                
                            <div class="hdiv">&nbsp;</div>
                            </div>
                            
                    </div>    	
                <div class="clear"></div>
		    </div>
</asp:Content>

