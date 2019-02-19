<?php

namespace App\Http\Controllers\Home;

use Illuminate\Http\Request;

// 使用类

use App\Http\Controllers\Controller;

// 登录控制器
class LoginController extends Controller
{
    // 登录页

    public function index(){

        // 获取上一个页面

        session(['prevPage'=>$_SERVER['HTTP_REFERER']]);

        // 登陆页面

        return view("home.login");
    }

    // 处理登录

    public function check(Request $request){

        // 接收数据

        $email=$request->input("email");
        $pass=$request->input("pass");

        // 取数据库中进行查询

        $data=\DB::table("user")->where("email","$email")->first();
        // 判断数据是否存在

        if ($data) {
            # code...
            // 判断密码是否正确

            if ($pass==\Crypt::decrypt($data->pass)) {

                session(['lenovoHomeUserInfo.email'=>$data->email]);
                session(['lenovoHomeUserInfo.name'=>$data->name]);
                session(['lenovoHomeUserInfo.id'=>$data->id]);
                # code...
                return redirect(session('prevPage'));
            }else{
                return back();
            }
        }else{
            return back();
        }
    }
    // 退出的方法
    public function logout(Request $request){
        $request->session()->flush();

        return redirect('/');
    }

    // 找回密码

    public function zhaohui(){

        if ($_POST) {

            // 接收数据

            $email=$_POST['email'];

            // 获取数据
            $data=\DB::table("user")->where("email","$email")->first();
            
            // 判断数据是否争取

            if ($data) {
                # code...

                // 我们使用的是一个闭包函数
                \Mail::send('mail.zh',["id"=>$data->id,"token"=>$data->token],function($message) use($email){
                    $message->to($email);
                    $message->subject("找回密码");
                });

                // 加载找回密码提示页面

                $mailArr=explode( "@",$email);


                $href="mail.".$mailArr[1];



                return view("home.zhaohuiTishi")->with("href",$href);
            }else{
                return back();
            }
        }else{
            return view("home.zhaohui");
        }

        
    }

    // 修改密码

    public function savePass($id,$token){

        // 判断post是否存在 存在修改密码 不存在修改密码页面
        if ($_POST) {
            # code...
            // 判断密码是否一直
            if ($_POST['pass']==$_POST['repass']) {
                # code...
                // 密码长度
                if (strlen($_POST['pass'])>=6 && strlen($_POST['pass'])<=12) {
                    # code...

                    // 格式数据并且进行修改
                    $data=array();

                    $data['token']=str_random(50);
                    $data['pass']=\Crypt::encrypt($_POST['pass']);

                    if (\DB::table("user")->where("id",$id)->update($data)) {
                        # code...
                        return redirect("/login");
                    }else{
                        return back();
                    }

                }else{
                    return back();
                }
            }else{
                return back();
            }
        }else{
            return  view("home.savePass");

        }

    }
}
