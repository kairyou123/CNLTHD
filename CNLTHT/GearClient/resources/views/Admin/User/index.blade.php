@extends('_layout_admin')

@section('title')
    Quản lý User
@endsection

@section('content')

<div class="admin-content-title"><b>QUẢN LÝ NGƯỜI DÙNG</b></div>
            <div class="admin-content">

                <div class="admin-filter">
                    <div class="row">
                        <div class="col-2">
                            <span>TÌM KIẾM</span>
                        </div>
                        <div class="col-10">
                            <form method="POST" id="search-form" name="search-form">
                                <input type="text" class="admin-input">
                                <select class="admin-select" name="role" id="role">
                                    <option value="All" selected>Chức vụ</option>
                                    <option value="Member">Member</option>
                                    <option value="Admin">Admin</option>
                                </select>
                                <button class="admin-button-submit" type="submit" form="search-form" value="Submit"><i class="fas fa-search"></i></button>
                            </form>
                        </div>
                        <div class="admin-plus">
                            <a href="#"><i class="fas fa-plus-circle"></i></a>
                        </div>
                    </div>
                </div>
                <div class="admin-content-title-1">
                    <span class="admin-border-title-1">THÔNG TIN NGƯỜI DÙNG</span>
                </div>
                <div style="margin-top: 20px;">
                <table class="table table-hover">
                    <thead>
                      <tr>
                        <th scope="col">#</th>
                        <th scope="col">Tên</th>
                        <th scope="col">Email</th>
                        <th scope="col">Địa chỉ</th>
                        <th scope="col">Số điện thoại</th>
                        <th scope="col">Chức vụ</th>
                        <th scope="col">Chức năng</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <th scope="row">1</th>
                        <td>Hoàng Long Liêu</td>
                        <td>shinlong1998@gmail.com</td>
                        <td>123 TRẦN BÌNH TRỌNG QUẬN 5</td>
                        <td>09029382745</td>
                        <td>Member</td>
                        <td>
                            <button class="admin-button edit"><i class="fas fa-edit"></i></button>
                            <button class="admin-button delete"><i class="fas fa-trash-alt"></i></button>
                        </td>
                      </tr>
                      <tr>
                        <th scope="row">2</th>
                        <td>Hoàng Long Liêu</td>
                        <td>shinlong1998@gmail.com</td>
                        <td>123 TRẦN BÌNH TRỌNG QUẬN 5</td>
                        <td>09029382745</td>
                        <td>Member</td>
                        <td>
                            <button class="admin-button edit"><i class="fas fa-edit"></i></button>
                            <button class="admin-button delete"><i class="fas fa-trash-alt"></i></button>
                        </td>
                      </tr>
                    </tbody>
                  </table>
                </div>
                <div class="admin-pagination">
                        PAGINATION
                </div>
            </div>
@endsection
