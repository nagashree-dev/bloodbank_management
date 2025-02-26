function searchDonors() {
    let bloodGroup = document.getElementById("bloodGroup").value;
    console.log("Selected Blood Group:", bloodGroup); // Debugging Step

    let xhr = new XMLHttpRequest();
    xhr.open("GET", "SearchDonorServlet?bloodGroup=" + encodeURIComponent(bloodGroup), true);
    xhr.onreadystatechange = function () {
        if (xhr.readyState === 4) {
            if (xhr.status === 200) {
                console.log("Response from Servlet:", xhr.responseText); // Debugging
                document.getElementById("donorTableBody").innerHTML = xhr.responseText;
            } else {
                console.log("Error fetching data. Status:", xhr.status);
            }
        }
    };
    xhr.send();
}

document.addEventListener("DOMContentLoaded", function () {
    highlightRecentDonors();
});


