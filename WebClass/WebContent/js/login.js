 $(document).ready(function () {
        $('#loginForm').submit(function (event) {
            event.preventDefault()

            var id = $('#id').val()
            var pwd = $('#PWD').val()
            console.log(id, pwd)

            $.post("http://httpbin.org/post",
                {id: id, pwd: pwd},
                function (data) {
//                    alert(data.form.id + '님 로그인되었습니다.')
                    var mymodal=$('#mymodal')
                    mymodal.modal()
                    mymodal.find('.modal-body').text(data.form.id + '님 로그인되었습니다')
                }
            )
        })
    })