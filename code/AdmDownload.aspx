<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="AdmDownload.aspx.cs" Inherits="AdmDownload" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="content_section">
        <%--<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server"><ContentTemplate>--%>
				<!-- Gallery -->
                	<div class="gallery">
                    	<div class="gallery_top" style="margin-bottom:20px">
                        	<div class="gallery_heading" style="width:960px">
                            	Editing Downloads Record
                            </div>

                            <div class="select_gallery">
                            	<%--<a  class="photo pactive" href="#">&nbsp;</a>--%>
                            	<%--<a class="movie " href="#">&nbsp;</a>--%>
                            </div>
                            <div class="clear"></div>
                        </div>
                    	<!-- Col1 -->
                        	<div class="categorydiv" style="margin:20px 0 0 5px">
                            	<ul style="text-decoration:none">
                                    <li><asp:LinkButton class="selected" ID="downloadsRecord" runat="server" OnClick="downloadsRecord_Click">Downloads Record</asp:LinkButton></li>
                                    <li><asp:LinkButton ID="uploadFile" runat="server" OnClick="uploadFile_Click">Upload File</asp:LinkButton></li>
                                    <li><asp:LinkButton ID="deleteFile" runat="server" OnClick="deleteFile_Click">Delete File</asp:LinkButton></li>
                                </ul>
                            </div>
                    		<div class="thumbdiv hideScrollbar" style="height:720px;overflow:scroll;scroll-behavior:smooth;">
                                
                                <div style="text-align:justify">
                                    <div id="divUfile" visible="false" runat="server">
                                        <div class="content_heading">
                                            <div class="heading" style="color:blue;font-weight:600;font-size:20px">Upload New File</div>
                                        </div>
                                        <p>

                                            File Description: 
                                            <asp:TextBox ID="txtDescription" CssClass="form-control" AutoComplete="false" required="required" runat="server"></asp:TextBox>
                                            <br /> 
                                            <asp:FileUpload required="required" style="float:left" ID="FileUpload1" runat="server"/>
                                             <asp:Label ID="lblpth" runat="server" Visible="false" Text=""></asp:Label>
                                           <asp:Label ID="lblIconPath" runat="server" Visible="false" Text=""></asp:Label>
                                           
                                            <asp:Button ID="btnUpload" CssClass="btn btn-primary" runat="server" Text="Upload File" OnClick="btnUpload_Click"/>    
                                            <hr>
                                        </p>
                                    </div>
                                    
                                    <div id="divDr" runat="server">
                                        <div class="content_heading">
                                            <div class="heading" style="color:blue;font-weight:600;font-size:20px">Downloads Record</div>
                                        </div>
                                        <p>
                                        
                                            <ul class="listing" style="width:760px">
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
     
                                                                                        
                                        </p>
                                        <hr>
                                        <br /><br />
                                    </div>
                                    
                                    <div id="divDFile" visible="false" runat="server">
                                        <div class="content_heading">
                                            <div class="heading" style="color:blue;font-weight:600;font-size:20px">Delete A file</div>
                                        </div>
                                        <p>
                                           <asp:GridView DataKeyNames="downloadId" AutoGenerateColumns="False" CssClass="table table-bordered grdBackground" ID="grdDownloadableRecord" runat="server" OnRowDeleting="grdDownloadableRecord_RowDeleting">
                                                <Columns>

                                                 <asp:TemplateField HeaderStyle-CssClass="grdHeaderStyle">
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
                                                 <asp:TemplateField HeaderText="downloadId" Visible="false" HeaderStyle-CssClass="grdHeaderStyle">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lbldownloadId" runat="server" Text='<%#Bind("downloadId") %>'></asp:Label>
                                                        <asp:Label ID="lbldownloadFilePath" runat="server" style="font-size:15px;font-weight:600" Text='<%#Bind("downloadFilePath") %>'></asp:Label>
                                                    </ItemTemplate>
                                                     <HeaderStyle CssClass="grdHeaderStyle" />
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="File Desciprion" HeaderStyle-CssClass="grdHeaderStyle">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lbldownloadDescription" runat="server" style="font-size:15px;font-weight:600" Text='<%#Bind("downloadDescription") %>'></asp:Label>
                                                    </ItemTemplate>
                                                    <HeaderStyle CssClass="grdHeaderStyle" />
                                                </asp:TemplateField>
                                            </Columns>
                                        </asp:GridView>     
                                            <hr>
                                            <br /><br />
                                        </p>
                                    </div>
                                </div>
                                
                            <div class="hdiv">&nbsp;</div>
                            </div>
                            
                    </div>    	
                <div class="clear"></div>
            <%--</ContentTemplate></asp:UpdatePanel>--%>
		    </div>
    <%--<ul class="listing">
                                	<li>
                                		<div class="thumb"><a href="#"><img src="images/news1.gif"  alt="" /></a></div>
                                        <div class="description">
                                        	<h6><a href="#" class="colr">Lorem ipsum dolor sit amet, Lorem ipsum dolor sit </a></h6>
                                            <p>
                                               Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc porta, leo a posuere luctus, justo                                               leomi leoegestas libero, nec volutpat purus mi leosed dui. Suspendisse sem dui, semper in semper                                               lacinia, elementum ornare lorem. Lorem ipsum dolor sit amet.
                                            </p>
                                            <div class="clear"></div>
                                            <div class="info">
                                            	<span class="lastupdte"> Last Update by:<i>Tue, 26/01/11</i></span> 
                                                <span class="tag">Tag: <a href="#">Business</a></span> 
                                            	<span class="comments"><a href="#"><strong>852</strong> Comments</a></span> 
                                                 <a class="moreinfo" href="#">:: Moreinfo</a>
                                            </div>
                                         </div>
                                         <div class="clear"></div>
                                	</li>
                                    <li>
                                		<div class="thumb"><a href="#"><img src="images/news2.gif"  alt="" /></a></div>
                                        <div class="description">
                                        	<h6><a href="#" class="colr">Lorem ipsum dolor sit amet, Lorem ipsum dolor sit </a></h6>
                                            <p>
                                               Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc porta, leo a posuere luctus, justo                                               leomi leoegestas libero, nec volutpat purus mi leosed dui. Suspendisse sem dui, semper in semper                                               lacinia, elementum ornare lorem. Lorem ipsum dolor sit amet.
                                            </p>
                                            <div class="clear"></div>
                                            <div class="info">
                                            	<span class="lastupdte"> Last Update by:<i>Tue, 26/01/11</i></span> 
                                                <span class="tag">Tag: <a href="#">Business</a></span> 
                                            	<span class="comments"><a href="#"><strong>852</strong> Comments</a></span> 
                                                 <a class="moreinfo" href="#">:: Moreinfo</a>
                                            </div>
                                         </div>
                                         <div class="clear"></div>
                                	</li>
                                    <li>
                                		<div class="thumb"><a href="#"><img src="images/news3.gif"  alt="" /></a></div>
                                        <div class="description">
                                        	<h6><a href="#" class="colr">Lorem ipsum dolor sit amet, Lorem ipsum dolor sit </a></h6>
                                            <p>
                                               Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc porta, leo a posuere luctus, justo                                               leomi leoegestas libero, nec volutpat purus mi leosed dui. Suspendisse sem dui, semper in semper                                               lacinia, elementum ornare lorem. Lorem ipsum dolor sit amet.
                                            </p>
                                            <div class="clear"></div>
                                            <div class="info">
                                            	<span class="lastupdte"> Last Update by:<i>Tue, 26/01/11</i></span> 
                                                <span class="tag">Tag: <a href="#">Business</a></span> 
                                            	<span class="comments"><a href="#"><strong>852</strong> Comments</a></span> 
                                                 <a class="moreinfo" href="#">:: Moreinfo</a>
                                            </div>
                                         </div>
                                         <div class="clear"></div>
                                	</li>
                                    <li>
                                		<div class="thumb"><a href="#"><img src="images/news4.gif"  alt="" /></a></div>
                                        <div class="description">
                                        	<h6><a href="#" class="colr">Lorem ipsum dolor sit amet, Lorem ipsum dolor sit </a></h6>
                                            <p>
                                               Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc porta, leo a posuere luctus, justo                                               leomi leoegestas libero, nec volutpat purus mi leosed dui. Suspendisse sem dui, semper in semper                                               lacinia, elementum ornare lorem. Lorem ipsum dolor sit amet.
                                            </p>
                                            <div class="clear"></div>
                                            <div class="info">
                                            	<span class="lastupdte"> Last Update by:<i>Tue, 26/01/11</i></span> 
                                                <span class="tag">Tag: <a href="#">Business</a></span> 
                                            	<span class="comments"><a href="#"><strong>852</strong> Comments</a></span> 
                                                 <a class="moreinfo" href="#">:: Moreinfo</a>
                                            </div>
                                         </div>
                                         <div class="clear"></div>
                                	</li>
                                    <li>
                                		<div class="thumb"><a href="#"><img src="images/news5.gif"  alt="" /></a></div>
                                        <div class="description">
                                        	<h6><a href="#" class="colr">Lorem ipsum dolor sit amet, Lorem ipsum dolor sit </a></h6>
                                            <p>
                                               Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc porta, leo a posuere luctus, justo                                               leomi leoegestas libero, nec volutpat purus mi leosed dui. Suspendisse sem dui, semper in semper                                               lacinia, elementum ornare lorem. Lorem ipsum dolor sit amet.
                                            </p>
                                            <div class="clear"></div>
                                            <div class="info">
                                            	<span class="lastupdte"> Last Update by:<i>Tue, 26/01/11</i></span> 
                                                <span class="tag">Tag: <a href="#">Business</a></span> 
                                            	<span class="comments"><a href="#"><strong>852</strong> Comments</a></span> 
                                                 <a class="moreinfo" href="#">:: Moreinfo</a>
                                            </div>
                                         </div>
                                         <div class="clear"></div>
                                	</li>
                                    <li class="last">
                                		<div class="thumb"><a href="#"><img src="images/news6.gif"  alt="" /></a></div>
                                        <div class="description">
                                        	<h6><a href="#" class="colr">Lorem ipsum dolor sit amet, Lorem ipsum dolor sit </a></h6>
                                            <p>
                                               Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc porta, leo a posuere luctus, justo                                               leomi leoegestas libero, nec volutpat purus mi leosed dui. Suspendisse sem dui, semper in semper                                               lacinia, elementum ornare lorem. Lorem ipsum dolor sit amet.
                                            </p>
                                            <div class="clear"></div>
                                            <div class="info">
                                            	<span class="lastupdte"> Last Update by:<i>Tue, 26/01/11</i></span> 
                                                <span class="tag">Tag: <a href="#">Business</a></span> 
                                            	<span class="comments"><a href="#"><strong>852</strong> Comments</a></span> 
                                                 <a class="moreinfo" href="#">:: Moreinfo</a>
                                            </div>
                                         </div>
                                         <div class="clear"></div>
                                	</li>
                                </ul>
    --%>                            
</asp:Content>

