PL/SQL Developer Test script 3.0
43
DECLARE
    -- משתנים להזנת ערכים לפרוצדורות
    v_StudyID NUMERIC := 5;
    v_EndDate DATE := TO_DATE('2024-12-31', 'YYYY-MM-DD');

    -- משתנים להחזקת המאמרים
    v_ArticlesCursor SYS_REFCURSOR;
    v_NumArticales INT;

    -- משתנים לאחסון התוצאות מהפונקציה
    v_StudyDuration INT;

    -- משתנה להזנת ערך לפונקציה
    v_ResearcherID NUMERIC := 10001;

BEGIN
    -- קריאה לפרוצדורה לעדכון תאריך סיום מחקר
    UpdateStudyEndDate(v_StudyID, v_EndDate);
    DBMS_OUTPUT.PUT_LINE('Study end date updated successfully.');

    -- קריאה לפונקציה לקבלת משך זמן מחקר
    v_StudyDuration := GetStudyDuration(v_StudyID);
    DBMS_OUTPUT.PUT_LINE('Duration of study ' || v_StudyID || ': ' || v_StudyDuration || ' days');

    -- קריאה לפונקציה לקבלת Cursor של המאמרים
    v_ArticlesCursor := GetArticlesCursor(v_ResearcherID);

    -- לולאה על התוצאות והדפסת המאמרים
    LOOP
        FETCH v_ArticlesCursor INTO v_NumArticales;
        EXIT WHEN v_ArticlesCursor%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('Number of articles: ' || v_NumArticales);
    END LOOP;

    -- סגירת ה-Cursor
    CLOSE v_ArticlesCursor;

EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('An error occurred: ' || SQLERRM);
END;

0
0
