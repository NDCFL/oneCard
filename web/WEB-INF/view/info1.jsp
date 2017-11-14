<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017-10-30
  Time: 13:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${userVo.userName}的主页</title>
    <link rel="shortcut icon" href="favicon.ico">
    <link href="<%=path%>/css/bootstrap.min.css?v=3.3.5" rel="stylesheet">
    <link href="<%=path%>/css/font-awesome.min.css?v=4.4.0" rel="stylesheet">
    <link href="<%=path%>/css/animate.min.css" rel="stylesheet">
    <link href="<%=path%>/css/style.min.css?v=4.0.0" rel="stylesheet">
	<link href="<%=path %>/js/sweet-alert/sweet-alert.css" rel="stylesheet"/>
</head>
<body class="gray-bg">
<div class="lock-word animated fadeInDown">
    </div>
    <div class="middle-box text-center lockscreen animated fadeInDown">
        <div>
            <div class="m-b-md">
                <img alt="${userVo.userName}" style="width: 120px;height: 120px" class="img-circle circle-border" src="${userVo.headIcon}">
            </div>
            <h3><b><i class="fa fa-male"></i>${userVo.userName}</b></h3>
            <p><font size="5"><i class="fa fa-phone"></i>${userVo.phone}</font></p>
            <p id="card"><font size="4"><i class="fa fa-credit-card"></i>${userVo.userCard}</font><a data-toggle="modal" href="form_basic.html#checkCardId"><i class="glyphicon glyphicon-pencil"></i></a></p>
            <p>&nbsp;</p>
			<div >
                <a data-toggle="modal"  class="btn btn-primary block" id="goto" href="form_basic.html#addMoney" style="color: white;float: left">我要充值</a>
                <a class="btn btn-primary block"  href="<%=path%>/items/itemsPage/${userVo.userCard}" style="color: white;float: right">充值记录</a>
            </div>
        </div>
    </div>
<div id="checkCardId" class="modal fade" aria-hidden="true">
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
<div id="addMoney" class="modal fade" aria-hidden="true">
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
                                <input type="text" placeholder="请输入你的姓名" id="addUserName" class="form-control" name="userName">
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
<script src="<%=path%>/js/jquery.min.js?v=2.1.4"></script>
<script src="<%=path%>/js/bootstrap.min.js?v=3.3.5"></script>
<script src="<%=path%>/js/bootstrapValidator.js"></script>
<script src="<%=path %>/js/sweet-alert/sweet-alert.min.js"></script>
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
			swal("充值失败,你还未帮卡", "", "error");
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
                    }
                }
            }
        }
    });
</script>
</body>
</html>
