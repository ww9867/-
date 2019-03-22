<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="header.jsp"/>
<jsp:include page="nav.jsp"/>

<script src="index.js"></script>
<section>  	
        <h3>매출전표등록</h3>
       <form name="fr" onsubmit="return asd()"> 
       <table>
       	
           <thead>
           		<col width="30%">
           		<col width="70%">
           </thead>
           <tr>
               <td>매출전표번호</td>
               <th><input type="text" class="text" name="not_next_1" > </th>
           </tr>
           <tr>
               <td>지점코드</td>
               <th><input type="text"class="text" name="not_next_2" > </th>
           </tr>
           <tr>
               <td>판매일자</td>
               <th><input type="text"class="text" name="not_next_3" > </th>
           </tr>
           <tr>
               <td>피자코드</td>
               <th><select name ="pizza" class="text" id="kinds">
                   <option value="">피자 선택</option>
                   <option value="고르골졸라피자">[AA01] 고르골졸라피자</option>
                   <option value="치즈 피자">[AA02] 치즈 피자</option>
                   <option value="페퍼로니피자">[AA03] 페퍼로니피자</option>
                   <option value="콤비네이션">[AA04] 콤비네이션피자</option>
                   <option value="고구마피자">[AA05] 고구마피자</option>
                   <option value="포테이토피자">[AA06] 포테이토피자</option>
                   <option value="불고기피자">[AA07] 불고기피자</option>
                   <option value="나폴리피자">[AA08] 나폴리피자</option>

               </select></th>
           </tr>
           <tr>
               <td>판매수량</td>
               <th><input type="text" class="text" name="not_next_4"> </th>
           </tr>
           <tr>
               <td colspan="2">
               <input type="button"value="전표등록" id ="submit"class="btn" onclick="nullChk()">
               <input type="button"value="다시쓰기"class="btn"></td>

           </tr>
          
       </table>
 		</form>
    </section>
<jsp:include page="footer.jsp"/>