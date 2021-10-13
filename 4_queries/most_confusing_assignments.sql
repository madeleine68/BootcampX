SELECT assignments.id, assignments.name, assignments.day, assignments.chapter,count(assistance_requests.*) as total_request
FROM assignments
JOIN assistance_requests
ON assignments.id = assignment_id
GROUP BY assignments.id
ORDER BY total_request DESC;