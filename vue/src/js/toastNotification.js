import toastr from 'toastr'

export function toast(title, message, option) {
    toastOptions();

    toastCall(title, message, option)
}

function toastOptions() {
    toastr.options = {
        "closeButton": false,
        "debug": false,
        "newestOnTop": false,
        "progressBar": true,
        "positionClass": "toast-top-full-width",
        "preventDuplicates": false,
        "onclick": null,
        "showDuration": "300",
        "hideDuration": "1000",
        "timeOut": "5000",
        "extendedTimeOut": "1000",
        "showEasing": "swing",
        "hideEasing": "linear",
        "showMethod": "fadeIn",
        "hideMethod": "fadeOut"
    }
}

function toastCall(title, message, option) {

    switch (option) {
        case 'success':
            toastr.success(message, title)

            break;
        case 'warning':
            toastr.warning(message, title)

            break;
        default:
            toastr.success(message, title)

    }
}
