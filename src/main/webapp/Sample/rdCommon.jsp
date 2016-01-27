<%@ page contentType="text/html;charset=8859_1"%>

<%
	String mrdPath  = request.getParameter("mrdPath");
	String rdParam  = request.getParameter("rdParam");
%>

<html>
<head>
	<title></title>
</head>

<body leftmargin="0px" rightMargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=no onload="rdOpen()">
<br>
<table border=0>
	<tr>
		<td width=25></td>
		<td><img src="img/logo.gif"></td>
		<td><image src="img/menu/save_1.gif"   OnMouseOver="msover(1) ; return false"
			OnMouseOut="msout(1)" OnClick="Rdviewer.SaveAsDialog()"></td>
		<td><image src="img/menu/print_1.gif"  OnMouseOver="msover(2) ; return false"
			OnMouseOut="msout(2)" OnClick="Rdviewer.PrintDialog()"></td>
		<td><image src="img/menu/first_1.gif"  OnMouseOver="msover(3) ; return false"
			OnMouseOut="msout(3)" OnClick="Rdviewer.FirstPage()"></td>
		<td><image src="img/menu/back_1.gif"   OnMouseOver="msover(4) ; return false"
			OnMouseOut="msout(4)" OnClick="Rdviewer.PrevPage()"></td>
		<td><image src="img/menu/next_1.gif"   OnMouseOver="msover(5) ; return false"
			OnMouseOut="msout(5)" OnClick="Rdviewer.NextPage()"></td>
		<td><image src="img/menu/last_1.gif"    OnMouseOver="msover(6) ; return false"
			OnMouseOut="msout(6)" OnClick="Rdviewer.LastPage()"></td>
		<td><image src="img/menu/zoomin_1.gif"  OnMouseOver="msover(7) ; return false"
			OnMouseOut="msout(7)" OnClick="Rdviewer.ZoomIn()"></td>
		<td><image src="img/menu/zoomout_1.gif" OnMouseOver="msover(8) ; return false"
			OnMouseOut="msout(8)" OnClick="Rdviewer.ZoomOut()"></td>
		<td><image src="img/menu/excel_1.gif"  OnMouseOver="msover(9) ; return false"
			OnMouseOut="msout(9)" OnClick="Rdviewer.ViewExcel()"></td>
		<td><image src="img/menu/hwp_1.gif" OnMouseOver="msover(10) ; return false"
			OnMouseOut="msout(10)" OnClick="Rdviewer.ViewHWP()"></td>
		<td><image src="img/menu/close_1.gif"   OnMouseOver="msover(11) ; return false"
			OnMouseOut="msout(11)" OnClick="window.close()"></td>
	</tr>
</table>

<SCRIPT ID=clientEventHandlersJS LANGUAGE = "JavaScript">

	img_cnt = 11;
	first_img =new Array(img_cnt + 1);
	for (var i = 1; i<=img_cnt; i++) {first_img[i] = new Image() } 
	first_img[1].src = "img/menu/save_1.gif" 
	first_img[2].src = "img/menu/print_1.gif" 
	first_img[3].src = "img/menu/first_1.gif"
	first_img[4].src = "img/menu/back_1.gif" 
	first_img[5].src = "img/menu/next_1.gif"
	first_img[6].src = "img/menu/last_1.gif"
	first_img[7].src = "img/menu/zoomin_1.gif" 
	first_img[8].src = "img/menu/zoomout_1.gif" 
	first_img[9].src = "img/menu/excel_1.gif" 
	first_img[10].src = "img/menu/hwp_1.gif" 
	first_img[11].src = "img/menu/close_1.gif" 


	over_img =new Array(img_cnt + 1);
	for (var i = 1; i<=img_cnt; i++) { over_img[i] = new Image() } 
	over_img[1].src = "img/menu/save_2.gif"
	over_img[2].src = "img/menu/print_2.gif" 
	over_img[3].src = "img/menu/first_2.gif" 
	over_img[4].src = "img/menu/back_2.gif"
	over_img[5].src = "img/menu/next_2.gif"
	over_img[6].src = "img/menu/last_2.gif"
	over_img[7].src = "img/menu/zoomin_2.gif"
	over_img[8].src = "img/menu/zoomout_2.gif"
	over_img[9].src = "img/menu/excel_2.gif"
	over_img[10].src = "img/menu/hwp_2.gif"
	over_img[11].src = "img/menu/close_2.gif"


	function msover(num) {
		document.images[num].src = over_img[num].src
 	}

	function msout(num) {
		document.images[num].src =first_img[num].src
	}

	function Save_OnClick() {
		Rdviewer.SaveAsDialog();
	}

	function Print_OnClick() {
		Rdviewer.PrintDialog();
	}

	function First_OnClick() {
		Rdviewer.FirstPage();
	}

	function Prev_OnClick() {
		Rdviewer.PrevPage();
	}

	function Next_OnClick() {
		Rdviewer.NextPage();
	}

	function Last_OnClick() {
		Rdviewer.LastPage();
	}

	function ZoomIn_OnClick() {
		Rdviewer.ZoomIn();
	}

	function ZoomOut_OnClick() {
		Rdviewer.ZoomOut();
	}

	function Close_OnClick() {
		window.close();
	}

	function rdOpen() {

		Rdviewer.AutoAdjust = false;
		Rdviewer.ZoomRatio = 100;
		Rdviewer.HideToolbar();
		Rdviewer.SetBackgroundColor(255,255,255);

		Rdviewer.ViewShowMode(1);
		Rdviewer.FileOpen("<%= mrdPath %>", "<%= rdParam %>");
	}
</SCRIPT>

<Script src = "rdObject.js"> </Script>

</body>
</html>