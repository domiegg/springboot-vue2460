$(document).ready(function() {
    var blw=$("#myscrollbox li").width();
    //��ȡ������Ԫ��������
    var liArr = $("#myscrollbox ul").children("li");
    //��ȡ��Ԫ������
    var mysw = $("#myscroll").width();
    //��ȡ��Ԫ������������
    var mus = parseInt(mysw/blw);
    //�������Ҫ��ʾ����Ԫ�ص�����
    var length = liArr.length-mus;
    //������Ԫ�ؿ��ƶ������������ص���Ԫ��������
    var i=0
    $("#right").click(function(){
      i++
      //���i��1
      if(i<length){
          $("#myscrollbox").css("left",-(blw*i));
        //��Ԫ�ؼ��������ƶ�������Ϊ��Ԫ�صĿ�ȳ���i��
      }else{
        i=length;
        $("#myscrollbox").css("left",-(blw*length));
        //�������ƶ���Χ���������ƶ�����󼸸����ص�Ԫ����ʾʱi��ֵ�̶�λ�Ѿ����ߵ���Ԫ��������
        }
      });
    $("#left").click(function(){
      i--
      //���i��1
      if(i>=0){
         $("#myscrollbox").css("left",-(blw*i));
       //��Ԫ�ؼ��������ƶ�������Ϊ��Ԫ�صĿ�ȳ���i��
      }else{
       i=0;
       $("#myscrollbox").css("left",0);
       //�������ƶ���Χ���������ƶ�����ǰ������Ԫ�ر���ʾʱiΪ0��
        }
      });
});