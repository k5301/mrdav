<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="AdmDocuments.aspx.cs" Inherits="AdmDocuments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="content_section">
<%--        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server"><ContentTemplate>--%>
				<!-- Gallery -->
                	<div class="gallery">
                    	<div class="gallery_top" style="margin-bottom:20px">
                        	<div class="gallery_heading" style="width:960px">
                            	Updating The Previous Documents
                            </div>

                            <div class="select_gallery">
                            	<%--<a  class="photo pactive" href="#">&nbsp;</a>--%>
                            	<%--<a class="movie " href="#">&nbsp;</a>--%>
                            </div>
                            <div class="clear"></div>
                        </div>
                    	<!-- Col1 -->
                        	<div class="categorydiv" style="margin:20px 15px 0 5px">
                            	<ul>
                                    <li><asp:LinkButton class="selected" ID="applicationForm" runat="server" OnClick="applicationForm_Click">Application Form</asp:LinkButton></li>
                                    <li><asp:LinkButton ID="prospectus" runat="server" OnClick="prospectus_Click">Prospectus</asp:LinkButton></li>
                                    <li><asp:LinkButton ID="mandatoryDisclosure" runat="server" OnClick="mandatoryDisclosure_Click">AICTE Mandatory Disclosure</asp:LinkButton></li>
                                </ul>
                            </div>
                    		<div class="thumbdiv hideScrollbar" style="height:900px;overflow:scroll">
                                <div style="text-align:justify">
                                    <div runat="server" id="divAP">
                                        <div class="content_heading">
                                            <div class="heading" style="color:blue;font-weight:600;font-size:20px">Application Form</div>
                                        </div>
                                        <br />
                                        <ul class="listing" style="width:760px">
                                                        <li>
                                                            <a target="_blank" href="DownloadableFiles/Documents/Application form.pdf">
                                                                
                                                                    <img style="width:60px;height:60px" src="StaticImages/pdflogo.png"  alt="" />
                                                                
                                                            </a>
                                                    
                                                </li>
                                         </ul>
                                        <div class="clear"></div>       
                                        <br />

                                    <div runat="server" id="divUaf">
                                        <div class="content_heading">
                                            <div class="heading" style="color:blue;font-weight:600;font-size:20px">Modify Application Form</div>
                                        </div>

                                        <div>
                                            Application Form: (Format: only PDF)
                                            <br />
                                            <asp:Label ID="lblErrorAF" Visible="false" style="color:red" runat="server" Text=""></asp:Label><br />
                                            <div id="divUploadAF" runat="server">
                                                <br /> 
                                                <asp:FileUpload style="float:left" ID="applicationForm1" runat="server"/>
                                                <asp:Label ID="lblAFname" runat="server" Visible="false" Text=""></asp:Label>
                                                <asp:Label ID="lblAFpth" runat="server" Visible="false" Text=""></asp:Label>
                                                <asp:Button ID="btnUploadAF" OnClientClick="return confirm('Are You Sure? \r\nNote: The Form Will simultaneaously changed as You upload the file If No Error Occur\r\n\r\nMake Sure to have the backup of previous Form')" CssClass="btn btn-primary" runat="server" Text="Make Change" OnClick="btnUploadAF_Click"/> 
                                  
                                                <br /><br />
                                            </div>
                                        </div>
                                        <div class="clear"></div>
                                        <hr>
                                        <br /><br />
                                        <div class="clear"></div>
                                        
                                    </div>
                                  </div>
                                
                                    <div runat="server" id="divP" visible="false">
                                        <div class="content_heading">
                                            <div class="heading" style="color:blue;font-weight:600;font-size:20px">Prospectus</div>
                                        </div>
                                        <br />
                                        <ul class="listing" style="width:760px">
                                                        <li>
                                                            <a target="_blank" href="DownloadableFiles/Documents/Prospectus.pdf">
                                                                
                                                                    <img style="width:60px;height:60px" src="StaticImages/pdflogo.png"  alt="" />
                                                                
                                                            </a>
                                                    
                                                </li>
                                         </ul>
                                        <div class="clear"></div>       
                                        <br />

                                    <div runat="server" id="divUploadP">
                                        <div class="content_heading">
                                            <div class="heading" style="color:blue;font-weight:600;font-size:20px">Modify Prospectus</div>
                                        </div>

                                        <div>
                                            Prospectus: (Format: only PDF)
                                            <br />
                                            <asp:Label ID="lblErrorP" Visible="false" style="color:red" runat="server" Text=""></asp:Label><br />
                                            <div id="div3" runat="server">
                                                <br /> 
                                                <asp:FileUpload style="float:left" ID="prospectus1" runat="server"/>
                                                <asp:Label ID="lblPName" runat="server" Visible="false" Text=""></asp:Label>
                                                <asp:Label ID="lblPpth" runat="server" Visible="false" Text=""></asp:Label>
                                                <asp:Button ID="btnModifyP" OnClientClick="return confirm('Are You Sure? \r\nNote: The Form Will simultaneaously changed as You upload the file If No Error Occur\r\n\r\nMake Sure to have the backup of previous Form')" CssClass="btn btn-primary" runat="server" Text="Make Change" OnClick="btnUploadP_Click"/> 
                                  
                                                <br /><br />
                                            </div>
                                        </div>
                                        <div class="clear"></div>
                                        <hr>
                                        <br /><br />
                                        <div class="clear"></div>
                                        
                                    </div>
                                  </div>
                                
                                    <div runat="server" id="divMD" visible="false">
                                        <div class="content_heading">
                                            <div class="heading" style="color:blue;font-weight:600;font-size:20px">AICTE Mandatory Disclosure</div>
                                        </div>
                                        <br />
                                        <ul class="listing" style="width:760px">
                                                        <li>
                                                            <a target="_blank" href="DownloadableFiles/Documents/AICTE Mandatory Disclosure.pdf">
                                                                
                                                                    <img style="width:60px;height:60px" src="StaticImages/pdflogo.png"  alt="" />
                                                                
                                                            </a>
                                                    
                                                </li>
                                         </ul>
                                        <div class="clear"></div>       
                                        <br />

                                    <div runat="server" id="divUploadMD">
                                        <div class="content_heading">
                                            <div class="heading" style="color:blue;font-weight:600;font-size:20px">Modify AICTE Mandatory Disclosure</div>
                                        </div>

                                        <div>
                                            AICTE Mandatory Disclosure: (Format: only PDF)
                                            <br />
                                            <asp:Label ID="lblErrorMD" Visible="false" style="color:red" runat="server" Text=""></asp:Label><br />
                                            <div id="div4" runat="server">
                                                <br /> 
                                                <asp:FileUpload style="float:left" ID="mandatoryDisclosure1" runat="server"/>
                                                <asp:Label ID="lblMDName" runat="server" Visible="false" Text=""></asp:Label>
                                                <asp:Label ID="lblMDpth" runat="server" Visible="false" Text=""></asp:Label>
                                                <asp:Button ID="btnModifyMD" OnClientClick="return confirm('Are You Sure? \r\nNote: The Form Will simultaneaously changed as You upload the file If No Error Occur\r\n\r\nMake Sure to have the backup of previous Form')" CssClass="btn btn-primary" runat="server" Text="Make Change" OnClick="btnUploadMD_Click"/> 
                                  
                                                <br /><br />
                                            </div>
                                        </div>
                                        <div class="clear"></div>
                                        <hr>
                                        <br /><br />
                                        <div class="clear"></div>
                                        
                                    </div>
                                  </div>
                                </div>
                            <div class="hdiv">&nbsp;</div>
                            </div>
                            
                    </div>    	
                <div class="clear"></div>
                <%--</ContentTemplate></asp:UpdatePanel>--%>
		    </div>
</asp:Content>

