<?php

namespace App\Http\Controllers\Auth_admin;

use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class LoginAdminController extends Controller
{
    use AuthenticatesUsers;

    protected $redirectTo = '/admin';

    public function login(Request $request)
    {


        $credentials = $request->validate([
            'email' => ['required', 'email'],
            'password' => ['required'],
        ], [
            'email.required' => 'Email là bắt buộc.',
            'email.email' => 'Email không đúng định dạng.',
            'password.required' => 'Mật khẩu là bắt buộc.',
        ]);

        if (Auth::attempt($credentials)) {

            if (Auth::user()->roles == 1) {
                $request->session()->regenerate();
                return redirect()->intended('/admin');
            } else {
                Auth::logout();
                return back()->with([
                    'roles' => 'Tài khoản không đủ thẩm quyền',
                ]);
            }
        }

        return back()->withErrors([
            'email' => 'Email hoặc mật khẩu không chính xác.',
        ])->withInput($request->only('email'));
    }
}
