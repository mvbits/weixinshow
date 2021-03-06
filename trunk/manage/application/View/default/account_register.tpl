<!DOCTYPE html>
<html>

<head lang="en">
  <meta charset="UTF-8">
  <title>免费注册－{$config[cfg_webname]}</title>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
  <meta name="format-detection" content="telephone=no">
  <meta name="renderer" content="webkit">
  <meta http-equiv="Cache-Control" content="no-siteapp" />
  <link rel="stylesheet" href="{STATIC_URL}common/assets/css/amazeui.min.css" />
  <style>
  .header {
    text-align: center;
  }
  
  .header h1 {
    font-size: 200%;
    color: #333;
    margin-top: 30px;
  }
  
  .header p {
    font-size: 14px;
  }
  .am-form-group{
  	height: auto!important;
  }
  </style>
</head>

<body>
  <div class="header">
    <div class="am-g">
      <h1>免费注册</h1>
      <p>银品惠是一个全新的社交电商平台！</p>
    </div>
    <hr />
  </div>
  
  <div style="width:330px; margin:0 auto">
  	
    <form method="post" class="am-form" id="form_register">
    	<h3>第三方登录</h3>
      <hr>
      <div class="am-btn-group" id="signup-wrapper">
        <a href="#" class="am-btn am-btn-secondary am-btn-sm am-radius" data-type="qq"><i class="am-icon-qq am-icon-sm" ></i> QQ登录</a>
        <a href="#" class="am-btn am-btn-success am-btn-sm am-radius" data-type="wechat"><i class="am-icon-weixin am-icon-sm"></i> 微信登录</a>
        <a href="#" class="am-btn am-btn-primary am-btn-sm am-radius" data-type="weibo"><i class="am-icon-weibo am-icon-sm"></i> 微博登录</a>
      </div>
      <br>
      <br>
      <div class="am-form-group">
        <label for="mobilephone" class="">手机号码：</label>
        <input type="text" class="pad" required minlength="11" maxlength="11" pattern="^1([3]|[5]|[8]|[4]|[7])[0-9]{9}$" data-validation-message="请输入正确的11位手机号码" name="mobilephone" id="mobilephone" placeholder="请填写手机号码" value="">
      </div>
      <div class="am-form-group">
        <label for="account_pwd" class="">密码：</label>
        <input type="password" required minlength="6" name="account_pwd" id="account_pwd" data-validation-message="请设置密码" placeholder="请设置登录密码(建议6位以上字母和数字)" value="">
      </div>
      <div class="am-form-group">
        <label for="msg_code" class="">短信验证码：</label>
        <div class="am-input-group">
          <input type="text" required minlength="6" maxlength="6" pattern "^\d{6}$" name="msg_code" id="msg_code" data-validation-message="请输入手机收到的6位短信验证码" placeholder="6位数字短信验证码" value="">
          <span class="am-input-group-btn">
        <button id="btn_sendsms" class="am-btn am-btn-default" type="button">获取短信验证码</button>
      </span>
        </div>
      </div>
      <div class="am-cf">
        <button id="btn_submit" type="submit" class="am-btn am-btn-primary am-btn-block am-radius"><i class="am-icon-user am-icon-fw"></i> 确认注册</button>
      </div>
    </form>
    <hr>
    <p>已有账号？<a href="{MOBILE_URL}{PHP_SELF}?m=account.login">直接登录></a></p>
  </div>
  <footer>
    <hr>
    <p class="am-padding-left am-text-center">© 2015 银品惠, Inc.</p>
  </footer>
  <!--验证码-->
  <input type="hidden" id="img_vcode" value="">
  <div class="am-modal am-modal-prompt" tabindex="-1" id="my-prompt">
    <div class="am-modal-dialog">
      <div class="am-modal-hd"><strong>图片验证码</strong><span data-am-modal-close class="am-close"><i class="am-icon-times-circle"></i></span></div>
      <div class="am-modal-bd">
        <img id="vcodeimg" src="{MOBILE_URL}{PHP_SELF}?m=account.verifyimg" width="100" height="35">
        <input type="text" class="am-modal-prompt-input am-text-center" style="width:180px" placeholder="请输入图片中的数字">
      </div>
      <div class="am-modal-footer">
        <span class="am-modal-btn" data-am-modal-cancel>取消</span>
        <span class="am-modal-btn" data-am-modal-confirm>提交</span>
      </div>
    </div>
  </div>
  <script type="text/javascript" src="{STATIC_URL}common/assets/js/jquery.min.js"></script>
  <script type="text/javascript" src="{STATIC_URL}common/assets/js/amazeui.js"></script>
  <script type="text/javascript" src="{STATIC_URL}js/modal_html.js"></script>
  <script type="text/javascript">
  var index_url = '{MOBILE_URL}';
  var static_url = '{STATIC_URL}';
  var base_v = '{$BASE_V}';
  var php_self = '{PHP_SELF}';
  var postField = new Object();
  var global_sendsms = 0;
  var global_sendsms_time = 0;
  var mobile_url = '{MOBILE_URL}';
  </script>
  <script type="text/javascript" src="{$BASE_V}js/account_register.js"></script>
</body>

</html>
