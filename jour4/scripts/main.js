let monImage = document.querySelector('img');

monImage.onclick = function() 
{
   let maSrc = monImage.getAttribute('src');
   if (maSrc === 'images/firefox-icon.png')
   {
      monImage.setAttribute ('src', 'images/firefox2.jpg');
   }
   else
   {
      monImage.setAttribute ('src', 'images/firefox-icon.png');
   }
}

let monBouton = document.querySelector('button');
let monTitre = document.querySelector('h1');

function definirNomUser()
{
   let monNom = prompt('Veuillez saisir votre nom.');
   localStorage.setItem('nom', monNom);
   monTitre.textContent = 'Mozilla est cool, ' + monNom;
}

if (!localStorage.getItem('nom'))
{
   definirNomUser();
}
else
{
   let nomEnregistre = localStorage.getItem('nom');
   monTitre.textContent = 'Mozilla est cool, ' + nomEnregistre;
}

monBouton.onclick = function()
{
   definirNomUser();
}
