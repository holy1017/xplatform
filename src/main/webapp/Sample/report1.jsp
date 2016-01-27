<%@ page contentType="text/html;charset=8859_1"%>

<html>
<head><title>Report Designer Test</title>

<script language="javascript">

	function on_submit() {
		if (document.form1.nationCode.value == "") {
			alert("고객의 주민등록번호를 입력하세요!");
			return false;
		}
		if (document.form1.empNo.value == "") {
			alert("관리자 번호를 입력하세요!");
			return false;
		}
		return true;
	}

	function on_search(){
		if (on_submit()) {

			document.form1.mrdPath.value = "http://server_ip:port/report/mrd/report1.mrd";
			document.form1.rdParam.value = "/rp [" + document.form1.nationCode.value + "] [" + document.form1.empNo.value + "]";
			document.form1.submit();
		}
	}
</script>
</head>

<body>

<form name="form1" target=report method=POST action='rdCommon.jsp'>

<table border=0>
	<tr>
		<td width=15></td>
		<td>주민등록번호 : <input type="text" name="nationCode" size=10 value="3708201024925"></td>
		<td width=10></td>
		<td>관리자 번호 : <input type="text" name="empNo" size=10 value="19432293"></td>
		<td width=10></td>
		<td>
                    <input type="hidden" name="mrdPath">
                    <input type="hidden" name="rdParam">
		    <input type="button" size=15 value="출력" OnClick="on_search();">
		</td>
	</tr>
</table>

</form>

</body>
</html>