-- If you want to run this schema repeatedly you'll need to drop
-- the table before re-creating it. Note that you'll lose any
-- data if you drop and add a table:

DROP TABLE IF EXISTS articles;

-- Define your schema here:

CREATE TABLE articles (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  url VARCHAR(255),
  description TEXT NOT NULL
);

INSERT INTO articles(title, url, description)
  VALUES
    (
      'Navy pilots don’t trust overweight police',
      'https://popularmilitary.com/navy-pilots-request-to-be-armed-because-they-dont-trust-overweight-police-at-military-bases/',
      'Navy pilots request to be armed because they don’t trust overweight police at military bases'
    ),
    (
      'Lord of the Rings is searching ugly cast',
      'https://www.bbngnews.com/2019/12/on-amazon-prime-lord-of-rings-is.html',
      'On Amazon Prime Lord of The Rings is looking for cast who are ‘hairy hairy and a bit ugh’ to play orcs'
    ),
    (
      'Man stolen as a baby found living in Michigan 55 years after crime',
      'https://www.8newsnow.com/news/local-news/man-stolen-as-a-baby-found-living-in-michigan-55-years-after-crime/?fbclid=IwAR1jvhk5EVdRVEARpaI9o6xqoX83LipTlQv-IvN5j46NnKOabGg3Y1cwM88',
      'Man stolen as a baby found living in Michigan 55 years after crime'
    ),
    (
      'Ford Driver starts fire at Tesla',
      'https://www.reddit.com/r/nottheonion/comments/ebxsna/fire_at_tesla_supercharger_caused_by_ford_mustang/',
      'Fire At Tesla Supercharger Caused By Ford Mustang Driver Doing Donuts'
    )
