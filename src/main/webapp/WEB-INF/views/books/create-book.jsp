<%@ include file="/WEB-INF/views/layouts/header.jsp" %>

<h2>Form Add Book</h2>
    <form action="" method="post" class="container">
    <div class="row">
        <!-- Kolom Kiri -->
        <div class="col-md-6">
            <div class="mb-3">
                <label class="form-label" for="title">Title</label>
                <input class="form-control" type="text" name="title" id="title" required>
            </div>

            <div class="mb-3">
                <label class="form-label" for="isbn">ISBN Number</label>
                <input class="form-control" type="text" name="isbn" id="isbn" required>
            </div>

            <div class="mb-3">
                <label class="form-label" for="year">Date Release</label>
                <input class="form-control" type="text" name="year" id="year" required>
            </div>
            
            <div class="mb-3">
                <label class="form-label" for="stock">Stock</label>
                <input class="form-control" type="number" name="stock" id="stock" required>
            </div>

            <div class="mb-3">
                <label class="form-label" for="price">Price</label>
                <input class="form-control" type="number" name="price" id="price" required>
            </div>
        </div>

        <!-- Kolom Kanan -->
        <div class="col-md-6">
            <div class="mb-3">
                <label class="form-label" for="category">Category</label>
                <input class="form-control" type="text" name="category" id="category" required>
            </div>

            <div class="mb-3">
                <label class="form-label" for="description">Description</label>
                <textarea class="form-control" name="description" id="description" required></textarea>
            </div>
        </div>
    </div>

    <!-- Elemen Tambahan di Bawah -->

    <div class="mb-3">
        <button class="btn btn-primary" type="submit">Add</button>
    </div>
</form>


<%@ include file="/WEB-INF/views/layouts/footer.jsp" %>




<%-- <select name="category" required>
                    <option value="">   Pilih Kategori  </option>
                        <c:forEach var="cat" items="${listCategories}">
                            <option value="${cat.name}">${cat.name}</option>
                        </c:forEach>
                </select> --%>