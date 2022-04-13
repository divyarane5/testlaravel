<?php

namespace App\Http\Controllers\Front;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Cookie;

use Crypt;
use Mail;
class FrontController extends Controller
{
    public function index(Request $request)
    {

       

        return view('front.index');
    }

    public function category(Request $request)
    {   
      
      
        $query=DB::table('products');
       
        $query=$query->where(['products.status'=>1]);
     
       
      
       
        $query=$query->distinct()->select('products.*');
        $query=$query->paginate(5);

        $result['product']=$query;
        
    
      

        return view('front.category',$result);
    }
  

    public function registration(Request $request)
    {
        if($request->session()->has('FRONT_USER_LOGIN')!=null){
            return redirect('/');
        }
        
        $result=[];
        return view('front.registration',$result);
    }
    
    public function registration_process(Request $request)
    {
       $valid=Validator::make($request->all(),[
            "name"=>'required',
            "email"=>'required|email|unique:customers,email',
            "password"=>'required',
            "mobile"=>'required|numeric|digits:10',
       ]);

       if(!$valid->passes()){
            return response()->json(['status'=>'error','error'=>$valid->errors()->toArray()]);
       }else{
            $rand_id=rand(111111111,999999999);
            $arr=[
                "name"=>$request->name,
                "email"=>$request->email,
                "password"=>Crypt::encrypt($request->password),
                "mobile"=>$request->mobile,
                "status"=>1,
                "is_verify"=>1,
                "rand_id"=>$rand_id,
                "created_at"=>date('Y-m-d h:i:s'),
                "updated_at"=>date('Y-m-d h:i:s')
            ];
            $query=DB::table('customers')->insert($arr);
            if($query){

                $data=['name'=>$request->name,'rand_id'=>$rand_id];
                $user['to']=$request->email;
                // Mail::send('front/email_verification',$data,function($messages) use ($user){
                //     $messages->to($user['to']);
                //     $messages->subject('Email Id Verification');
                // });

                return response()->json(['status'=>'success','msg'=>"Registration successfully."]);
            }
       }
    }

    public function login_process(Request $request)
    {
       
        $result=DB::table('customers')  
            ->where(['email'=>$request->str_login_email])
            ->get(); 
        
        if(isset($result[0])){
            $db_pwd=Crypt::decrypt($result[0]->password);
            $status=$result[0]->status;
            $is_verify=$result[0]->is_verify;

            if($is_verify==0){
                return response()->json(['status'=>"error",'msg'=>'Please verify your email id']); 
            }
            if($status==0){
                return response()->json(['status'=>"error",'msg'=>'Your account has been deactivated']); 
            }

            if($db_pwd==$request->str_login_password){

                if($request->rememberme===null){
                    setcookie('login_email',$request->str_login_email,100);
                    setcookie('login_pwd',$request->str_login_password,100);
                }else{
                   setcookie('login_email',$request->str_login_email,time()+60*60*24*100);
                   setcookie('login_pwd',$request->str_login_password,time()+60*60*24*100);
                }

                $request->session()->put('FRONT_USER_LOGIN',true);
                $request->session()->put('FRONT_USER_ID',$result[0]->id);
                $request->session()->put('FRONT_USER_NAME',$result[0]->name);
                $status="success";
                $msg="";

                $getUserTempId=getUserTempId();
             
                
            }else{
                $status="error";
                $msg="Please enter valid password";
            }
        }else{
            $status="error";
            $msg="Please enter valid email id";
        }
       return response()->json(['status'=>$status,'msg'=>$msg]); 
       //$request->password
    }
  
   

    public function about_us(Request $request)
    {
        $result['categories_menu']=DB::table('categories')
        ->where(['status'=>1])
        ->get();   
        return view('front.about_us',$result);
    }

    public function contact_us(Request $request)
    {
        $result['categories_menu']=DB::table('categories')
        ->where(['status'=>1])
        ->get();   
        return view('front.contact_us',$result);
    }
    
}
