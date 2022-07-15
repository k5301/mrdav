<%@ Page Title="" Language="C#" MasterPageFile="~/customer.master" AutoEventWireup="true" CodeFile="admission.aspx.cs" Inherits="admission" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        table{
            width:760px;
        }
    table tr td,th{
            text-align:center;
            padding:5px 15px;
            font-size:14px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="content_section">
				<!-- Gallery -->
                	<div class="gallery">
                    	<div class="gallery_top">
                        	<div class="gallery_heading" style="width:960px">
                            	<h2>Admission Procedure</h2>

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
                                	<li><a class="selected" href="#ap">Admission Procedure</a></li>
                                    <li><a href="#EC">Eligibility Criteria MBA</a></li>
                                    <li><a href="#EC">Eligibility Criteria MCA</a></li>
                                    <li><a href="#EC">Eligibility Criteria BBA</a></li>
                                    <li><a href="contactUs.aspx">ContactUs</a></li>
                                </ul>
                            </div>
                    		<div class="thumbdiv hideScrollbar" style="height:720px;overflow:scroll;scroll-behavior:smooth;">
                                
                                <div style="text-align:justify">
                                    <div id="ap">
                                        <div class="content_heading">
                                            <div class="heading"><h2>DIRECT ADMISSION:</h2> </div>
                                        </div>

                                        <p>The Institute can fulfill the seats through direct admission( Management seats) after the issue of notification of admission by M.D.University, Rohtak in the month of June/July every year.</p>
                                        <br />
                                        <p><span style="color:#0086b2;font-weight:700;font-size:16px">Helpline No. : </span></p>
                                        <div><span style="color:blue;font-weight:600;font-size:14px">Director : </span>8950066210</div>
                                        <div><span style="color:blue;font-weight:600;font-size:14px">Principal : </span>9812000598</div>
                                        <div><span style="color:blue;font-weight:600;font-size:14px">Admission Committee : </span>9355671757, 9350199673, 8872087273</div>

                                        
                                        <br />
                                        
                                        <a href="DownloadableFiles/Documents/Application form.pdf" target="_blank" style="text-decoration:none;float:right;font-size:14px;background-color:#0086b2;color:white;padding:3px 8px">Click here to download the APPLICATION FORM</a>                                        <br /><br />
                                        <br /><br />
                                        <p>
                                            <span style="color:#0086b2;font-weight:700;font-size:16px" >Special Features :</span>
                                            <p>
                                                <ol>
                                                    <li style="font-weight:600;font-size:12px;line-height:20px">100% Placement in National & MNCs through campus placement / Interviews</li>
                                                    <li style="font-weight:600;font-size:12px;line-height:20px">Consistent excellent results in Both MBA & MCA. Every year more than 2 students in University Merit List since 1998.</li>
                                                    <li style="font-weight:600;font-size:12px;line-height:20px">Highly Qualified and Experienced Faculty drawn from Corporate and Academic.</li>
                                                    <li style="font-weight:600;font-size:12px;line-height:20px">Ultra Modern Wi-Fi Campus with a dedicated 2Mbps Lease Line Broadband Connection, 24 hrs. Internet Connectivity.</li>
                                                    <li style="font-weight:600;font-size:12px;line-height:20px">Hi-Tech, Fully Air-conditioned Computer Center having 180 Nos. Latest Dual-Core Computers.</li>
                                                   <li style="font-weight:600;font-size:12px;line-height:20px">Transport facility from Different parts of the city.</li>
                                                    <li style="font-weight:600;font-size:12px;line-height:20px">Separate Hostel facility for boys and Girls with all modern facilities.</li>
                                                    <li style="font-weight:600;font-size:12px;line-height:20px">Full set of Books are provided to every student from Library.</li>
                                                    <li style="font-weight:600;font-size:12px;line-height:20px">Number of Scholarships is available for meritorious students.</li>
                                                </ol>
                                            </p>
                                        </p>
                                        <br />
                                        <p>
                                            <span style="color:#0086b2;font-weight:700;font-size:16px">Campus Placements</span><br />
                                            <p>The Institute has well equipped Training and Placement Cell having interaction with Nation and Multinational Companies to generate Better Placement and Training Opportunities to the Students through Campus Interviews.</p><br />
                                            <p>During the Academic year 2019-20 MR DAV Institute conducted a Job Fair on 12-Feb-2020 in which 41 National & Multinational Companies participated and selected the students for Various Managerial and IT Posts</p><br />
                                            <p>In Addition to Job-Fair, 16 Reputed Organization/Companies visited the Institute for Campus recruitment, Resulting 100% Placement.</p><br />
                                        </p>
                                    </div><br />
                                    <div id="EC" style="margin-bottom:390px;">
                                        <div class="content_heading">
                                            <div class="heading"><h2>ELIGIBILITY CRITERIA FOR ADMISSION</h2> </div>
                                        </div>
                                        
                                        <p>
                                            <table border="2" cellspacing="0">
                                                <tr><th>Course Name</th><th>Course Duration</th><th>Eligibility</th><th>Fee</th></tr>
                                                <tr><td>MBA</td><td>2 Years (Regular)</td><td>Graduation in any discipline with Minimum 50% marks (47.5% for SC/ST)</td><td>Rs. 45000/-PA.</td></tr>
                                                <tr><td>MCA</td><td>2 Years (Regular)</td><td>BCA or B.Sc./B.Com/B.A. with Maths (Graduation with 50% (47.5% for SC/ST))</td><td>Rs. 45000/-PA.</td></tr>
                                                <tr><td>BBA</td><td>3 Years (Regular)</td><td>10+2 in any discipline with Minimum 45% marks</td><td>Rs. 35000/-PA.</td></tr>
                                            </table>
                                        </p><br /><br />
                                        <a href="DownloadableFiles/Documents/Application form.pdf" target="_blank" style="text-decoration:none;float:right;font-size:14px;background-color:#0086b2;color:white;padding:3px 8px">Click here to download the APPLICATION FORM</a>                                        <br /><br />
                                        
                                        <br /><br />
                                    </div>
                                    
                                </div>
                                
                            <div class="hdiv">&nbsp;</div>
                            </div>
                            
                    </div>    	
                <div class="clear"></div>
		    </div>
</asp:Content>

