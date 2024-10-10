/****************************************************************************************************************************

In a coding competition, each participant earns points based on their highest submission score for various tasks. 
Create a query that returns the participant's ID, name, and their total points, calculated as the sum of their maximum scores across all tasks.

The results should be ordered by the total points in descending order. 
If two or more participants have the same total points, they should be sorted by their participant ID in ascending order. 
Exclude all participants who have a total point score of 0 from the results.

The following tables contain data:

1. Participants:

- participant_id: The unique ID of the participant
- name: The name of the participant

2. Submissions:

- submission_id: The unique ID of the submission
- participant_id: The ID of the participant who made the submission
- task_id: The ID of the task associated with the submission
- points: The points earned for that submission

****************************************************************************************************************************/

SELECT 
    p.participant_id,
    p.name,
    COALESCE(SUM(max_scores.max_points), 0) AS total_points -- Calculate total points, default to 0 if null
FROM 
    Participants AS p
LEFT JOIN ( -- LEFT JOIN to ensure all participants are included in the output, regardless of whether they have made submissions
    SELECT 
        participant_id,
        task_id,
        MAX(points) AS max_points -- Get the maximum points for each task per participant
    FROM 
        Submissions
    GROUP BY 
        participant_id, task_id -- Group by participant ID and task ID to get max points
) max_scores ON p.participant_id = max_scores.participant_id -- Join with Participants on participant ID
GROUP BY 
    p.participant_id, p.name -- Group by participant ID and name to aggregate total points
HAVING 
    total_points > 0  -- Exclude participants with a total point score of 0
ORDER BY 
    total_points DESC, 
    p.participant_id ASC;



