<%--
  Created by IntelliJ IDEA.
  User: chenfeilong
  Date: 2017/10/23
  Time: 10:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>

<head>
    <title>${userVo.userName}的主页</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
    <meta name="description" content="">
    <link href="<%=path %>/js/sweet-alert/sweet-alert.css" rel="stylesheet"/>
    <link href="<%=path%>/css/bootstrap.min.css?v=3.3.5" rel="stylesheet">
    <link href="<%=path%>/css/font-awesome.min.css?v=4.4.0" rel="stylesheet">
    <link href="<%=path%>/css/animate.min.css" rel="stylesheet">
    <link rel="stylesheet" href="<%=path%>/css/weui.min.css" tppabs="http://www.sucaihuo.com/modals/36/3647/demo/lib/weui.min.css">
    <link rel="stylesheet" href="<%=path%>/css/jquery-weui.css" tppabs="http://www.sucaihuo.com/modals/36/3647/demo/css/jquery-weui.css">
    <link rel="stylesheet" href="<%=path%>/css/reset.css" tppabs="http://www.sucaihuo.com/modals/36/3647/demo/css/reset.css">
    <link rel="stylesheet" href="<%=path%>/css/box-flex.css" tppabs="http://www.sucaihuo.com/modals/36/3647/demo/css/box-flex.css">
    <link rel="stylesheet" href="<%=path%>/css/style.css" tppabs="http://www.sucaihuo.com/modals/36/3647/demo/css/style.css">

    <script src="<%=path%>/js/jquery.min.js?v=2.1.4" tppabs="http://www.sucaihuo.com/modals/36/3647/demo/lib/jquery-2.1.4.js"></script>
    <script src="<%=path%>/js/adaptive.js" tppabs="http://www.sucaihuo.com/modals/36/3647/demo/js/adaptive.js" type="text/javascript" charset="utf-8"></script>
    <script type="text/javascript">
        adaPtive(); //铺页面调用
        //页面加载时调用
        $(function() { direction(); });
        //用户变化屏幕方向时调用
        $(window).on('orientationchange', function(e) { direction(); });
        //调用adaptive
        function adaPtive(max) {
            window['adaptive'].desinWidth = 720;
            window['adaptive'].baseFont = 24;
            window['adaptive'].scaleType = 1;
            window['adaptive'].maxWidth = max;
            window['adaptive'].init();
        }
        //判断手机屏幕方向
        function direction() { if (window.orientation == 90 || window.orientation == -90) { adaPtive(320); return false; } else if (window.orientation == 0 || window.orientation == 180) { adaPtive(); return false; } }
    </script>
</head>
<body style="background-color:#efeef4">
<!--me-main -->
<div class=" me-main">

    <div class="weui-cells clearfix flex" style="margin-top:-30px" >
        <a class="weui-cell head-cells " href="javascript:;">
            <div class="weui-cell__hd"><img src="${userVo.headIcon}" tppabs="http://www.sucaihuo.com/modals/36/3647/demo/images/me_head_img.jpg" alt=""></div>
            <div class="weui-cell__bd flex flex-v">
                <p>${userVo.userName}</p>
                <p>手机号:${userVo.phone}</p>
            </div>
        </a>
    </div>
    <div class="weui-cells__title"></div>
    <div class="weui-cells">
        <div class="weui-cell weui-cell_access" >
            <div class="weui-cell__hd"><img src="<%=path%>/images/me_plate.png"  alt=""></div>
            <div class="weui-cell__bd">
                <p>卡号:${userVo.userCard}</p>
            </div>
        </div>
    </div>
    <div class="weui-cells__title"></div>
    <div class="weui-cells">
        <a class="weui-cell weui-cell_access" data-toggle="modal" data-target="#checkCardId">
            <div class="weui-cell__hd"><img src="<%=path%>/images/me_collect.png" tppabs="http://www.sucaihuo.com/modals/36/3647/demo/images/me_collect.png" alt=""></div>
            <div class="weui-cell__bd">
                <p >修改卡号</p>
            </div>
            <div class="weui-cell__ft"></div>
        </a>
        <a class="weui-cell weui-cell_access" data-toggle="modal" data-target="#addMoney">
            <div class="weui-cell__hd"><img src="<%=path%>/images/me_photo.png" tppabs="http://www.sucaihuo.com/modals/36/3647/demo/images/me_photo.png" alt=""></div>
            <div class="weui-cell__bd">
                <p>我要充值</p>
            </div>
            <div class="weui-cell__ft"></div>
        </a>


    </div>
    <div class="weui-cells__title"></div>
    <div class="weui-cells">
        <a class="weui-cell weui-cell_access" href="<%=path%>/items/itemsPage/${userVo.userCard}">
            <div class="weui-cell__hd"><img src="<%=path%>/images/me_card.png" tppabs="http://www.sucaihuo.com/modals/36/3647/demo/images/me_card.png" alt=""></div>
            <div class="weui-cell__bd">
                <p>充值记录</p>
            </div>
            <div class="weui-cell__ft"></div>
        </a>
    </div>
    <p style="text-align:center;margin-top:130px">Copyright @2017 珠海丽珠试剂股份有限公司  </p>
    <!-- moreLink
    <!-- moreLink -->
</div>
<div id="checkCardId" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body">
                <div class="row">
                    <div class="col-sm-6 b-r">
                        <form role="form" id="form" action="<%=path%>/login/updateCard">
                            <input  type="hidden" name="id" id="id" value="${userVo.id}"/>
                            <div class="form-group">
                                <label>姓名：</label>
                                <input type="text" name="userName" id="userName" value="${userVo.userName}" placeholder="请输入姓名" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>卡号：</label>
                                <input type="number" name="userCard" id="userCard" placeholder="请输入卡号" class="form-control">
                            </div>
                            <div>
                                <button class="btn btn-sm btn-primary pull-right m-t-n-xs" type="submit"><strong>确认修改</strong></button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div id="addMoney" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body">
                <div class="row">
                    <div class="col-sm-6 b-r">
                        <form role="form" id="money" action="<%=path%>/pay/index" onsubmit="return checkcard();">
                            <input  type="hidden" name="id"  value="${userVo.id}"/>
                            <p id="msg"></p>
                            <div class="form-group">
                                <label>充值金额：</label>
                                <input type="number" name="userMoney"  placeholder="请输入充值金额" class="form-control">
                            </div>
                            <div>
                                <button class="btn btn-sm btn-primary pull-right m-t-n-xs" type="submit" id="inmoney"><strong>确认充值</strong></button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div id="modal-form" class="modal fade" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body">
                <div class="row">
                    <div class="col-sm-6 b-r">
                        <h3 class="m-t-none m-b">我要绑卡</h3>
                        <form role="addCard"  id="addCard" method="post" action="<%=path%>/login/addCard">
                            <input  type="hidden" name="id" value="${userVo.id}" />
                            <div class="form-group">
                                <label>姓名：</label>
                                <input type="text" placeholder="请输入你的姓名" id="addUserName" value="${userVo.userName}" class="form-control" name="userName">
                            </div>
                            <div class="form-group">
                                <label>卡号：</label>
                                <input type="number" placeholder="请输入卡号" id="addUserCard" class="form-control" name="userCard">
                            </div>
                            <div>
                                <button class="btn btn-sm btn-primary pull-right m-t-n-xs" type="submit"><strong>绑定</strong></button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="<%=path%>/js/fastclick.js" tppabs="http://www.sucaihuo.com/modals/36/3647/demo/lib/fastclick.js"></script>
<script>
    $(function() {
        FastClick.attach(document.body);
        $("#showMoreLink").on('click',function(){
            $(".moreLink").toggle("fast");
        })
    });
</script>

<script src="<%=path%>/js/bootstrap.min.js?v=3.3.5"></script>
<script src="<%=path%>/js/bootstrapValidator.js"></script>
<script src="<%=path %>/js/sweet-alert/sweet-alert.min.js"></script>
<script src="<%=path%>/js/jquery-weui.js" tppabs="http://www.sucaihuo.com/modals/36/3647/demo/js/jquery-weui.js"></script>
<script>
    var card = "${userVo.userCard}";
    if(card=='暂缺'){
        $('#modal-form').modal({
            keyboard: true
        })
    }
</script>
<script>
    function checkcard(){
        var ca = $("#card").text();
        if(ca=='暂缺'){
            swal("充值失败,你还未绑卡", "", "error");
            return false;
        }else{
            return true;
        }
    }
</script>
<script>
    $('#form').bootstrapValidator({
        message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            userName: {
                message: '姓名验证失败',
                validators: {
                    notEmpty: {
                        message: '姓名不能为空'
                    },
                    stringLength: {
                        min: 2,
                        max: 20,
                        message: '姓名长度必须为2-20位'
                    }
                }
            },
            userCard: {
                message: '卡号验证失败',
                validators: {
                    notEmpty: {
                        message: '卡号不能为空'
                    },
                    stringLength: {
                        min: 18,
                        max: 18,
                        message: '卡号长度必须为18位'
                    }
                }
            }
        }
    });
    $('#money').bootstrapValidator({
        message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            userMoney: {
                message: '金额验证失败',
                validators: {
                    notEmpty: {
                        message: '金额不能为空'
                    }
                }
            }
        }
    });
    $('#addCard').bootstrapValidator({
        message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            userName: {
                message: '姓名验证失败',
                validators: {
                    notEmpty: {
                        message: '姓名不能为空'
                    },
                    stringLength: {
                        min: 2,
                        max: 20,
                        message: '姓名长度必须为2-20位'
                    }
                }
            },
            userCard: {
                message: '卡号验证失败',
                validators: {
                    notEmpty: {
                        message: '卡号不能为空'
                    },
                    stringLength: {
                        min: 18,
                        max: 18,
                        message: '卡号长度必须为18位'
                    },
                    threshold: 6,
                    remote: {
                        url: '<%=path%>/login/checkKh',
                        message: '卡号不存在',
                        delay :  2000,
                        type: 'POST'
                    }
                }
            }
        }
    });
</script>
</body>
</html>