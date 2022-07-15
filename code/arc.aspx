<%@ Page Title="" Language="C#" MasterPageFile="~/customer.master" AutoEventWireup="true" CodeFile="arc.aspx.cs" Inherits="arc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="content_section">
				<!-- Gallery -->
                	<div class="gallery">
                    	<div class="gallery_top">
                        	<div class="gallery_heading" style="width:960px">
                            	<h2>Anti Ragging Cell</h2>

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
                                	<li><a class="selected" href="#arc">Anti Ragging Cell</a></li>
                                    <li><a href="contactUs.aspx">ContactUs</a></li>
                                </ul>
                            </div>
                    		<div class="thumbdiv hideScrollbar" style="height:200px;overflow:scroll;scroll-behavior:smooth;">
                                
                            	
                                <div style="text-align:justify">
                                    <div id="arc" >
                                        <div class="content_heading">
                                            <div class="heading"><h2>Members of Anti Ragging-Cell:</h2> </div>
                                        </div>    
                                        <p>
                                            1. Dr. Surender Kumar Shilla<br />
                                            2. Mr. Satnarain Singh<br />
                                            3. Ms. Priyanka Kinra
                                        </p>
                                        <br /><br />
                                    </div>

                                    
                                </div>
                                
                            <div class="hdiv">&nbsp;</div>
                            </div>
                            
                    </div>    	
                <div class="clear"></div>
		    </div>
</asp:Content>

