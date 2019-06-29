<%--
  Created by IntelliJ IDEA.
  User: LJB
  Date: 2019-06-27
  Time: 오후 5:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>TEST PAGE</title>
    <style media="screen">
        th, td { border : 1px solid black; width: 50px; height: 50px;}
    </style>
</head>
<body>

    <!-- 제목 태그와 단락 태그 -->
    <h1 id="top"> H1 </h1>
    <h2> H2 </h2>
    <h3> H3 </h3>

    <p> p태그 테스트 </p>
    <p> p태그<br> 테스트 </p>
    <p> p태그 테스트 </p>
    <p> p태그 테스트 </p>

    <!-- b,u,s,i 글씨 태그 -->
    <p>
        <b>Lorem</b> <i>ipsum</i> dolor sit amet<br>
        <u>Lorem</u> <s>ipsum</s> dolor sit amet
    </p>
    <p>
        <b>Lorem</b> <i>ipsum</i> dolor sit amet<br>
        <u>Lorem</u> <s>ipsum</s> dolor sit amet
    </p>

    <!-- 앵커(a) 태그, 내부링크-->
    <a href="http://www.naver.com/" target="_blank">네이버(blank)</a>
    <a href="http://www.naver.com/" target="_self">네이버(self)</a>
    <a href="#top">회사 소개로 이동하기</a>

    <!-- div, span 태그 -->
    <div>
        <span>Lorem</span> ipsum dolor sit.
    </div>
    <div>
        <span>Lorem</span> ipsum dolor sit.
    </div>


    <!-- 리스트 태그 (ul,ol,dl) 태그 -->
    <ul style="list-style: none;">
    <li> 콩나물</li>
    <li> 파</li>
    <li> 국  간장</li>
    </ul>
    <ol>
        <li>냄비에 국물용 멸치를 넣고 한소끔 끓여 멸치 육수를 7컵(1,400ml) 만든다.</li>
        <li>콩나물을 넣고 뚜껑을 덮어 콩나물이 익을 때까지 끓인다.</li>
        <li>뚜껑을 열고 대파, 마늘, 고춧가루를 넣고 끓인다.</li>
    </ol>
    <dl>
        <dt>리플리 증후군</dt>
        <dd>허구의 세계를 진실이라 믿고 거짓된 말과 행동을 상습적으로 반복하는 반사회적 성격장애를 뜻하는 용어</dd>
        <dt>피그말리온 효과</dt>
        <dd>타인의 기대나 관심으로 인하여 능률이 오르거나 결과가 좋아지는 현상</dd>
        <dt>언더독 효과</dt>
        <dd>사람들이 약자라고 믿는 주체를 응원하게 되는 현상</dd>
        <dd> 부가 설명 가능</dd>
    </dl>

    <!-- 이미지 태그(img, src, alt) -->
    <img src="/resources/images/naver-logo.jpg" alt="네이버 로고(상대경로)">
    <img src="../resources/images/naver-logo.jpg" alt="네이버 로고(절대경로)">


    <!-- 테이블 태그 -->
    <table>
        <tr>
            <th>1</th>
            <td>2</td>
            <td>3</td>
            <td>4</td>
        </tr>
        <tr>
            <td>5</td>
            <td>6</td>
            <td>7</td>
            <td>8</td>
        </tr>
        <tr>
            <td>9</td>
            <td>10</td>
            <td>11</td>
            <td>12</td>
        </tr>
        <tr>
            <td>13</td>
            <td>14</td>
            <td>15</td>
            <td>16</td>
        </tr>
    </table>

    <table>
        <caption>Monthly Savings</caption>
        <thead>
        <tr>
            <th>Month</th>
            <th>Savings</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>January</td>
            <td>$100</td>
        </tr>
        <tr>
            <td>February</td>
            <td>$80</td>
        </tr>
        </tbody>
        <tfoot>
        <tr>
            <td>Sum</td>
            <td>$180</td>
            <td> 엥</td>
        </tr>
        </tfoot>
    </table>


    <table>
        <caption>병합 연습</caption>
        <thead>
        <tr>
            <th colspan="2">제목 1</th>
            <th>제목 2(병합 튐)</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>1,1</td>
            <td rowspan="2">1,2</td>
        </tr>
        <tr>
            <td>2,1</td>
        </tr>
        </tbody>
        <tfoot>
        <tr>
            <td colspan="2">Sum</td>
        </tr>
        </tfoot>
    </table>

    <!-- 테이블 심화 -->
    <table>
        <caption>테이블 심화 학습</caption>
        <thead>
        <tr>
            <th rowspan="2">세로 병합 1</th>
            <th colspan="2">가로 병합 1</th>
            <th rowspan="2">세로 병합 2</th>
            <th colspan="2">가로 병합 2</th>
            <th rowspan="2">세로 병합 3</th>
        </tr>
        <tr>
            <th>2행 셀1</th>
            <th>2행 셀2</th>
            <th>2행 셀3</th>
            <th>2행 셀4</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>바디 셀11</td>
            <td>바디 셀12</td>
            <td>바디 셀13</td>
            <td>바디 셀14</td>
            <td>바디 셀15</td>
            <td>바디 셀16</td>
            <td>바디 셀17</td>

        </tr>
        <tr>
            <td>바디 셀21</td>
            <td>바디 셀22</td>
            <td>바디 셀23</td>
            <td>바디 셀24</td>
            <td>바디 셀25</td>
            <td>바디 셀26</td>
            <td>바디 셀27</td>
        </tr>
        <tr>
            <td>바디 셀31</td>
            <td>바디 셀32</td>
            <td>바디 셀33</td>
            <td>바디 셀34</td>
            <td>바디 셀35</td>
            <td>바디 셀36</td>
            <td>바디 셀37</td>
        </tr>
        </tbody>
    </table>


    <!-- form 연습 -->
    <form action="/formtest">
        <input type="text" name="idid">
        <input type="text" name="pass">
        <input type="submit">
    </form>
</body>
</html>
