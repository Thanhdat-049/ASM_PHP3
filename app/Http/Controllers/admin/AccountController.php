<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AccountController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $id = Auth::user()->id;
        $account = User::query()->where('id','<>', $id)->get();
        return view('admin.contents.account.index', compact('account'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.contents.account.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $validated = $request->validate([
            'name' => 'required|string|max:255',
            'email' => 'required|email|unique:users,email',
            'password' => 'required|string|min:8',
            'roles' => 'required'
        ]);
        User::create($validated);
        return redirect()->route('admin.account.index')->with('success', 'Tạo tài khoản thành công');
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $account = User::find($id);
        return view('admin.contents.account.edit', compact('account'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $validate = $request->validate([
            'name' => 'required|string|max:255',
            'email' => 'required|email|max:255|unique:users ,email,' . $id,
            'roles' => 'required|in:0,1',
        ]);

        $account = User::findOrFail($id);

        $account->update($validate);

        return redirect()->route('admin.account.index')->with('success', 'Sửa Thành Công');
    }

    public function destroy(string $id)
    {
        User::destroy($id);
        return redirect()->route('admin.account.index');
    }
}
