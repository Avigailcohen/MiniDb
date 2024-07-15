PL/SQL Developer Test script 3.0
30
DECLARE
    -- משתנים להזנת ערכים לפרוצדורות
    v_ResearcherID NUMERIC := 10001;
    v_RName VARCHAR(15) := 'John Doe';
    v_REmail VARCHAR(20) := 'johndoe@example.com';
    v_RPhone NUMERIC(10) := 1234567890;
    v_Department INT := 1;
    v_ResearchField VARCHAR(20) := 'Physics';
    v_YearsOfExperience INT := 10;
    v_Degree VARCHAR(15) := 'PhD';
    v_NumArticales INT := 5;

    -- משתנים לאחסון התוצאות מהפונקציה
    v_NumArticles INT;

BEGIN
    -- קריאה לפרוצדורה להוספת חוקר חדש
    InsertResearcher(v_ResearcherID, v_RName, v_REmail, v_RPhone, v_Department, v_ResearchField, v_YearsOfExperience, v_Degree, v_NumArticales);
    DBMS_OUTPUT.PUT_LINE('Researcher inserted successfully.');

    -- קריאה לפונקציה לקבלת מספר מאמרים של חוקר
    v_NumArticles := GetNumArticles(v_ResearcherID);
    DBMS_OUTPUT.PUT_LINE('Number of articles by researcher ' || v_ResearcherID || ': ' || v_NumArticles);

EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('An error occurred: ' || SQLERRM);
END;

0
0
