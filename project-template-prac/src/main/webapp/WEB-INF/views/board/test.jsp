<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<head>
<title>접었다 펼 수 있는 영역 만들기</title>
<style>
.label
{
  width: 400px;
  margin: 10px 0 0 0;
  padding: 10px;
  background-color: #ccccff;
  text-align: center;
  border: 1px solid #ccccff;
}
.elements
{
  border: 1px solid #ccccff;
  padding: 10px;
  border: 1px solid #ccccff;
  width: 400px;
}
button
{
   margin: 20px;
}
</style>
</head>
<body>
<form>
  <div>
    <div id="section1" class="label">
      <p>Checkboxes</p>
    </div>
    <div id="section1b" class="elements">
      <input type="checkbox" name="box1" /> - box one<br />
      <input type="checkbox" name="box1" /> - box one<br />
      <input type="checkbox" name="box1" /> - box one<br />
      <input type="checkbox" name="box1" /> - box one<br />
      <input type="checkbox" name="box1" /> - box one<br />
     </div>
    </div>
  <div>

  <div id="section2" class="label">
    <p>Buttons</p>
  </div>
  <div class="elements">
    <input type="radio" name="button1" /> - button one<br />
    <input type="radio" name="button1" /> - button one<br />
    <input type="radio" name="button1" /> - button one<br />
    <input type="radio" name="button1" /> - button one<br />
    <input type="radio" name="button1" /> - button one<br />
    <button>Submit</button>
  </div>
</div>
</form>
<script type="text/javascript">

var elements = document.getElementsByTagName("div");

// 모든 영역 접기
for (var i = 0; i < elements.length; i++) {
  if (elements[i].className == "elements") {
    elements[i].style.display="none";
  } else if (elements[i].className == "label") {
    elements[i].onclick=switchDisplay;
  }
}

// 상태에 따라 접거나 펼치기
function switchDisplay() {

  var parent = this.parentNode;
  var target = parent.getElementsByTagName("div")[1];

  if (target.style.display == "none") {
    target.style.display="block";
  } else {
    target.style.display="none";
  }
  return false;
}
</script>
</body>