<%@ Page Title="" Language="C#" MasterPageFile="~/customer.master" AutoEventWireup="true" CodeFile="Result.aspx.cs" Inherits="Result" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div id="content_section">
				<!-- Col1 -->
                	<div class="col1">
                    	<!-- Banner -->
                        	<div id="banner1">
									<a href="#"><img src="StaticImages/banner452.gif" style="width:100%" alt="" /></a>
                                
                           </div>
                         <!-- Content Links -->
                         	<div class="content_links">
                            	<ul>
                            		<li><a class="our_university" href="#">Our University</a></li>
                                    <li><a class="admission" href="#">Admissions</a></li>
                                    <li><a class="accommodaiton" href="#">Accommodations</a></li>
                                    <li><a class="community" href="#">Community</a></li>
                                    <li><a class="schorship" href="#">Scholorships</a></li>
                                    <li class="last"><a class="take_tour" href="#">Take a Tour</a></li>
                                </ul>
                            </div><br /><br />  
                         <!-- Content Heading -->
                         	<div id="content2">	
                                <h2 class="pad8">Welcome to MR DAV Institute of Management Studies</h2><br /><br />
                                 <h5>Download Required Documents</h5>
                                <!-- News Listing -->
                                 <div class="hideScrollbar" style="height:800px;overflow:scroll">
                                            <ul class="listing">
                                                <asp:Repeater ID="rptDownloadsRecord" runat="server">
                                                    <ItemTemplate>
                                                        <li>
                                                            <a runat="server" target="_blank" id="FileLink" href='<%#Bind("downloadFilePath") %>'>
                                                                <div style="float:left;margin-right:15px">
                                                                    <asp:Image ID="imgLogoIcon" style="width:60px;height:60px" ImageUrl='<%#Bind("imageIconPath") %>' runat="server" />
                                                                </div>
                                                                
                                                                <div style="margin-left:15px">
                                                                    <span style="margin-top:0;float:left;color:black;font-weight:600;font-size:20px;">
                                                                            <asp:Label style="color:black;font-weight:600;font-size:16px;" ID="lblDescription" runat="server" Text='<%#Bind("downloadDescription") %>'></asp:Label>
                                                                        

                                                                    </span>
                                                                    <br /><br />
                                                                    <span class="lastupdte" style="float:right"> Last Update by:
                                                                        <i>
                                                                        <asp:Label ID="lbldtime" runat="server" Text='<%#Bind("dtime") %>'></asp:Label></i></span>
                                                            
                                                                </div>
                                                                <div class="clear"></div>
                                                            </a>
                                                    
                                                        </li>
                                                    </ItemTemplate>
                                                </asp:Repeater>
                                            </ul>
                                </div>
                                <div class="clear"></div>
                                    
                           </div>		   
                         <div class="clear"></div>
                   	 </div>
               <!-- Col2 -->
                	<div class="col2">
                    	<%--<div class="ads">
                        	<a href="#"><img src="images/ads.gif"  alt="" /></a>
                        </div>--%>
                        <div class="ads">
                            <a href="admission.aspx"><img src="StaticImages/mba.jpg" style="width:100%;height:33%;" alt="" /></a>
                            <a href="admission.aspx"><img src="StaticImages/mca.jpg" style="width:100%;height:33%;"  alt="" /></a>
                            <a href="admission.aspx"><img src="StaticImages/bba.jpg" style="width:100%;height:33%;"  alt="" /></a>
                        </div> 
                        <div class="rtab hideScrollbar" style="height:320px;padding-bottom:10px;overflow:scroll">
                            <div class="tab_navigation">
                                <ul>
                                    <li class="active" ><a   href="#rtab1">Top Students</a></li>
                                    <li><a href="#rtab2">Almuni</a> </li>
                                </ul>
                            </div>
                            <div class="rtab_content" id="rtab1" style="display:none;">
                                <ul>
                                    <asp:Repeater ID="rptTopperRecord" runat="server">
                                        <ItemTemplate>
                                            <li>
                                                <a id="fileLink" runat="server" rel="galleryimg" class="galleryimg" href='<%#Bind("limgPath") %>'>
                                                <div class="thumb">
                                                    <asp:Image ID="ImageLogo" style="width:40px;height:50px" ImageUrl='<%#Eval("simgPath") %>' runat="server" />
                                                </div>
                                                         
                                                <div class="description">
                                                    <asp:Label style="color:blue;font-weight:500;font-size:14px" ID="lblimgName" runat="server" Text='<%#Bind("imageName") %>'></asp:Label><br />
                                                    <asp:Label style="color:black;font-size:14px" ID="lblimgTitle" runat="server" Text='<%#Bind("imageTitle") %>'></asp:Label>
      		                                    </div> 

                                                </a>
                                            </li>
                                        </ItemTemplate>
                                    </asp:Repeater>

                    
                    
                                </ul>
                                <div class="clear"></div>
                            </div>
                            <div class="rtab_content" id="rtab2" style="display:none;">
                                <ul>
                                <asp:Repeater ID="rptAlmuni" runat="server">
                                        <ItemTemplate>
                                            <li>
                                                <a id="fileLink" runat="server" rel="galleryimg" class="galleryimg" href='<%#Bind("limgPath") %>'>
                                                <div class="thumb">
                                                    <asp:Image ID="ImageLogo" style="width:40px;height:50px" ImageUrl='<%#Eval("simgPath") %>' runat="server" />
                                                </div>
                                                         
                                                <div class="description">
                                                    <asp:Label style="color:blue;font-weight:500;font-size:14px" ID="lblimgName" runat="server" Text='<%#Bind("imageName") %>'></asp:Label><br />
                                                    <asp:Label style="color:black;font-size:14px" ID="lblimgTitle" runat="server" Text='<%#Bind("imageTitle") %>'></asp:Label>
      		                                    </div> 

                                                </a>
                                            </li>
                                        </ItemTemplate>
                                    </asp:Repeater>

                                        
                                </ul>
                                <div class="clear"></div>
                            </div>
                        </div>
                    		<div class="clear"></div>
            <div class="college_gallery hideScrollbar" style="height:470px;overflow:scroll;margin-top:20px">
            <h5 class="active" style="color:#0836cf;background:white">Our Salient Features</h5>
            <ul>
                <li>100% Placements</li>
                <li>Wi-Fi Campus</li>
                <li>Transport facility from Different parts of city.</li>
                <li>Separate Hostel facility for boys and Girls with all modern facilities.</li>
                <li>Effective Teaching Methodology.</li>
                <li>Highly Qualified and Experienced Faculty drawn from Corporate and Academic.</li>
                <li>Hi-Tech,Fully Air-conditioned Computer Center having 180 Nos. Latest Computers</li>
                <li>Complete set of Books are provided to ebery student from Library.</li>
                <li>Number of Scholarships is available for meritorious students.</li>
                <li class="nbbdr">Consistent excellent results in Both MBA & MCA. Every year more than 2 students in University Merit List since 1998.</li>
            </ul>
        </div>
        <div class="clear"></div>	
 						<!--col2 ends -->			
              		</div>
                <div class="clear"></div>
			</div>	
		<div class="clear"></div>
</asp:Content>

