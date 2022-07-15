<%@ Page Title="" Language="C#" MasterPageFile="~/customer.master" AutoEventWireup="true" CodeFile="gallery.aspx.cs" Inherits="gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="content_section">
				<!-- Gallery -->
                	<div class="gallery">
                    	<div class="gallery_top">
                        	<div class="gallery_heading">
                            	<h2>Our  College Gallery</h2>
                            </div>
                            <div class="select_gallery">
                            	<a  class="photo pactive" href="#">&nbsp;</a>
                            	<%--<a class="movie " href="#">&nbsp;</a>--%>
                            </div>
                            <div class="clear"></div>
                        </div>
                    	<!-- Col1 -->
                        	<div class="categorydiv">
                            	<ul>
                                	<li><asp:LinkButton ID="linkAll" CssClass="selected" runat="server" OnClick="linkAll_Click">Our Gallery</asp:LinkButton></li>
                                    <asp:Repeater ID="rptCategory" runat="server" OnItemCommand="rptCategory_ItemCommand">
                                        <ItemTemplate>
                                            <li>
                                                <a href="#">
                                                    <asp:LinkButton ID="lnkTyres" CommandArgument='<%#Bind("cid") %>'  Text='<%#Bind("ctitle") %>' runat="server"></asp:LinkButton>
                                                </a>
                                            </li>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </ul>
                            </div>
                    		<div class="thumbdiv hideScrollbar" style="height:600px;overflow:scroll">
                            	
                                            <ul>
                                                <asp:Repeater ID="rptImages" runat="server">
                                                    <ItemTemplate>
                                                    <li>
                                                        <a id="li" href='<%#Bind("limgPath") %>' runat="server" rel="galleryimg" class="galleryimg">
                                                            <div>
                                                            <asp:Image style="width:108px;height:101px" ImageUrl='<%#Bind("simgPath") %>' ID="si" runat="server" />
                                                            <div style="width:108px;margin-top:3px;text-align:center">
                                                                <asp:Label ID="lblImageTitle" runat="server" Text='<%#Bind("imageTitle") %>'></asp:Label>
                                                            </div>

                                                            </div>
                                                        </a>
                                                    </li>
                                                    </ItemTemplate>
                                                </asp:Repeater>
                                	        
                                        </ul>
                            <div class="hdiv">&nbsp;</div>
                            </div>
                            
                    </div>    	
                <div class="clear"></div>
		    </div>
</asp:Content>

