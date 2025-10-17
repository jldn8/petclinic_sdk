<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="true" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="petclinic" tagdir="/WEB-INF/tags" %>

<petclinic:layout pageName="home">
    <div class="container mt-5 text-center">

        <h2 style="font-weight:700; color:#2c3e50;">PetClinic+</h2>
        <p style="color:#7f8c8d; font-size:1.1em;">1차·2차 동물병원 진료정보 공유 시스템</p>

        <hr style="margin:40px auto; width:60%; border-top:2px solid #eee;">

        <div class="mt-4">
            <h4 style="color:#34495e;">안전하게, 효율적으로, 연결되는 진료</h4>
            <p style="color:#555; font-size:1em; line-height:1.6;">
                병원 간 진료이력을 클라우드 기반으로 자동 연계하여<br/>
                보호자의 편의와 수의사의 진료 효율을 높입니다.
            </p>
        </div>
    </div>
</petclinic:layout>
