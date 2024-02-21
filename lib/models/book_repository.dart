import 'package:sport_in_books/models/book.dart';
import 'package:sport_in_books/utils/constants/image_strings.dart';

class BookRepository {
  static final List<BookModel> books = [
    BookModel(
      id: 2,
      title:
          "A Woman's Game: The Rise, Fall and Rise Again of Women's Football ",
      author: "Suzy Wrack",
      year: "2022",
      coverUrl: TImages.bookCoverAWomenGames,
      shortDesc:
          "A Woman's Game: The Rise, Fall and Rise Again of Women's Football by Suzy Wrack",
      longDesc:
          "Timed to land just as the Lionesses started their tilt at winning the Euros and immortality, the Guardian's Suzy Wrack traces women's football from the mid-Great War, post-Suffragette days when huge crowds would flock to see women's teams – Dick, Kerr's Ladies drew 53,000 to Goodison Park on Boxing Day 1920 – to a backlash that saw women banned from playing on FA pitches between 1921 and 1971 on the grounds that football was \"unsuitable for females\". Then, the slow climb back to prominence, and a big decision to make: does women's football try to 'catch up' with the global reach of the men's game, or make the most of what makes it different and joyful? This is a thorough run through a backstory which rarely used to make the back pages.",
    ),
    BookModel(
      id: 9,
      title:
          "The Game of Our Lives: The Meaning and Making of English Football",
      author: "David Goldblatt",
      year: "2014",
      coverUrl: TImages.bookCoverTheGameOfOurLives,
      shortDesc:
          "The Game of Our Lives: The Meaning and Making of English Football by David Goldblatt",
      longDesc:
          "In the men's game, however, things have rarely been more weird. At the time of writing, Manchester United may still be bought out by former Qatari Prime Minister Sheikh Jassim, and the season has stretched into late June thanks to a mid-winter World Cup. How did we get here? Goldblatt shows how English football as we know it was liquidated and reformed as an entertainment product to beat them all in the wake of the Thatcher years, knitting it together with the ways England itself has changed in the 21st century. A lot has changed in the last decade – Chelsea cop a lot of flak, despite the ownership now looking positively quaint next to Manchester City and Newcastle United – but to understand how we got here, start with this.",
    ),
    BookModel(
      id: 4,
      title: "Barbarian Days: A Surfing Life",
      author: "William Finnegan",
      year: "2015",
      coverUrl: TImages.bookCoverBarbarianDays,
      shortDesc: "Barbarian Days: A Surfing Life by William Finnegan",
      longDesc:
          "Finnegan’s Pulitzer-Prize-winning memoir about his lifelong obsession with surfing – starting in California as kid, then Hawaii as a teen, taking him right though to New York in the present (a lesser-known surf spot, certainly) – is a searing and startling paean to the sport. Yes it can seem pointless, and yes it can be punishing, but Finnegan is able to encapsulate the feeling of freedom and euphoria like few others, while also describing his own meandering personal history, which somehow transformed him from a twentysomething stoner surf-bum into a renowned political journalist for the New Yorker, particularly for his reporting from Apartheid-era South Africa.",
    ),
    BookModel(
      id: 5,
      title: "Blood Horses: Notes of a Sportswriter’s Son",
      author: "John Jeremiah Sullivan",
      year: "2004",
      coverUrl: TImages.bookCoverBloodHorses,
      shortDesc:
          "Blood Horses: Notes of a Sportswriter’s Son by John Jeremiah Sullivan",
      longDesc:
          "Like so many of the titles on this list, John Jeremiah Sullivan’s first book – printed in the UK for the first time in 2013 after the success of his brilliant 2012 essay collection, Pulphead – is a sports book but also something more. It began as a consideration of the life of his late father, Mike Sullivan, who had been a sportswriter for a Kentucky newspaper, and whose fascination with sport in general, and with horse racing in particular, his son had never quite managed to understand. In telling the story of the legendary racehorse Secretariat, one of whose Kentucky derby wins his father attended, he unpicks a sport that is both fascinating and mystifying in equal measure.",
    ),
    BookModel(
      id: 7,
      title:
          "Land of Second Chances: The Impossible Rise of Rwanda’s Cycling Team",
      author: "Tim Lewis",
      year: "2013",
      coverUrl: TImages.bookCoverLandOfSecondChances,
      shortDesc:
          "Land of Second Chances: The Impossible Rise of Rwanda’s Cycling Team by Tim Lewis",
      longDesc:
          "If sport can be accused of providing neat story arcs (see intro!), or clear-cut heroes and villains, Lewis’s British Sports Book Award-winning exploration of the attempt – by a group of American former professional cyclists – to set up a cycling team in Rwanda a decade after the genocide there in which 1 million people were slaughtered, is as nuanced and fascinating as they come. Lewis, a contributing editor to Esquire, spent time in Rwanda with the would-be riders, including the talented Adrien Niyonshuti, who lost six brothers in the 1994 genocide, and also the professionals who helicopter in to set up the country’s first team, but who, in the case of coach Jock Boyer, turns out to have a dark past of his own.",
    ),
    BookModel(
      id: 6,
      title: "Football Against The Enemy",
      author: "Simon Kuper",
      year: "1994",
      coverUrl: TImages.bookCoverFootballAgainstTheEnemy,
      shortDesc: "Football Against The Enemy by Simon Kuper",
      longDesc:
          "Financial Times columnist Simon Kuper wrote this accomplished and quirky footballing travelogue when he was still only in his early 20s. And it's remarkably good; arguably the first and even best in the now-not-so-new wave of 'literary' football tomes that have followed in ever-greater numbers. Kuper travels to 22 countries to find out how football has shaped individual national politics and culture – and vice versa – meeting players, politicians and picking up anecdotes and observations along the way. We all know football as a global obsession, but these fascinating tales – from the tragic to the bizarre – show just how far its reach extends.",
    ),
    BookModel(
      id: 10,
      title: "Touching The Void",
      author: "Joe Simpson",
      year: "1988",
      coverUrl: TImages.bookCoverTouchingTheVoid,
      shortDesc: "Touching The Void by Joe Simpson",
      longDesc:
          "Simpson's harrowing account of his and Simon Yates's calamitous assault, in 1985, on Siula Grande, Peru, has rightly transcended the sport of climbing and become a legendary fable for what humans are capable of doing to survive. It centres, of course, on one of the most amazing escapes ever achieved: with Simpson hopelessly hanging off one end of a rope, Yates is faced with cutting it to prevent them both being killed. Somehow, Simpson survives the fall. But alone in a crevasse with a shattered leg, his situation is hopeless. What follows is a staggering tale of will and courage that also addresses the perennial question of what drives people to climb mountains in the first place. As Churchill said: \"When you're going through hell, keep going\".",
    ),
    BookModel(
      id: 1,
      title: "A Good Walk Spoiled: Days And Nights On The PGA Tour",
      author: "John Feinstein",
      year: "1995",
      coverUrl: TImages.bookCoverAGoodWalkSpoiled,
      shortDesc:
          "A Good Walk Spoiled: Days And Nights On The PGA Tour by John Feinstein",
      longDesc:
          "Even if you're not a golf fan – though it certainly helps if you are – this groundbreaking account of the highs and lows of the 1993/4 season on the American pro circuit is ultimately a human drama. With unprecedented access to the stars – Greg Norman, Nick Price, John Daly and Nick Faldo to name just a few – and rookies alike, it reveals the disparate personalities and personal travails behind the TV images and how these combine with the particular demands of a sport where the margins between success and failure are so thin. A gripping and always entertaining account of what can justifiably be called the cruellest sport of all, whatever your level.",
    ),
    BookModel(
      id: 3,
      title: "Addicted",
      author: "Tony Adams",
      year: "1998",
      coverUrl: TImages.bookCoverAddicted,
      shortDesc: "Addicted by Tony Adams",
      longDesc:
          "Adams was still a regular for Arsenal and England when his jaw-droppingly frank autobiography was published at the start of the 1998–99 season. His drinking problem destroyed him personally yet seemed to leave his football unaffected (wearing bin bags under training kit to sweat out the booze served him well). If any stories were left out, they must have been truly hideous. Here are remembrances of picking through jeans on the bedroom floor to find the least-piss-soaked pair to wear. Expect fights, prostitutes, broken lives, redemption.",
    ),
    BookModel(
      id: 8,
      title: "Paper Lion",
      author: "George Plimpton",
      year: "1966",
      coverUrl: TImages.bookCoverPaperLion,
      shortDesc: "Paper Lion by George Plimpton",
      longDesc:
          "To millennial sportswriters who never leave the office (or sofa) to live blog sport on TV, Plimpton’s participatory journalism (“that ugly descriptive”, in his words) must seem preposterous and grand. That Plimpton himself came across ever so slightly preposterous and grand was not lost on the man himself, who pricked that public persona with a terrifically witty, inquisitive writing style that worked best applied to sport. Of his five books about taking part in pro-level match-ups in boxing, baseball, ice hockey, golf and US football, Paper Lion, on the latter, is the finest.",
    ),
  ];
}
