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
        dropdownIcon.innerHTML="expand_less"
    }
    else{
        dropdownIcon.innerHTML="expand_more" 
    }
})

questionContainer.addEventListener("click",showQuestion);
Array.from(questionBox.children).forEach((e)=>{
    e.addEventListener("click",function()
    {   
        // e.classList.remove("active");
        viewAnswer(e,e.id);
        removeQuestion(e.id);
        // console.log(e.id);
    })
})

//This function is for showing the clicked question only

function removeQuestion(questionId)
{   
    //This code is for adding the active class to all the other question which are not be seen by the user after clicking on a question 
    Array.from(questionBox.children).forEach((e)=>{
        if(e.id!==questionId)
        {
            e.classList.add("active");
        }
    })
}

//To show all the questions 
function showQuestion(){
    questionBox.classList.toggle("active");

    //This code is for removing the active class show that all question are visible to user
    Array.from(questionBox.children).forEach((e)=>{
        if(e.classList.contains("active"))
        {
            e.classList.remove("active");
        }
    })
    // console.log("Hi i am working");
}

//To view the clicked question answer
function viewAnswer(node,e)
{     
    let num=Number(e[e.length-1]);
    // console.log(num);
    let data=answerData[num-1];
    showAnswer.innerHTML=data;
}
