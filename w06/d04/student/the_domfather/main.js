var sonny = document.createElement("li");
sonny.textContent = "Sonny";
var corleoneFamily = document.querySelector("#corleone");
corleoneFamily.appendChild(sonny);

fiveFamilies.appendChild(corleoneFamily);

sonny.style.backgroundColor = "red";

sonny.setAttribute("class", "mobster");
corleoneFamily.children[0].setAttribute("class", "mobster");
