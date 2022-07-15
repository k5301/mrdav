<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="AdmPerson.aspx.cs" Inherits="AdmPerson" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="content_section">
<%--        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server"><ContentTemplate>--%>
				<!-- Gallery -->
                	<div class="gallery">
                    	<div class="gallery_top" style="margin-bottom:20px">
                        	<div class="gallery_heading">
                            	Changing the Previous Images
                            </div>
                            <div class="select_gallery">
                            	<a  class="photo pactive" href="#">&nbsp;</a>
                            	<%--<a class="movie " href="#">&nbsp;</a>--%>
                            </div>
                            <div class="clear"></div>
                        </div>
                    	<!-- Col1 -->
                        	<div class="categorydiv" style="margin:20px 15px 0 5px">
                            	<ul>
                                    <li><asp:LinkButton class="selected" ID="bannerRecord" runat="server" OnClick="bannerRecord_Click">Banner Images</asp:LinkButton></li>
                                    <li><asp:LinkButton ID="personRecord" runat="server" OnClick="personRecord_Click">Person's Images</asp:LinkButton></li>
                                    <li><asp:LinkButton ID="facilitiesRecord" runat="server" OnClick="facilitiesRecord_Click">Facilities Images</asp:LinkButton></li>
                                </ul>
                            </div>
                    		<div class="thumbdiv hideScrollbar" style="height:900px;overflow:scroll">
                                <div style="text-align:justify">
                                    <div runat="server" id="divBanner">
                                        <div class="content_heading">
                                            <div class="heading" style="color:blue;font-weight:600;font-size:20px">Person's Images</div>
                                        </div>
                                        <br />
                                        <div id="banner">
                                            <div id="slider2">
                                                <div class="contentdiv">
                                                    <a href="#"><img style="width:720px;height:247px" src="DynamicImages/ImageRecord/PersonImage/chairperson.jpg" alt="" /></a>
                                                </div> 
                                                <div class="contentdiv">
                                                    <a href="#"><img style="width:720px;height:247px" src="DynamicImages/ImageRecord/PersonImage/director.jpg" alt="" /></a>
                                                </div> 
                                                <div class="contentdiv">
                                                    <a href="#"><img style="width:720px;height:247px" src="DynamicImages/ImageRecord/PersonImage/principal.jpg" alt="" /></a>
                                                </div> 
                                            </div> 
                                            <div id="paginate-slider2" class="pagination"></div>
                                            <script type="text/javascript" src="js/slider.js" ></script>                      
                                        </div>
                                    </div>
                                    <div runat="server" id="ui">
                                        <div class="content_heading">
                                            <div class="heading" style="color:blue;font-weight:600;font-size:20px">Modify Images</div>
                                        </div>
                                        
                                        <div>
                                            Enter the Index No. of the Image Which you want to change:
                                            <asp:TextBox ID="txtHead" CssClass="form-control" AutoComplete="false" runat="server"></asp:TextBox>
                                            <br /><br />

                                            Banner Image: (Dimensions: 720*247 &nbsp; &nbsp; Format: only JPG)
                                            <br />
                                            <asp:Label ID="lblError" Visible="false" style="color:red" runat="server" Text=""></asp:Label><br />
                                            <div id="divUploadBanner" runat="server">
                                                <br /> 
                                                <asp:FileUpload style="float:left" ID="bannerImg" runat="server"/>
                                                <asp:Label ID="lblpthBanner" runat="server" Visible="false" Text=""></asp:Label>
                                                <asp:Label ID="lblBannerName" runat="server" Visible="false" Text=""></asp:Label>
                                                <asp:Button ID="btnUploadBannerImage" OnClientClick="return confirm('Are You Sure? \r\nNote: The Banner Will simultaneaously change as You upload the file If No Error Occur\r\n\r\nMake Sure to have the backup of previous Image')" CssClass="btn btn-primary" runat="server" Text="Make Change" OnClick="btnUploadBannerImage_Click"/> 
                                  
                                                <br /><br />
                                            </div>
                                            <div id="divImageBanner" runat="server" visible="false" style="width:100%;height:auto">
                                   
                                                <asp:Image ID="bImg" runat="server" style="width:720px;height:247px;float:left;margin-bottom:15px"/>
                                                <br />
                                                   <asp:Button ID="btnChangeBannerImage" CssClass="btn btn-primary" runat="server" Text="Change" OnClick="btnChangeBannerImage_Click"/>
                                                   <br /><br />
                                        </div>
                                        
                                        </div>
                                        <div class="clear"></div>
                                        <asp:Button ID="btnModifyBannerImage" CssClass="btn btn-primary" runat="server" Text="Done" OnClick="btnModifyBannerImage_Click"/>
                                        
                                        <hr>
                                        <br /><br />
                                        <div class="clear"></div>
                                        
                                    </div>

                                </div>
                            <div class="hdiv">&nbsp;</div>
                            </div>
                            
                    </div>    	
                <div class="clear"></div>
                <%--</ContentTemplate></asp:UpdatePanel>--%>
		    </div>
</asp:Content>

