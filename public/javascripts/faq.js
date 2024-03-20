let questionContainer=document.querySelector(".allQuestions");
let questionBox = document.querySelector(".questionBox");
let classActive = document.querySelector(".active");
let answerHeader=document.querySelector(".answer")
let showAnswer = document.querySelector(".showAnswer");
let dropdownIcon = document.querySelector("#dropdownIcon");

//This array store the answer of your questions
const answerData = ["This is first question's answer","This is second question's answer","This is third question's answer","This is fourth question's answer","This is fifth's question answer"];

questionContainer.addEventListener("click",function()
{
    if(dropdownIcon.innerHTML==="expand_more")
    {
        dropdownIcon.innerHTML="expand_less";
    }
    else{
        dropdownIcon.innerHTML="expand_more" ;
        showAnswer.innerText="Click on the dropdown and select a question to view it's answer";
        answerHeader.innerText="Answer";
    }
})

questionContainer.addEventListener("click",showQuestion);
Array.from(questionBox.children).forEach((e)=>{
    e.addEventListener("click",function()
    {
        viewAnswer(e,e.id);
        console.log(e.id);
    })
})

//To show all the questions 
function showQuestion(){
    questionBox.classList.toggle("active");
    console.log("Hi i am working");
}

//To view the clicked question answer
function viewAnswer(node,e)
{     
    let num=Number(e[e.length-1]);
    let data=answerData[num-1];
    showAnswer.innerHTML=data;
    let ansHead=String(node.id);
    answerHeader.innerHTML="Answer of "+ansHead.charAt(0).toUpperCase()+ansHead.substring(1,ansHead.length-1)+" "+ansHead[ansHead.length-1];

}