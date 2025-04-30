<%@ include file="/WEB-INF/views/layouts/header.jsp" %>

<main>
    <section>
        <div>
            <a class="btn btn-primary" href="./books/create">tambah buku</a>
        </div>
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
                            <%-- <a href="./books/edit/${book.id}">Edit</a>
                            <form action="./books/delete/${book.id}" method="post" style="display:inline;">
                                <button type="submit" onClick="return confirm('Are you sure you want to delete this book?')" >delete</button>
                            </form> --%>
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