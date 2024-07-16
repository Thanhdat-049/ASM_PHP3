<footer class="footer bg-light">
    <div class="container-fluid ">
        <p class="text-dark">&copy; 2024. Lê Thành Đạt code nhé.</p>
    </div>
</footer>
<script>
    $(document).ready(function() {
        // Thêm class 'active' vào slide đầu tiên khi trang được load
        $('.carousel-item').first().addClass('active');

        // Tự động chạy slideshow sau mỗi 3 giây
        $('#carouselExampleIndicators').carousel({
            interval: 3000
        });
    });
</script>
<!-- Bootstrap JS và các plugin liên quan (jQuery) -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>


@yield('script')
</body>

</html>
