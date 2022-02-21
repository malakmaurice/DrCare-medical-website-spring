<%--
  Created by IntelliJ IDEA.
  User: malak_000
  Date: 12/19/2021
  Time: 12:27 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Home</title>

    <link type="text/css"
          rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/style.css"/>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.4.1/css/mdb.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
</head>
<body>
<%@ include file="includes/nav.jspf"%>
<%@include file="slider.jspf"%>
<div class="service-container scroll-animations">
    <div class="box animate__animated animate__slow">
        <div class="icon">
            <img src="${pageContext.request.contextPath}/resources/images/doctor.png" alt="doctor">
        </div>
        <h2 class="">
            Qualitfied Doctors
        </h2>
        <p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic.

        </p>
    </div>
    <div class="box animate__animated  animate__slower">
        <div class="icon">
            <img src="${pageContext.request.contextPath}/resources/images/ambulance.png" alt="doctor">
        </div>
        <h2>
            Emergency Care
        </h2>
        <p>
            Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic.
        </p>
    </div>
    <div class="box animate__animated animate__slow">
        <div class="icon">
            <img src="${pageContext.request.contextPath}/resources/images/stethoscope.png" alt="doctor">
        </div>
        <h2>
            Outdoor Checkup
        </h2>
        <p>
            Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic
        </p>
    </div>
    <div class="box animate__animated animate__slower">
        <div class="icon">
            <img src="${pageContext.request.contextPath}/resources/images/24-hours.png" alt="doctor">
        </div>
        <h2>
            24 Hours Service </h2>
        <p>
            Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic
        </p>
    </div>
</div>
<div class="about-drcare scroll-animations">
    <div class="photo">
        <img src="${pageContext.request.contextPath}/resources/images/about.jpg" alt="about">
    </div>
    <div class="content animate__animated">
        <h5>ABOUT DR.CARE</h5>
        <h1>
            Medical specialty concerned with the care of acutely ill hospitalized patients
        </h1>
        <p>
            On her way she met a copy. The copy warned the Little Blind Text, that where it came from it would have
            been rewritten a thousand times and everything that was left from its origin would be the word.
        </p>
        <div class="service">
            <div class="box">
                <div class="icon">
                    <img src="${pageContext.request.contextPath}/resources/images/first-aid-kit.png" alt="">
                </div>
                <div class="content">
                    <h4>
                        PRIMARY CARE
                    </h4>
                    <p>
                        Far far away, behind the word mountains, far from the countries Vokalia.
                    </p>
                </div>
            </div>

            <div class="box">
                <div class="icon">
                    <img src="${pageContext.request.contextPath}/resources/images/dropper.png" alt="">
                </div>
                <div class="content">
                    <h4>
                        LAB TEST
                    </h4>
                    <p>
                        Far far away, behind the word mountains, far from the countries Vokalia. </p>
                </div>
            </div>
            <div class="box">
                <div class="icon">
                    <img src="${pageContext.request.contextPath}/resources/images/experiment-results.png" alt="">
                </div>
                <div class="content">
                    <h4>
                        SYMPTOM CHECK

                    </h4>
                    <p>
                        Far far away, behind the word mountains, far from the countries Vokalia. </p>
                </div>
            </div>
            <div class="box">
                <div class="icon">
                    <img src="${pageContext.request.contextPath}/resources/images/cardiogram.png" alt="">
                </div>
                <div class="content">
                    <h4>
                        HEART RATE
                    </h4>
                    <p>
                        Far far away, behind the word mountains, far from the countries Vokalia. </p>
                </div>
            </div>

        </div>
    </div>
</div>
<div class="department scroll-animations">
    <div class="contant animate__animated">
        <h>DEPARTMENTS</h>
        <h1>Clinic Departments</h1>
        <h6>Separated they live in. A small river named Duden flows by their place and supplies it with the
            <br> regelialia. It is a paradisematic country
        </h6>
    </div>
    <div class="menu ">
        <div class="item Neurolgy active animate__animated animate__faster"> Neurology</div>
        <div class="item Surgical animate__animated animate__fast">Surgical</div>
        <div class="item Dental animate__animated animate__slow">Dental</div>
        <div class="item Ophthalmology animate__animated animate__slow">Ophthalmology</div>
        <div class="item Cardiology animate__animated animate__slower">Cardiology</div>
    </div>
    <div class="dep">
        <div class="description">
            <h1>Neurological Deparments</h1>
            <p>On her way she met a copy. The copy warned the Little Blind Text,
                that where it came from it would have been rewritten a thousand times
                and everything that was left from its origin would be the word.
            </p>
            <div class="boxes">
                <div class="box">
                    <div class="icon">
                        <img src="${pageContext.request.contextPath}/resources/images/first-aid-kit.png" alt="">
                    </div>
                    <div class="content">
                        <h4>
                            PRIMARY CARE
                        </h4>
                        <p>
                            Far far away, behind the word mountains, far from the countries Vokalia.
                        </p>
                    </div>
                </div>

                <div class="box">
                    <div class="icon">
                        <img src="${pageContext.request.contextPath}/resources/images/dropper.png" alt="">
                    </div>
                    <div class="content">
                        <h4>
                            LAB TEST
                        </h4>
                        <p>
                            Far far away, behind the word mountains, far from the countries Vokalia. </p>
                    </div>
                </div>
                <div class="box">
                    <div class="icon">
                        <img src="${pageContext.request.contextPath}/resources/images/experiment-results.png" alt="">
                    </div>
                    <div class="content">
                        <h4>
                            SYMPTOM CHECK

                        </h4>
                        <p>
                            Far far away, behind the word mountains, far from the countries Vokalia. </p>
                    </div>
                </div>
                <div class="box">
                    <div class="icon">
                        <img src="${pageContext.request.contextPath}/resources/images/cardiogram.png" alt="">
                    </div>
                    <div class="content">
                        <h4>
                            HEART RATE
                        </h4>
                        <p>
                            Far far away, behind the word mountains, far from the countries Vokalia. </p>
                    </div>
                </div>
            </div>
        </div>
        <div class="photo">
        </div>
    </div>
</div>
<div class="doctor scroll-animations">
    <h4>doctors</h4>
    <h1>Our Qualitfied Doctors</h1>
    <p>Separated they live in. A small river named Duden flows by their place and supplies it with the
        necessary
        regelialia.
        It is a paradisematic country</p>
    <div class="contant">
        <div class="blog animate__animated fadeleft animate__slower">
            <div class="photo">
                <img src="${pageContext.request.contextPath}/resources/images/depositphotos_12660351-stock-photo-satisfied-smiling-mature-doctor.jpg" alt="">
            </div>
            <div class="text">
                <h1>Dr. Lloyd Wilson</h1>
                <h4>NEUROLOGIST</h4>
                <p>I am an ambitious workaholic, but apart from that, pretty simple person.</p>
            </div>
        </div>
        <div class="blog animate__animated fadeleft animate__slow">
            <div class="photo">
                <img src="${pageContext.request.contextPath}/resources/images/s.jpg" alt="">
            </div>
            <div class="text">
                <h1>Dr. Rachel Parker</h1>
                <h4>OPHTHALMOLOGIST</h4>
                <p>I am an ambitious workaholic, but apart from that, pretty simple person.</p>
            </div>
        </div>
        <div class="blog animate__animated fadeleft animate__fast">
            <div class="photo">
                <img src="${pageContext.request.contextPath}/resources/images/doctor-smiling-with-stethoscope_1154-36.jpg" alt="">
            </div>
            <div class="text">
                <h1>Dr. Ian Smith</h1>
                <h4>DENTIST</h4>
                <p>I am an ambitious workaholic, but apart from that, pretty simple person.</p>
            </div>
        </div>
        <div class="blog animate__animated fadeleft animate__faster">
            <div class="photo">
                <img src="${pageContext.request.contextPath}/resources/images/doctor5-1.png" alt="">
            </div>
            <div class="text">
                <h1>Dr. Alicia Henderson</h1>
                <h4>PEDIATRICIAN</h4>
                <p>I am an ambitious workaholic, but apart from that, pretty simple person.</p>
            </div>
        </div>
    </div>
    <br>
    <br>
    <br>
    <br>
</div>
<div class="patient">
    <div class="content">
        <div class="center">
            <h4>TESTIMONIALS</h4>
            <h1>Our Patients Says About Us</h1>
            <p>Separated they live in. A small river named Duden flows by their place and supplies it with the<br>
                necessary regelialia. It is a paradisematic country</p>
        </div>
    </div>
    <br>
    <br>
    <div class="patient-slider">
        <div class="patient-slide animate__animated animate__slideInRight"
             data-url="${pageContext.request.contextPath}/resources/images/pexels-jeandaniel-francoeur-7596690.jpg">
            <div class="content">
                <div class="patient-img"></div>
                <div class=" qoute">
                        <span class="iconify" data-icon="fa-solid:quote-left" data-inline="false"
                              style="color: #2f89fc;" data-width="66px"></span>
                    <p>Far far away, behind the word mountains, far from the countries Vokalia and<br> Consonantia,
                        there live the blind texts.</p>
                    <h5>Mark Huff</h5>
                    <h6>Student</h6>
                </div>
            </div>
        </div>
        <div class="patient-slide animate__animated animate__slideInRight"
             data-url="${pageContext.request.contextPath}/resources/images/pexels-michael-burrows-7129056.jpg">
            <div class="content">
                <div class="patient-img"></div>
                <div class="qoute">
                        <span class="iconify" data-icon="fa-solid:quote-left" data-inline="false"
                              style="color: #2f89fc;" data-width="66px"></span>
                    <p>Far far away, behind the word mountains, far from the countries Vokalia and<br> Consonantia,
                        there live the blind texts.</p>
                    <h5>Rodel Golez</h5>
                    <h6>striper</h6>
                </div>
            </div>
        </div>
        <div class="patient-slide animate__animated animate__slideInRight"
             data-url="${pageContext.request.contextPath}/resources/images/pexels-nappy-936019.jpg">
            <div class="content">
                <div class="patient-img"></div>
                <div class="qoute">
                        <span class="iconify" data-icon="fa-solid:quote-left" data-inline="false"
                              style="color: #2f89fc;" data-width="66px"></span>
                    <p>Far far away, behind the word mountains, far from the countries Vokalia and<br> Consonantia,
                        there live the blind texts.</p>
                    <h5>Ken Bosh</h5>
                    <h6>Manager</h6>
                </div>
            </div>
        </div>
        <div class="patient-slide animate__animated animate__slideInRight"
             data-url="${pageContext.request.contextPath}/resources/images/pexels-spencer-selover-775358.jpg">
            <div class="content">
                <div class="patient-img"></div>
                <div class="qoute">
                        <span class="iconify" data-icon="fa-solid:quote-left" data-inline="false"
                              style="color: #2f89fc;" data-width="66px"></span>
                    <p>Far far away, behind the word mountains, far from the countries Vokalia and<br> Consonantia,
                        there live the blind texts.</p>
                    <h5>Hnery Bee</h5>
                    <h6>Bussinessman</h6>
                </div>
            </div>
        </div>
        <div class="patient-slide animate__animated animate__slideInRight"
             data-url="${pageContext.request.contextPath}/resources/images/pexels-suit-1043473\ .jpg">
            <div class="content">
                <div class="patient-img"></div>
                <div class="qoute">
                        <span class="iconify" data-icon="fa-solid:quote-left" data-inline="false"
                              style="color: #2f89fc;" data-width="66px"></span>
                    <p>Far far away, behind the word mountains, far from the countries Vokalia and<br> Consonantia,
                        there live the blind texts.</p>
                    <h5>Racky Maurice</h5>
                    <h6>Farmer</h6>
                </div>
            </div>
        </div>
        <div class="dots" style="top: 0;">
            <span class="dot" onclick="currentSlide(1,0)"></span>
            <span class="dot" onclick="currentSlide(2,0)"></span>
            <span class="dot" onclick="currentSlide(3,0)"></span>
            <span class="dot" onclick="currentSlide(4,0)"></span>
            <span class="dot" onclick="currentSlide(5,0)"></span>
        </div>
    </div>
</div>
<br><br><br><br>
<div class="booking" id="booking">
    <div class="consultation">
        <div class="contant">
            <h4>consultation</h4>
            <h1>Free Consiltation</h1>
            <p>Far far away, behind the word mountains, far from
                the countries Vokalia and Consonantia, there live
                the blind texts.</p>

            <form:form method="POST" action="saveAppointment" modelAttribute="appointment">
                <div class="field">
                    <form:input path="firstName" type="text" placeholder="First Name"/>
                </div>
                <div class="field">
                    <form:input path="lastName"  type="text" placeholder="Last Name"/>
                </div>
                <div class="field">
                    <form:select path="service" name="select">
                        <form:option value="Neurology">Neurology</form:option>
                        <form:option value="Cardiology">Cardiology</form:option>
                        <form:option value="Dental">Dental</form:option>
                        <form:option value="Ophthalmology">Ophthalmology</form:option>
                        <form:option value="other Services">other Services</form:option>
                    </form:select>
                </div>
                <div class="field">
                    <form:input path="phone" type="text" placeholder="phone"/>
                </div>

                <div class="field">
                    <form:input path="date" type="date" name="" />
                </div>
                <div class="field">
                    <form:input  path="time" type="time" name="" />
                </div>
                <div class="field">
                    <form:textarea  path="message" name="" id="#" cols="20" rows="2" placeholder="Message"></form:textarea>
                </div>
                <div class="field">
                    <input type="submit" value="Appointment" class="sub-btn">
                </div>
            </form:form>
        </div>
    </div>
    <div class="facts">
        <div class="data">
            <div class="fact-item">
                <h1 class="counter">1</h1>
                <h4>Years of Experienced</h4>
            </div>
            <div class="fact-item">
                <h1 class="counter">1</h1>
                <h4>Years of Experienced</h4>
            </div>
            <div class="fact-item">
                <h1 class="counter">1</h1>
                <h4>Years of Experienced</h4>
            </div>
            <div class="fact-item">
                <h1 class="counter">1</h1>
                <h4>Years of Experienced</h4>
            </div>
        </div>
        <div class="text">
            ABOUT DR.CARE FACTS
        </div>
    </div>
</div>
<br><br><br>
<div class="pricing scroll-animations">
    <div class="content animate__animated">
        <div class="center">
            <h4>PRICING</h4>
            <h1>Our Pricing</h1>
            <p>Separated they live in. A small river named Duden flows by their place and supplies it with the<br>
                necessary regelialia. It is a paradisematic country</p>
        </div>
    </div>
    <div class="price-plan">
        <div class="plan animate__animated animate__slower">
            <div class="content">
                <h2>Basic</h2>
                <span class="price">$24.50</span>
                <span class="session">/ session</span>
                <p>Diagnostic Services<br>
                    Professional Consultation<br>
                    Tooth Implants<br>
                    Surgical Extractions<br>
                    Teeth Whitening</p>
            </div>
            <div>
                <button class="price-btn">Get offer</button>
            </div>
        </div>
        <div class="plan animate__animated animate__slow">
            <div class="content">
                <h2>Standard</h2>
                <span class="price">$34.50</span>
                <span class="session">/ session</span>
                <p>Diagnostic Services<br>
                    Professional Consultation<br>
                    Tooth Implants<br>
                    Surgical Extractions<br>
                    Teeth Whitening</p>
            </div>
            <div>
                <button class="price-btn">Get offer</button>
            </div>
        </div>
        <div class="plan animate__animated animate__fast">
            <div class="content">
                <h2>Premium</h2>
                <span class="price">$54.50</span>
                <span class="session">/ session</span>
                <p>Diagnostic Services<br>
                    Professional Consultation<br>
                    Tooth Implants<br>
                    Surgical Extractions<br>
                    Teeth Whitening</p>
            </div>
            <div>
                <button class="price-btn">Get offer</button>
            </div>
        </div>
        <div class="plan animate__animated animate__faster">
            <div class="content">
                <h2>Premium</h2>
                <span class="price">$89.50</span>
                <span class="session">/ session</span>
                <p>Diagnostic Services<br>
                    Professional Consultation<br>
                    Tooth Implants<br>
                    Surgical Extractions<br>
                    Teeth Whitening</p>
            </div>
            <div>
                <button class="price-btn">Get offer</button>
            </div>
        </div>
    </div>
</div>
<br><br>
<br><br>
<%@include file="includes/footer.jspf"%>
<script src="https://code.iconify.design/1/1.0.7/iconify.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/drcare.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"> </script>
</body>
</html>
