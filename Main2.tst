PL/SQL Developer Test script 3.0
43
DECLARE
    -- ������ ����� ����� ����������
    v_StudyID NUMERIC := 5;
    v_EndDate DATE := TO_DATE('2024-12-31', 'YYYY-MM-DD');

    -- ������ ������ �������
    v_ArticlesCursor SYS_REFCURSOR;
    v_NumArticales INT;

    -- ������ ������ ������� ���������
    v_StudyDuration INT;

    -- ����� ����� ��� ��������
    v_ResearcherID NUMERIC := 10001;

BEGIN
    -- ����� ��������� ������ ����� ���� ����
    UpdateStudyEndDate(v_StudyID, v_EndDate);
    DBMS_OUTPUT.PUT_LINE('Study end date updated successfully.');

    -- ����� �������� ����� ��� ��� ����
    v_StudyDuration := GetStudyDuration(v_StudyID);
    DBMS_OUTPUT.PUT_LINE('Duration of study ' || v_StudyID || ': ' || v_StudyDuration || ' days');

    -- ����� �������� ����� Cursor �� �������
    v_ArticlesCursor := GetArticlesCursor(v_ResearcherID);

    -- ����� �� ������� ������ �������
    LOOP
        FETCH v_ArticlesCursor INTO v_NumArticales;
        EXIT WHEN v_ArticlesCursor%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('Number of articles: ' || v_NumArticales);
    END LOOP;

    -- ����� �-Cursor
    CLOSE v_ArticlesCursor;

EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('An error occurred: ' || SQLERRM);
END;

0
0
