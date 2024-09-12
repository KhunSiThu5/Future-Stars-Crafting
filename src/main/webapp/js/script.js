const sidebarToggle = document.querySelector("#sidebar-toggle");
sidebarToggle.addEventListener("click",function(){
    document.querySelector("#sidebar").classList.toggle("collapsed");
});

//document.querySelector("#sidebar").classList.add("collapsed")
// document.querySelector(".theme-toggle").addEventListener("click",() => {
//     toggleLocalStorage();
//     toggleRootClass();
// });

function toggleRootClass(){
    const current = document.documentElement.getAttribute('data-bs-theme');
    const inverted = current == 'dark' ? 'light' : 'dark';
    document.documentElement.setAttribute('data-bs-theme',inverted);
}

function toggleLocalStorage(){
    if(isLight()){
        localStorage.removeItem("light");
    }else{
        localStorage.setItem("light","set");
    }
}

function isLight(){
    return localStorage.getItem("light");
}

if(isLight()){
    toggleRootClass();
}

//Show form and Link color

const link = document.querySelectorAll(".links");
const mainFormCon = document.querySelector(".main-form-con");
const artLink = document.querySelector(".art-link");

let loginUser= true;

let linkClick = localStorage.getItem("linkClicked");


artLink.addEventListener("click", () => {
    if(loginUser != null)
    {
        artLink.href = "articlePage.jsp"
    } else {
        mainFormCon.style.display = "flex";
    }
})


if(linkClick!=null)
    { 
        link[linkClick].style.color = "#ff7b00";
    }

for(let i=0; i<link.length; i++)
{
    link[i].addEventListener("click", ()=> {
        if(loginUser != null)
        {
            link.forEach((e)=>{
                e.style.color = "";
            })
    
            link[i].style.color = "#ff7b00";
            localStorage.setItem("linkClicked", i);
        } else {
            //mainFormCon.style.display = "flex";
        }
    })
}



closeBtn.addEventListener("click", () => {
  main.style.display = "none";
})