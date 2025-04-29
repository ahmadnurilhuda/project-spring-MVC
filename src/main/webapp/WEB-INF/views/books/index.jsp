<%@ include file="/WEB-INF/views/layouts/header.jsp" %>

<main>
    <section>
        <div>
            <a href="./books/create">tambah buku</a>
        </div>
        <div>
        <h2>Daftar Buku</h2>
            <div>
                <table border="1" cellpadding="5" cellspacing="0" width="100%">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Title</th>
                            <th>ISBN</th>
                            <th>Year</th>
                            <th>Price</th>
                            <th>Stock</th>
                            <th>Category</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>1</td>
                        <td>1</td>
                        <td>1</td>
                        <td>1</td>
                        <td>1</td>
                        <td>1</td>
                        <td>1</td>
                        <td>
                            <a href="#">Edit</a>
                            <a href="#">Delete</a>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </section>
</main>

<%@ include file="/WEB-INF/views/layouts/footer.jsp" %>