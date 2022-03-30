*&---------------------------------------------------------------------*
*& Report ZTEST_ABAPGIT
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ztest_abapgit.

"Dynamic new Abap

*DATA: lt_mara TYPE STANDARD TABLE OF mara.
FIELD-SYMBOLS: <fs_struct> TYPE any.
FIELD-SYMBOLS: <fs_tab> TYPE ANY TABLE.
FIELD-SYMBOLS: <fs_data> TYPE any.
DATA: lw_mara TYPE mara.


ASSIGN lw_mara TO <fs_struct>.

IF <fs_struct> IS ASSIGNED.
  ASSIGN COMPONENT 'MATNR' OF STRUCTURE <fs_struct> TO <fs_data>.
  IF <fs_data> IS ASSIGNED.
    <fs_data> = 'MAT1'.
    UNASSIGN <fs_data>.
  ENDIF.
  UNASSIGN <fs_struct>.
ENDIF.
BREAK-POINT.
*FIELD-SYMBOLS: <fs_mara> TYPE mara.
*
*APPEND INITIAL LINE TO lt_mara ASSIGNING <fs_mara>.
*IF <fs_mara> IS ASSIGNED.
*  <fs_mara>-matnr = 'MAT1'.
*  <fs_mara>-matkl = '001'.
*  UNASSIGN <fs_mara>.
*ENDIF.
*
*APPEND INITIAL LINE TO lt_mara ASSIGNING <fs_mara>.
*IF <fs_mara> IS ASSIGNED.
*  <fs_mara>-matnr = 'MAT2'.
*  <fs_mara>-matkl = '001'.
*  UNASSIGN <fs_mara>.
*ENDIF.
*BREAK-POINT.
*
*IF <fs_mara> IS NOT ASSIGNED.
*  READ TABLE lt_mara  ASSIGNING <fs_mara> WITH KEY matnr = 'MAT1'.
*  IF sy-subrc = 0.
*
*
*  ENDIF.
*
*ENDIF.
