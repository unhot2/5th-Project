<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" href="resources/css/bootstrap_basic.min.css">
<jsp:include page="../include/header.jsp" />
<section class="noticeModifyFormSection">
	<div>
		<form action="noticeModify" method="post">

			<div align="center" style="margin-top: 50px; margin-bottom: 50px;">
				<h1><b>${noticeDetail.title } 수정하기</b></h1>
			</div>
			<div align="center">
				<div style="width: 60%; text-align: left;">
          <div style="margin-top: 10px; margin-bottom: 10px;">
            <div style="float: left;">
              <font size="4"><b>번호</b></font>
            </div>
            <div>
							&nbsp;&nbsp;${noticeDetail.id}<input type="hidden" name="name"
								value="${noticeDetail.id}">
						</div>
          </div>
					<div style="margin-top: 10px; margin-bottom: 10px;">
						<div style="float: left;">
							<font size="4"><b>작성자</b></font>
						</div>
						<div>
							&nbsp;&nbsp;${noticeDetail.name }<input type="hidden" name="name"
								value="${noticeDetail.name }">
						</div>
					</div>

					<div style="margin-top: 10px; margin-bottom: 10px;">
						<div>
							<font size="4"><b>제&nbsp;&nbsp;&nbsp;목</b></font>
						</div>
						<input type="text" name="title" class="form-control mt-4 mb-2"
							size="100" placeholder="제목을 입력해주세요." value="${noticeDetail.title }"
							required>
					</div>

					<div class="form-group"
						style="margin-top: 10px; margin-bottom: 10px;">
						<div>
							<font size="4"><b>내&nbsp;&nbsp;&nbsp;용</b></font>
						</div>
						<textarea class="form-control" rows="10" cols="100" name="content"
							placeholder="내용을 입력해주세요" required>${noticeDetail.content }</textarea>
					</div>
					<div align="right">
						<button type="submit" class="btn btn-secondary mb-3" onclick="return confirm('수정하시겠습니까?')">수정하기</button>
						<button type="button" class="btn btn-secondary mb-3"
							onclick="location.href='noticeList'">목록이동</button>
					</div>
				</div>
			</div>
		</form>
	</div>
</section>
<jsp:include page="../include/footer.jsp" />