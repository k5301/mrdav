<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="AdmNotice.aspx.cs" Inherits="AdmNotice" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="content_section">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server"><ContentTemplate>
				<!-- Gallery -->
                	<div class="gallery">
                    	<div class="gallery_top" style="margin-bottom:20px">
                        	<div class="gallery_heading" style="width:960px">
                            	Editing Notice Record
                            </div>

                            <div class="select_gallery">
                            	<%--<a  class="photo pactive" href="#">&nbsp;</a>--%>
                            	<%--<a class="movie " href="#">&nbsp;</a>--%>
                            </div>
                            <div class="clear"></div>
                        </div>
                    	<!-- Col1 -->
                        	<div class="categorydiv" style="margin:20px 15px 0 5px">
                            	<ul style="text-decoration:none">
                                    <li><asp:LinkButton class="selected" ID="newsRecord" runat="server" OnClick="newsRecord_Click">Notice Record</asp:LinkButton></li>
                                    <li><asp:LinkButton ID="uploadNews" runat="server" OnClick="uploadNews_Click">Upload Notice</asp:LinkButton></li>
                                    <li><asp:LinkButton ID="deleteNews" runat="server" OnClick="deleteNews_Click">Delete Notice</asp:LinkButton></li>
                                    <li><asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Update Events</asp:LinkButton></li>
                                    <li><asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Update News</asp:LinkButton></li>
                                </ul>
                            </div>
                    		<div class="thumbdiv hideScrollbar" style="height:720px;overflow:scroll;scroll-behavior:smooth;">
                                <div style="text-align:justify">
                                    <div id="un" runat="server" visible="false">
                                        <div class="content_heading">
                                            <div class="heading" style="color:blue;font-weight:600;font-size:20px">Upload New Record</div>
                                        </div>
                                        <p>
                                            Notice Head: 
                                            <asp:TextBox ID="txtHead" CssClass="form-control" AutoComplete="false" required="required" runat="server"></asp:TextBox>
                                            Notice Details: 
                                            <asp:TextBox ID="txtNewsDetail" TextMode="MultiLine" AutoComplete="false" required="required" style="height:100px;"  CssClass="form-control" runat="server"></asp:TextBox><br>
                                            <asp:Button ID="btnUpload" CssClass="btn btn-primary" runat="server" Text="Upload Notice" OnClick="btnUpload_Click"/>
                                            <hr>
                                        </p>
                                    </div>
                                    
                                     <div id="nr">
                                        <div class="content_heading">
                                            <div class="heading" style="color:blue;font-weight:600;font-size:20px">Notice Record</div>
                                        </div>
                                        <p class="table-responsive hideScrollbar">
                                        
                                            <asp:GridView DataKeyNames="nid" AutoGenerateColumns="False" CssClass="table table-bordered grdBackground" ID="grdNews" runat="server" OnRowDeleting="grdNews_RowDeleting">
                                                <Columns>

                                                 <asp:TemplateField ShowHeader="False" Visible="false" HeaderStyle-CssClass="grdHeaderStyle">
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="dl" runat="server" OnClientClick="return confirm('Are You Sure')" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                    
                                                 <asp:TemplateField HeaderText="SNo." HeaderStyle-CssClass="grdHeaderStyle">
                                                    <ItemTemplate>
                                                        <%# Container.DataItemIndex + 1 %>.
                                                    </ItemTemplate>
                                                     <HeaderStyle CssClass="grdHeaderStyle" />
                                                </asp:TemplateField>
                                                 <asp:TemplateField HeaderText="NewsID" Visible="false" HeaderStyle-CssClass="grdHeaderStyle">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblnid" runat="server" Text='<%#Bind("nid") %>'></asp:Label>
                                                    </ItemTemplate>
                                                     <HeaderStyle CssClass="grdHeaderStyle" />
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Heading" HeaderStyle-CssClass="grdHeaderStyle">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblHeading" runat="server" style="font-size:15px;font-weight:500" Text='<%#Bind("Heading") %>'></asp:Label>
                                                    </ItemTemplate>
                                                    <HeaderStyle CssClass="grdHeaderStyle" />
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Description" HeaderStyle-CssClass="grdHeaderStyle">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblDescription" runat="server" Text='<%#Bind("Description") %>'></asp:Label>
                                                        <br /><br />
                                                        <span style="color:gray;font-size:10px;font-weight:600;float:right">Posted On : <asp:Label ID="lblDate1" runat="server" Text='<%#Bind("Date") %>'></asp:Label></span>
                                                        
                                                    </ItemTemplate>
                                                    <HeaderStyle CssClass="grdHeaderStyle" />
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Day-Date" Visible="false" HeaderStyle-CssClass="grdHeaderStyle">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblDate" runat="server" Text='<%#Bind("Date") %>'></asp:Label>
                                                    </ItemTemplate>
                                                    <HeaderStyle CssClass="grdHeaderStyle" />
                                                </asp:TemplateField>
                                            </Columns>
                                        </asp:GridView>
                                            
                                        </p>
                                        <hr>
                                        <br /><br />
                                    </div>
                                    
                                </div>
                                
                            <div class="hdiv">&nbsp;</div>
                            </div>
                            
                    </div>    	
                <div class="clear"></div>
            </ContentTemplate></asp:UpdatePanel>
		    </div>
</asp:Content>

