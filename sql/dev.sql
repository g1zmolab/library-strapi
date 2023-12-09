INSERT INTO authors (id, name, created_at, updated_at, created_by_id, updated_by_id)
VALUES
(1, 'William Shakespeare', localtimestamp(3), localtimestamp(3), 1, 1),
(2, 'Jane Austen',         localtimestamp(3), localtimestamp(3), 1, 1),
(3, 'Charles Dickens',     localtimestamp(3), localtimestamp(3), 1, 1),
(4, 'Mark Twain',          localtimestamp(3), localtimestamp(3), 1, 1),
(5, 'Leo Tolstoy',         localtimestamp(3), localtimestamp(3), 1, 1),
(6, 'Charlotte Brontë',    localtimestamp(3), localtimestamp(3), 1, 1)
ON CONFLICT (id) DO NOTHING;

INSERT INTO books
(id, title, year_published, description, created_at, updated_at, created_by_id, updated_by_id, locale)
VALUES
(1,  'Romeo and Juliet',                             1597, 'tragedy',                localtimestamp(3), localtimestamp(3), 1, 1, 'en'),
(2,  'Hamlet',                                       1603, 'tragedy',                localtimestamp(3), localtimestamp(3), 1, 1, 'en'),
(3,  'Macbeth',                                      1606, 'tragedy',                localtimestamp(3), localtimestamp(3), 1, 1, 'en'),
(4,  'Pride and Prejudice',                          1813, 'romantic fiction',       localtimestamp(3), localtimestamp(3), 1, 1, 'en'),
(5,  'Sense and Sensibility',                        1811, 'romantic fiction',       localtimestamp(3), localtimestamp(3), 1, 1, 'en'),
(6,  'Emma',                                         1815, 'romantic fiction',       localtimestamp(3), localtimestamp(3), 1, 1, 'en'),
(7,  'A Tale of Two Cities',                         1859, 'historical fiction',     localtimestamp(3), localtimestamp(3), 1, 1, 'en'),
(8,  'Great Expectations',                           1860, 'coming-of-age',          localtimestamp(3), localtimestamp(3), 1, 1, 'en'),
(9,  'Oliver Twist',                                 1837, 'social novel',           localtimestamp(3), localtimestamp(3), 1, 1, 'en'),
(10, 'The Adventures of Huckleberry Finn',           1884, 'adventure',              localtimestamp(3), localtimestamp(3), 1, 1, 'en'),
(11, 'The Adventures of Tom Sawyer',                 1876, 'adventure',              localtimestamp(3), localtimestamp(3), 1, 1, 'en'),
(12, 'A Connecticut Yankee in King Arthur''s Court', 1889, 'satire',                 localtimestamp(3), localtimestamp(3), 1, 1, 'en'),
(13, 'War and Peace',                                1869, 'historical novel',       localtimestamp(3), localtimestamp(3), 1, 1, 'en'),
(14, 'Anna Karenina',                                1877, 'realist novel',          localtimestamp(3), localtimestamp(3), 1, 1, 'en'),
(15, 'The Death of Ivan Ilyich',                     1886, 'novella',                localtimestamp(3), localtimestamp(3), 1, 1, 'en'),
(16, 'Jane Eyre',                                    1847, 'gothic fiction',         localtimestamp(3), localtimestamp(3), 1, 1, 'en'),
(17, 'Shirley',                                      1849, 'historical novel',       localtimestamp(3), localtimestamp(3), 1, 1, 'en'),
(18, 'Villette',                                     1853, 'autobiographical novel', localtimestamp(3), localtimestamp(3), 1, 1, 'en')
ON CONFLICT (id) DO NOTHING;

INSERT INTO books_authors_links
(id, book_id, author_id, author_order, book_order)
VALUES
(1,  1,  1, 1, 1),
(2,  2,  1, 1, 2),
(3,  3,  1, 1, 3),
(4,  4,  2, 1, 1),
(5,  5,  2, 1, 2),
(6,  6,  2, 1, 3),
(7,  7,  3, 1, 1),
(8,  8,  3, 1, 2),
(9,  9,  3, 1, 3),
(10, 10, 4, 1, 1),
(11, 11, 4, 1, 2),
(12, 12, 4, 1, 3),
(13, 13, 5, 1, 1),
(14, 14, 5, 1, 2),
(15, 15, 5, 1, 3),
(16, 16, 6, 1, 1),
(17, 17, 6, 1, 2),
(18, 18, 6, 1, 3)
ON CONFLICT (id) DO NOTHING;

INSERT INTO libraries
(id, name, description, created_at, updated_at, created_by_id, updated_by_id)
VALUES
(1, 'The Library Of Congress', 'The Library of Congress is the nation''s oldest federal cultural institution, and it serves as the research arm of Congress.', localtimestamp(3), localtimestamp(3), 1, 1),
(2, 'New York Public Library', 'The New York Public Library is a public library system in New York City.', localtimestamp(3), localtimestamp(3), 1, 1)
ON CONFLICT (id) DO NOTHING;

INSERT INTO quantities
(id, copies_total, copies_available, created_at, updated_at, created_by_id, updated_by_id)
VALUES
(1,  4, 4, localtimestamp(3), localtimestamp(3), 1, 1),
(2,  3, 1, localtimestamp(3), localtimestamp(3), 1, 1),
(3,  3, 2, localtimestamp(3), localtimestamp(3), 1, 1),
(4,  1, 1, localtimestamp(3), localtimestamp(3), 1, 1),
(5,  2, 1, localtimestamp(3), localtimestamp(3), 1, 1),
(6,  2, 2, localtimestamp(3), localtimestamp(3), 1, 1),
(7,  4, 3, localtimestamp(3), localtimestamp(3), 1, 1),
(8,  2, 1, localtimestamp(3), localtimestamp(3), 1, 1),
(9,  2, 1, localtimestamp(3), localtimestamp(3), 1, 1),
(10, 1, 0, localtimestamp(3), localtimestamp(3), 1, 1),
(11, 1, 1, localtimestamp(3), localtimestamp(3), 1, 1),
(12, 3, 3, localtimestamp(3), localtimestamp(3), 1, 1),
(13, 3, 3, localtimestamp(3), localtimestamp(3), 1, 1),
(14, 2, 2, localtimestamp(3), localtimestamp(3), 1, 1),
(15, 3, 3, localtimestamp(3), localtimestamp(3), 1, 1),
(16, 2, 2, localtimestamp(3), localtimestamp(3), 1, 1),
(17, 2, 2, localtimestamp(3), localtimestamp(3), 1, 1),
(18, 2, 2, localtimestamp(3), localtimestamp(3), 1, 1),
(19, 1, 1, localtimestamp(3), localtimestamp(3), 1, 1),
(20, 1, 0, localtimestamp(3), localtimestamp(3), 1, 1),
(21, 2, 2, localtimestamp(3), localtimestamp(3), 1, 1),
(22, 2, 2, localtimestamp(3), localtimestamp(3), 1, 1),
(23, 1, 1, localtimestamp(3), localtimestamp(3), 1, 1),
(24, 1, 1, localtimestamp(3), localtimestamp(3), 1, 1)
ON CONFLICT (id) DO NOTHING;

INSERT INTO quantities_book_links
(id, quantity_id, book_id, quantity_order)
VALUES
(1,  1,  1,  1),
(2,  2,  1,  1),
(3,  3,  2,  1),
(4,  4,  2,  1),
(5,  5,  3,  1),
(6,  6,  3,  1),
(7,  7,  4,  1),
(8,  8,  4,  1),
(9,  9,  5,  1),
(10, 10, 5,  1),
(11, 11, 6,  1),
(12, 12, 6,  1),
(13, 13, 7,  1),
(14, 14, 8,  1),
(15, 15, 9,  1),
(16, 16, 10, 1),
(17, 17, 11, 1),
(18, 18, 12, 1),
(19, 19, 13, 1),
(20, 20, 14, 1),
(21, 21, 15, 1),
(22, 22, 16, 1),
(23, 23, 17, 1),
(24, 24, 18, 1)
ON CONFLICT (id) DO NOTHING;

INSERT INTO quantities_library_links
(id, quantity_id, library_id, quantity_order)
VALUES
(1,  1,  1, 1),
(2,  2,  2, 1),
(3,  3,  1, 1),
(4,  4,  2, 1),
(5,  5,  1, 1),
(6,  6,  2, 1),
(7,  7,  1, 1),
(8,  8,  2, 1),
(9,  9,  1, 1),
(10, 10, 2, 1),
(11, 11, 1, 1),
(12, 12, 2, 1),
(13, 13, 1, 1),
(14, 14, 1, 1),
(15, 15, 1, 1),
(16, 16, 1, 1),
(17, 17, 1, 1),
(18, 18, 1, 1),
(19, 19, 2, 1),
(20, 20, 2, 1),
(21, 21, 2, 1),
(22, 22, 2, 1),
(23, 23, 2, 1),
(24, 24, 2, 1)
ON CONFLICT (id) DO NOTHING;
