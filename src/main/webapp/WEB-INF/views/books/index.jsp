<%@ include file="/WEB-INF/views/layouts/header.jsp" %>

<main class="container">
    <section class="container">
    
        <div class="container">
            <a class="btn btn-primary" href="./books/create">tambah buku</a>
        </div>

        <c:set var="toastNotif" value="text-bg-primary" />
        <c:if test="${status == 'create'}">
            <c:set var="toastNotif" value="text-bg-success" />
        </c:if>
        <c:if test="${status == 'update'}">
            <c:set var="toastNotif" value="text-bg-primary" />
        </c:if>
        <c:if test="${status == 'delete'}">
            <c:set var="toastNotif" value="text-bg-danger" />
        </c:if>

        <c:if test="${not empty success}">
            <div class="toast align-items-center ${toastNotif} border-0" role="alert" aria-live="assertive" aria-atomic="true">
                <div class="d-flex">
                    <div class="toast-body">
                        ${success}
                    </div>
                    <button type="button" class="btn-close btn-close-white me-2 m-auto" data-bs-dismiss="toast" aria-label="Close"></button>
                </div>
            </div>
        </c:if>
        
<div class="container my-4">
    <h2 class="mb-4">Daftar Buku</h2>
    <div class="table-responsive">
        <table class="table table-bordered table-hover align-middle text-center">
            <thead class="table-dark">
                <tr>
                    <th scope="col">No</th>
                    <th scope="col">Title</th>
                    <th scope="col">ISBN</th>
                    <th scope="col">Year</th>
                    <th scope="col">Price</th>
                    <th scope="col">Stock</th>
                    <th scope="col">Category</th>
                    <th scope="col">Description</th>
                    <th scope="col">Action</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${booksList}" var="book" varStatus="loop">
                    <tr>
                        <td>${loop.count}</td>
                        <td>${book.title}</td>
                        <td>${book.isbn}</td>
                        <td>${book.year}</td>
                        <td>
                            <fmt:formatNumber value="${book.price}" type="currency"
                            currencySymbol="Rp" maxFractionDigits="0" />
                        </td>
                        <td>${book.stock}</td>
                        <td>${book.category}</td>
                        <td>${book.description}</td>
                        <td>
                            <a class="btn btn-edit" href="./books/edit/${book.id}">Edit</a>
                            <form action="./books/delete/${book.id}" method="post" style="display:inline;">
                                <button class="btn btn-delete" type="submit" onClick="return confirm('Are you sure you want to delete this book?')" >delete</button>
                            </form>
                        </td>
                    </tr>
                    </c:forEach>
            </tbody>
        </table>
    </div>
</div>

    </section>
</main>

<%@ include file="/WEB-INF/views/layouts/footer.jsp" %>

<%-- <c:if test="${booksList.isEmpty()}">
            <h2>Daftar Buku Kosong</h2>
        </c:if> --%>