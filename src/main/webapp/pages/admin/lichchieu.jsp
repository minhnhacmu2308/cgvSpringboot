<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
<html lang="en">

<%@ include file="/admin/head/head.jsp"  %>

<body class="sb-nav-fixed">
    <%@ include file="/admin/header/header.jsp"  %>
    <div id="layoutSidenav">
        <%@ include file="/admin/menu/menu.jsp"  %>
       <div id="layoutSidenav_content">
            <main>
                <div class="container-fluid px-4">
                    <h1 class="mt-4">Lịch chiếu</h1>
                    <ol class="breadcrumb mb-4">
                        <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                        <li class="breadcrumb-item active">Lịch chiếu</li>
                    </ol>

                    <div class="card mb-4">
                        <div class="card-header">

                            <button type="button" class="btn btn-success" data-bs-toggle="modal"
                                data-bs-target="#exampleModalAdd">
                                Thêm mới
                            </button>
                        </div>
                        <div class="card-body">
                            <table id="datatablesSimple">
                                <thead>
                                    <tr>
                                        <th>STT</th>
                                        <th>Film</th>
                                        <th>Date</th>
                                        <th>Action</th>

                                    </tr>
                                </thead>
                                <tfoot>
                                    <tr>
                                        <th>STT</th>
                                        <th>Name</th>
                                        <th>Date</th>
                                        <th>Action</th>
                                    </tr>
                                </tfoot>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>System Architect</td>
                                        <td>System Architect</td>
                                        <td>
                                            <button type="button" class="btn btn-success" data-bs-toggle="modal"
                                                data-bs-target="#exampleModalAddS">
                                                Add showtime
                                            </button>
                                            <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                                                data-bs-target="#exampleModal">
                                                Update
                                            </button>
                                            <button type="button" class="btn btn-danger">
                                                Delete
                                            </button>
                                        </td>

                                    </tr>
                                    <!-- Modal AddShow-->
                                    <div class="modal fade" id="exampleModalAddS" tabindex="-1"
                                        aria-labelledby="exampleModalLabel" aria-hidden="true">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="exampleModalLabel">Thêm mới</h5>
                                                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                        aria-label="Close"></button>
                                                </div>
                                                <div class="modal-body">
                                                    <form>
                                                        <div class="mb-3">
                                                            <div class="mb-3">
                                                                <label for="category-film" class="col-form-label">Ngày
                                                                    chiếu:</label>
                                                                <input type="date" class="form-control"
                                                                    id="category-film" disabled>
                                                            </div>
                                                            <div class="mb-3">
                                                                <label for="category-film" class="col-form-label">Bắt
                                                                    đầu:</label>
                                                                <input type="time" class="form-control"
                                                                    id="category-film">
                                                            </div>
                                                            <div class="mb-3">
                                                                <label for="category-film" class="col-form-label">Kết
                                                                    thúc:</label>
                                                                <input type="time" class="form-control"
                                                                    id="category-film">
                                                            </div>
                                                        </div>

                                                    </form>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-secondary"
                                                        data-bs-dismiss="modal">Close</button>
                                                    <button type="button" class="btn btn-primary">Save </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Modal Show-->
                                    <!-- Modal Add-->
                                    <div class="modal fade" id="exampleModalAdd" tabindex="-1"
                                        aria-labelledby="exampleModalLabel" aria-hidden="true">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="exampleModalLabel">Thêm mới</h5>
                                                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                        aria-label="Close"></button>
                                                </div>
                                                <div class="modal-body">
                                                    <form>
                                                        <div class="mb-3">
                                                            <label for="category-film"
                                                                class="col-form-label">Phim:</label>
                                                            <select class="form-select"
                                                                aria-label="Default select example">
                                                                <option selected>Open this select menu</option>
                                                                <option value="1">One</option>
                                                                <option value="2">Two</option>
                                                                <option value="3">Three</option>
                                                            </select>
                                                        </div>
                                                        <div class="mb-3">
                                                            <label for="category-film" class="col-form-label">Ngày
                                                                chiếu:</label>
                                                            <input type="date" class="form-control" id="category-film">
                                                        </div>
                                                    </form>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-secondary"
                                                        data-bs-dismiss="modal">Close</button>
                                                    <button type="button" class="btn btn-primary">Save </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Modal Update-->
                                    <!-- Modal Update-->
                                    <div class="modal fade" id="exampleModal" tabindex="-1"
                                        aria-labelledby="exampleModalLabel" aria-hidden="true">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="exampleModalLabel">Cập nhập</h5>
                                                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                        aria-label="Close"></button>
                                                </div>
                                                <div class="modal-body">
                                                    <form>
                                                        <div class="mb-3">
                                                            <label for="category-film"
                                                                class="col-form-label">Phim:</label>
                                                            <select class="form-select"
                                                                aria-label="Default select example">
                                                                <option selected>Open this select menu</option>
                                                                <option value="1">One</option>
                                                                <option value="2">Two</option>
                                                                <option value="3">Three</option>
                                                            </select>
                                                        </div>
                                                        <div class="mb-3">
                                                            <label for="category-film" class="col-form-label">Ngày
                                                                chiếu:</label>
                                                            <input type="date" class="form-control" id="category-film">
                                                        </div>
                                                    </form>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-secondary"
                                                        data-bs-dismiss="modal">Close</button>
                                                    <button type="button" class="btn btn-primary">Save changes</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Modal Update-->

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </main>
            <%@ include file="/admin/footer/footer.jsp"  %>
        </div>
    </div>
    <script>

        ClassicEditor.create(document.querySelector('#editor')).then(eidt => {
            console.log("da" + eidt);
        })
            .catch(error => {
                console.error(error);
            });

    </script>
    <script>

        ClassicEditor.create(document.querySelector('#editor1')).then(eidt => {
            console.log("da" + eidt);
        })
            .catch(error => {
                console.error(error);
            });

    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        crossorigin="anonymous"></script>
    <script src="js/scripts.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
    <script src="js/datatables-simple-demo.js"></script>
</body>

</html>