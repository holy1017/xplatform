<%@ page contentType="text/html;charset=8859_1"%>

<html>
<head><title>Report Designer Test</title>

<script language="javascript">

	function on_submit() {
		if (document.form1.nationCode.value == "") {
			alert("���� �ֹε�Ϲ�ȣ�� �Է��ϼ���!");
			return false;
		}
		if (document.form1.empNo.value == "") {
			alert("������ ��ȣ�� �Է��ϼ���!");
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
		<td>�ֹε�Ϲ�ȣ : <input type="text" name="nationCode" size=10 value="3708201024925"></td>
		<td width=10></td>
		<td>������ ��ȣ : <input type="text" name="empNo" size=10 value="19432293"></td>
		<td width=10></td>
		<td>
                    <input type="hidden" name="mrdPath">
                    <input type="hidden" name="rdParam">
		    <input type="button" size=15 value="���" OnClick="on_search();">
		</td>
	</tr>
</table>

</form>

</body>
</html>