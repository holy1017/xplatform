<%@ page contentType="text/html;charset=8859_1"%>

<html>
<head><title>Report Designer Test</title>

<script language="javascript">

	function on_submit() {
		if (document.form1.acctNo1.value == "") {
			alert("���¹�ȣ1�� �Է��ϼ���!");
			return false;
		}
		if (document.form1.acctNo2.value == "") {
			alert("���¹�ȣ2�� �Է��ϼ���!");
			return false;
		}
		if (document.form1.startDate.value == "") {
			alert("��ȸ����1�� �Է��ϼ���!");
			return false;
		}
		if (document.form1.endDate.value == "") {
			alert("��ȸ����2�� �Է��ϼ���!");
			return false;
		}
		return true;
	}

	function on_search(){
		if (on_submit()) {

			document.form1.mrdPath.value = "http://server_ip:port/report/mrd/report2.mrd";
			document.form1.rdParam.value = "/rp [" + document.form1.acctNo1.value + "] [" + document.form1.acctNo2.value +  "] [" + document.form1.startDate.value + "] [" + document.form1.endDate.value + "]";
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
		<td>���¹�ȣ1(DPRT_CD) : <input type="text" name="acctNo1" size=10 value="001"></td>
		<td width=10></td>
		<td>���¹�ȣ2(AC_NO) : <input type="text" name="acctNo2" size=10 value="01123456"></td>
		<td width=10></td>
		<td>��ȸ����1 : <input type="text" name="startDate" size=10 value="20050201"></td>
		<td width=10></td>
		<td>��ȸ����2 : <input type="text" name="endDate" size=10 value="20050217"></td>
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