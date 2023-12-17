function load_table(a) {
   
    document.getElementById("id_title").innerHTML = a;
    var xhr = new XMLHttpRequest();

    var url = "./view/home/page.php";

    xhr.open("POST", url, true);

    xhr.onreadystatechange = function() {
        if (xhr.readyState === 4 && xhr.status === 200) {
            document.getElementById('show').innerHTML = xhr.responseText;
        }
    };

    var dt = {
        name: a
    }

    var jsonData = JSON.stringify(dt);
    xhr.send(jsonData);
}

