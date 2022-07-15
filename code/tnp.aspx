<%@ Page Title="" Language="C#" MasterPageFile="~/customer.master" AutoEventWireup="true" CodeFile="tnp.aspx.cs" Inherits="tnp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        table tr td{
            font-size:14px;
            padding:5px 15px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="content_section">
				<!-- Gallery -->
                	<div class="gallery">
                    	<div class="gallery_top">
                        	<div class="gallery_heading" style="width:960px">
                            	<h2>Training &amp; Placement Cell</h2>

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
                                	<li><a class="selected" href="#crc">Corporate Resource Cell</a></li>
                                    <li><a href="#poi">Placement officer Invites</a></li>
                                    <li><a href="#ocp">Our Corporate Partners</a></li>
                                    <li><a href="contactUs.aspx">ContactUs</a></li>
                                </ul>
                            </div>
                    		<div class="thumbdiv hideScrollbar" style="height:720px;overflow:scroll;scroll-behavior:smooth;">
                                
                            	
                                <div style="text-align:justify">
                                    <img src="StaticImages/placementslider.gif" style="width:760px;" /><br />
                                    <br />
                                    <div id="crc" >
                                        <div class="content_heading">
                                            <div class="heading"><h2>Corporate Resource Cell</h2> </div>
                                        </div>
                                        <p>The Corporate Resource Cell enables the students to make them better, more informed and creative career choices. It conducts seminars practice session and video assisted training on how to take an interview, participated in Group Discussion and Career Planning. The cell also seek to address the special circumstances that student may face when making the transition to the work, by inviting senior manager and successful consultant to share their experiences though lecturers, Question and answer session and informal get-together. The corporate resource cell maintains extensive Database of Recruiting literature, annual reports & articles and other published material about firm for the reference of students. The including a pre-placemat presentation by potential employers to pin-point the issue expectations and professional opportunity, unique to the firm and industry.</p>
                                        <br />
                                        <p>MR DAV IMS students have been placed in leading domestic, multi-national and public sector organizations in manufacturing service consulting publishing and advertising consumer goods marketing commercial and investment banking financial institution and retail.</p>
                                        <br />    
                                        <p>The corporate Resource Cell has a wide network and contact with various companies directly and though membership of professional bodies/industrial associations. The corporate resource Cell has made special arrangement for campus placement for our outgoing batches. A number of reputed companies including MNCs have visited our campus for final placement. “Placement Form” is attached with the brochure to facilitate you response.</p>
                                        <br /><br />
                                    </div>

                                    <div id="poi">
                                        <div class="content_heading">
                                            <div class="heading"><h2>Placement officer Invites</h2> </div>
                                        </div>
                                        <p>The MBA and MCA Programme at MR DAV IMS is based n contemporary theory practice and provide a strong conceptual foundation to those aspiring as career opportunities in the field of management and IT Sector. We, at MR DAV are making an honest attempt to prepare those professional and entrepreneurs equipped with attitude, knowledge, innovation and desired level of competency to accelerate in environment. The young professionals of MR DAV Institute of Management studies, whose profile are annexed in this bulleting and are set for assuming top positions in different functional areas of management & IT Sector.</p>
                                        <br />
                                        <p>The CR Cell invites captains of industry to visit our campus for Campus Recruitment. The CR Cell published the placement bulletin and organizes Summer and Final Placement as well as co-ordinates the extra curricular and personality development activities in the campus.</p>
                                        
                                        <br /><br />
                                    </div>
                                    
                                    <div id="ocp">
                                        <div class="content_heading">
                                            <div class="heading"><h2>Our Corporate Partners</h2> </div>
                                        </div>

                                        <p>In session 2019-20, final year students of MBA & MCA have placed in many recruited national and multinational companies at the pay scale of 2.0 laks to 5.0 laks per annum and above.</p>
                                        <br />
                                        <p>
                                            <table border="2" cellspacing="0">
                                                <tr><td>ALCATEL, GURGOAN</td><td>KHAITAN ELECTRICALS LTD., FARIDABAD</td></tr>
                                                <tr><td>APRA MARUTI LTD.</td><td>KOTAK MAHINDRA, OLD MUTUAL LIFE INSURANCE</td></tr>
                                                <tr><td>ATLAS CYCLES LTD., SONEPAT</td><td>LAKSHMI PRECISION SCREWS LTD., ROHTAK</td></tr>
                                                <tr><td>AVL INDIA PVT. LTD., GURGOAN</td><td>MARUTI UDYOG LTD. , NEW DELHI</td></tr>
                                                <tr><td>BAJAJ ALLIANCE</td><td>NIIT TECHNOLOGIES LTD, GURGAON</td></tr>
                                                <tr><td>BHIWANI TEXTILE MILLS, BHIWANI</td><td>NUCLEUS SOFTWARE</td></tr>
                                                <tr><td>DAFFODIL SOFTWARES LTD., U.P.</td><td>ERICCSON INDIA LTD., NEW DELHI</td></tr>
                                                <tr><td>ESCORTS LTD.</td><td>SOMANY CERAMICS LTD., BAHADURGARH</td></tr>
                                                <tr><td>ESCORTS JCB LTD, BALLABGARH</td><td>SONY INDIA PVT. LTD.</td></tr>
                                                <tr><td>GE MOTORS INDIA LTD., FARIDABAD</td><td>SQL STAR INTERNATIONAL LTD., NEW DELHI</td></tr>
                                                <tr><td>GRASIM INDUSTRY LTD., BHIWANI</td><td>TATA CONSULTANCY SERVICES, GURGAON</td></tr>
                                                <tr><td>HCL TECHNOLOGIES, NOIDA</td><td>TOTAL HEALTH CARE PVT. LTD, HIMACHAL PRADESH</td></tr>
                                                <tr><td>HERO CYCLES LTD., LUDHIANA</td><td>UTI BANK LTD.</td></tr>
                                                <tr><td>HARTRON INSTRUMENTS DESIGN DEV. & FACILITIES CENTRE, AMBALA</td><td>LIC INDIA LTD.</td></tr>
                                                <tr><td>HCL INFO SYSTEMS LTD., NOIDA</td><td>L & T</td></tr>
                                                <tr><td>HDFC BANK LTD., KARNAL</td><td>VARDHAMAN SPINNING & GENERAL MILLS LTD., N.DELHI</td></tr>
                                                <tr><td>HERO HONDA LTD.</td><td>XANSA LTD., NOIDA</td></tr>
                                                <tr><td>HINDUSTAN LEVER LTD., NEW DELHI</td><td>YAMAHA MOTOR INDIA PVT. LTD., FARIDABAD</td></tr>
                                                <tr><td>HMT LTD., PINJORE</td><td>JINDAL STEELS & STRIPS, HISSAR</td></tr>
                                                <tr><td>ICICI PRUDENTIAL, SONEPAT</td><td>KARVY CONSULTANTS LTD., NEW DELHI</td></tr>
                                            </table>
                                        </p>
                                        <br /><br />
                                    </div>
                                    
                                </div>
                                
                            <div class="hdiv">&nbsp;</div>
                            </div>
                            
                    </div>    	
                <div class="clear"></div>
        <br /><br /><br />
        Our Corporate Partner's
    <div class="image_scroll">
        <a class="leftarrow" href="#"><img src="images/left_arrow.gif"  alt="" /></a>               	
        <div class="slider1"><marquee>
            <ul>
                <li><a href="#"><img src="StaticImages/Slider1.jpg" alt="" /></a></li>
                <li><a href="#"><img src="StaticImages/Slider2.jpg" alt="" /></a></li>
                <li><a href="#"><img src="StaticImages/Slider3.jpg" alt="" /></a></li>
                <li><a href="#"><img src="StaticImages/Slider4.jpg" alt="" /></a></li>
                <li><a href="#"><img src="StaticImages/Slider5.jpg" alt="" /></a></li>
                <li><a href="#"><img src="StaticImages/Slider6.jpg" alt="" /></a></li>
                <li><a href="#"><img src="StaticImages/Slider7.jpg" alt="" /></a></li>
                <li><a href="#"><img src="StaticImages/Slider8.jpg" alt="" /></a></li>
                <li><a href="#"><img src="StaticImages/Slider9.jpg" alt="" /></a></li>
                <li><a href="#"><img src="StaticImages/Slider10.jpg" alt="" /></a></li>
                <li><a href="#"><img src="StaticImages/Slider11.jpg" alt="" /></a></li>
                <li><a href="#"><img src="StaticImages/Slider12.jpg" alt="" /></a></li>
                <li><a href="#"><img src="StaticImages/Slider13.jpg" alt="" /></a></li>
                <li><a href="#"><img src="StaticImages/Slider14.jpg" alt="" /></a></li>
                <li><a href="#"><img src="StaticImages/Slider15.jpg" alt="" /></a></li>
                <li><a href="#"><img src="StaticImages/Slider16.jpg" alt="" /></a></li>
                <li><a href="#"><img src="StaticImages/Slider17.jpg" alt="" /></a></li>
                <li><a href="#"><img src="StaticImages/Slider18.jpg" alt="" /></a></li>
                <li><a href="#"><img src="StaticImages/Slider19.jpg" alt="" /></a></li>
                <li><a href="#"><img src="StaticImages/Slider20.jpg" alt="" /></a></li>
                <li><a href="#"><img src="StaticImages/Slider21.jpg" alt="" /></a></li>
                <li><a href="#"><img src="StaticImages/Slider22.jpg" alt="" /></a></li>    			
            </ul>
        </marquee></div>  
        <a class="rightarrow" href="#"><img src="images/right_arrow.gif"  alt="" /></a>
    </div>
    
		    </div>
</asp:Content>

