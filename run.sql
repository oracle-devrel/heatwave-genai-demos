-- Copyright (c) 2024, Oracle and/or its affiliates.
-- Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl/

USE ecommerce;

SELECT "################### Computing summaries for EXISTING reviews on a product ###################" AS "";
SELECT "" AS "";

CALL SUMMARIZE_TRANSLATE(1, "POSITIVE", "en", @positive_english_summary);
SELECT @positive_english_summary AS "--- English summary of positive reviews on the T-Shirt ---";

CALL SUMMARIZE_TRANSLATE(1, "NEGATIVE", "en", @negative_english_summary);
SELECT @negative_english_summary AS "--- English summary of negative reviews on the T-Shirt ---";

CALL SUMMARIZE_TRANSLATE(1, "POSITIVE", "es", @positive_spanish_summary);
SELECT @positive_spanish_summary AS "--- Spanish summary of positive reviews on the T-Shirt ---";

CALL SUMMARIZE_TRANSLATE(1, "NEGATIVE", "es", @negative_spanish_summary);
SELECT @negative_spanish_summary AS "--- Spanish summary of negative reviews on the T-Shirt ---";

SELECT '################### Insert a new review ###################' AS '';

SET @review='Review: The T-Shirt is fantastic as it is not only comfortable but it is also made of sustainable material. The organic cotton feels like normal cotton while being environment-friendly. However, the washing instruction is difficult to follow.';
SET @review_id = 1337;

SELECT @review AS "";

-- Insert a new review
INSERT INTO reviews(id, language_code, product_id, customer_id, rating, review_text) VALUES (@review_id,'en',1,20,4,@review);

SELECT '################### Done: Insert a new review ###################' AS '';
SELECT "" AS "";

-- Sentiment analysis
SELECT review_text INTO @review_text FROM reviews WHERE id = @review_id;
CALL SENTIMENT_ANALYSIS(@review_text, @review_id);
-- Check the updated sentiment column
SELECT @review AS "--- New review ---";
SELECT sentiment AS "--- Sentiment of the new review ---" FROM reviews WHERE id = @review_id;

SELECT "################### Computing summaries AFTER the review is inserted ###################" AS "";
SELECT "" AS "";

-- Summarize the reviews
CALL SUMMARIZE_TRANSLATE(1, "POSITIVE", "en", @positive_english_summary);
SELECT @positive_english_summary AS "--- UPDATED English summary of positive reviews on the T-Shirt ---";

CALL SUMMARIZE_TRANSLATE(1, "NEGATIVE", "en", @negative_english_summary);
SELECT @negative_english_summary AS "--- UPDATED English summary of negative reviews on the T-Shirt ---";

CALL SUMMARIZE_TRANSLATE(1, "POSITIVE", "es", @positive_spanish_summary);
SELECT @positive_spanish_summary AS "--- UPDATED Spanish summary of positive reviews on the T-Shirt ---";

CALL SUMMARIZE_TRANSLATE(1, "NEGATIVE", "es", @negative_spanish_summary);
SELECT @negative_spanish_summary AS "--- UPDATED Spanish summary of negative reviews on the T-Shirt ---";
