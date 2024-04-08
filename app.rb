require "sinatra"
require "sinatra/reloader"

get("/") do

  '<div><a href="/rock">Play Rock</a></div>
  <div><a href="/paper">Play Paper</a></div>
  <div><a href="/scissors">Play Scissors</a></div>
  <h1>Welcome to Rock-Paper-Scissors!</h1>

  <a href="https://en.wikipedia.org/wiki/Rock–paper–scissors" target="_blank">Wikipedia</a>

  <p>Rock-paper-scissors (also known as paper, scissors, stone or other variants) is a hand game usually played between two people, in which each player simultaneously forms one of three shapes with an outstretched hand.</p>

  <p>These shapes are:</p>
  <ul>
    <li><strong>rock</strong> - a closed fist</li>
    <li><strong>paper</strong> - a flat hand</li>
    <li><strong>scissors</strong> - a fist with the index and middle fingers extended, forming a V</li>
  </ul>

  <p>A player who decides to play rock will beat another player who has chosen scissors ("rock crushes scissors" or sometimes "blunts scissors"), but will lose to one who has played paper ("paper covers rock"); a play of paper will lose to a play of scissors ("scissors cut[s] paper"). If both players choose the same shape, the game is tied and is usually immediately replayed to break the tie.</p>
  <table border="1">
  <tr>
    <th rowspan="2">If we play...</th>
    <th colspan="3">and they play...</th>
  </tr>
  <tr>
    <th>Rock</th>
    <th>Paper</th>
    <th>Scissors</th>
  </tr>
  <tr>
    <th>Rock</th>
    <td>We tie</td>
    <td>We lose</td>
    <td>We win</td>
  </tr>
  <tr>
    <th>Paper</th>
    <td>We win</td>
    <td>We tie</td>
    <td>We lose</td>
  </tr>
  <tr>
    <th>Scissors</th>
    <td>We lose</td>
    <td>We win</td>
    <td>We tie</td>
  </tr>
</table>

<p>Originating from China and Japan, other names for the game in the English-speaking world include roshambo and other orderings of the three items, with "rock" sometimes being called "stone".</p>

<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/6/67/Rock-paper-scissors.svg/627px-Rock-paper-scissors.svg.png">

<p>A chart showing how the three game elements interact</p>

<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/9/9d/Kitsune-ken_%28%E7%8B%90%E6%8B%B3%29%2C_Japanese_rock-paper-scissors_variant%2C_from_the_Genyoku_sui_bento_%281774%29.jpg/640px-Kitsune-ken_%28%E7%8B%90%E6%8B%B3%29%2C_Japanese_rock-paper-scissors_variant%2C_from_the_Genyoku_sui_bento_%281774%29.jpg">

<p>Kitsune-ken was a popular Japanese rock–paper–scissors variant.</p>

<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/a/ae/Mushi-ken_%28%E8%99%AB%E6%8B%B3%29%2C_Japanese_rock-paper-scissors_variant%2C_from_the_Kensarae_sumai_zue_%281809%29.jpg/640px-Mushi-ken_%28%E8%99%AB%E6%8B%B3%29%2C_Japanese_rock-paper-scissors_variant%2C_from_the_Kensarae_sumai_zue_%281809%29.jpg">

<p>Mushi-ken, the earliest Japanese sansukumi-ken game (1809). From
left to right: slug (namekuji), frog (kawazu) and snake (hebi).</p>'

end
get("/rock") do
  response_html = '<div><a href="/rock">Play Rock</a></div>
  <div><a href="/paper">Play Paper</a></div>
  <div><a href="/scissors">Play Scissors</a></div>'
  computer_choice = rand(3)
  response_html += "<div><h1>We played rock!</h1>"

  if computer_choice == 0
    response_html += "<h1>They played scissors!</h1>" + "<h1>We won!</h1>"
  elsif computer_choice == 1
    response_html += "<h1>They played rock!</h1>" + "<h1>We tied!</h1>"
  else # computer_choice == 2
    response_html += "<h1>They played paper!</h1>" + "<h1>We lost!</h1>"
  end

  response_html += '<a href="/">Rules</a></div>'
end

get("/scissors") do
  response_html = '<div><a href="/rock">Play Rock</a></div>
  <div><a href="/paper">Play Paper</a></div>
  <div><a href="/scissors">Play Scissors</a></div>'
  computer_choice = rand(3)
  response_html += "<div><h1>We played scissors!</h1>"

  if computer_choice == 0
    response_html += "<h1>They played scissors!</h1>" + "<h1>We tied!</h1>"
  elsif computer_choice == 1
    response_html += "<h1>They played rock!</h1>" + "<h1>We lost!</h1>"
  else # computer_choice == 2
    response_html += "<h1>They played paper!</h1>" + "<h1>We won!</h1>"
  end

  
  response_html += '<a href="/">Rules</a></div>'
end

get("/paper") do
  response_html = '<div><a href="/rock">Play Rock</a></div>
  <div><a href="/paper">Play Paper</a></div>
  <div><a href="/scissors">Play Scissors</a></div>'
  computer_choice = rand(3)
  response_html += "<div><h1>We played paper!</h1>"

  if computer_choice == 0
    response_html += "<h1>They played scissors!</h1>" + "<h1>We lost!</h1>"
  elsif computer_choice == 1
    response_html += "<h1>They played rock!</h1>" + "<h1>We won!</h1>"
  else # computer_choice == 2
    response_html += "<h1>They played paper!</h1>" + "<h1>We tied!</h1>"
  end

  response_html += '<a href="/">Rules</a></div>'
end
