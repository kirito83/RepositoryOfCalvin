require 'gmail'
require 'google_drive'

def send_email_to_line(email, name)
   gmail = Gmail.connect("calvinator8313@gmail.com", "Marseille@8313")
   gmail.deliver do
      to email 
      subject "Projet The Hacking Project"
      html_part do
         content_type 'text/html; charset=UTF-8'
         body get_the_email_html(name)
      end
   end
   gmail.logout
end

def go_through_all_the_lines
   session = GoogleDrive::Session.from_config("config.json")
   ws = session.spreadsheet_by_key("12nis2xl4eGThpu_8jfnUzplEOzQoqIKi9L2Aw7NfaM4").worksheets[0]
   nb_emails = ws.num_rows
   indice = 0
   while indice <= nb_emails
      send_email_to_line(ws[indice, 2], ws[indice, 1])
      indice += 1
   end
end

def get_the_email_html(name)
   return "<p>Bonjour,</p>
   <p>Je m'appelle Calvin, je suis élève à une formation de code gratuite, ouverte à tous, sans restriction géographique, ni restriction de niveau. La formation s'appelle The Hacking Project (http://thehackingproject.org/). Nous apprenons l'informatique via la méthode du peer-learning : nous faisons des projets concrets qui nous sont assignés tous les jours, sur lesquel nous planchons en petites équipes autonomes. Le projet du jour est d'envoyer des emails à nos élus locaux pour qu'ils nous aident à faire de The Hacking Project un nouveau format d'éducation gratuite.</p>
<p>Nous vous contactons pour vous parler du projet, et vous dire que vous pouvez ouvrir une cellule à #{name}, où vous pouvez former gratuitement 6 personnes (ou plus), qu'elles soient débutantes, ou confirmées. Le modèle d'éducation de The Hacking Project n'a pas de limite en terme de nombre de moussaillons (c'est comme cela que l'on appelle les élèves), donc nous serions ravis de travailler avec #{name} !</p>
<p>Charles, co-fondateur de The Hacking Project pourra répondre à toutes vos questions : 06.95.46.60.80</p>"
end

go_through_all_the_lines
