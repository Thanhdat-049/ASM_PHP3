<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Symfony\Component\HttpFoundation\Response;

class CheckRole
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next,...$roles): Response
    {
        if (!Auth::check() || Auth::user()->roles == 0) {
            return redirect('/login')->with('msg', 'Vui lòng đăng nhập tài khoản quản trị');
        } else if(Auth::check() && Auth::user()->roles == 1){
            return $next($request);
        }
        // Nếu không có quyền, có thể redirect về trang khác hoặc trả về lỗi 403
        abort(403, 'Unauthorized action.');
    }
}
