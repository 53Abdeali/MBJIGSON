
    document.getElementById("generatepdf").addEventListener("click", function() {
    var xhr = new XMLHttpRequest();
    xhr.open("GET", "/NewServlet", true);
    xhr.setRequestHeader("Content-Type", "application/pdf");
    xhr.responseType = "blob";

    xhr.onload = function() {
        if (xhr.status === 200) {
            var blob = new Blob([xhr.response], { type: "application/pdf" });
            var url = window.URL.createObjectURL(blob);
            var a = document.createElement("a");
            a.href = url;
            a.download = "mbjigson.pdf";
            document.body.appendChild(a);
            a.click();
            window.URL.revokeObjectURL(url);
        }
    };

    xhr.send();
});

