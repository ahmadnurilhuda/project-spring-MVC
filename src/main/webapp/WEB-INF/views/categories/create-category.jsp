<%@ include file="/WEB-INF/views/layouts/header.jsp" %>
<main>

<h2>Form Add Book</h2>
<%-- <p class="text-danger">${message}</p> --%>

    <form action="" method="post" class="container">
    <div class="row">
    
        <!-- Kolom Kiri -->
        <div class="col-md-6">
            <div class="mb-3">
                <label class="form-label" for="name">name</label>
                <input class="form-control ${errors.getFieldError('name')!= null? 'is-invalid':''}" type="text" name="name" id="name" value="${category.name}">
                <div class="form-text text-danger">
                ${errors.getFieldError("name") != null ? errors.getFieldError("name").getDefaultMessage() : ""}
                </div>
                
            </div>

            <div class="mb-3">
                <label class="form-label" for="description">Description</label>
                <textarea class="form-control ${errors.getFieldError('description')!= null? 'is-invalid':''}" name="description" id="description">${category.description}</textarea>
                <div class="form-text text-danger">
                ${errors.getFieldError("description") != null ? errors.getFieldError("description").getDefaultMessage() : ""}
                </div>
            </div>

        </div>
    <!-- Elemen Tambahan di Bawah -->

    <div class="mb-3">
        <button class="btn btn-primary" type="submit">Add Book</button>
    </div>
    </form>
</main>



<%@ include file="/WEB-INF/views/layouts/footer.jsp" %>




<%-- <select name="category" required>
                    <option value="">   Pilih Kategori  </option>
                        <c:forEach var="cat" items="${listCategories}">
                            <option value="${cat.name}">${cat.name}</option>
                        </c:forEach>
                </select> --%>