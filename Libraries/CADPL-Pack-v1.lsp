;;; ======================================================================================= ;;;
;;; CADPL-Pack-v1.lsp                                                                       ;;;
;;; [2018-03-08] ZMIANA TEST                                                                ;;;
;;; ======================================================================================= ;;;

; [ACX] ===================================================================================== ;
; cd:ACX_AddArc           - Tworzy obiekt typu ARC / Creates a ARC object                     ;
; cd:ACX_AddCircle        - Tworzy obiekt typu CIRCLE / Creates a CIRCLE object               ;
; cd:ACX_AddLayer         - Tworzy nowa warstwe / Creates a new layers                        ;
; cd:ACX_AddLine          - Tworzy obiekt typu LINE / Creates a LINE object                   ;
; cd:ACX_AddLWPolyline    - Tworzy obiekt typu LWPOLYLINE / Creates a LWPOLYLINE object       ;
; cd:ACX_AddMText         - Tworzy obiekt typu MTEXT / Creates a MTEXT object                 ;
; cd:ACX_AddTable         - Tworzy obiekt typu ACAD_TABLE / Creates a ACAD_TABLE object       ;
; cd:ACX_AddText          - Tworzy obiekt typu TEXT / Creates a TEXT object                   ;
; cd:ACX_AddTextStyle     - Tworzy nowy stylu tekstu / Creates a new text style               ;
; cd:ACX_AddViewport      - Tworzy obiekt typu VIEWPORT / Creates a VIEWPORT object           ;
; cd:ACX_AddXline         - Tworzy obiekt typu XLINE / Creates a XLINE object                 ;
; cd:ACX_ADoc             - Aktywny dokument / Active document                                ;
; cd:ACX_ASpace           - Aktywny obszar / Active space                                     ;
; cd:ACX_Blocks           - Kolekcja Blocks / Blocks collection                               ;
; cd:ACX_GetProp          - Pobiera cechy obiektu / Gets the object properties                ;
; cd:ACX_Layers           - Kolekcja Layers / Layers collection                               ;
; cd:ACX_Layouts          - Kolekcja Layouts / Layouts collection                             ;
; cd:ACX_LineTypes        - Kolekcja LineTypes / LineTypes collection                         ;
; cd:ACX_LoadLineType     - Laduje definicje linii z pliku LIN / Loads linetype from LIN file ;
; cd:ACX_Model            - Obszar modelu / Model space                                       ;
; cd:ACX_Paper            - Obszar papieru / Paper space                                      ;
; cd:ACX_SetProp          - Zmienia cechy obiektu VLA / Sets the property of VLA-Object       ;
; cd:ACX_TextStyles       - Kolekcja TextStyles / TextStyles collection                       ;
; cd:ACX_Views            - Kolekcja Views / Views collection                                 ;
;                                                                                             ;
; [BLK] ===================================================================================== ;
; cd:BLK_AttachXref       - Wstawia odnośnik zewnętrzny / Attach Xref                         ;
; cd:BLK_GetAttEntity     - Zwraca liste atrybutow bloku / Returns a list of attributes block ;
; cd:BLK_GetAtts          - Pobiera wartosci atrybutow / Gets the values of all attributes    ;
; cd:BLK_GetAttsVLA       - Pobiera wartosci atrybutow / Gets the values of all attributes    ;
; cd:BLK_GetAttValueVLA   - Pobiera wartosc atrybutu / Gets the attribute value               ;
; cd:BLK_GetDynBlockNames - Lista nazw blokow (*U) zaleznych od bloku dynamicznego /          ;
;                           List of the blocks name (*U) which depends on a dynamic block     ;
; cd:BLK_GetDynamicProps  - Pobiera wlasciwosci bloku dyn. / Gets the dyn. block properties   ;
; cd:BLK_GetDynBlockList  - Zwraca liste blokow dynam. / Returns a list of dynamic blocks     ;
; cd:BLK_GetEntity        - Lista obiektow w definicji bloku / List of objects in block def.  ;
; cd:BLK_GetXrefs         - Lista odnosnikow zewnetrznych / List of external references       ;
; cd:BLK_InsertBlock      - Wstawia blok / Inserts a block                                    ;
; cd:BLK_IsDynamicInsert  - Sprawdza czy blok dynamiczny / Checks if the dynamic block        ;
; cd:BLK_SetAttValueVLA   - Zmienia wartosc atrybutu / Sets the attribute value               ;
; cd:BLK_SetDynamicProps  - Zmienia wlasciwosci bloku dyn. / Sets the dyn. block properties   ;
;                                                                                             ;
; [CAL] ===================================================================================== ;
; cd:CAL_BitList          - Lista bitow liczby calkowitej / List of bits integer              ;
; cd:CAL_Sequence         - Tworzy ciag arytmetyczny / Creates arithmetic sequence            ;
;                                                                                             ;
; [CON] ===================================================================================== ;
; cd:CON_All2Str          - Zmiana elem. listy na lancuchy / Convert list elem. onto strings  ;
; cd:CON_ObjConv          - Konwertuje obiekt / Convert object                                ;
; cd:CON_List2Value       - Zmiana listy na lancuch tekstowy / Convert list onto text string  ;
; cd:CON_Real2Str         - Konwertuje liczbe na tekst / Converts number to a string          ;
; cd:CON_TransMatrix      - Macierz transformacji ukl. wsp. / The coor. transformation matrix ;
; cd:CON_Value2List       - Zmiana lancucha tekstow. na liste / Convert string into list elem.;
; cd:CON_XYZ2Variant      - Lista liczb na 3DPoint / List of numbers to 3DPoint               ;
;                                                                                             ;
; [DCL] ===================================================================================== ;
; cd:DCL_ChangeColorList  - Obsluga listy kolorow / Handling of list colors                   ;
; cd:DCL_ChangeStringList - Obsluga listy tekstow / Handling of list strings                  ;
; cd:DCL_FillColorImage   - Wypelnia wycinek "image" kolorem / Fills "image" tile with color  ;
; cd:DCL_FillColorList    - Wypelnia "popup_list" kolorami / Fills "popup_list" with colors   ;
; cd:DCL_FillStringList   - Wypelnia "popup_list" tekstami / Fills "popup_list" with strings  ;
; cd:DCL_ImgBtnSortIcon   - Image_button - ikona sortowania / Image_button - sort icon        ;
; cd:DCL_MsgBox           - DCL-owe okno komunikatu / DCL message box                         ;
; cd:DCL_SetList          - Wypelnia wycinki / Fills tiles                                    ;
; cd:DCL_StdEditBoxDialog - Okno dialogowe z "edit_box" / Dialog control with "edit_box"      ;
; cd:DCL_StdListDialog    - Okno dialogowe z "list_box" / Dialog control with "list_box"      ;
;                                                                                             ;
; [DCT] ===================================================================================== ;
; cd:DCT_AddDict          - Dodaje slownik / Adds the dictionary                              ;
; cd:DCT_AddXrecord       - Dodaje Xrecord / Adds the Xrecord                                 ;
; cd:DCT_GetDict          - Pobiera slownik / Gets a dictionary                               ;
; cd:DCT_GetDictList      - Pobiera liste slownikow / Gets a list of dictionaries             ;
; cd:DCT_GetExtDict       - Pobiera/Tworzy ExtensionDict. / Gets/Creates an ExtensionDict.    ;
; cd:DCT_GetExtDictVLA    - Pobiera/Tworzy ExtensionDict. / Gets/Creates an ExtensionDict.    ;
; cd:DCT_GetXrecord       - Pobiera Xrecord / Gets Xrecord                                    ;
; cd:DCT_RemoveDict       - Usuwa slownik / Removes the dictionary                            ;
; cd:DCT_ReplaceXrecord   - Podmienia Xrecord / Replace Xrecord                               ;
; cd:DCT_SetXrecordVLA    - Zmienia Xrecord / Change Xrecord                                  ;
;                                                                                             ;
; [DWG] ===================================================================================== ;
; cd:DWG_AddCustomProp    - Dodaje wlasciwosci uzytkownika / Add custom drawing properties    ;
; cd:DWG_GetCustomProp    - Lista wlasciwosci uzytkownika / Custom drawing properties         ;
; cd:DWG_GetOpenDocs      - Lista otwartych dokumentow / Open documents list                  ;
; cd:DWG_GetSummaryInfo   - Lista wlasciwosci dokumentu / Summary drawing properties list     ;
; cd:DWG_Layout2VLA       - Zmiana nazwy arkusza na ob. VLA / Convert layout name to VLA-Ob.  ;
; cd:DWG_LayoutsList      - Lista arkuszy rysunku / Layouts drawing list                      ;
; cd:DWG_RemoveCustomProp - Usuwa wlasciwosci uzytkownika / Removes custom drawing properties ;
; cd:DWG_SetSummaryInfo   - Zmiana wlasciwosci dokumentu / Set summary drawing properties     ;
;                                                                                             ;
; [DXF] ===================================================================================== ;
; cd:DXF_Massoc           - Zwraca wartosc danego klucza z listy asocjacyjnej /               ;
;                           Returns the value of a key from assoc list                        ;
; cd:DXF_RemoveDXF        - Usuwa kody z listy DXF / Removes codes from the list of DXF       ;
;                                                                                             ;
; [ENT] ===================================================================================== ;
; cd:ENT_CheckTableObj    - Poprawnosc nazwanego obiektu / Correctness of the named object    ;
; cd:ENT_MakeArc          - Tworzy obiekt typu ARC / Creates a ARC object                     ;
; cd:ENT_MakeBlockEnd     - Tworzy koniec definicji bloku / Creates a block definition end    ;
; cd:ENT_MakeBlockHead    - Tworzy poczatek definicji bloku / Creates a block definition head ;
; cd:ENT_MakeCircle       - Tworzy obiekt typu CIRCLE / Creates a CIRCLE object               ;
; cd:ENT_MakeEllipse      - Tworzy obiekt typu ELLIPSE / Creates a ELLIPSE object             ;
; cd:ENT_MakeLayer        - Tworzy nowa warstwe / Creates a new layers                        ;
; cd:ENT_MakeLine         - Tworzy obiekt typu LINE / Make LINE object                        ;
; cd:ENT_MakeLWPolyline   - Tworzy obiekt typu LWPOLYLINE / Creates a LWPOLYLINE object       ;
; cd:ENT_MakeTable        - Tworzy obiekt typu ACAD_TABLE / Creates a ACAD_TABLE object       ;
; cd:ENT_MakeText         - Tworzy obiekt typu TEXT / Creates a TEXT object                   ;
; cd:ENT_MakeTextStyle    - Tworzy nowy stylu tekstu / Creates a new text style               ;
; cd:ENT_MakeXline        - Tworzy obiekt typu XLINE / Creates a XLINE object                 ;
; cd:ENT_SetBasicDXF      - Zmiana podstawowych cech obiektu / Set basic object properties    ;
; cd:ENT_SetDXF           - Zmiana danych DXF obiektu / Set DXF data of object                ;
;                                                                                             ;
; [LST] ===================================================================================== ;
; cd:LST_InsertItem       - Wstawia nowy element na liste / Inserts a new item in the list    ;
; cd:LST_ItemPosition     - Lista wystapien elementu / List of occurrences item in the list   ;
; cd:LST_MoveItemDown     - Przesuwa element o jedna pozyc. w dol / Moves item one pos. down  ;
; cd:LST_MoveItemToBottom - Przesuwa element na ostatnia pozyc. / Moves item to the last pos. ;
; cd:LST_MoveItemToTop    - Przesuwa element na pozycje 0 / Moves item to the 0th position    ;
; cd:LST_MoveItemUp       - Przesuwa element o jedna pozyc. w gore / Moves item one pos. up   ;
; cd:LST_RemoveItem       - Usuwa element z listy / Removes the item from the list            ;
; cd:LST_ReplaceItem      - Zastepuje element na liscie / Replaces the item on the list       ;
; cd:LST_ReverseItems     - Zamienia elementy miejscami / Reverse the elements in places      ;
;                                                                                             ;
; [SSX] ===================================================================================== ;
; cd:SSX_Convert          - Zmienia PICKSET na liste obiek. / Convert PICKSET to list of obj. ;
; cd:SSX_DynBlockFilter   - Filtr blokow dynamicznych / Dynamic block filter                  ;
;                                                                                             ;
; [STR] ===================================================================================== ;
; cd:STR_CountChar        - Liczba wystapien znaku / Number of occurrences of a character     ;
; cd:STR_FillChar         - Uzupelnia lancuch tekstowy / Complements the text string          ;
; cd:STR_Parse            - Dzieli lancuch separatorem / Divide string by separator           ;
; cd:STR_ReParse          - Laczy liste lancuchow w lancuch z separatorem /                   ;
;                           Combines a list of strings in the string with the separator       ;
; cd:STR_TableNameAuto    - Tworzy automatyczna nazwe / Creates automatic name                ;
;                                                                                             ;
; [SYS] ===================================================================================== ;
; cd:SYS_AcadInfo         - AcadInfo np. ("AutoCAD" 18.0 64 "PL")                             ;
; cd:SYS_CheckError       - Sprawdza dzialanie funkcji / Checks proper operation of the func. ;
; cd:SYS_CollList         - Zwraca liste obiektow / Returns a list of objects                 ;
; cd:SYS_FilesLoader      - Wczytuje pliki lsp,fas,vlx / Loads files lsp,fas,vlx              ;
; cd:SYS_FontPaths        - Zwraca liste sciezek do czcionek / Returns a list of font paths   ;
; cd:SYS_GetDateTime      - Zwraca date/czas systemowa(y) / Returns system date/time          ;
; cd:SYS_GetFonts         - Zwraca liste czcionek systemowych / Returns system font list      ;
; cd:SYS_GetSymbols       - Zwraca liste symboli LISP-a / Returns LISPs symbols list          ;
; cd:SYS_Msgbox           - Standardowe okno komunikatu / Standard message box                ;
; cd:SYS_ReadFile         - Czyta plik tekstowy / Read a text file                            ;
; cd:SYS_RW               - Odczyt/Zapis danych w rejest. / Reads/Writes data to the registry ;
; cd:SYS_UndoBegin        - Poczatek grupy operacji / Start of group operations               ;
; cd:SYS_UndoEnd          - Koniec grupy operacji / End of group operations                   ;
; cd:SYS_WriteFile        - Zapisuje plik tekstowy / Writes the text file                     ;
;                                                                                             ;
; [USR] ===================================================================================== ;
; cd:USR_EntSelObj        - Wybiera zadane obiekty / Select a desired object                  ;
; cd:USR_GetCorner        - Pobiera drugi naroznik prostokata / Get second corner of rectangle;
; cd:USR_GetKeyWord       - Pobiera slowa kluczowego od uzyt. / Get a keyword from the user   ;
; cd:USR_GetPoint         - Pobiera punkt od uzytkownika / Gets point from user               ;
;                                                                                             ;
; [XDT] ===================================================================================== ;
; cd:XDT_GetXData         - Czyta dane dodatkowe XDATA / Reads additional data XDATA          ;
; cd:XDT_PutXData         - Dodaje dane dodatkowe XDATA / Adds additional data XDATA          ;
; cd:XDT_RemoveXData      - Usuwa dane dodatkowe XDATA / Removes additional data XDATA        ;
;                                                                                             ;
; =========================================================================================== ;

; =========================================================================================== ;
(vl-load-com)
; =========================================================================================== ;

; =========================================================================================== ;
; Aktywny dokument / Active document                                                          ;
; =========================================================================================== ;
(defun cd:ACX_ADoc ()
  (or
    *cd-ActiveDocument*
    (setq *cd-ActiveDocument*
      (vla-get-ActiveDocument (vlax-get-acad-object))
    )
  )
  *cd-ActiveDocument*
)
; =========================================================================================== ;
; Tworzy obiekt typu ARC / Creates a ARC object                                               ;
;  Space  [VLA-Object] - kolekcja / collection | Model/Paper + Block Object                   ;
;  Pc     [LIST]  - srodek luku / center of the arc                                           ;
;  Radius [REAL]  - promien / radius                                                          ;
;  As     [REAL]  - kat poczatkowy w radianach / start angle in radians                       ;
;  Ae     [REAL]  - kat koncowy w radianach / end angle in radians                            ;
;  ActUcs [T/nil] - dopasuj do aktywnego ucs / adjust to active ucs                           ;
;                   nil = nie / no                                                            ;
;                   T   = tak / yes                                                           ;
; ------------------------------------------------------------------------------------------- ;
; (cd:ACX_AddArc (cd:ACX_ASpace) '(1 5 0) 5 0 pi T)                                           ;
; =========================================================================================== ;
(defun cd:ACX_AddArc (Space Pc Radius As Ae ActUcs / zdir xang obj)
  (setq zdir (trans '(0 0 1) 1 0 T)
        xang (angle '(0 0 0) (trans (getvar "UCSXDIR") 0 zdir))
  )
  (setq obj
    (vla-AddArc Space
      (vlax-3d-point (trans Pc 1 0))
      Radius
      (+ As xang)
      (+ Ae xang)
    )
  )
  (if
    (not ActUcs)
    (vla-put-normal obj (vlax-3d-point '(0 0 1)))
  )
  obj
)
; =========================================================================================== ;
; Tworzy obiekt typu CIRCLE / Creates a CIRCLE object                                         ;
;  Space  [VLA-Object]  - kolekcja / collection | Model/Paper + Block Object                  ;
;  Pc     [LIST]  - srodek okregu / center of the circle                                      ;
;  Radius [REAL]  - promien / radius                                                          ;
;  ActUcs [T/nil] - dopasuj do aktywnego ucs / adjust to active ucs                           ;
;                   nil = nie / no                                                            ;
;                   T   = tak / yes                                                           ;
; ------------------------------------------------------------------------------------------- ;
; (cd:ACX_AddCircle (cd:ACX_ASpace) '(1 5 0) 5 T)                                             ;
; =========================================================================================== ;
(defun cd:ACX_AddCircle (Space Pc Radius ActUcs / obj)
  (setq obj
    (vla-AddCircle
      Space
      (vlax-3d-point (trans Pc 1 0))
      Radius
    )
  )
  (if (not ActUcs)
    (vla-put-normal obj (vlax-3d-point '(0 0 1)))
  )
  obj
)
; =========================================================================================== ;
; Tworzy nowa warstwe / Creates a new layers                                                  ;
;  Name [STR] - nazwa warstwy / layer name                                                    ;
; ------------------------------------------------------------------------------------------- ;
; (cd:ACX_AddLayer "ABC")                                                                     ;
; =========================================================================================== ;
(defun cd:ACX_AddLayer (Name)
  (if (tblobjname "LAYER" Name)
    (vla-item (cd:ACX_Layers) Name)
    (if (snvalid Name 0)
      (vla-add (cd:ACX_Layers) Name)
    )
  )
)
; =========================================================================================== ;
; Tworzy obiekt typu LINE / Creates a LINE object                                             ;
;  Space  [VLA-Object] - kolekcja / collection | Model/Paper + Block Object                   ;
;  Ps     [LIST]  - punkt poczatkowy / start point                                            ;
;  Pe     [LIST]  - punkt koncowy / end point                                                 ;
;  ActUcs [T/nil] - dopasuj do aktywnego ucs / adjust to active ucs                           ;
;                   nil = nie / no                                                            ;
;                   T   = tak / yes                                                           ;
; ------------------------------------------------------------------------------------------- ;
; (cd:ACX_AddLine (cd:ACX_ASpace) '(20 10 0) '(100 50 0) T)                                   ;
; =========================================================================================== ;
(defun cd:ACX_AddLine (Space Ps Pe ActUcs / obj)
  (setq obj
    (vla-AddLine Space
      (vlax-3d-point (trans Ps 1 0))
      (vlax-3d-point (trans Pe 1 0))
    )
  )
  (if (not ActUcs)
    (vla-put-normal obj (vlax-3d-point '(0 0 1)))
  )
  obj
)
; =========================================================================================== ;
; Tworzy obiekt typu LWPOLYLINE / Creates a LWPOLYLINE object                                 ;
;  Space  [VLA-Object] - kolekcja / collection | Model/Paper + Block Object                   ;
;  Pts    [LIST]  - lista wierzcholkow polilinii / list of polyline vertex                    ;
;  Closed [T/nil] - nil = otwarta / open                                                      ;
;                   T   = zamknieta / closed                                                  ;
; ------------------------------------------------------------------------------------------- ;
; (cd:ACX_AddLWPolyline (cd:ACX_ASpace) (list '(5 5) '(15 5) '(15 10) '(10 10)) nil)          ;
; =========================================================================================== ;
(defun cd:ACX_AddLWPolyline (Space Pts Closed / obj)
  (setq Pts
    (apply
      (quote append)
      (mapcar
        (function
          (lambda (%)
            (list (car %) (cadr %))
          )
        )
        (mapcar
          (function
            (lambda (%)
              (trans % 1 (trans '(0 0 1) 1 0 T))
            )
          )
          Pts
        )
      )
    )
  )
  (setq obj
    (vla-AddLightweightPolyline Space
      (vlax-make-variant
        (vlax-safearray-fill
          (vlax-make-safearray vlax-vbdouble (cons 0 (1- (length Pts))))
          Pts
        )
      )
    )
  )
  (if Closed (vla-put-closed obj Closed))
  obj
)
; =========================================================================================== ;
; Tworzy obiekt typu MTEXT / Creates a MTEXT object                                           ;
;  Space [VLA-Object] - kolekcja / collection | Model/Paper + Block Object                    ;
;  Str   [STR]  - lancuch tekstowy / string                                                   ;
;  Pb    [LIST] - punkt bazowy / base point                                                   ;
;  Width [REAL] - szerokosc tekstu / width text                                               ;
;  Rot   [REAL] - kat obrotu w radianach / rotation angle in radians                          ;
; ------------------------------------------------------------------------------------------- ;
; (cd:ACX_AddMText (cd:ACX_ASpace) "NEW_MTEXT" (getpoint) 1.5 (/ pi 4))                       ;
; =========================================================================================== ;
(defun cd:ACX_AddMText (Space Str Pb Width Rot / obj)
  (vla-put-rotation
    (setq obj
      (vla-AddMText Space
      (vlax-3d-point (trans Pb 1 0))
        Width
        Str      
      )
    )
    Rot
  )
  obj
)
; =========================================================================================== ;
; Tworzy obiekt typu ACAD_TABLE / Creates a ACAD_TABLE object                                 ;
;  Space [VLA-Object]  - kolekcja / collection | Model/Paper + Block Object                   ;
;  Pb    [LIST] - punkt bazowy tabeli / table base point                                      ;
;  Rows  [INT]  - liczba wierszy / number of rows                                             ;
;  Cols  [INT]  - liczba kolumn / number of columns                                           ;
;  RowH  [INT]  - wysokosc wierszy / rows height                                              ;
;  ColH  [INT]  - szerokosc kolumn / columns height                                           ;
; ------------------------------------------------------------------------------------------- ;
; (cd:ACX_AddTable (cd:ACX_ASpace) (getpoint) 5 5 10 30)                                      ;
; =========================================================================================== ;
(defun cd:ACX_AddTable (Space Pb Rows Cols RowH ColH)
  (vla-AddTable
     Space
     (vlax-3d-point (trans Pb 1 0))
     Rows
     Cols
     RowH
     ColH
  )
)
; =========================================================================================== ;
; Tworzy obiekt typu TEXT / Creates a TEXT object                                             ;
;  Space  [VLA-Object] - kolekcja / collection | Model/Paper + Block Object                   ;
;  Str    [STR]  - lancuch tekstowy / string                                                  ;
;  Pb     [LIST] - punkt bazowy / base point                                                  ;
;  Height [REAL] - wysokosc / height                                                          ;
;  Rot    [REAL] - kat obrotu w radianach / rotation angle in radians                         ;
; ------------------------------------------------------------------------------------------- ;
; (cd:ACX_AddText (cd:ACX_ASpace) "NEW_TEXT" (getpoint) 1.5 (/ pi 4))                         ;
; =========================================================================================== ;
(defun cd:ACX_AddText (Space Str Pb Height Rot / zdir xang obj)
  (setq zdir (trans '(0 0 1) 1 0 T)
        xang (angle '(0 0 0) (trans (getvar "UCSXDIR") 0 zdir))
  )
  (vla-put-rotation
    (setq obj
      (vla-AddText Space
        Str
        (vlax-3d-point (trans Pb 1 0))
        Height
      )
    )
    (+ Rot xang)
  )
  obj
)
; =========================================================================================== ;
; Tworzy nowy stylu tekstu / Creates a new text style                                         ;
;  Name [STR] - nazwa stylu tekstu / text style name                                          ;
; ------------------------------------------------------------------------------------------- ;
; (cd:ACX_AddTextStyle "ABC")                                                                 ;
; =========================================================================================== ;
(defun cd:ACX_AddTextStyle (Name)
  (if (tblobjname "STYLE" Name)
    (vla-item (cd:ACX_TextStyles) Name)
    (if (snvalid Name 0)
      (vla-add (cd:ACX_TextStyles) Name)
    )
  )
)
; =========================================================================================== ;
; Tworzy obiekt typu VIEWPORT / Creates a VIEWPORT object                                     ;
;  Space  [VLA-Object] - kolekcja / collection | Model/Paper + Block Object                   ;
;  Pb     [LIST]       - punkt bazowy / base point                                            ;
;  Width  [REAL]       - szerokość rzutni / ViewPort width                                    ;
;  Height [REAL]       - wysokość rzutni / ViewPort height                                    ;
;  HJust  [INT]        - wyrównanie w poziomie / horizontal justification                     ;
;                        1 - Lewo / Left; 2 - Środek / Center; 3 - Prawo / Right              ;
;  VJust  [INT]        - wyrównanie w pionie / vertical justification                         ;
;                        1 - Góra / Top; 2 - Środek / Middle; 3 - Dół / Bottom                ;
; ------------------------------------------------------------------------------------------- ;
; (cd:ACX_AddViewport (cd:ACX_Paper) (getpoint) 100 200 3 2)                                  ;
; =========================================================================================== ;
(defun cd:ACX_AddViewport (Space Pb Width Height HJust VJust / obj)
  (setq Pb (trans Pb 1 0))
  (cond 
    ( (= HJust 1) (setq Pb (list (+ (car Pb) (/ Width 2)) (cadr Pb) (caddr Pb))) )
    ( (= HJust 3) (setq Pb (list (- (car Pb) (/ Width 2)) (cadr Pb) (caddr Pb))) )
  )
  (cond 
    ( (= VJust 1) (setq Pb (list (car Pb) (- (cadr Pb) (/ Height 2)) (caddr Pb))) )
    ( (= VJust 3) (setq Pb (list (car Pb) (+ (cadr Pb) (/ Height 2)) (caddr Pb))) )
  )
  (vla-Display  
    (setq obj
      (vla-AddPViewport
        Space
        (vlax-3d-point Pb)
        Width
        Height
      )
    )
    :vlax-true
  )
   obj
)
; =========================================================================================== ;
; Tworzy obiekt typu XLINE / Creates a XLINE object                                           ;
;  Space  [VLA-Object] - kolekcja / collection | Model/Paper + Block Object                   ;
;  Ps     [LIST]       - punkt poczatkowy / start point                                       ;
;  Pe     [LIST/REAL]  - punkt koncowy lub kat w radianach / end point or angle in radians    ;
; ------------------------------------------------------------------------------------------- ;
; (cd:ACX_AddXline (cd:ACX_ASpace) (getpoint) (/ pi 4))                                       ;
; =========================================================================================== ;
(defun cd:ACX_AddXline (Space Ps Pe)
  (vla-AddXline Space
    (vlax-3d-point (trans Ps 1 0))
    (vlax-3d-point
      (cond
        ( (numberp Pe)
           (trans (polar Ps Pe 1) 1 0)
        )
        ( (listp Pe)
           (trans (list (car Pe) (cadr Pe) (caddr Ps)) 1 0)
        )
      )
    )
  )
)
; =========================================================================================== ;
; Aktywny obszar / Active space                                                               ;
; =========================================================================================== ;
(defun cd:ACX_ASpace ()
  (if (= (getvar "CVPORT") 1)
    (vla-item (cd:ACX_Blocks) "*Paper_Space")
    (cd:ACX_Model)
  )
)
; =========================================================================================== ;
; Kolekcja Blocks / Blocks collection                                                         ;
; =========================================================================================== ;
(defun cd:ACX_Blocks ()
  (or
    *cd-Blocks*
    (setq *cd-Blocks* (vla-get-blocks (cd:ACX_ADoc)))
  )
  *cd-Blocks*
)
; =========================================================================================== ;
; Pobiera cechy obiektu VLA/ENAME / Gets the object VLA-Object/ENAME properties               ;
;  Obj [ENAME/VLA-Object] - entycja lub obiekt VLA / entity name or VLA-Object                ;
;  Lst [LIST] - lista cech / list of properties                                               ;
; ------------------------------------------------------------------------------------------- ;
; (cd:ACX_GetProp (entlast) '("LineType" "Color" "Layer"))                                    ;
; =========================================================================================== ;
(defun cd:ACX_GetProp (Obj Lst)
  (if (= (type Obj) (quote ENAME))
    (setq Obj (vlax-ename->vla-object Obj))
  )
  (mapcar
    (function
      (lambda (% / %1)
        (cons %
          (if (vlax-property-available-p Obj % nil)
            (if
              (not
                (setq %1
                  (cd:SYS_CheckError (list vlax-get-property Obj %))
                )
              )
              :vlax-false
              %1
            )
            :vlax-null
          )
        )
      )
    )
    Lst
  )
)
; =========================================================================================== ;
; Kolekcja Layers / Layers collection                                                         ;
; =========================================================================================== ;
(defun cd:ACX_Layers ()
  (or
    *cd-Layers*
    (setq *cd-Layers* (vla-get-Layers (cd:ACX_ADoc)))
  )
  *cd-Layers*
)
; =========================================================================================== ;
; Kolekcja Layouts / Layouts collection                                                       ;
; =========================================================================================== ;
(defun cd:ACX_Layouts ()
  (or
    *cd-Layouts*
    (setq *cd-Layouts* (vla-get-layouts (cd:ACX_ADoc)))
  )
  *cd-Layouts*
)
; =========================================================================================== ;
; Kolekcja LineTypes / LineTypes collection                                                   ;
; =========================================================================================== ;
(defun cd:ACX_LineTypes ()
  (or
    *cd-LineTypes*
    (setq *cd-LineTypes* (vla-get-LineTypes (cd:ACX_ADoc)))
  )
  *cd-LineTypes*
)
; =========================================================================================== ;
; Laduje definicje rodzaju linii z pliku LIN / Loads linetype definition from LIN file        ;
;  Name [STR] - nazwa warstwy / layer name                                                    ;
;  File [STR] - nazwa pliku LIN / LIN file name                                               ;
; ------------------------------------------------------------------------------------------- ;
; (cd:ACX_LoadLineType "HIDDEN" "acadiso.lin")                                                ;
; =========================================================================================== ;
(defun cd:ACX_LoadLineType (Name File / res)
  (setq res
    (if (tblobjname "LTYPE" Name)
      (vla-item (cd:ACX_LineTypes) Name)
      (if (snvalid Name 0)
        (vl-catch-all-apply
          (quote vla-load)
          (list (cd:ACX_LineTypes) Name File)
        )
      )
    )
  )
  (if (= (type res) (quote VLA-OBJECT)) res)
)
; =========================================================================================== ;
; Obszar modelu / Model space                                                                 ;
; =========================================================================================== ;
(defun cd:ACX_Model ()
  (or
    *cd-ModelSpace*
    (setq *cd-ModelSpace* (vla-get-ModelSpace (cd:ACX_ADoc)))
  )
  *cd-ModelSpace*
)
; =========================================================================================== ;
; Obszar papieru / Paper space                                                                ;
; =========================================================================================== ;
(defun cd:ACX_Paper ()
  (setq *cd-PaperSpace* (vla-get-PaperSpace (cd:ACX_ADoc)))
)
; =========================================================================================== ;
; Zmienia cechy obiektu VLA / Sets the property of VLA-Object                                 ;
;  Obj [ENAME/VLA-Object] - entycja lub obiekt VLA / entity name or VLA-Object                ;
;  Lst [LIST] - lista cech par kropkowych / list of dotted pairs properties                   ;
; ------------------------------------------------------------------------------------------- ;
; (cd:ACX_SetProp  (entlast) '(("LineType" . "BLA")("Color" . 1)("Layer" . "0")))             ;
; =========================================================================================== ;
(defun cd:ACX_SetProp (Obj Lst)
  (if (= (type Obj) (quote ENAME))
    (setq Obj (vlax-ename->vla-object Obj))
  )
  (if (vlax-write-enabled-p Obj)
    (mapcar
      (function
        (lambda (% / %1)
          (cons
            (car %)
            (if (vlax-property-available-p Obj (car %) T)
              (if
                (setq %1
                  (vl-catch-all-apply
                    (quote vlax-put-property)
                    (list Obj (car %)
                      (if (vl-symbolp (cdr %))
                        (eval (cdr %))
                        (cdr %)
                      )
                    )
                  )
                )
                %1
                :vlax-true
              )
              :vlax-null
            )
          )
        )
      )
      Lst
    )
  )
)
; =========================================================================================== ;
; Kolekcja TextStyles / TextStyles collection                                                 ;
; =========================================================================================== ;
(defun cd:ACX_TextStyles ()
  (or
    *cd-TextStyles*
    (setq *cd-TextStyles* (vla-get-TextStyles (cd:ACX_ADoc)))
  )
  *cd-TextStyles*
)
; =========================================================================================== ;
; Kolekcja Views / Views collection                                                           ;
; =========================================================================================== ;
(defun cd:ACX_Views ()
  (or
    *cd-Views*
    (setq *cd-Views* (vla-get-views (cd:ACX_ADoc)))
  )
  *cd-Views*
)
; =========================================================================================== ;
; Wstawia odnośnik zewnętrzny / Attach Xref                                                   ;
;  Path  [STR]      - pełna ścieżka do pliku xref / xref full path                            ;
;  File  [STR]      - nazwa pliku odnośnika / xref file name                                  ;
;  Pb    [LIST]     - punkt wstawienia / insertion point                                      ;
;  Xyz   [LIST/nil] - LISTA = lista wspolczynnikow skali XYZ / list of X Y Z scale factor     ;
;                     nil   = X=Y=Z=1.0                                                       ;
;  Rot   [REAL/nil] - REAL = kat obrotu w radianach / rotation angle in radians               ;
;                     nil  = kat=0.0 / angle=0.0                                              ;
;  Ovlay [BOOL]     - typ odnośnika / reference type:                                         ;
;                     nil = dołącz / attachment                                               ;
;                     T   = nałóż / overlay                                                   ;
; ------------------------------------------------------------------------------------------- ;
; (cd:BLK_AttachXref "C:\\CAD" "Cad" '(5 5 5) '(10 10 10) 0.75 T)                             ;
; (cd:BLK_AttachXref "C:\\CAD\\" "Cad" '(5 5 5) '(10 10 10) 0.75 T)                           ;
; =========================================================================================== ;
(defun cd:BLK_AttachXref (Path File Pb Xyz Rot Ovlay / zdir xang res)
  (setq    
    zdir (trans '(0 0 1) 1 0 T)
    xang (angle '(0 0 0) (trans (getvar "UCSXDIR") 0 zdir))
  )
  (if 
    (not
      (vl-catch-all-error-p
        (setq res 
          (vl-catch-all-apply
            (quote vla-AttachExternalReference)
            (list
              (cd:ACX_ASpace)
              (strcat (vl-string-right-trim "\\" Path) "\\" File) 
              File
              (vlax-3d-point Pb)
              (if (not Xyz) 1.0 (car Xyz))
              (if (not Xyz) 1.0 (cadr Xyz))
              (if (not Xyz) 1.0 (caddr Xyz))
              (if (not Rot) 0.0 (+ Rot xang))
              (if Ovlay
                :vlax-true
                :vlax-false
              )
            )
          )
        )
      )
    )
    res
  )
)
; =========================================================================================== ;
; Zwraca liste atrybutow wstawionego bloku / Returns a list of attributes of inserted block   ;
;  Ename [ENAME] - nazwa entycji / entity name                                                ;
; ------------------------------------------------------------------------------------------- ;
; (cd:BLK_GetAttEntity (car (entsel)))                                                        ;
; =========================================================================================== ;
(defun cd:BLK_GetAttEntity (Ename / dt ats res)
  (if
    (and
      Ename
      (= "INSERT" (cdr (assoc 0 (setq dt (entget Ename)))))
    )
    (if
      (and
        (setq ats (assoc 66 dt))
        (not (zerop (cdr ats)))
      )
      (reverse
        (while
          (/= "SEQEND"
            (cdr (assoc 0 (entget (setq Ename (entnext Ename)))))
          )
          (setq res (cons Ename res))
        )
      )
    )
  )
)
; =========================================================================================== ;
; Pobiera wartosci wszystkich atrybutow / Gets the values of all attributes                   ;
;  Ename [ENAME] - nazwa entycji / entity name                                                ;
; ------------------------------------------------------------------------------------------- ;
; (cd:BLK_GetAtts (car (entsel)))                                                             ;
; =========================================================================================== ;
(defun cd:BLK_GetAtts (Ename)
  (mapcar
    (function
      (lambda (% / dt)
        (setq dt (entget %))
        (cons
          (cdr (assoc 2 dt))
          (cdr (assoc 1 dt))
        )
      )
    )
    (cd:BLK_GetAttEntity Ename)
  )
)
; =========================================================================================== ;
; Pobiera wartosci wszystkich atrybutow / Gets the values of all attributes                   ;
;  Obj [VLA-Object] - obiekt VLA / VLA-Object                                                 ;
; ------------------------------------------------------------------------------------------- ;
; (cd:BLK_GetAttsVLA (vlax-ename->vla-object (car (entsel))))                                 ;
; =========================================================================================== ;
(defun cd:BLK_GetAttsVLA (Obj)
  (mapcar
    (function
      (lambda (%)
        (cons
          (vla-get-TagString %)
          (vla-get-TextString %)
        )
      )
    )
    (vlax-invoke Obj (quote GetAttributes))
  )
)
; =========================================================================================== ;
; Pobiera wartosc atrybutu / Gets the attribute value                                         ;
;  Obj [ENAME/VLA-Object] - entycja lub obiekt VLA / entity name or VLA-Object                ;
;  Tag [STR] - etykieta atrybutu / attribute tag                                              ;
; ------------------------------------------------------------------------------------------- ;
; (cd:BLK_GetAttValueVLA (car (entsel)) "VIEW_NUMBER")                                        ;
; =========================================================================================== ;
(defun cd:BLK_GetAttValueVLA (Obj Tag)
  (if (= (type Obj) (quote ENAME))
    (setq Obj (vlax-ename->vla-object Obj))
  )
  (vl-some
    (function
      (lambda (%)
        (if (eq (strcase tag) (strcase (vla-get-TagString %)))
          (vla-get-TextString %)
        )
      )
    )
    (vlax-invoke Obj (quote GetAttributes))
  )
)
; =========================================================================================== ;
; Lista nazw blokow (*U) zaleznych od bloku dynamicznego /                                    ;
; List of the blocks name (*U) which depends on a dynamic block                               ;
;  Name [STR] - nazwa bloku / block name                                                      ;
; ------------------------------------------------------------------------------------------- ;
; (cd:BLK_GetDynBlockNames "NazwaBloku")                                                      ;
; =========================================================================================== ;
(defun cd:BLK_GetDynBlockNames (Name / res n xd)
  (setq res (list Name))
  (vlax-for % (cd:ACX_Blocks)
    (if (wcmatch (setq n (vla-get-name %)) "`*U*")
      (if
        (setq xd
          (cd:XDT_GetXData
            (vlax-vla-object->ename %)
            "AcDbBlockRepBTag"
          )
        )
        (if
          (=
            (strcase Name)
            (strcase
              (cdr
                (assoc 2
                  (entget
                    (handent
                      (cdr (assoc 1005 (cdr xd)))
                    )
                  )
                )
              )
            )
          )
          (setq res (cons n res))
        )
      )
    )
  )
  (reverse res)
)
; =========================================================================================== ;
; Pobiera wlasciwosci bloku dynamicznego / Gets the dynamic block properties                  ;
;  Obj    [ENAME/VLA-Object] - entycja lub obiekt VLA / entity name or VLA-Object             ;
;  Origin [T/nil] - pokaz wlasciwosc ORIGIN / show the ORIGIN property                        ;
;                   nil = nie / no                                                            ;
;                   T = tak / yes                                                             ;
; ------------------------------------------------------------------------------------------- ;
; (cd:BLK_GetDynamicProps (car (entsel)) T)                                                   ;
; =========================================================================================== ;
(defun cd:BLK_GetDynamicProps (Obj Origin / _Sub pn res)
  (defun _Sub ()
    (setq res
      (cons
        (cons
          pn
          (vlax-get % (quote Value))
        )
        res
      )
    )
  )
  (if (= (type Obj) (quote ENAME))
    (setq Obj (vlax-ename->vla-object Obj))
  )
  (foreach % (vlax-invoke Obj (quote GetDynamicBlockProperties))
    (setq pn (vla-get-PropertyName %))
    (if Origin (_Sub)
      (if (/= (strcase pn) "ORIGIN") (_Sub))
    )
  )
  res
)
; =========================================================================================== ;
; Zwraca liste blokow dynamicznych / Returns a list of dynamic blocks                         ;
; =========================================================================================== ;
(defun cd:BLK_GetDynBlockList ()
  (mapcar (quote cdadr)
    (vl-remove nil
      (mapcar
         (quote
           (lambda (%)
             (cd:XDT_GetXData
               (cdr (assoc 330 (entget (tblobjname "Block" %))))
               "AcDbDynamicBlockTrueName*"
             )
           )
         )
         (cd:SYS_CollList "BLOCK" (+ 1 2 4 8))
      )
    )
  )
)
; =========================================================================================== ;
; Lista obiektow w definicji bloku / List of objects in block definition                      ;
;  Name   [STR] - nazwa bloku / block name                                                    ;
;  Entity [STR] - nazwa entycji / entity name                                                 ;
; ------------------------------------------------------------------------------------------- ;
; (cd:BLK_GetEntity "*Model_space" nil), (cd:BLK_GetEntity "NAZWA" "*LINE")                   ;
; =========================================================================================== ;
(defun cd:BLK_GetEntity (Name Entity / en dt res)
  (setq en (tblobjname "BLOCK" Name))
  (while
    (and
      en
      (setq en (entnext en))
      (setq dt (entget en))
      (/= "ENDBLK" (cdr (assoc 0 dt)))
    )
    (if
      (if Entity
        (wcmatch (cdr (assoc 0 dt)) (strcase Entity))
        (cdr (assoc 0 dt))
      )
      (setq res
        (cons
          (cdr (assoc -1 dt))
          res
        )
      )
    )
  )
  (reverse res)
)
; =========================================================================================== ;
; Lista odnosnikow zewnetrznych / List of external references                                 ;
; =========================================================================================== ;
(defun cd:BLK_GetXrefs (/ res)
  (vlax-for % (cd:ACX_Blocks)
    (if (= (vla-get-IsXref %) :vlax-true)
      (setq res (cons (vla-get-name %) res))
    )
  )
  res
)
; =========================================================================================== ;
; Wstawia blok / Inserts a block                                                              ;
;  Pb   [LIST]      - punkt wstawienia / insertion point                                      ;
;  Name [STR]       - nazwa bloku lub rysunku (bez .dwg) / block or drawing name (no .dwg)    ;
;  Xyz  [LIST/nil]  - LISTA = lista wspolczynnikow skali XYZ / list of X Y Z scale factor     ;
;                     nil   = X=Y=Z=1.0                                                       ;
;  Rot  [REAL/nil]  - REAL = kat obrotu w radianach / rotation angle in radians               ;
;                     nil  = kat=0.0 / angle=0.0                                              ;
;  Sup  [T/nil]     - szukaj w sciezkach poszukiwan / search at support path                  ;
; ------------------------------------------------------------------------------------------- ;
; (cd:BLK_InsertBlock '(0 0 0) "d:\\blok" '(2 2 2) 0 T)                                       ;
; =========================================================================================== ;
(defun cd:BLK_InsertBlock (Pb Name Xyz Rot Sup / zdir xang res)
   (setq    
      zdir (trans '(0 0 1) 1 0 T)
      xang (angle '(0 0 0) (trans (getvar "UCSXDIR") 0 zdir))
   )
   (if
    (not
      (vl-catch-all-error-p
        (setq res
          (vl-catch-all-apply
            (quote vla-InsertBlock)
            (list
              (cd:ACX_ASpace)
              (vlax-3d-point (trans Pb 1 0))
              (if (tblsearch "BLOCK" Name)
                Name
                (if Sup
                  (findfile (strcat Name ".dwg"))
                  nil
                )
              )
              (if (not Xyz) 1.0 (car Xyz))
              (if (not Xyz) 1.0 (cadr Xyz))
              (if (not Xyz) 1.0 (caddr Xyz))
              (if (not Rot) 0.0 (+ Rot xang))
            )
          )
        )
      )
    )
    res
  )
)
; =========================================================================================== ;
; Sprawdza czy blok jest blokiem dynamicznym / Checks if the block is a dynamic block         ;
;  Obj [ENAME/VLA-Object] - entycja lub obiekt VLA / entity name or VLA-Object                ;
; ------------------------------------------------------------------------------------------- ;
; (cd:BLK_IsDynamicInsert (car (entsel)))                                                     ;
; =========================================================================================== ;
(defun cd:BLK_IsDynamicInsert (Obj)
  (if (= (type Obj) (quote ENAME))
    (setq Obj (vlax-ename->vla-object Obj))
  )
  (= :vlax-true (vla-get-IsDynamicBlock Obj))
)
; =========================================================================================== ;
; Zmienia wartosc atrybutu / Sets the attribute value                                         ;
;  Obj   [ENAME/VLA-Object] - entycja lub obiekt VLA / entity name or VLA-Object              ;
;  Tag   [STR] - etykieta atrybutu / attribute tag                                            ;
;  Value [STR] - wartosc atrybuty / attribute value                                           ;
; ------------------------------------------------------------------------------------------- ;
; (cd:BLK_SetAttValueVLA (car (entsel)) "VIEW_NUMBER" "12")                                   ;
; =========================================================================================== ;
(defun cd:BLK_SetAttValueVLA (Obj Tag Value)
  (if (= (type Obj) (quote ENAME))
    (setq Obj (vlax-ename->vla-object Obj))
  )
  (vl-some
    (function
      (lambda (%)
        (if (eq (strcase tag) (strcase (vla-get-TagString %)))
          (progn
            (vla-put-TextString % Value)
            Value
          )
        )
      )
    )
    (vlax-invoke Obj (quote GetAttributes))
  )
)
; =========================================================================================== ;
; Zmienia wlasciwosci bloku dynamicznego / Sets the dynamic block properties                  ;
;  Obj  [ENAME/VLA-Object] - entycja lub obiekt VLA / entity name or VLA-Object               ;
;  Prop [STR]              - wlasciwosc / property                                            ;
;  Val  [REAL/INT/STR]     - nowa wartosc / new value                                         ;
; ------------------------------------------------------------------------------------------- ;
; (cd:BLK_SetDynamicProps (car (entsel)) "Height" 50)                                         ;
; =========================================================================================== ;
(defun cd:BLK_SetDynamicProps (Obj Prop Val)
  (if (= (type Obj) (quote ENAME))
    (setq Obj (vlax-ename->vla-object Obj))
  )
  (vl-some
    (function
      (lambda (%)
        (if (eq (strcase Prop) (strcase (vla-get-PropertyName %)))
          (if
            (not
              (vl-catch-all-error-p
                (vl-catch-all-apply
                  (quote vla-put-value)
                  (list
                    %
                    (vlax-make-variant Val
                      (vlax-variant-type (vla-get-value %))
                    )
                  )
                )
              )
            )
            Val
          )
        )
      )
    )
    (vlax-invoke Obj (quote GetDynamicBlockProperties))
  )
)
; =========================================================================================== ;
; Lista bitow liczby calkowitej / List of bits integer                                        ;
;  Number [INT] - liczba calkowita / integer number                                           ;
; ------------------------------------------------------------------------------------------- ;
; (cd:CAL_BitList 127)                                                                        ;
; =========================================================================================== ;
(defun cd:CAL_BitList (Number / n res)
  (setq n 1)
  (while (>= Number n)
    (and
      (= (logand Number n) n)
      (setq res (cons n res))
    )
    (setq n (lsh n 1))
  )
  (if res
    (reverse res)
    (list Number)
  )
)
; =========================================================================================== ;
; Tworzy ciag arytmetyczny / Creates arithmetic sequence                                      ;
;  St [REAL/INT] - liczba poczatkowa / initial number                                         ;
;  Le [REAL/INT] - dlugosc ciagu / sequence length                                            ;
;  Sp [REAL/INT] - roznica ciagu  / sequence difference                                       ;
; ------------------------------------------------------------------------------------------- ;
; (cd:CAL_Sequence 1.50 10 0.5)                                                               ;
; =========================================================================================== ;
(defun cd:CAL_Sequence (St Le Sp / res)
  (if (vl-every (quote numberp) (list St Le Sp))
    (progn
      (setq res (list St))
      (repeat (fix (1- Le))
        (setq res
          (cons
            (setq St (+ St Sp))
            res
          )
        )
      )
      (reverse res)
    )
  )
)
; =========================================================================================== ;
; Zmiana elementow listy na lancuchy tekstowe / Convert list elements onto strings            ;
;  Lst  [LIST]  - lista wejsciowa / input list                                                ;
;  Mode [T/nil] - nil = jak wynik z funkcji princ / as a result of the princ function         ;
;                 T   = jak wynik z funkcji prin1 / as a result of the prin1 function         ;
; ------------------------------------------------------------------------------------------- ;
; (cd:CON_All2Str '("A" "B" 1 3) nil) --> ("A" "B" "1" "3")                                   ;
; (cd:CON_All2Str '("A" "B" 1 3) T)   --> ("\"A\"" "\"B\"" "1" "3")                           ;
; =========================================================================================== ;
(defun cd:CON_All2Str (Lst Mode)
  (mapcar
    (function
      (lambda (%)
        (if Mode
          (vl-prin1-to-string %)
          (vl-princ-to-string %)
        )
      )
    )
    Lst
  )
)
; =========================================================================================== ;
; Konwertuje obiekt / Convert object                                                          ;
;  Obj [ENAME/VLA-Object/STR] - obiekt VLA, entycja lub lancuch tekstowy /                    ;
;                               VLA-Object, entity name or string                             ;
;  Format [nil/1/2/3/4] - format wyjsciowy / output format                                    ;
;                         nil = nazwa entycji / entity name                                   ;
;                         1   = obiekt VLA / VLA-Object                                       ;
;                         2   = uchwyt / handle                                               ;
;                         3   = ObjectID                                                      ;
;                         4   = ObjectIdString                                                ;
; ------------------------------------------------------------------------------------------- ;
; (cd:CON_ObjConv (entsel) 2)                                                                 ;
; =========================================================================================== ;
(defun cd:CON_ObjConv (Obj Format / ty res m %)
  (setq ty (type Obj))
  (if
    (setq res
      (cond
        ( (= ty (quote ENAME)) Obj )
        ( (= ty (quote VLA-OBJECT)) (vlax-vla-object->ename Obj) )
        ( (= ty (quote STR))
          (if (<= (strlen Obj) 8)
            (handent Obj)
            (cd:CON_ObjConv (read Obj) nil)
          )
        )
        ( (= ty (quote INT))
          (if
            (> Obj 0)
            (progn
              (setq m
                (if
                  (wcmatch
                    (strcase (getenv "PROCESSOR_ARCHITECTURE"))
                    "*64*"
                  )
                  "32" ""
                )
              )
              (vl-catch-all-apply
                (function
                  (lambda ()
                    (setq %
                      (vlax-invoke-method
                        (cd:ACX_ADoc)
                        (strcat "ObjectIDtoObject" m)
                        Obj
                      )
                    )
                  )
                )
              )
              (if % (vlax-vla-object->ename %))
            )
          )
        )
        (T nil)
      )
    )
    (cond
      ( (= 1 Format) (vlax-ename->vla-object res))
      ( (= 2 Format) (cdr (assoc 5 (entget res))))
      ( (= 3 Format) (vla-get-ObjectID (vlax-ename->vla-object res)))
      ( (= 4 Format)
        (vlax-invoke-method
          (vla-get-utility (cd:ACX_ADoc))
          "GetObjectIdString"
          (vlax-ename->vla-object res)
          :vlax-false
        )
      )
      (T res)
    )
  )
)
; =========================================================================================== ;
; Zmiana listy na lancuch tekstowy / Convert list onto text string                            ;
;  LST [LIST] - lista wejsciowa / input list                                                  ;
; ------------------------------------------------------------------------------------------- ;
; (cd:CON_List2Value (list 0 1 2 3 5)) --> "0 1 2 3 5"                                        ;
; =========================================================================================== ;
(defun cd:CON_List2Value (Lst)
  (vl-string-trim "()" (vl-princ-to-string Lst))
)
; =========================================================================================== ;
; Konwertuje liczbe na lancuch tekstowy / Converts number to a string                         ;
;  Val  [REAL/INT] - liczba do konwersji / conversion number                                  ;
;  Unit [INT/nil]  - jednostki wyjsciowe / output unit                                        ;
;                    nil = domyslne / default | (getvar "LUNITS")                             ;
;                    1   = naukowe / scientific                                               ;
;                    2   = dziesietne / decimal                                               ;
;                    3   = inzynierskie / engineering                                         ;
;                    4   = architektoniczne / architectural                                   ;
;                    5   = ulamkowe / fractional                                              ;
;  Prec [INT/nil]  - INT = liczba miejsc po przecinku / number of decimal places              ;
;                    nil = domyslna / default | (getvar "LUPREC")                             ;
; ------------------------------------------------------------------------------------------- ;
; (cd:CON_Real2Str 12 2 4)                                                                    ;
; =========================================================================================== ;
(defun cd:CON_Real2Str (Val Unit Prec / DMZ res)
  (setq DMZ (getvar "DIMZIN"))
  (setvar "DIMZIN"
    (if (not (member (getvar "LUNITS") (list 4 5)))
      (logand DMZ (~ 8)) 0
    )
  )
  (setq res
    (rtos
      Val
      (if (and Unit (member Unit (list 1 2 3 4 5))) 
        Unit
        (getvar "LUNITS")
      )
      (if Prec Prec (getvar "LUPREC"))
    )
  )
  (setvar "DIMZIN" DMZ)
  res
)
; =========================================================================================== ;
; Macierz transformacji ukladu wspolrzednych / The coordinate transformation matrix           ;
; Credit: Doug C. Broad, Jr. (UCS2WCSMatrix + WCS2UCSMatrix)                                  ;
;  Cs [INT] - docelowy uklad wspolrzednych / target coordinate system                         ;
;             0 = GUW (Globalny Uklad Wspolrzednych) / WCS (World Coordinate System)          ;
;             1 = LUW (Lokalny Uklad Wspolrzednych) / UCS (User Coordinate System)            ;
; =========================================================================================== ;
; (cd:CON_TransMatrix 0)                                                                      ;
; =========================================================================================== ;
(defun cd:CON_TransMatrix (Cs)
  (vlax-tmatrix
    (append
      (mapcar
        (function
          (lambda (vector origin)
            (append
              (trans vector (abs (1- Cs)) Cs T)
              (list origin)
            )
          )
        )
        (list '(1 0 0) '(0 1 0) '(0 0 1))
        (trans '(0 0 0) Cs (abs (1- Cs)))
      )
      (list '(0 0 0 1))
    )
  )
)
; =========================================================================================== ;
; Zmiana lancucha tekstowego na liste / Convert string into list elements                     ;
;  Val [STR] - lancuch tekstowy / string                                                      ;
; ------------------------------------------------------------------------------------------- ;
; (cd:CON_Value2List "0 1 2 3 5") --> (0 1 2 3 5)                                             ;
; =========================================================================================== ;
(defun cd:CON_Value2List (Val)
  (read (strcat "(" Val ")"))
)
; =========================================================================================== ;
; Zamienia liste liczb na 3DPoint (variant) / Converts a list of numbers to 3DPoint (variant) ;
;  Lst [LIST] - 2 lub 3 elementowa lista liczb / 2 or 3 element list of numbers               ;
; ------------------------------------------------------------------------------------------- ;
; (cd:CON_XYZ2Variant (list 10 2)), (cd:CON_XYZ2Variant (list 4 4 4))                         ;
; =========================================================================================== ;
(defun cd:CON_XYZ2Variant (Lst)
  (cond
    ( (listp Lst)
      (if
        (and
          (member (length Lst)(list 2 3))
          (apply (quote and)
            (mapcar
              (function
                (lambda (%)
                  (numberp %)
                )
              )
              Lst
            )
          )
        )
        (vlax-3d-Point Lst)
      )
    )
    ( (and
        (= (type Lst) (quote VARIANT))
        (= (vlax-variant-type Lst) 8197)
      )
      Lst
    )
    (T nil)
  )
)
; =========================================================================================== ;
; Obsluga listy kolorow / Handling of list colors                                             ;
;  KeyLst [STR]  - nazwa wycinka "popup_list" / "popup_list" tile name                        ;
;  KeyImg [STR]  - nazwa wycinka "image" / "image" tile name                                  ;
;  Lst    [LIST] - lista kolorow / list of colors                                             ;
;  Col    [STR]  - aktualny kolor / current color                                             ;
;  Old    [STR]  - poprzedni kolor / old kolor                                                ;
; =========================================================================================== ;
(defun cd:DCL_ChangeColorList (KeyLst KeyImg Lst Col Old / res cdlg tmp)
  (setq tmp Old)
  (cond
    ( (= Col "0") (setq res "256") )
    ( (= Col "1") (setq res "0") )
    ( (= Col "9")
      (if (setq cdlg (acad_colordlg (atoi tmp)))
        (setq res (itoa cdlg)
              tmp (itoa cdlg)
        )
        (setq res tmp)
      )
    )
    ( (= Col "10") (setq res tmp))
    ( T (setq res (itoa (1- (atoi Col)))) )
  )
  (cd:DCL_FillColorList KeyLst Lst res)
  (cd:DCL_FillColorImage KeyImg (atoi res))
  res
)
; =========================================================================================== ;
; Obsluga listy lancuchow tekstowych / Handling of the list of strings                        ;
;  Key   [STR]  - nazwa wycinka / tile name                                                   ;
;  Lst   [LIST] - lista / list                                                                ;
;  Pos   [INT]  - aktualna pozycja na liscie / current position in the list                   ;
;  Old   [STR]  - poprzednia pozycja na liscie / old item on the list                         ;
;  Label [STR]  - etykieta dla pozycji "Nowa..." / label for "New..." position                ;
;  Func  [SUBR] - funkcja do obslugi okienka edit_box / function to operate edit_box dialog   ;
; =========================================================================================== ;
(defun cd:DCL_ChangeStringList (Key Lst Pos Old Label Func / tmp len res)
  (setq tmp Old
        len (length Lst)
  )
  (cond
    ( (< Pos len)
      (setq res (nth Pos Lst))
    )
    ( (= Pos len)
      (cond
        ( (setq res (eval Func)) )
        ( (setq res tmp ) )
      )
    )
    ( T (setq res tmp) )
  )
  (if res (cd:DCL_FillStringList Key Lst res Label))
  res
)
; =========================================================================================== ;
; Wypelnia wycinek "image" kolorem / Fills "image" tile with color                            ;
;  Key [STR] - nazwa wycinka / tile name                                                      ;
;  Col [INT] - kolor / color                                                                  ;
; =========================================================================================== ;
(defun cd:DCL_FillColorImage (Key Col / X Y)
  (start_image Key) 
  (fill_image 0 0 (dimx_tile Key) (dimy_tile Key) Col) 
  (end_image)
)
; =========================================================================================== ;
; Wypelnia wycinek "popup_list" lista kolorow / Fills "popup_list" tiles with list of colors  ;
;  Key [STR]  - nazwa wycinka / tile name                                                     ;
;  Lst [LIST] - lista kolorow / list of colors                                                ;
;  Col [STR]  - aktualny kolor / current color                                                ;
; =========================================================================================== ;
(defun cd:DCL_FillColorList (Key Lst Col)
  (cond
    ( (= Col "256") (setq Col "0") )
    ( (= Col "0") (setq Col "1") )
    ( T (setq Col (itoa (1+ (atoi Col)))) )
  )
  (if
    (and
      (> (atoi Col) 8)
      (<= (atoi Col) 256)
    )
    (setq Lst (append Lst (list (itoa (1- (atoi Col)))))
          Col "10"
    )
  )
  (cd:DCL_SetList Key Lst Col)
)
; =========================================================================================== ;
; Wypelnia wycinek "popup_list" lista lancuchow tekstowych /                                  ;
; Fills "popup_list" tiles with list of strings                                               ;
;  Key   [STR]  - nazwa wycinka / tile name                                                   ;
;  Lst   [LIST] - lista lancuchow tekstowych / list of strings                                ;
;  Str   [STR]  - aktualny lancuch tekstowy / current string                                  ;
;  Label [STR]  - etykieta dla pozycji "Nowa..." / label for "New..." position                ;
; =========================================================================================== ;
(defun cd:DCL_FillStringList (Key Lst Str Label / pos)
  (if (setq pos (vl-position (strcase Str) (mapcar (quote strcase) Lst)))
    (setq Lst (append Lst (list Label)))
    (setq Lst (append Lst (list Label Str))
          pos (1- (length Lst))
    )
  )
  (cd:DCL_SetList Key Lst pos)
)
; =========================================================================================== ;
; Image_button - ikona sortowania / Image_button - sort icon                                  ;
;  Key   [STR] - nazwa wycinka / name of control                                              ;
;  Mode  [INT] - kierunek sortowania / sort direction                                         ;
;                0 = rosnaco / ascending                                                      ;
;                1 = malejaco / descending                                                    ;
;  Col   [INT] - kolor wypelnienia / fill color                                               ;
; ------------------------------------------------------------------------------------------- ;
; (cd:DCL_ImgBtnSortIcon "image" 0 15)                                                        ;
; =========================================================================================== ;
(defun cd:DCL_ImgBtnSortIcon (Key Mode Col / x y c n d l)
  (setq x (dimx_tile Key)
        y (dimy_tile Key)
        c (if (not Col) 252 Col)
        n (/ x 2)
        d (if (zerop Mode)(- (/ y 2) 2)(+ (/ y 2) 2))
        l '(0 1 2 3 4 5)
  )
  (start_image Key)
  (fill_image 2 2 (- x 2)(- y 2) -15)
  (mapcar
    (function
      (lambda (% / %1 %2)
        (setq %1 (nth % (reverse l))
              %2 (if (zerop Mode) (+ d %1) (- d %1))
        )
        (vector_image (- n %) %2 (+ n %) %2 c)
      )
    )
    l
  )
  (end_image)
)
; =========================================================================================== ;
; DCL-owe okno komunikatu / DCL message box                                                   ;
;  Msg   [STR]         - komunikat do wyswietlenia / message to display                       ;
;  Title [STR]         - tytul okna / window title                                            ;
;  Btn   [0/1/2/3/4/5] - przyciski / buttons                                                  ;
;  DPos  [T/nil]       - zapamietanie pozycji okna / save window position                     ;
;  Lng   [0/1/nil]     - 0   = jezyk polski / polish language                                 ;
;                        1   = jezyk angielski / english language                             ;
;                        nil = ustawienie standardowe / default settings                      ;
; ------------------------------------------------------------------------------------------- ;
; Typy przyciskow / Buttons type:                                                             ;
;  0  = OK                / OK                                                                ;
;  1  = OK i Anuluj       / OK and Cancel                                                     ;
;  2  = Anuluj            / Cancel                                                            ;
;  3  = Tak, Nie i Anuluj / Yes, No and Cancel                                                ;
;  4  = Tak i Nie         / Yes and No                                                        ;
;  5  = Zamknij           / Close                                                             ;
; ------------------------------------------------------------------------------------------- ;
; Zwraca / Return:                                                                            ;
;  1  = OK      / OK                                                                          ;
;  2  = Anuluj  / Cancel                                                                      ;
;  6  = Tak     / Yes                                                                         ;
;  7  = Nie     / No                                                                          ;
;  12 = Zamknij / Close                                                                       ;
; ------------------------------------------------------------------------------------------- ;
; (cd:DCL_Msgbox "Komunikat\nw 2 liniach" "Uwaga" 4 T 0)                                      ;
; =========================================================================================== ;
(defun cd:DCL_MsgBox (Msg Title Btns DPos Lng / data f tmp dc res l d c h)
  (if (not DPos) (setq *cd-TempDlgPosition* (list -1 -1)))
  (setq data (cd:STR_Parse Msg "\n" T)
        d (length data)
        c (if (numberp Lng)
            (cond
              ( (zerop Lng) T)
              ( (= 1 Lng) nil)
              (T nil)
            )
            (= "PL" (cadddr (cd:SYS_AcadInfo)))
          )
        h "width=12;horizontal_margin=none;vertical_margin=none;fixed_width=true;"
  )
  (cond
    ( (not
        (and
          (setq f
            (open
              (setq tmp (vl-FileName-MkTemp nil nil ".dcl")) "w"
            )
          )
          (foreach %
            (list
              "StdYesNoDialog:dialog{"
              (strcat "label=\""
                (if Title (strcat Title "\";") "\"\";")
              )
              ":text{key=\"text\";"
              (strcat
                "width="
                (itoa
                  (if (< (setq l (car (vl-sort (mapcar (quote strlen) data) (quote >)))) 36)
                    37
                    (if (> l 100) 99 l)
                  )
                )
                ";height=" (if (>= d 15) "15" (itoa d))
              )
              ";}:spacer{height=0.2;}:row{alignment=centered;spacer_0;"
              (cond
                ( (zerop Btns)
                  (strcat
                    ":retirement_button{label=\"OK\";key=\"accept\";is_default=true;" h "}"
                  )
                )
                ( (= 1 Btns)
                  (strcat
                    ":row{width=25;fixed_width=true;"
                    ":retirement_button{label=\"OK\";key=\"accept\";is_default=true;" h
                    "}:retirement_button{"
                    (if c "label=\"&Anuluj\";" "label=\"&Cancel\";")
                    "key=\"cancel\";is_cancel=true;" h "}}"
                  )
                )
                ( (= 2 Btns)
                  (strcat
                    ":retirement_button{"
                    (if c "label=\"&Anuluj\";" "label=\"&Cancel\";")
                    "key=\"cancel\";is_cancel=true;" h "}"
                  )
                )
                ( (= 3 Btns)
                  (strcat
                    ":row{width=38;fixed_width=true;:button{"
                    (if c "label=\"&Tak\";" "label=\"&Yes\";") "key=\"yes\";is_default=true;" h
                    "}:button{" (if c "label=\"&Nie\";" "label=\"&No\";") "key=\"not\";" h
                    "}:retirement_button{"
                    (if c "label=\"&Anuluj\";" "label=\"&Cancel\";")
                    "key=\"cancel\";is_cancel=true;" h "}}"
                  )
                )
                ( (= 4 Btns)
                  (strcat
                    ":row{width=25;fixed_width=true;:button{"
                    (if c "label=\"&Tak\";" "label=\"&Yes\";") "key=\"yes\";is_default=true;" h
                    "}:button{" (if c "label=\"&Nie\";" "label=\"&No\";") "key=\"not\";" h "}}"
                  )
                )
                ( (= 5 Btns)
                  (strcat
                     ":button{is_cancel=true;"
                     (if c "label=\"&Zamknij\";" "label=\"&Close\";")
                    "key=\"close\";width=12;" h "is_default=true;}"
                  )
                )
                (T
                  (strcat
                    ":retirement_button{label=\"OK\";key=\"accept\";is_default=true;" h "}"
                  )
                )
              )
              "spacer_0;}}"
            )
            (write-line % f)
          )
          (not (close f))
          (< 0 (setq dc (load_dialog tmp)))
          (new_dialog "StdYesNoDialog" dc ""
            (cond
              (*cd-TempDlgPosition*)
              ( (quote (-1 -1)) )
            )
          )
        )
      )
    )
    ( T     
      (set_tile "text"
        (apply (quote strcat)
          (mapcar
            (function
              (lambda (%)
                (strcat % "\n")
              )
            )
            data
          )
        )
      )
      (action_tile "accept" "(setq *cd-TempDlgPosition* (done_dialog 1))")
      (action_tile "yes" "(setq *cd-TempDlgPosition* (done_dialog 6))")
      (action_tile "cancel" "(done_dialog 2)")
      (action_tile "not" "(done_dialog 7)")
      (action_tile "close" "(done_dialog 12)")
      (setq res (start_dialog))
    )
  )
  (if (< 0 dc) (unload_dialog dc))
  (if (setq tmp (findfile tmp)) (vl-File-Delete tmp))
  (if (not DPos) (setq *cd-TempDlgPosition* (list -1 -1)))
  res
)
; =========================================================================================== ;
; Wypelnia wycinki "list_box" i "popup_list" / Fills "list_box" and "popup_list" tiles        ;
;  Key [STR]              - nazwa wycinka / tile name                                         ;
;  Lst [LIST]             - lista do wypelnienia / list to fill                               ;
;  Pos [INT/REAL/STR/nil] - aktualna pozycja na liscie / current position on the list         ;
; =========================================================================================== ;
(defun cd:DCL_SetList (Key Lst Pos)
  (start_list Key)
  (mapcar (quote add_list) Lst)
  (end_list)
  (set_tile Key
    (cond
      ( (numberp Pos) (itoa (fix Pos)) )
      ( (= (type Pos) (quote STR)) Pos )
      (T (itoa 0) )
    )
  )
)
; =========================================================================================== ;
; Okno dialogowe "edit_box" / "edit_box" dialog control                                       ;
;  Data      [LIST]     - argumetny (maks. 7) / arguments (max. 7) | (list a b c d e f g)     ;
;   * STR - dowolny lancuch / any string                                                      ;
;     a = 0                                                                                   ;
;     b - INT  = rodzaje bledow / type of errors                                              ;
;         LIST = rodzaje bledow wraz z komunikatem / type of errors with the messages         ;
;     c - wartosc domyslna / default value                                                    ;
;   * STR - zgodny z tablica/wzorcem / consistent with table/pattern                          ;
;     a = 1                                                                                   ;
;     b - INT  = rodzaje bledow / type of errors                                              ;
;         LIST = rodzaje bledow wraz z komunikatem / type of errors with the messages         ;
;     c - wartosc domyslna / default value                                                    ;
;     d - nazwa tablicy / table name                                                          ;
;     e = wzorzec / pattern                                                                   ;
;     f = lista uzytkownika / user list                                                       ;
;   * INT = 2, REAL = 3                                                                       ;
;     a = 2,3                                                                                 ;
;     b - INT  = rodzaje bledow / type of errors                                              ;
;         LIST = rodzaje bledow wraz z komunikatem / type of errors with the messages         ;
;     c - wartosc domyslna / default value                                                    ;
;     d - wartosc minimalna / minimum value                                                   ;
;     e - wartosc maksymalna / maximum value                                                  ;
;     f - jednostki wyjsciowe / output unit                                                   ;
;         nil = domyslne / default | (getvar "LUNITS")                                        ;
;         1   = naukowe / scientific                                                          ;
;         2   = dziesietne / decimal                                                          ;
;         3   = inzynierskie / engineering                                                    ;
;         4   = architektoniczne / architectural                                              ;
;         5   = ulamkowe / fractional                                                         ;
;     g - INT = liczba miejsc po przecinku / number of decimal places                         ;
;         nil = domyslna / default | (getvar "LUPREC")                                        ;
;  Title     [STR/nil]  - tytul okna / window title                                           ;
;  EditTitle [STR/nil]  - tytul "edit_box" / "edit_box" title                                 ;
;  Width     [INT]      - szerokosc / width                                                   ;
;  BtnsWidth [REAL/INT] - szerokosc przyciskow / buttons width                                ;
;  BtnsLabel [LIST]     - etykiety przyciskow / buttons label                                 ;
;  DPos      [T/nil]    - zapamietanie pozycji okna / save window position                    ;
;  Limit     [INT]      - limit znakow / signs limit                                          ;
; ------------------------------------------------------------------------------------------- ;
; (cd:DCL_StdEditBoxDialog (list 0 0 "") "Poziom" "Nowy:" 40 13 (list "&Ok" "&Anuluj") T  5)  ;
; (cd:DCL_StdEditBoxDialog                                                                    ;
;   (list 1                                                                                   ;
;     (list                                                                                   ;
;       (cons 1 "Wprowadz dane")                                                              ;
;       (cons 2 "Niepoprawna warstwa")                                                        ;
;       (cons 4 "Warstwa wystepuje w rysunku")                                                ;
;       (cons 16 "Warstwa nie pasuje do wzorca")                                              ;
;     )                                                                                       ;
;     "" "LAYER" "??-??"                                                                      ;
;   )                                                                                         ;
;   "Warstwa" "Nowa warstwa: (format ??-??)" 40 13 (list "&Ok" "&Anuluj") T 5                 ;
; )                                                                                           ;
; (cd:DCL_StdEditBoxDialog                                                                    ;
;   (list 3                                                                                   ;
;     (list                                                                                   ;
;       (cons 1 "Wprowadz liczbe rzeczywista")                                                ;
;       (cons 2 "Liczba nie moze byc zerem")                                                  ;
;       (cons 8 "Spacje niedozwolone")                                                        ;
;       (cons 16 "To nie jest liczba")                                                        ;
;       (cons 32 "Liczba jest za mala")                                                       ;
;       (cons 64 "Liczba jest za duza")                                                       ;
;     )                                                                                       ;
;     "19" -100 100 2 2                                                                       ;
;   )                                                                                         ;
;   "Poziom" "Wprowadz poziom: (-100 < X < 100)" 40 13 (list "&Ok" "&Anuluj") T nil           ;
; )                                                                                           ;
; =========================================================================================== ;
(defun cd:DCL_StdEditBoxDialog (Data Title EditTitle Width BtnsWidth BtnsLabel DPos Limit
                                / _CheckVal fd tmp dc defval res fl
                               )
  (defun _CheckVal (Code Bit Val / tmp _Logand _IsBlank _IsSpaces _Pattern _UserList
                                   _Error _StrUnit _Nth _IsNumb res err)
    (setq tmp Bit)
    (if (not fl) (setq Bit (apply (quote +) (mapcar (quote car) Bit))))
    (defun _Logand (b) (= b (logand Bit b)))
    (defun _IsBlank (s) (= s ""))
    (defun _IsSpaces (s) (not (vl-remove '32 (vl-string->list s))))
    (defun _Pattern (s) (not (wcmatch s (_Nth 4))))
    (defun _UserList (s) (member (strcase Val) (mapcar (quote strcase) (_Nth 5))))
    (defun _Error (b) (if (not fl) (setq err (cdr (assoc b tmp)))))
    (defun _StrUnit (s) (distof s 3))
    (defun _Nth (n / p)
      (if (setq p (vl-catch-all-apply (quote nth) (list n Data)))
        p
        (vl-catch-all-error-p p)
      )
    )
    (defun _IsNumb (s b / r)
      (if (setq r (_StrUnit s))
        (cond
          ( (and (= 1 (logand 1 b)) (numberp r)) ) ; liczba / number
          ( (and (= 2 (logand 2 b)) (zerop r)) )   ; zero   / zero
          ( (and (= 4 (logand 4 b)) (minusp r)) )  ; ujemna / negative
          ( T nil )
        )
      )
    )
    (cond
      ( (= Code 0) ; dowolny lancuch / any string
        (cond
          ( (and (_Logand 1) (_IsBlank Val)) (_Error 1) )  ; bez ""            / no ""
          ( (and (_Logand 8) (_IsSpaces Val)) (_Error 8) ) ; bez samych spacji / no spaces
          ( T (setq res Val) )
        )
      )
      ( (= Code 1) ; lancuch zgodny z nazwa tablicy / string consistent with table name
        (cond
          ( (and (_Logand 1) (_IsBlank Val)) (_Error 1) )           ; bez ""                  / no ""
          ( (and (_Logand 2) (not (snvalid Val))) (_Error 2) )      ; bez zlej nazwy snvalid  / no bad name
          ( (and (_Logand 4) (tblsearch (_Nth 3) Val)) (_Error 4) ) ; bez istniejacych nazw   / no existing name
          ( (and (_Logand 8) (_IsSpaces Val)) (_Error 8) )          ; bez samych spacji       / no spaces
          ( (and (_Logand 16) (_Pattern Val)) (_Error 16) )         ; pasujacy do wzorca      / match pattern
          ( (and (_Logand 32) (_UserList Val)) (_Error 32) )        ; nie wystepuje na liscie / does not appear in the list
          ( T (setq res Val) )
        )
      )
      ( (member Code (list 2 3)) ; INT = 2, REAL = 3
        (cond
          ( (and (_Logand 1) (_IsBlank Val)) (_Error 1) )                ; bez ""            / no ""
          ( (and (_Logand 2) (_IsNumb Val 2)) (_Error 2) )               ; bez zera          / no zero
          ( (and (_Logand 4) (_IsNumb Val 4)) (_Error 4) )               ; bez ujemnych      / no negative
          ( (and (_Logand 8) (_IsSpaces Val)) (_Error 8) )               ; bez samych spacji / no spaces
          ( (and (_Logand 16) (not (_IsNumb Val 1))) (_Error 16) )       ; tylko liczby      / only number
          ( (and (_Logand 32) (> (_Nth 3) (_StrUnit Val))) (_Error 32) ) ; liczba za mala    / number to small
          ( (and (_Logand 64) (< (_Nth 4) (_StrUnit Val))) (_Error 64) ) ; liczba za duza    / number to big
          ( T
            (setq res
              (if (_IsNumb Val 1)
                (if (= Code 2)
                  (itoa (fix (_StrUnit Val)))
                  (cd:CON_Real2Str (_StrUnit Val) (_Nth 5) (_Nth 6))
                )
                Val
              )
            )
          )
        )
      )
      ( T nil )
    )
    (if (and defval res)
      (set_tile "edit" res)
      (set_tile "edit" Val)
    )
    (if err
      (set_tile "error" err)
      (set_tile "error" "")
    )
    res
  )
  (if (not DPos) (setq *cd-TempDlgPosition* (list -1 -1)))
  (cond
    ( (not
        (and
          (setq fd
            (open
              (setq tmp (vl-FileName-MkTemp nil nil ".dcl")) "w"
            )
          )
          (foreach %
            (list
              (strcat
                "but : button { width = " (if BtnsWidth (itoa BtnsWidth) 13) "; fixed_width = true; }"
                "StdEditBoxDialog : dialog {"
                (if Title (strcat "label = \"" Title "\";") "")
                "  : boxed_column {"
                (if EditTitle (strcat "label = \"" EditTitle "\";") "")
                "    width = " (if Width (itoa Width) "20") ";"
                "    : edit_box { key = \"edit\";"
                (if Limit (strcat "edit_limit = " (itoa Limit) ";") "")
                "    } spacer; }"
                "  : row { alignment = centered; fixed_width = true;"
                "  : but { key = \"" (car BtnsLabel) "\";"
                "    label = \"" (car BtnsLabel) "\"; is_default = true; }"
                "  : but { key = \"" (cadr BtnsLabel) "\";"
                "    label = \"" (cadr BtnsLabel) "\"; is_cancel = true; }"
                "  } " (if (setq fl (= (type (cadr Data)) (quote INT))) "" ": errtile { width = 20; }") " }"
              )
            )
            (write-line % fd)
          )
          (not (close fd))
          (< 0 (setq dc (load_dialog tmp)))
          (new_dialog "StdEditBoxDialog" dc ""
            (cond
              ( *cd-TempDlgPosition* )
              ( (quote (-1 -1)) )
            )
          )
        )
      )
    )
    ( T
      (setq defval (substr (caddr Data) 1 Limit)
            res (if (not (= defval "")) (_CheckVal (car Data) (cadr Data) defval))
      )
      (mode_tile "edit" 2)
      (action_tile "edit" "(setq res (_CheckVal (car Data) (cadr Data) $value))")
      (action_tile (car BtnsLabel) "(if res (setq *cd-TempDlgPosition* (done_dialog 1)))")
      (action_tile (cadr BtnsLabel) "(setq res nil) (done_dialog 0)")
      (start_dialog)
    )
  )
  (if (< 0 dc) (unload_dialog dc))
  (if (setq tmp (findfile tmp)) (vl-file-delete tmp))
  (if (not DPos) (setq *cd-TempDlgPosition* (list -1 -1)))
  res
)
; =========================================================================================== ;
; Okno dialogowe z lista "list_box" / Dialog control with list "list_box"                     ;
;  Data      [LIST]     - lista do wyswietlenia / list to display                             ;
;  Pos       [INT]      - pozycja poczatkowa na liscie / select list position                 ;
;  Title     [STR/nil]  - tytul okna / window title                                           ;
;  ListTitle [STR/nil]  - tytul list_box / list_box title                                     ;
;  Width     [INT]      - szerokosc / width                                                   ;
;  Height    [INT]      - wysokosc / height                                                   ;
;  Btns      [0/1/2]    - [cancel/ok/ok_cancel] przyciski / buttons                           ;
;  BtnsWidth [REAL/INT] - szerokosc przyciskow / buttons width                                ;
;  BtnsLabel [LIST]     - etykiety przyciskow / buttons label                                 ;
;  MSelect   [T/nil]    - dopuszczenie multiple_select / allow multiple select                ;
;  DPos      [T/nil]    - zapamietanie pozycji okna / save window position                    ;
;  DblClick  [T/nil]    - podwojny klik (wykluczone Cancel) / double click (not for Cancel)   ;
;  Func      [SUBR]     - funkcja do obslugi wybranej pozycji na liscie /                     ;
;                         function to operate selected position on the list                   ;
; ------------------------------------------------------------------------------------------- ;
; Zwraca / Return:                                                                            ;
;  nil  = nic nie wybrano (anulowano) / nothing was selected (canceled)                       ;
;  INT  = wybrano jedna pozycje / one position selected  | MSelect = nil                      ;
;  LIST = wybrano kilka pozycji / few positions selected | MSelect = T                        ;
; ------------------------------------------------------------------------------------------- ;
; (cd:DCL_StdListDialog                                                                       ;
;   (setq lst (mapcar 'car (cd:DWG_LayoutsList))) (vl-position (getvar "ctab") lst)           ;
;   "List of Layouts" "Select layout:" 40 15 2 13 (list "&Ok" "&Cancel")                      ;
;   nil T T '(setvar "ctab" (nth (atoi res) lst)))                                            ;
; =========================================================================================== ;
(defun cd:DCL_StdListDialog (Data Pos Title ListTitle Width Height
                             Btns BtnsWidth BtnsLabel MSelect DPos DblClick Func
                             / _Sub _Value2List _SetControls fd ok ca tmp dc res)
  (defun _Sub (Val)
    (if (and Func Data) (eval Func))
    (_SetControls (setq res (_Value2List Val)))
  )
  (defun _Value2List (Val) (read (strcat "(" Val ")")))
  (defun _SetControls (Idx)
    (if (and Idx Data)
      (mode_tile (car BtnsLabel) 0)
      (mode_tile (car BtnsLabel) 1)
    )
  )
  (if (not DPos) (setq *cd-TempDlgPosition* (list -1 -1)))
  (cond
    ( (not
        (and
          (setq fd
            (open
              (setq tmp (vl-FileName-MkTemp nil nil ".dcl")) "w"
            )
          )
          (setq ok (strcat
                     ": but { label = \"" (car BtnsLabel) "\";"
                     "  key = \"" (car BtnsLabel) "\"; is_default = true;}"
                   )
                ca (strcat
                     ": but { label=\"" (cadr BtnsLabel) "\";"
                     "  key = \"" (cadr BtnsLabel) "\";is_cancel = true;}"
                   )
          )
          (foreach % 
            (list
              (strcat
                "but : button { width = " (if BtnsWidth (itoa BtnsWidth) 13)
                "; fixed_width = true; }"
                "StdListDialog: dialog {"
                (if Title (strcat "label = \"" Title "\";") "")
                ": list_box { key = \"list\";"
                (if ListTitle (strcat "label = \"" ListTitle "\";") "")
                "fixed_width = true; fixed_height = true;"
                "width = " (if Width (itoa Width) "20" ) ";"
                "height = " (if Height (itoa Height) "20" ) ";"
                "multiple_select = " (if MSelect "true;" "false;")
                "} : row { alignment = centered; fixed_width = true;"
              )
              (cond
                ( (zerop Btns) ca )
                ( (= 1 Btns) ok )
                ( T (strcat ok ca) )
              )
              "}}"
            )
            (write-line % fd)
          )
          (not (close fd))
          (< 0 (setq dc (load_dialog tmp)))
          (new_dialog "StdListDialog" dc ""
            (cond
              ( *cd-TempDlgPosition* )
              ( (quote (-1 -1)) )
            )
          )
        )
      )
    )
    ( T     
      (start_list "list")
      (mapcar (quote add_list) Data)
      (end_list)
      (if
        (or
          (not Pos)
          (not (< -1 Pos (length Data)))
        )
        (setq Pos 0)
      )
      (setq res (set_tile "list" (itoa Pos)))
      (_Sub res)
      (action_tile "list"
        (vl-prin1-to-string
          (quote
            (progn
              (setq res $value)
              (_Sub res)
              (if
                (and
                  DblClick
                  (not (zerop Btns))
                )
                (if (= $reason 4)
                  (setq *cd-TempDlgPosition* (done_dialog 1))
                )
              )
            )
          )
        )
      )
      (action_tile (car BtnsLabel) "(setq *cd-TempDlgPosition* (done_dialog 1))")
      (action_tile (cadr BtnsLabel) "(setq res nil) (done_dialog 0)")
      (start_dialog)
    )
  )
  (if (< 0 dc) (unload_dialog dc))
  (if (setq tmp (findfile tmp)) (vl-file-delete tmp))
  (if (not DPos) (setq *cd-TempDlgPosition* (list -1 -1)))
  (if res (if (= 1 (length res)) (car res) res))
)
; =========================================================================================== ;
; Dodaje slownik / Adds dictionary                                                            ;
;  Root [ENAME/nil] - ENAME = slownik "rodzic" / "parent" dictionary                          ;
;                     nil   = (namedobjdict) jako "rodzic" / (namedobjdict) as "parent"       ;
;  Name [STR]       - nazwa slownika / name of the dictionary                                 ;
; ------------------------------------------------------------------------------------------- ;
; (cd:DCT_AddDict (namedobjdict) "NAZWA")                                                     ;
; =========================================================================================== ;
(defun cd:DCT_AddDict (Root Name)
  (dictadd (if (not Root) (namedobjdict) Root) Name
    (entmakex (append '((0 . "DICTIONARY")(100 . "AcDbDictionary"))))
  )
)
; =========================================================================================== ;
; Dodaje Xrecord / Adds the Xrecord                                                           ;
;  Root  [ENAME/nil] - ENAME = slownik "rodzic" / "parent" dictionary                         ;
;                      nil   = (namedobjdict) jako "rodzic" / (namedobjdict) as "parent"      ;
;  XName [STR]       - nazwa xrecord / xrecord name                                           ;
;  XData [LIST]      - dane xrecord / xrecord data                                            ;
; ------------------------------------------------------------------------------------------- ;
; (cd:DCT_AddXrecord (cd:DCT_GetDict (namedobjdict) "NAZWA") "NAZWA-SUB1" '((1 . "ABC")))     ;
; =========================================================================================== ;
(defun cd:DCT_AddXrecord (Root XName XData)
  (dictadd (if (not Root) (namedobjdict) Root) XName
    (entmakex (append '((0 . "XRECORD")(100 . "AcDbXrecord")) XData))
  )
)
; =========================================================================================== ;
; Pobiera slownik / Gets a dictionary                                                         ;
;  Root [ENAME/nil] - ENAME = slownik "rodzic" / "parent" dictionary                          ;
;                     nil   = (namedobjdict) jako "rodzic" / (namedobjdict) as "parent"       ;
;  Name [STR]       - nazwa slownika / name of the dictionary                                 ;
; ------------------------------------------------------------------------------------------- ;
; (cd:DCT_GetDict (namedobjdict) "NAZWA")                                                     ;
; =========================================================================================== ;
(defun cd:DCT_GetDict (Root Name)
  (cdr (assoc -1 (dictsearch (if (not Root) (namedobjdict) Root) Name)))
)
; =========================================================================================== ;
; Pobiera liste slownikow "rodzica" / Gets a list of "parent" dictionaries                    ;
;  Root [ENAME] - ENAME = slownik "rodzic" / "parent" dictionary                              ;
;  Code [T/nil] - T   = zwraca / returns -> ((<slownik1> . <ENAME1>) ... )                    ;
;                 nil = zwraca / returns -> (<slownik1> <slownik2> ... )                      ;
; ------------------------------------------------------------------------------------------- ;
; (cd:DCT_GetDictList (cd:DCT_GetDict (namedobjdict) "NAZWA") T)                              ;
; =========================================================================================== ;
(defun cd:DCT_GetDictList (Root Code / dt tmp res)
  (if Root
    (if Code
      (progn
        (setq dt (entget Root))
        (while
          (setq dt (member (setq tmp (assoc 3 dt)) dt))
          (setq res (cons (cons (cdr tmp) (cdadr dt)) res)
                dt (cdr dt)
          )
        )
        (setq res (reverse res))
      )
      (setq res (cd:DXF_massoc 3 (entget Root)))
    )
  )
  res
)
; =========================================================================================== ;
; Pobiera/Tworzy ExtensionDictionary obiektu / Gets/Creates an ExtensionDictionary of object  ;
;  Ename [ENAME] - nazwa entycji / entity name                                                ;
;  Flag  [T/nil] - T   = tworzy / creates                                                     ;
;                  nil = pobiera jesli istnieje / gets if exist                               ;
; ------------------------------------------------------------------------------------------- ;
; (cd:DCT_GetExtDict (car (entsel)) T)                                                        ;
; =========================================================================================== ;
(defun cd:DCT_GetExtDict (Ename Flag / res he ta)
  (if
    (and
      (= (type Ename) (quote ENAME)) 
      (setq dt (entget Ename))
    )
    (if (not (setq res (cdr (assoc 360 (member '(102 . "{ACAD_XDICTIONARY") dt)))))
      (if Flag
        (progn
          (setq res (entmakex (append '((0 . "DICTIONARY") (100 . "AcDbDictionary"))))
                he (reverse (member (assoc 5 dt) (reverse dt)))
                ta (cdr (member (assoc 5 dt) dt))
          )
          (entmod
            (append
              he
              (list 
               '(102 . "{ACAD_XDICTIONARY")
                (cons 360 res)
               '(102 . "}")
              )
              ta
            )
          )
        )
      )
    )
  )
  res
)
; =========================================================================================== ;
; Pobiera/Tworzy ExtensionDictionary obiektu / Gets/Creates an ExtensionDictionary of object  ;
;  Obj  [ENAME/VLA-Object] - entycja lub obiekt VLA / entity name or VLA-Object               ;
;  Flag [T/nil] - T   = tworzy / creates                                                      ;
;                 nil = pobiera jesli istnieje / gets if exist                                ;
; ------------------------------------------------------------------------------------------- ;
; (cd:DCT_GetExtDictVLA (car (entsel)) T)                                                     ;
; =========================================================================================== ;
(defun cd:DCT_GetExtDictVLA (Obj Flag / res)
  (if (= (type Obj) (quote ENAME))
    (setq Obj (vlax-ename->vla-object Obj))
  )
  (if
    (setq res
      (if (= :vlax-true (vla-get-HasExtensionDictionary Obj))
        (vla-GetExtensionDictionary Obj)
        (if Flag (vla-GetExtensionDictionary Obj))
      )
    )
    (vlax-vla-object->ename res)
  )
)
; =========================================================================================== ;
; Pobiera Xrecord / Gets Xrecord                                                              ;
;  Ename [ENAME] - nazwa entycji / entity name                                                ;
; ------------------------------------------------------------------------------------------- ;
; (cd:DCT_GetXrecord (cdar (cd:DCT_GetDictList (cd:DCT_GetDict (namedobjdict) "NAZWA") T)))   ;
; =========================================================================================== ;
(defun cd:DCT_GetXRecord (Ename / dt)
  (cdr (member (assoc 280 (setq dt (entget Ename))) dt))
)
; =========================================================================================== ;
; Usuwa slownik / Removes the dictionary                                                      ;
;  Root [ENAME/nil] - ENAME = slownik "rodzic" / "parent" dictionary                          ;
;                     nil   = (namedobjdict) jako "rodzic" / (namedobjdict) as "parent"       ;
;  Name [STR]       - nazwa slownika / name of the dictionary                                 ;
; ------------------------------------------------------------------------------------------- ;
; (cd:DCT_RemoveDict (namedobjdict) "NAZWA")                                                  ;
; =========================================================================================== ;
(defun cd:DCT_RemoveDict (Root Name)
  (dictremove (if (not Root) (namedobjdict) Root) Name)
)
; =========================================================================================== ;
; Podmienia Xrecord / Replace Xrecord                                                         ;
;  Ename [ENAME] - nazwa entycji xrecord / entity name xrecord                                ;
;  Data  [LIST]  - lista par kropkowych / list of dotted pairs                                ;
; ------------------------------------------------------------------------------------------- ;
; (cd:DCT_ReplaceXrecord                                                                      ;
;   (cdar (cd:DCT_GetDictList (cd:DCT_GetDict (namedobjdict) "NAZWA") T))                     ;
;   (list (cons 1 "NEW") (cons 341 (car (entsel)))))                                          ;
; =========================================================================================== ;
(defun cd:DCT_ReplaceXrecord (Ename Data / en root name)
  (setq root (cdr (assoc 330 (entget Ename)))
        name (cdr
               (assoc
                 Ename
                 (mapcar
                   (function
                     (lambda (%)
                       (cons (cdr %) (car %))
                     )
                   )
                   (cd:DCT_GetDictList root T)
                 )
               )
             )
  )
  (if (cd:DCT_RemoveDict root name)
    (progn
      (setq en (cd:DCT_AddXrecord root name Data))
      (cd:DCT_GetXRecord en)
    )
  )
)
; =========================================================================================== ;
; Zmienia Xrecord / Change Xrecord                                                            ;
;  Ename [ENAME] - nazwa entycji / entity name                                                ;
;  Data  [LIST]  - lista par kropkowych / list of dotted pairs                                ;
; ------------------------------------------------------------------------------------------- ;
; (cd:DCT_SetXrecordVLA                                                                       ;
;   (cdar (cd:DCT_GetDictList (cd:DCT_GetDict (namedobjdict) "NAZWA") T))                     ;
;   (list (cons 1 "NEW123") (cons 341 (car (entsel)))))                                       ;
; =========================================================================================== ;
(defun cd:DCT_SetXrecordVLA (Ename Data / n)
  (setq n (1- (length Data)))
  (vla-SetXRecordData
    (vlax-ename->vla-object Ename)
    (vlax-make-variant
      (vlax-safearray-fill
        (vlax-make-safearray
          vlax-vbInteger
          (cons 0 n)
        )
        (mapcar (quote car) Data)
      )
    )
    (vlax-make-variant
      (vlax-safearray-fill
        (vlax-make-safearray
          vlax-vbVariant
          (cons 0 n)
        )
        (mapcar
          (function
            (lambda (% / %1)
              (setq %1 (type %))
              (cond
                ( (= %1 (quote ENAME)) (vlax-ename->vla-object %))
                ( (= %1 (quote LIST)) (vlax-3d-point %))
                (T %)
              )
            )
          )
          (mapcar (quote cdr) Data)
        )
      )
    )
  )
  (cd:DCT_GetXRecord Ename)
)
; =========================================================================================== ;
; Dodaje wlasciwosci uzytkownika / Add custom drawing properties                              ;
;  Doc   [VLA-Object] - document / document                                                   ;
;  Name  [STR]   - nazwa / name                                                               ;
;  Value [STR]   - wartosc / value                                                            ;
;  Mode  [T/nil] - nil = nieaktualizuje istniejacej nazwy / do not updates exisitng name      ;
;                  T   = aktualizuje istniejaca nazwe / updates exisitng name                 ;
; ------------------------------------------------------------------------------------------- ;
; (cd:DWG_AddCustomProp (cd:ACX_ADoc) "One" "1" nil)                                          ;
; =========================================================================================== ;
(defun cd:DWG_AddCustomProp (Doc Name Value Mode / si)
  (setq si (vla-get-SummaryInfo Doc))
  (if (member Name (mapcar (quote car) (cd:DWG_GetCustomProp Doc)))
    (if Mode (vla-SetCustomByKey si Name Value))
    (vla-AddCustomInfo si Name Value)
  )
)
; =========================================================================================== ;
; Lista wlasciwosci uzytkownika / Custom drawing properties                                   ;
;  Doc [VLA-Object] - document / document                                                     ;
; ------------------------------------------------------------------------------------------- ;
; (cd:DWG_GetCustomProp (cd:ACX_ADoc))                                                        ;
; =========================================================================================== ;
(defun cd:DWG_GetCustomProp (Doc / si n k v lst)
  (setq si (vla-get-SummaryInfo Doc)
        n (vla-NumCustomInfo si)
  )
  (while (> n 0)
    (vla-GetCustomByIndex si (- n 1) 'k 'v)
    (setq lst (cons (cons k v) lst)
          n (1- n)
    )
  )
  lst
)
; =========================================================================================== ;
; Lista otwartych dokumentow / Open documents list                                            ;
; =========================================================================================== ;
(defun cd:DWG_GetOpenDocs (/ res)
  (vlax-for %
    (vla-get-documents (vlax-get-acad-object))
    (setq res
      (cons
        (cons
          (vla-get-name %)
          %
        )
        res
      )
    )
  )
)
; =========================================================================================== ;
; Lista wlasciwosci dokumentu / Summary drawing properties list                               ;
;  Doc [VLA-Object] - document / document                                                     ;
; ------------------------------------------------------------------------------------------- ;
; (cd:DWG_GetSummaryInfo (cd:ACX_ADoc))                                                       ;
; =========================================================================================== ;
(defun cd:DWG_GetSummaryInfo (Doc)
  (mapcar
    (function
      (lambda (%)
        (cons
          %
          (vlax-get-property
            (vla-get-SummaryInfo Doc)
            %
          )
        )
      )
    )
    (list
      "Author" "Comments" "HyperLinkBase" "Keywords"
      "LastSavedBy" "RevisionNumber" "Subject" "Title"
    )
  )
)
; =========================================================================================== ;
; Zmiana nazwy arkusza na obiekt VLA / Convert layout name to VLA-Object                      ;
;  Layout [STR] - nazwa arkusza / layout tab name                                             ;
; ------------------------------------------------------------------------------------------- ;
; (cd:DWG_Layout2VLA (getvar "CTAB"))                                                         ;
; =========================================================================================== ;
(defun cd:DWG_Layout2VLA (Layout / res)
  (and
    (member Layout (layoutlist))
    (setq res
      (vla-item
        (cd:ACX_Layouts)
        Layout
      )
    )
  )
  res
)
; =========================================================================================== ;
; Lista arkuszy rysunku / Layouts drawing list                                                ;
; =========================================================================================== ;
(defun cd:DWG_LayoutsList (/ res)
  (vlax-for %
    (cd:ACX_Layouts)
    (setq res
      (cons
        (list
          (vla-get-name %)
          (vla-get-TabOrder %)
          %
        )
        res
      )
    )
  )
)
; =========================================================================================== ;
; Usuwa wlasciwosci uzytkownika / Removes custom drawing properties                           ;
;  Doc  [VLA-Object] - document / document                                                    ;
;  Mode [LIST/T] - LIST = lista wlasciwosci do usuniecia / list of properties to remove       ;
;                  T    = usuwa wszystkie wlasciwosci / removes all properites                ;
; ------------------------------------------------------------------------------------------- ;
; (cd:DWG_RemoveCustomProp (cd:ACX_ADoc) (list "One" "Two"))                                  ;
; =========================================================================================== ;
(defun cd:DWG_RemoveCustomProp (Doc Mode / si)
  (setq si (vla-get-SummaryInfo Doc))
  (if (listp Mode)
    (foreach % Mode
      (vl-catch-all-apply
        (quote vla-RemoveCustomByKey)
        (list si %)
      )
    )
    (foreach % (mapcar (quote car) (cd:DWG_GetCustomProp Doc))
      (vla-RemoveCustomByKey si %)
    )
  )
)
; =========================================================================================== ;
; Zmiana wlasciwosci dokumentu / Set summary drawing properties                               ;
;  Doc  [VLA-Object] - document / document                                                    ;
;  Data [LIST/nil] - LIST = lista par kropkowych / list of dotted pairs                       ;
;                    nil  = usuwa wszystkie / delete all                                      ;
; ------------------------------------------------------------------------------------------- ;
; (cd:DWG_SetSummaryInfo (cd:ACX_ADoc) '(("Author" . "Me")("Title" . "123-ABC-55")))          ;
; =========================================================================================== ;
(defun cd:DWG_SetSummaryInfo (Doc Data / si)
  (setq si (vla-get-SummaryInfo Doc))
  (if (not Data)
    (mapcar
      (function
        (lambda (%)
          (vlax-put-property si % "")
        )
      )
      (list
        "Author" "Comments" "HyperLinkBase" "Keywords"
        "LastSavedBy" "RevisionNumber" "Subject" "Title"
      )
    )
    (mapcar
      (function
        (lambda (%)
          (if
            (vlax-property-available-p si (car %))
            (vlax-put-property si (car %) (cdr %))
          )
        )
      )
      Data
    )
  )
  nil
)
; =========================================================================================== ;
; Zwraca wartosc danego klucza z listy asocjacyjnej /                                         ;
; Returns the value of a key from assoc list                                                  ;
;  Key  [INT]  - klucz / key                                                                  ;
;  Data [LIST] - lista par kropkowych / list of dotted pairs                                  ;
; ------------------------------------------------------------------------------------------- ;
; (cd:DXF_Massoc 10 (entget (car (entsel))))                                                  ;
; =========================================================================================== ;
(defun cd:DXF_Massoc (Key Data / res tmp)
  (while
    (setq Data (member (setq tmp (assoc Key Data)) Data))
    (setq res (cons (cdr tmp) res)
          Data (cdr Data)
    )
  )
  (reverse res)
)
; =========================================================================================== ;
; Usuwa kody z listy DXF / Removes codes from the list of DXF                                 ;
;  Data [LIST] - lista par kropkowych / list of dotted pairs                                  ;
;  Lst  [LIST] - lista kodow do usuniecia / list of codes to be removed                       ;
; ------------------------------------------------------------------------------------------- ;
; (cd:DXF_RemoveDXF (entget (entlast)) (list -1 3 5 102 330 360 440))                         ;
; =========================================================================================== ;
(defun cd:DXF_RemoveDXF (Data Lst)
  (vl-remove-if
    (function
      (lambda (%)
        (member (car %) Lst)
      )
    )
    Data
  )
)
; =========================================================================================== ;
; Sprawdza poprawnosc nazwanego obiektu / Checks the correctness of the named object          ;
;  Table [STR] - nazwa obiektu / object name                                                  ;
;  Name  [STR] - nazwa do sprawdzenia / name to check                                         ;
; ------------------------------------------------------------------------------------------- ;
; Zwraca / Return:                                                                            ;
;   0 = obiekt nie istnieje / object does not exist                                           ;
;  -1 = zla nazwa / bad name                                                                  ;
;   1 = obiekt istnieje / object exists                                                       ;
; ------------------------------------------------------------------------------------------- ;
; (cd:ENT_CheckTableObj "LAYER" "0"), (cd:ENT_CheckTableObj "BLOCK" "nazwa")                  ;
; =========================================================================================== ;
(defun cd:ENT_CheckTableObj (Table Name)
  (if (not (tblobjname Table Name))
    (if (snvalid Name 0)
       0
      -1
    )
    1
  )
)
; =========================================================================================== ;
; Tworzy obiekt typu ARC / Creates a ARC object                                               ;
;  Layout [STR]   - nazwa arkusza / layout tab name                                           ;
;  Pc     [LIST]  - srodek luku / center of the arc                                           ;
;  Radius [REAL]  - promien / radius                                                          ;
;  As     [REAL]  - kat poczatkowy w radianach / start angle in radians                       ;
;  Ae     [REAL]  - kat koncowy w radianach / end angle in radians                            ;
;  ActUcs [T/nil] - dopasuj do aktywnego ucs / adjust to active ucs                           ;
;                   nil = nie / no                                                            ;
;                   T   = tak / yes                                                           ;
; ------------------------------------------------------------------------------------------- ;
; (cd:ENT_MakeArc "Model" '(1 5 0) 5 0 pi T)                                                  ;
; =========================================================================================== ;
(defun cd:ENT_MakeArc (Layout Pc Radius As Ae ActUcs / zdir xang)
  (setq zdir (trans (list 0 0 1) 1 0 T)
        xang (angle (list 0 0 0) (trans (getvar "UCSXDIR") 0 zdir))
  )
  (entmakex
    (list
      (cons 0 "ARC")
      (cons 10 (trans Pc 1 (if ActUcs zdir 0)))
      (cons 40 Radius)
      (cons 50 (+ As xang))
      (cons 51 (+ Ae xang))
      (if ActUcs
        (cons 210 zdir)
        (cons 210 (list 0 0 1))
      )
      (cons 410 Layout)
    )
  )
)
; =========================================================================================== ;
; Tworzy koniec definicji bloku / Creates a block definition end                              ;
; =========================================================================================== ;
(defun cd:ENT_MakeBlockEnd ()
  (entmake
    (list
      (cons 0 "ENDBLK")
      (cons 8 "0")
    )
  )
)
; =========================================================================================== ;
; Tworzy poczatek definicji bloku / Creates a block definition head                           ;
;  Name [STR]  - nazwa bloku / block name                                                     ;
;  Pb   [LIST] - punkt bazowy bloku / block base point                                        ;
;  Flag [INT]  - typ bloku (bit-kody, mozna laczyc) / block type (bit-codes, may be combined) ;
;                0 = standardowy block / standard block                                       ;
;                1 = blok anonimowy / anonymous block                                         ;
;                2 = definicje atrybutow (nie-stale) / attribute definitions (non-constant)   ;
; ------------------------------------------------------------------------------------------- ;
; (cd:ENT_MakeBlockHead "NOWY" (list 0 0 0) 0), (cd:ENT_MakeBlockHead "*U" (list 0 0 0) 1)    ;
; =========================================================================================== ;
(defun cd:ENT_MakeBlockHead (Name Pb Flag)
  (entmakex
    (list
      (cons 0 "BLOCK")
      (cons 2 Name)
      (cons 8 "0")
      (cons 10 Pb)
      (cons 70
        (if (member Flag (list 0 1 2 3))
          Flag
          0
        )
      )
    )
  )
)
; =========================================================================================== ;
; Tworzy obiekt typu CIRCLE / Creates a CIRCLE object                                         ;
;  Layout [STR]   - nazwa arkusza / layout tab name                                           ;
;  Pc     [LIST]  - srodek okregu / center of the circle                                      ;
;  Radius [REAL]  - promien / radius                                                          ;
;  ActUcs [T/nil] - dopasuj do aktywnego ucs / adjust to active ucs                           ;
;                   nil = nie / no                                                            ;
;                   T   = tak / yes                                                           ;
; ------------------------------------------------------------------------------------------- ;
; (cd:ENT_MakeCircle "Model" '(1 5 0) 5 T)                                                    ;
; =========================================================================================== ;
(defun cd:ENT_MakeCircle (Layout Pc Rad ActUcs / zdir)
  (setq zdir (trans (list 0 0 1) 1 0 T))
  (entmakex
    (list
      (cons 0 "CIRCLE")
      (cons 10 (trans Pc 1 (if ActUcs zdir 0)))
      (cons 40 Rad)
      (if ActUcs
        (cons 210 zdir)
        (cons 210 (list 0 0 1))
      )
      (cons 410 Layout)
    )
  )
)
; =========================================================================================== ;
; Tworzy obiekt typu ELLIPSE / Creates a ELLIPSE object                                       ;
;  Layout [STR]   - nazwa arkusza / layout tab name                                           ;
;  Pc     [LIST]  - srodek elipsy / center of the ellipse                                     ;
;  Width  [REAL]  - szerokosc / width                                                         ;
;  Height [REAL]  - wysokosc / height                                                         ;
;  RotAng [REAL]  - kat obrotu / rotation angle                                               ;
;  ActUcs [T/nil] - dopasuj do aktywnego ucs / adjust to active ucs                           ;
;                   nil = nie / no                                                            ;
;                   T   = tak / yes                                                           ;
; ------------------------------------------------------------------------------------------- ;
; (cd:ENT_MakeEllipse "Model" '(1 5 0) 10.0 5.0 (* pi 0.25) T)                                ;
; =========================================================================================== ;
(defun cd:ENT_MakeEllipse (Layout Pc Width Height RotAng ActUcs / zdir xang)
  (setq zdir (trans (list 0 0 1) 1 0 T)
        xang (angle (list 0 0 0) (trans (getvar "UCSXDIR") 0 zdir))
  )
  (entmakex
    (list
      (cons 0 "ELLIPSE")
      (cons 100 "AcDbEntity")
      (cons 100 "AcDbEllipse")
      (cons 10 (trans Pc 1 0))
      (if ActUcs
        (cons 11 (trans (polar (trans (list 0 0 0) 0 1) RotAng (/ Width 2.0)) 1 0))
        (cons 11 (polar (list 0 0 0) (+ RotAng xang) (/ Width 2.0)))
      )
      (cons 40 (/ (float Height)(float Width)))
      (if ActUcs
        (cons 210 zdir)
        (cons 210 (list 0 0 1))
      )
      (cons 410 Layout)
    )
  )
)
; =========================================================================================== ;
; Tworzy nowa warstwe / Creates a new layers                                                  ;
;  Name [STR] - nazwa warstwy / layer name                                                    ;
; ------------------------------------------------------------------------------------------- ;
; (cd:ENT_MakeLayer "ABC")                                                                    ;
; =========================================================================================== ;
(defun cd:ENT_MakeLayer (Name / en)
  (if (setq en (tblobjname "LAYER" Name))
    en
    (entmakex
      (list
        (cons 0 "LAYER")
        (cons 100 "AcDbSymbolTableRecord")
        (cons 100 "AcDbLayerTableRecord")
        (cons 2 Name)
        (cons 70 0)
      )
    )
  )
)
; =========================================================================================== ;
; Tworzy obiekt typu LINE / Creates a LINE object                                             ;
;  Layout [STR]   - nazwa arkusza / layout tab name                                           ;
;  Ps     [LIST]  - punkt poczatkowy / start point                                            ;
;  Pe     [LIST]  - punkt koncowy / end point                                                 ;
;  ActUcs [T/nil] - dopasuj do aktywnego ucs / adjust to active ucs                           ;
;                   nil = nie / no                                                            ;
;                   T   = tak / yes                                                           ;
; ------------------------------------------------------------------------------------------- ;
; (cd:ENT_MakeLine "Model" '(20 10 0) '(100 50 0) T)                                          ;
; =========================================================================================== ;
(defun cd:ENT_MakeLine (Layout Ps Pe ActUcs / zdir)
  (setq zdir (trans (list 0 0 1) 1 0 T))
  (entmakex
    (list
      (cons 0 "LINE")
      (cons 10 (trans Ps 1 0))
      (cons 11 (trans Pe 1 0))
      (if ActUcs
        (cons 210 zdir)
        (cons 210 (list 0 0 1))
      )
      (cons 410 Layout)
    )
  )
)
; =========================================================================================== ;
; Tworzy obiekt typu LWPOLYLINE / Creates a LWPOLYLINE object                                 ;
;  Layout [STR]   - nazwa arkusza / layout tab name                                           ;
;  Pts    [LIST]  - lista wierzcholkow polilinii / list of polyline vertex                    ;
;  Closed [T/nil] - nil = otwarta / open                                                      ;
;                   T   = zamknieta / closed                                                  ;
; ------------------------------------------------------------------------------------------- ;
; (cd:ENT_MakeLWPolyline "Model" (list '(5 5) '(15 5) '(15 10) '(10 10)) nil)                 ;
; =========================================================================================== ;
(defun cd:ENT_MakeLWPolyline (Layout Pts Closed / zdir)
  (setq zdir (trans '(0 0 1) 1 0 T))
  (entmakex
    (append
      (list
        (cons 0 "LWPOLYLINE")
        (cons 100 "AcDbEntity")
        (cons 100 "AcDbPolyline")
        (cons 38 (caddr (trans (car Pts) 1 zdir)))
        (cons 90 (length Pts))
        (cons 70 (if Closed 1 0))
        (cons 210 zdir)
        (cons 410 Layout)
      )
      (mapcar
        (function
          (lambda (%)
            (cons 10 (trans % 1 zdir))
          )
        )
        Pts
      )
    )
  )
)
; =========================================================================================== ;
; Tworzy obiekt typu ACAD_TABLE / Creates a ACAD_TABLE object                                 ;
;  Pb   [LIST] - punkt bazowy tabeli / table base point                                       ;
;  Rows [INT]  - liczba wierszy / number of rows                                              ;
;  Cols [INT]  - liczba kolumn / number of columns                                            ;
;  RowH [INT]  - wysokosc wierszy / rows height                                               ;
;  ColH [INT]  - szerokosc kolumn / columns height                                            ;
; ------------------------------------------------------------------------------------------- ;
; (cd:ENT_MakeTable (getpoint) 5 5 10 30)                                                     ;
; =========================================================================================== ;
(defun cd:ENT_MakeTable (Pb Rows Cols RowH ColH / r c)
  (entmakex
    (append
      (list
        (cons 0 "ACAD_TABLE")
        (cons 100 "AcDbEntity")
        (cons 100 "AcDbBlockReference")
        (cons 10 (trans Pb 1 0))
        (cons 100 "AcDbTable")
        (cons 91 Rows)
        (cons 92 Cols)
      )
      (repeat Rows (setq r (cons (cons 141 RowH) r)))
      (repeat Cols (setq c (cons (cons 142 ColH) c)))
    )
  )
)
; =========================================================================================== ;
; Tworzy obiekt typu TEXT / Creates a TEXT object                                             ;
;  Layout [STR]  - nazwa arkusza / layout tab name                                            ;
;  Str    [STR]  - lancuch tekstowy / string                                                  ;
;  Pb     [LIST] - punkt bazowy / base point                                                  ;
;  Height [REAL] - wysokosc / height                                                          ;
;  Rot    [REAL] - kat obrotu w radianach / rotation angle in radians                         ;
; ------------------------------------------------------------------------------------------- ;
; (cd:ENT_MakeText "Model" "NEW_TEXT" '(20 10 0) 1.5 (/ pi 4))                                ;
; =========================================================================================== ;
(defun cd:ENT_MakeText (Layout Str Pb Height Rot / zdir xang)
  (setq zdir (trans '(0 0 1) 1 0 T)
        xang (angle '(0 0 0) (trans (getvar "UCSXDIR") 0 zdir))
  )
  (entmakex
    (list
      (cons 0 "TEXT")
      (cons 1 Str)
      (cons 10 (trans Pb 1 zdir))
      (cons 40 Height)
      (cons 50 (+ Rot xang))
      (cons 210 zdir)
      (cons 410 Layout)
    )
  )
)
; =========================================================================================== ;
; Tworzy nowy stylu tekstu / Creates a new text style                                         ;
;  Name [STR] - nazwa stylu tekstu / text style name                                          ;
; ------------------------------------------------------------------------------------------- ;
; (cd:ENT_MakeTextStyle "ABC")                                                                ;
; =========================================================================================== ;
(defun cd:ENT_MakeTextStyle (Name / en)
  (if (setq en (tblobjname "STYLE" Name))
    en
    (entmakex
      (list
        (cons 0 "STYLE")
        (cons 100 "AcDbSymbolTableRecord")
        (cons 100 "AcDbTextStyleTableRecord")
        (cons 2 Name)
        (cons 70 0)
      )
    )
  )
)
; =========================================================================================== ;
; Tworzy obiekt typu XLINE / Creates a XLINE object                                           ;
;  Layout [STR]       - nazwa arkusza / layout tab name                                       ;
;  Ps     [LIST]      - punkt poczatkowy / start point                                        ;
;  Pe     [LIST/REAL] - punkt koncowy lub kat w radianach / end point or angle in radians     ;
; ------------------------------------------------------------------------------------------- ;
; (cd:ENT_MakeXline "Model" (getpoint) (/ pi 4))                                              ;
; =========================================================================================== ;
(defun cd:ENT_MakeXline (Layout Ps Pe)
  (entmakex
    (list
      (cons 0 "XLINE")
      (cons 100 "AcDbEntity")
      (cons 100 "AcDbXline")
      (cons 10 (trans Ps 1 0))
      (cons 11
        (cond
          ( (numberp Pe)
             (trans (polar (trans '(0 0 0) 0 1) Pe 1) 1 0)
          )
          ( (listp Pe)
             (trans (polar '(0 0 0) (angle Ps Pe) 1) 1 0 T)
          )
        )
      )
      (cons 410 Layout)
    )
  )
)
; =========================================================================================== ;
; Zmiana podstawowych cech obiektu / Set basic object properties                              ;
;  Ename   [ENAME] - nazwa entycji / entity name                                              ;
;  Layer   [STR]   - nazwa warstwy / layer name                                               ;
;  Color   [INT]   - kolor warstwy / layer color                                              ;
;  LType   [STR]   - typ linii / linetype                                                     ;
;  LScale  [REAL]  - skala linii / linetype scale                                             ;
;  LWeight [INT]   - szerokosc linii / lineweight                                             ;
; ------------------------------------------------------------------------------------------- ;
; (cd:ENT_SetBasicDXF (entlast) "NOWA" 21 "CONTINUOUS" 1.5 13)                                ;
; =========================================================================================== ;
(defun cd:ENT_SetBasicDXF (Ename Layer Color LType LScale LWeight / dt)
  (setq dt (entget Ename))
  (mapcar
    (function
      (lambda (%1 %2)
        (setq dt
          (if %2
            (if
              (not (assoc %1 dt))
              (append dt (list (cons %1 %2)))
              (subst
                (cons %1 %2)
                (assoc %1 dt)
                dt
              )
            )
            dt
          )
        )
      )
    )
    (list 8 62 6 48 370)
    (list Layer Color LType LScale LWeight)
  )
  (entmod dt)
)
; =========================================================================================== ;
; Zmiana danych DXF obiektu / Set the DXF data of object                                      ;
;  Ename [ENAME] - nazwa entycji / entity name                                                ;
;  Code  [INT]   - kod pary DXF / code of dotted pair                                         ;
;  Val   [LIST/INT/REAL/STR/ENAME] - wartosc / value                                          ;
; ------------------------------------------------------------------------------------------- ;
; (cd:ENT_SetDXF (entlast) 70 129)                                                            ;
; =========================================================================================== ;
(defun cd:ENT_SetDXF (Ename Code Val / dt new)
  (setq new
    (if (not (assoc Code (setq dt (entget Ename))))
      (append dt (list (cons Code Val)))
      (subst
        (cons Code Val)
        (assoc Code dt)
        dt
      )
    )
  )
  (entmod new)
)
; =========================================================================================== ;
; Wstawia nowy element na liste / Inserts a new item in the list                              ;
;  Pos [INT]  - pozycja elementu / element position                                           ;
;  Lst [LIST] - lista wejsciowa / input list                                                  ;
;  New [LIST/INT/REAL/STR/ENAME] - nowy element / new item                                    ;
; ------------------------------------------------------------------------------------------- ;
; (cd:LST_InsertItem 3 (list 0 1 2 4 5) 3)                                                    ;
; =========================================================================================== ;
(defun cd:LST_InsertItem (Pos Lst New / res)
  (if (< -1 Pos (1+ (length Lst)))
    (progn
      (repeat Pos
        (setq res (cons (car Lst) res)
              Lst (cdr Lst)
        )
      )
      (append (reverse res) (list New) Lst)
    )
    Lst
  )
)
; =========================================================================================== ;
; Lista wystapien elementu na liscie / List of occurrences item in the list                   ;
;  Item [INT]  - element / element                                                            ;
;  Lst  [LIST] - lista wejsciowa / input list                                                 ;
; ------------------------------------------------------------------------------------------- ;
; (cd:LST_ItemPosition 1 (list 0 "a" 1 "b" 3 1))                                              ;
; =========================================================================================== ;
(defun cd:LST_ItemPosition (Item Lst / n p res)
  (setq n -1)
  (while
    (and
      (setq p (vl-position Item Lst))
      (setq n (+ (1+ n) p)
            res (cons n res)
            Lst (cdr (member Item Lst))
      )
    )
  )
  (reverse res)
)
; =========================================================================================== ;
; Przesuwa element o jedna pozycje w dol / Moves item one position down                       ;
;  Pos [INT]  - pozycja elementu / element position                                           ;
;  Lst [LIST] - lista wejsciowa / input list                                                  ;
; ------------------------------------------------------------------------------------------- ;
; (cd:LST_MoveItemDown 3 (list 0 1 2 3 4 5))                                                  ;
; =========================================================================================== ;
(defun cd:LST_MoveItemDown (Pos Lst / n)
  (setq n -1)
  (cond
    (
      (or
        (< Pos 0)
        (>= Pos (1- (length Lst)))
      )
      Lst
    )
    ( (mapcar
        (function
          (lambda (%)
            (setq n (1+ n))
            (cond
              ( (= n Pos)
                (nth (1+ Pos) Lst)
              )
              ( (= n (1+ Pos))
                (nth Pos Lst)
              )
              (%)
            )
          )
        )
        Lst
      )
    )
  )
)
; =========================================================================================== ;
; Przesuwa element na ostatnia pozycje / Moves item to the last position                      ;
;  Pos [INT]  - pozycja elementu / element position                                           ;
;  Lst [LIST] - lista wejsciowa / input list                                                  ;
; ------------------------------------------------------------------------------------------- ;
; (cd:LST_MoveItemToBottom 3 (list 0 1 2 3 4 5))                                              ;
; =========================================================================================== ;
(defun cd:LST_MoveItemToBottom (Pos Lst)
  (cond
    (
      (or
        (< Pos 0)
        (>= Pos (1- (length Lst)))
      )
      Lst
    )
    ( (append
        (cd:LST_RemoveItem Pos Lst)
        (list (nth Pos Lst))
      )
    )
  )
)
; =========================================================================================== ;
; Przesuwa element na pozycje 0 / Moves item to the 0th position                              ;
;  Pos [INT]  - pozycja elementu / element position                                           ;
;  Lst [LIST] - lista wejsciowa / input list                                                  ;
; ------------------------------------------------------------------------------------------- ;
; (cd:LST_MoveItemToTop 3 (list 0 1 2 3 4 5))                                                 ;
; =========================================================================================== ;
(defun cd:LST_MoveItemToTop (Pos Lst)
  (cond
    (
      (or
        (<= Pos 0)
        (>= Pos (length Lst))
      )
      Lst
    )
    ( (append
        (list (nth Pos Lst))
        (cd:LST_RemoveItem Pos Lst)
      )
    )
  )
)
; =========================================================================================== ;
; Przesuwa element o jedna pozycje w gore / Moves item one position up                        ;
;  Pos [INT]  - pozycja elementu / element position                                           ;
;  Lst [LIST] - lista wejsciowa / input list                                                  ;
; ------------------------------------------------------------------------------------------- ;
; (cd:LST_MoveItemUp 3 (list 0 1 2 3 4 5))                                                    ;
; =========================================================================================== ;
(defun cd:LST_MoveItemUp (Pos Lst / n)
  (setq n -1)
  (cond
    (
      (or
        (zerop Pos)
        (>= Pos (length Lst))
      )
      Lst
    )
    ( (mapcar
        (function
          (lambda (%)
            (setq n (1+ n))
            (cond
              ( (= n (1- Pos))
                (nth Pos Lst)
              )
              ( (= n Pos)
                (nth (1- Pos) Lst)
              )
              (%)
            )
          )
        )
        Lst
      )
    )
  )
)
; =========================================================================================== ;
; Usuwa element z listy / Removes the item from the list                                      ;
;  Pos [INT]  - pozycja elementu / element position                                           ;
;  Lst [LIST] - lista wejsciowa / input list                                                  ;
; ------------------------------------------------------------------------------------------- ;
; (cd:LST_RemoveItem 3 (list 0 1 2 3 4 5))                                                    ;
; =========================================================================================== ;
(defun cd:LST_RemoveItem (Pos Lst)
  (vl-remove-if
    (function
      (lambda (%)
        (= -1 (setq Pos (1- Pos)))
      )
    )
    Lst
  )
)
; =========================================================================================== ;
; Zastepuje element na liscie / Replaces the item on the list                                 ;
;  Pos [INT]  - pozycja elementu / element position                                           ;
;  Lst [LIST] - lista wejsciowa / input list                                                  ;
;  New [LIST/INT/REAL/STR/ENAME] - nowy element / new item                                    ;
; ------------------------------------------------------------------------------------------- ;
; (cd:LST_ReplaceItem 3 (list 0 1 2 3 4 5) "c")                                               ;
; =========================================================================================== ;
(defun cd:LST_ReplaceItem (Pos Lst New)
  (mapcar
    (function
      (lambda (%)
        (cond
          ( (= -1 (setq Pos (1- Pos)))
            New
          )
          (%)
        )
      )
    )
    Lst
  )
)
; =========================================================================================== ;
; Zamienia elementy miejscami / Reverse the elements in places                                ;
;  Pos1 [INT]  - pozycja 1-go elementu / first element position                               ;
;  Pos2 [INT]  - pozycja 2-go elementu / second element position                              ;
;  Lst  [LIST] - lista wejsciowa / input list                                                 ;
; ------------------------------------------------------------------------------------------- ;
; (cd:LST_ReverseItems 0 5 (list 0 1 2 3 4 5))                                                ;
; =========================================================================================== ;
(defun cd:LST_ReverseItems (Pos1 Pos2 Lst / n)
  (setq n -1)
  (cond
    (
      (or
        (< Pos1 0)
        (< Pos2 0)
        (>= Pos1 (length Lst))
        (>= Pos2 (length Lst))
      )
      Lst
    )
    ( (mapcar
        (function
          (lambda (%)
            (setq n (1+ n))
            (cond
              ( (= n Pos1)
                (nth Pos2 Lst)
              )
              ( (= n Pos2)
                (nth Pos1 Lst)
              )
              (%)
            )
          )
        )
        Lst
      )
    )
  )
)
; =========================================================================================== ;
; Zmienia PICKSET na liste obiektow / Convert PICKSET to list of objects                      ;
;  Ss   [PICKSET] - zbior wskazan / selection sets                                            ;
;  Mode [INT]     - typ zwracanych obiektow / type of returned objects                        ;
;                   0 = ENAME, 1 = VLA-OBJECT, 2 = SAFEARRAY                                  ;
; ------------------------------------------------------------------------------------------- ;
; (cd:SSX_Convert (ssget) 1)                                                                  ;
; =========================================================================================== ;
(defun cd:SSX_Convert (Ss Mode / n res)
  (if
    (and
      (member Mode (list 0 1 2))
      (not
        (minusp
          (setq n
            (if Ss (1- (sslength Ss)) -1)
          )
        )
      )
    )
    (progn
      (while (>= n 0)
        (setq res
          (cons
            (if (zerop Mode)
              (ssname Ss n)
              (vlax-ename->vla-object (ssname Ss n))
            )
            res
          )
              n (1- n)
        )
      )
      (if (= Mode 2)
        (vlax-safearray-fill
          (vlax-make-safearray 9
            (cons 0 (1- (length res)))
          ) res
        )
        res
      )
    )
  )
)
; =========================================================================================== ;
; Filtr blokow dynamicznych / Dynamic block filter                                            ;
;  Mode [T/nil] - tryb wyboru blokow / block selection mode                                   ;
;                 nil - wskazanie uzytkownika / user selection                                ;
;                 T   - wszystkie z rysunku / all from drawing                                ;
;  Name [STR]   - nazwa bloku / block name                                                    ;
; ------------------------------------------------------------------------------------------- ;
; (cd:SSX_DynBlockFilter nil "Blok")                                                          ;
; =========================================================================================== ;
(defun cd:SSX_DynBlockFilter (Mode Name / res bl)
  (setq res
    (list '(0 . "INSERT")
      (cons 2
        (strcat "`"
          (cd:STR_ReParse (mapcar (quote chr) (vl-string->list Name)) "`")
          (if (setq bl (cdr (cd:BLK_GetDynBlockNames Name)))
            (strcat ","
              (cd:STR_ReParse (mapcar (function (lambda (%) (strcat "`" %))) bl) ",")
            )
            ""
          )
        )
      )
    )
  )
  (if Mode (ssget "_x" res) (ssget res))
)
; =========================================================================================== ;
; Liczba wystapien znaku / Number of occurrences of a character                               ;
;  Str  [STR] - lancuch tekstowy / string                                                     ;
;  Char [STR] - znak / character                                                              ;
; ------------------------------------------------------------------------------------------- ;
; (cd:STR_CountChar  "\"123\" \"416\" \"719\" \"A1c\"" "\"")                                  ;
; =========================================================================================== ;
(defun cd:STR_CountChar (Str Char)
  (-
    (strlen Str)
    (length
      (vl-remove
        (ascii Char)
        (vl-string->list Str)
      )
    )
  )
)
; =========================================================================================== ;
; Uzupelnia lancuch tekstowy znakami / Replaces the item on the list                          ;
;  Str  [STR]   - lancuch tekstowy / string                                                   ;
;  Char [STR]   - znak / character                                                            ;
;  Pos  [INT]   - calkowita liczba znakow / total number of characters                        ;
;  Dir  [T/nil] - kierunek uzupelniania / complement direction                                ;
;                 nil = w lewo / left                                                         ;
;                 T   = w prawo / right                                                       ;
; ------------------------------------------------------------------------------------------- ;
; (cd:STR_FillChar "12" "0" 5 nil)                                                            ;
; =========================================================================================== ;
(defun cd:STR_FillChar (Str Char Pos Dir / res)
  (setq res "")
  (repeat (- Pos (strlen Str))
    (setq res (strcat res Char))
  )
  (if Dir
    (strcat str res)
    (strcat res str)
  )
)
; =========================================================================================== ;
; Dzieli lancuch separatorem / Divide string by separator                                     ;
;  Str [STR]   - lancuch tekstowy / string                                                    ;
;  Sep [STR]   - znak rozdzielajacy / string separator                                        ;
;  Rbl [T/nil] - nil = nie usuwa pustych tekstow / don't remove empty strings                 ;
;                T   = usuwa puste teksty / remove empty strings                              ;
; ------------------------------------------------------------------------------------------- ;
; (cd:STR_Parse ";;1;2;3;;;9;" ";" nil) --> ("" "" "1" "2" "3" "" "" "9" "")                  ;
; (cd:STR_Parse ";;1;2;3;;;9;" ";" T)   --> ("1" "2" "3" "9")                                 ;
; =========================================================================================== ;
(defun cd:STR_Parse (Str Sep Rbl / el res)
  (setq el "")
  (foreach % (vl-string->list Str)
    (if (= Sep (chr %))
      (setq res (cons el res) el "")
      (setq el (strcat el (chr %)))
    )
  )
  (setq res (cons el res))
  (reverse
    (if Rbl (vl-remove "" res) res)
  )
)
; =========================================================================================== ;
; Laczy liste lancuchow w lancuch z separatorem /                                             ;
; Combines a list of strings in the string with the separator                                 ;
;  Lst [LIST] - lista lancuchow / list of strings                                             ;
;  Sep [STR]  - separator / separator                                                         ;
; ------------------------------------------------------------------------------------------- ;
; (cd:STR_ReParse '("OLE2FRAME" "IMAGE" "HATCH") ",")                                         ;
; =========================================================================================== ;
(defun cd:STR_ReParse (Lst Sep / res)
  (setq res (car Lst))
  (foreach % (cdr Lst)
    (setq res (strcat res Sep %))
  )
  res
)
; =========================================================================================== ;
; Tworzy automatyczna nazwe / Creates automatic name                                          ;
;  Tbl  [STR] - tablica symboli / table symbol                                                ;
;  Pref [STR] - prefiks / prefix                                                              ;
;  Suff [STR] - sufiks / suffix                                                               ;
;  Char [STR] - znak uzupelniajacy / supplementary sign                                       ;
;  Len  [INT] - calkowita liczba znakow / total number of characters                          ;
; ------------------------------------------------------------------------------------------- ;
; (cd:STR_TableNameAuto "BLOCK" "Front_" "_Tyl" "." 3)                                        ;
; (cd:STR_TableNameAuto "LAYER" "Pre_" nil "0" 5)                                             ;
; =========================================================================================== ;
(defun cd:STR_TableNameAuto (Tbl Pref Suff Char Len / res n)
  (foreach % (list "Pref" "Suff" "Char")
    (set (read %) (if (eval (read %)) (eval (read %)) ""))
  )
  (setq res (strcat Pref (cd:STR_FillChar "1" Char Len nil) Suff)
        n 2
  )
  (while (tblsearch Tbl res)
    (setq res (strcat Pref (cd:STR_FillChar (itoa n) Char Len nil) Suff)
          n (1+ n)
    )
  )
  res
)
; =========================================================================================== ;
; AcadInfo np. ("AutoCAD" 18.0 64 "PL")                                                       ;
; =========================================================================================== ;
(defun cd:SYS_AcadInfo (/ s v)
  (list
    (getvar "PRODUCT")
    (atof (getvar "ACADVER"))
    (if (wcmatch (strcase (getenv "PROCESSOR_ARCHITECTURE")) "*64*") 64 32)
    (if (setq s (vl-string-search "(" (setq v (ver))))
      (strcase (substr v (+ 2 s) 2))
      "??"
    )
  )
)
; =========================================================================================== ;
; Sprawdza poprawnosc dzialania funkcji / Checks proper operation of the function             ;
;  Lst [LIST] - sprawdzana funkcja z argumentami / tested the function with arguments         ;
; ------------------------------------------------------------------------------------------- ;
; (cd:SYS_CheckError (list cd:CAL_BitList "199"))                                             ;
; =========================================================================================== ;
(defun cd:SYS_CheckError (Lst / res)
  (if
    (/=
      (type
        (setq res
          (vl-catch-all-apply
            (quote (car Lst))
            (cdr Lst)
          )
        )
      )
      (quote VL-CATCH-ALL-APPLY-ERROR)
    )
    res
  )
)
; =========================================================================================== ;
; Zwraca liste obiektow wybranego typu / Returns a list of objects of the selected type       ;
;  Coll [STR] - typ obiektu / object type                                                     ;
;  Bit  [INT] - liczba calkowita (suma bitow) / integer number (sum of the bits)              ;
;               0 = bezwzglednie wszystkie / absolutely all                                   ;
;               1 = bez Model/Papier dla BLOCK i "" dla STYLE /                               ;
;                   without Model/Paper for Block and "" for STYLE                            ;
;               2 = bez anonimowych / without anonymous | BLOCK, GROUP, TABLE, VPORT          ;
;               4 = bez zaleznych od odnosnikow zewnetrznych /                                ;
;                   without dependent from external references                                ;
;               8 = bez odnosnikow zewnetrznych / without external references                 ;
;              16 = wszystkie anonimowe / all anonymous | BLOCK,GROUP,TABLE,VPORT,Model/Paper ;
;              32 = tylko odnosniki zewnetrzne / only external references                     ;
; ------------------------------------------------------------------------------------------- ;
; (cd:SYS_CollList "BLOCK" (+ 1 2 4))                                                         ;
; =========================================================================================== ;
(defun cd:SYS_CollList (Coll Bit / lst con res nam)
  (setq lst
    (list
      '("APPID" . "RegisteredApplications")
      '("BLOCK" . "Blocks")
      '("DIMSTYLE" . "DimStyles")
      '("GROUP" . "Groups")
      '("LAYER" . "Layers")
      '("LAYOUT" . "Layouts")
      '("LTYPE" . "LineTypes")
      '("MATERIAL" . "Materials")
      '("PLOTCONFIGURATION" . "PlotConfigurations")
      '("STYLE" . "TextStyles")
      '("UCS" . "UserCoordinateSystems")
      '("VIEW" . "Views")
      '("VPORT" . "ViewPorts")
    )
  )
  (if
    (member
      (setq con (strcase Coll))
      (mapcar (quote car) lst)
    )
    (vlax-for %
      (vlax-get (cd:ACX_ADoc)(cdr (assoc con lst)))
      (progn
        (setq nam (vla-get-name %))
        (cond
          ( (and
              (= 1 (logand Bit 1))
              (or
                (= "" nam)
                (and
                  (= con "BLOCK")
                  (eq (vla-get-IsLayout %) :vlax-true)
                )
              )
            )
          )
          ( (and
              (= 2 (logand Bit 2))
              (wcmatch nam "[*]@#*")
            )
          )
          ( (and
              (= 4 (logand Bit 4))
              (wcmatch nam "*|*")
            )
          )
          ( (and
              (= 8 (logand Bit 8))
              (= con "BLOCK")
              (eq (vla-get-isXRef %) :vlax-true)
            )
          )
          ( (and
              (= 16 (logand Bit 16))
              (not (wcmatch nam "[*]*"))
            )
          )
          ( (and
              (= 32 (logand Bit 32))
              (= con "BLOCK")
              (eq (vla-get-isXRef %) :vlax-false)
            )
          )
          (T (setq res (cons nam res)))
        )
      )
    )
  )
  res
)
; =========================================================================================== ;
; Wczytuje pliki lsp,fas,vlx / Loads files lsp,fas,vlx                                        ;
;  Lst [LIST]  - lista plikow / files list                                                    ;
; ------------------------------------------------------------------------------------------- ;
; (cd:SYS_FilesLoader (list "CADPL-Pack-v1.lsp" "Brak.fas" "Nawias.lsp"))                     ;
; =========================================================================================== ;
(defun cd:SYS_FilesLoader (Lst / err res)
  (foreach % Lst
    (if
      (and
        (setq err (vl-catch-all-apply (quote load) (list %)))
        (= (type err) (quote vl-catch-all-apply-error))
      )
      (setq res
        (cons
          (cons % (vl-catch-all-error-message err))
          res
        )
      )
    )
  )
  (reverse res)
)
; =========================================================================================== ;
; Lista sciezek do czcionek (Win/Acad) / List of paths to the fonts (Win/Acad)                ;
; =========================================================================================== ;
(defun cd:SYS_FontPaths ()
  (cons
    (findfile (strcat (getenv "WINDIR") "\\fonts"))
    (vl-remove-if-not
      (function
        (lambda (%)
          (wcmatch (strcase %) "*\\FONTS")
        )
      )
      (cd:STR_Parse (getvar "ACADPREFIX") ";" T)
    )
  )
)
; =========================================================================================== ;
; Zwraca date/czas systemowa(y) / Return system date/time                                     ;
;  Format [STR] -                                                                             ;
;   ----- Data / Date -----    |   ---- Czas / Time ----                                      ;
;   D       ->   5             |   H       ->   4                                             ;
;   DD      ->   05            |   HH      ->   04                                            ;
;   DDD     ->   Sat           |   MM      ->   53                                            ;
;   DDDD    ->   Saturday      |   SS      ->   17                                            ;
;   M       ->   9             |   MSEC    ->   506                                           ;
;   MO      ->   09            |   AM/PM   ->   AM or PM                                      ;
;   MON     ->   Sep           |   am/pm   ->   am or pm                                      ;
;   MONTH   ->   September     |   A/P     ->   A  or P                                       ;
;   YY      ->   89            |   a/p     ->   a  or p                                       ;
;   YYYY    ->   1989          |                                                              ;
; ------------------------------------------------------------------------------------------- ;
; (cd:SYS_GetDateTime "DDD\",\" DD MON YYYY - H:MMam/pm")                                     ;
; =========================================================================================== ;
(defun cd:SYS_GetDateTime (Format)
  (menucmd (strcat "m=$(edtime,$(getvar,DATE)," Format ")"))
)
; =========================================================================================== ;
; Zwraca liste czcionek systemowych / Returns system font list                                ;
; =========================================================================================== ;
(defun cd:SYS_GetFonts (/ lt reg ttfs ls shxs)
  (setq lt
    (vl-remove-if-not
      (function
        (lambda (%)(wcmatch % "*TrueType)"))
      )
      (vl-registry-descendents
        (setq reg
          (strcat "HKEY_LOCAL_MACHINE\\Software\\Microsoft\\"
                  "Windows NT\\CurrentVersion\\Fonts"
          )
        ) ""
      )
    )
  )
  (setq ttfs
    (mapcar
      (function
        (lambda (%)
          (cons
            (vl-string-right-trim " (TrueType)" %)
            (vl-registry-read reg %)
          )
        )
      )
      (vl-remove-if-not
        (function
          (lambda (%1 / %2)
            (and
              (not
                (wcmatch
                  (setq %2 (vl-registry-read reg %1))
                  "*\\*"
                )
              )
              (wcmatch (strcase %2) "*.TTF")
            )
          )
        ) lt
      )
    )
        lt (mapcar (quote car) ttfs)
        ls (vl-directory-files
             (vl-filename-directory
               (findfile "isocp.shx")
             )
             "*.shx"
           )
        shxs (mapcar (function (lambda (%)(cons % %))) ls)
  )
  (list
    (append lt ls)
    (append ttfs shxs)
  )
)
; =========================================================================================== ;
; Zwraca liste symboli LISP-a / Returns LISPs symbols list                                    ;
; ------------------------------------------------------------------------------------------- ;
; (cd:SYS_GetSymbols "cd:")                                                                   ;
; =========================================================================================== ;
(defun cd:SYS_GetSymbols (Str / res)
  (if
    (setq res
      (vl-remove-if
        (function
          (lambda (%)
            (if (not Str)
              (/= (strcase (substr % 1 4)) "*CD-")
              (/= (strcase (substr % 1 (strlen Str))) (strcase Str))
            )
          )
        )
        (atoms-family 1)
      )
    )
    (mapcar
      (function
        (lambda (%)
          (cons % (vl-symbol-value (read %)))
        )
      )
      (vl-sort res (quote <))
    )
    nil
  )
)
; =========================================================================================== ;
; Standardowe okno komunikatu / Standard message box                                          ;
;  Msg   [STR]           - komunikat do wyswietlenia / message to display                     ;
;  Title [STR]           - tytul okna / window title                                          ;
;  Btn   [0/1/2/3/4/5/6] - przyciski / buttons                                                ;
;  Icon  [16/32/48/64]   - wyswietlany symbolu / displayed symbol                             ;
; ------------------------------------------------------------------------------------------- ;
; Typy przyciskow / Buttons type:                                                             ;
;  0  = OK                              / OK                                                  ;
;  1  = OK i Anuluj                     / OK and Cancel                                       ;
;  2  = Przerwij, Ponow probe i Ignoruj / Abort, Retry and Ignore                             ;
;  3  = Tak, Nie i Anuluj               / Yes, No and Cancel                                  ;
;  4  = Tak i Nie                       / Yes and No                                          ;
;  5  = Ponow probe i Anuluj            / Retry and Cancel                                    ;
;  6  = Anuluj, Ponow probe Kontynuuj   / Cancel, Try Again and Continue                      ;
; ------------------------------------------------------------------------------------------- ;
; Wyswietlany symbol / Displayed symbol:                                                      ;
;  16 = "Stop"       [X] / "Stop"                                                             ;
;  32 = "Pytanie"    [?] / "Question"                                                         ;
;  48 = "Uwaga"      [!] / Show "Exclamation"                                                 ;
;  64 = "Informacja" [i] / Show "Information"                                                 ;
; ------------------------------------------------------------------------------------------- ;
; Zwraca / Return:                                                                            ;
;  1  = OK          / OK                                                                      ;
;  2  = Anuluj      / Cancel                                                                  ;
;  3  = Przerwij    / Abort                                                                   ;
;  4  = Ponow probe / Retry       | Btn = 2,5                                                 ;
;  5  = Ignoruj     / Ignore                                                                  ;
;  6  = Tak         / Yes                                                                     ;
;  7  = Nie         / No                                                                      ;
;  10 = Ponow probe / Try Again   | Btn = 6                                                   ;
;  11 = Kontynuuj   / Continue                                                                ;
; ------------------------------------------------------------------------------------------- ;
; (cd:SYS_MsgBox "Komunikat\nw 2 liniach" "Uwaga" 0 64)                                       ;
; =========================================================================================== ;
(defun cd:SYS_MsgBox (Msg Title Btn Icon / WSs res)
  (setq WSs (vlax-create-object "WScript.Shell")
        Icon (if (member Icon (list 16 32 48 64)) Icon 0)
        Btn (if (member Btn (list 0 1 2 3 4 5 6)) Btn 0)
  )
  (setq res
    (vlax-invoke-method WSs "Popup"
      (if (not Msg) "" Msg)
      0
      (if (not Title) "" Title)
      (+ Btn Icon 4096)
    )
  )
  (vlax-release-object WSs)
  res
)
; =========================================================================================== ;
; Czyta plik tekstowy / Read a text file                                                      ;
;  Line [INT/nil] - INT = numer linii pliku / file line number                                ;
;                   nil = caly plik / all lines of file                                       ;
;  File [STR]     - nazwa pliku (krotka lub ze sciezka) / short or full path file name        ;
; ------------------------------------------------------------------------------------------- ;
; Zwraca / Return:                                                                            ;
;   nil = gdy Line = INT wieksze niz ilosc linii w pliku lub plik jest pusty /                ;
;         when Line = INT is greater then number of lines in file or file is empty            ;
;     0 = brak dostepu do pliku / no access to file                                           ;
;    -1 = nie znaleziono pliku / file not found                                               ;
;   STR = gdy Line = INT / when Line = INT                                                    ;
;  LIST = gdy Line = nil / when Line = nil                                                    ;
; ------------------------------------------------------------------------------------------- ;
; (cd:SYS_ReadFile nil "data.ini"), (cd:SYS_ReadFile 10 "acad.lin")                           ;
; =========================================================================================== ;
(defun cd:SYS_ReadFile (Line File / fn fd l res)
  (if (setq fn (findfile File))
    (if (setq fd (open fn "r"))
      (progn
        (if Line
          (progn
            (repeat Line (read-line fd))
            (setq res (read-line fd))
          )
          (progn
            (setq l T)
            (while l
              (setq res
                (cons
                  (setq l (read-line fd))
                  res
                )
              )
            )
            (setq res (reverse (cdr res)))
          )
        )
        (close fd)
      )
      (setq res 0)
    )
    (setq res -1)
  )
  res
)
; =========================================================================================== ;
; Odczyt/Zapis danych w rejestrze / Reads/Writes data to the registry                         ;
;  Key  [STR]     - klucz rejestru / registry key                                             ;
;  Name [STR]     - wartosc wpisu w rejestrze / value of a registry entry                     ;
;  Data [STR/nil] - nil = odczyt danych / read data                                           ;
;                   STR = dane do zapisu / data to write                                      ;
; =========================================================================================== ;
; (cd:SYS_RW "CADPL\\Tools\\MakeBlock" "Version" "1.0")                                       ;
; =========================================================================================== ;
(defun cd:SYS_RW (Key Name Data / loc)
  (setq loc (strcat "HKEY_CURRENT_USER\\Software\\" Key))
  (cond
    ( (and Name Data)
      (vl-registry-write loc Name Data)
    )
    ( Data
      (vl-registry-write loc nil Data)
    )
    ( T
      (vl-registry-read loc Name)
    )
  )
)
; =========================================================================================== ;
; Poczatek grupy operacji / Start of group operations                                         ;
; =========================================================================================== ;
(defun cd:SYS_UndoBegin ()
  (cd:SYS_UndoEnd)
  (vla-StartUndoMark (cd:ACX_ADoc))
)
; =========================================================================================== ;
; Koniec grupy operacji / End of group operations                                             ;
; =========================================================================================== ;
(defun cd:SYS_UndoEnd ()
  (if (= 8 (logand 8 (getvar "UNDOCTL")))
    (vla-EndUndoMark (cd:ACX_ADoc))
  )
)
; =========================================================================================== ;
; Zapisuje plik tekstowy / Writes the text file                                               ;
;  Name [STR]   - nazwa pliku ze sciezka / file name with path                                ;
;  Lst  [LIST]  - lista do zapisu / list to save                                              ;
;  Mode [T/nil] - tryb zapisu / save mode                                                     ;
;                 nil - nadpisywanie pliku / overwrite the file                               ;
;                 T   - dopisywanie do pliku / append to the file                             ;
; ------------------------------------------------------------------------------------------- ;
; (cd:SYS_WriteFile "d:\\Plik.txt" (list "linia 1" "linia 2" "linia 3") nil)                  ;
; =========================================================================================== ;
(defun cd:SYS_WriteFile (Name Lst Mode / fd)
  (if (setq fd (open Name (if Mode "a" "w")))
    (progn
      (foreach % Lst
        (write-line % fd)
      )
      (not (close fd))
    )
  )
)
; =========================================================================================== ;
; Wybiera zadane obiekty / Select a desired object                                            ;
;  Msg   [LIST]     - lista komunikatow / list of messages                                    ;
;  Obj   [LIST/nil] - LIST = lista zadanych obiektow / list of desired objects                ;
;                     nil  = wybiera dowolne obiekty / selects any objects                    ;
;  Init  [STR/nil]  - STR = slowa kluczowe / keywords                                         ;
;                     nil = bez slow kluczowych / no keywords                                 ;
;  Lock  [T/nil] - pomija obiekty na zamknietej warstwie / ignored objects in a locked layer  ;
;                  nil = tak / yes                                                            ;
;                  T   = nie / no                                                             ;
;  Enter [T/nil] - zakoncz prawy klik/spacja/enter / exit right click/space/enter             ;
;                  nil = nie / no                                                             ;
;                  T   = tak / yes                                                            ;
; ------------------------------------------------------------------------------------------- ;
; (cd:USR_EntSelObj                                                                           ;
;   (list                                                                                     ;
;     "\nWybierz blok [Opcje/Wyjdz]: " "Nalezy wskazac blok " "Nic nie wybrano "              ;
;     "To nie blok " "Obiekt na zamknietej warstwie "                                         ;
;   )                                                                                         ;
;   (list "INSERT") "Opcje Wyjdz" T nil                                                       ;
; )                                                                                           ;
; =========================================================================================== ;
(defun cd:USR_EntSelObj (Msg Obj Init Lock Enter / res)
  (while
    (progn
      (setvar "ERRNO" 0)
      (if Init (initget Init))
      (setq res (entsel (car Msg)))
      (cond
        ( (= (getvar "ERRNO") 7)
          (princ (cadr Msg))
        )
        ( (null res)
          (if Enter
            (not (princ (caddr Msg)))
            (princ (caddr Msg))
          )
        )
        ( (listp res)
          (if
            (if Obj
              (member (cdr (assoc 0 (entget (car res)))) Obj)
              T
            )
            (if Lock
              (if (vlax-write-enabled-p (car res))
                (not (setq res res))
                (princ (last Msg))
              )
              (not (setq res res))
            )
            (princ (cadddr Msg))
          )
        )
        ( (= (type res) (quote STR))
          nil
        )
        (T nil)
      )
    )
  )
  res
)
; =========================================================================================== ;
; Pobiera drugi naroznik prostokata / Get second corner of rectangle                          ;
;  Pt   [LIST]  - punkt bazowy / base point                                                   ;
;  Msg  [STR]   - komunikat do wyswietlenia / message to display                              ;
;  Mode [T/nil] - typ zwracanych danych / type of returned data                               ;
;                 nil = drugi naroznik / second corner                                        ;
;                 T   = lista wspolrzednych w kolejności: DL DP GP GL                         ;
;                       list of coordinates in order: LL LR UR UL                             ;
; ------------------------------------------------------------------------------------------- ;
; (cd:USR_GetCorner (getpoint) "\nWskaz drugi naroznik: " T)                                  ;
; =========================================================================================== ;
(defun cd:USR_GetCorner (Pt Msg Mode / loop res lst)
  (setq loop T)
  (while loop
    (and
      (setq res (getcorner Pt Msg))
      (not (equal (car Pt) (car res)))
      (not (equal (cadr Pt) (cadr res)))
      (setq loop nil)
    )
  )
  (if Mode
    (progn
      (setq lst
        (mapcar 
         '(lambda (%1)
            (mapcar (quote(eval %1)) (list Pt res))
          )
         '(car cadr)
        )
      )
      (mapcar
       '(lambda (%1)
          (mapcar
           '(lambda (%2 %3)
              (apply (quote(eval %2)) %3)
            )
            %1 lst
          )
        )
       '(
          (min min)
          (max min)
          (max max)
          (min max)
        )
      )
    )
    res
  )
)
; =========================================================================================== ;
; Pobiera slowa kluczowego od uzytkownika / Get a keyword from the user                       ;
;  Msg  [STR]  - tekst zapytania / query text                                                 ;
;  Keys [LIST] - lista mozliwych slow kluczowych / list of possible keywords                  ;
;  Def  [STR]  - domyslne slowo kluczowe / default keyword                                    ;
; ------------------------------------------------------------------------------------------- ;
; (cd:USR_GetKeyWord "\nUtworz blok" '("Anonimowy" "Nazwa") "Nazwa")                          ;
; =========================================================================================== ;
(defun cd:USR_GetKeyWord (Msg Keys Def / res key)
  (setq key
    (mapcar
      (function
        (lambda (%)
          (cd:STR_ReParse Keys %)
        )
      )
      (list " " "/")
    )
  )
  (initget (car key))
  (setq res
    (vl-catch-all-apply
      (quote getkword)
      (list
        (strcat
          Msg " [" (cadr key) "] <"
          (setq Def
            (if (not (member Def Keys))
              (car Keys)
              Def
            )
          )
          ">: "
        )
      )
    )
  )
  (if res
    (if (= (type res) (quote STR)) res)
    Def
  )
)
; =========================================================================================== ;
; Pobiera drugi naroznik prostokata / Get second corner of rectangle                          ;
;  Pt   [LIST]  - punkt bazowy / base point                                                   ;
;  Msg  [STR]   - tekst zapytania / query text                                                ;
;  Mode [T/nil] - typ zwracanych danych / type of returned data                               ;
;                 nil = drugi naroznik / second corner                                        ;
;                 T   = lista wspolrzednych w kolejnosci: DL DP GP GL                         ;
;                       list of coordinates in order: LL LR UR UL                             ;
; ------------------------------------------------------------------------------------------- ;
; (cd:USR_GetCorner (getpoint) "\nWskaz drugi naroznik: " T)                                  ;
; =========================================================================================== ;
(defun cd:USR_GetCorner (Pt Msg Mode / loop res lst)
  (setq loop T)
  (initget 32)
  (while loop
    (and
      (setq res (getcorner Pt Msg))
      (not (equal (car Pt) (car res)))
      (not (equal (cadr Pt) (cadr res)))
      (setq loop nil)
    )
  )
  (if Mode
    (progn
      (setq lst
        (mapcar 
         '(lambda (%1)
            (mapcar (quote (eval %1)) (list Pt res))
          )
         '(car cadr)
        )
      )
      (mapcar
       '(lambda (%1)
          (mapcar
           '(lambda (%2 %3)
              (apply (quote (eval %2)) %3)
            )
            %1 lst
          )
        )
       '(
          (min min)
          (max min)
          (max max)
          (min max)
        )
      )
    )
    res
  )
)
; =========================================================================================== ;
; Pobiera punkt od uzytkownika / Gets point from user                                         ;
;  Msg [STR]      - komunikat do wyswietlenia / message to display                            ;
;  Bit [INT/nil]  - bit sterujacy (patrz initget) / control bit (see initget)                 ;
;  Pt  [LIST/nil] - punkt bazowy / base point                                                 ;
; ------------------------------------------------------------------------------------------- ;
; (cd:USR_GetPoint "\nWskaz punkt: " 1 nil)                                                   ;
; (cd:USR_GetPoint "\nWskaz drugi punkt: " 32 '(5 10 0))                                      ;
; =========================================================================================== ;
(defun cd:USR_GetPoint (Msg Bit Pt / res)
  (if Bit (initget Bit))
  (if
    (listp
      (setq res
        (vl-catch-all-apply
          (quote getpoint)
          (if Pt
            (list Pt Msg)
            (list Msg)
          )
        )
      )
    )
    res
  )
)
; =========================================================================================== ;
; Czyta dane dodatkowe XDATA / Reads additional data XDATA                                    ;
;  Ename [ENAME]   - nazwa entycji / entity name                                              ;
;  App   [STR/nil] - nil = dla wszystkich aplikacji / for all applications                    ;
;                    STR = dla aplikacji App / for App application                            ;
; ------------------------------------------------------------------------------------------- ;
; (cd:XDT_GetXData (car (entsel)) "CADPL")                                                    ;
; =========================================================================================== ;
(defun cd:XDT_GetXData (Ename App)
  (if App
    (cadr (assoc -3 (entget Ename (list App))))
    (cdr (assoc -3 (entget Ename (list "*"))))
  )
)
; =========================================================================================== ;
; Dodaje dane dodatkowe XDATA / Adds additional data XDATA                                    ;
;  Ename [ENAME] - nazwa entycji / entity name                                                ;
;  App   [STR]   - nazwa aplikacji / application name                                         ;
;  Data  [LIST]  - lista danych / data list                                                   ;
; ------------------------------------------------------------------------------------------- ;
; (cd:XDT_PutXData (car (entsel)) "CADPL" '((1000 . "X") (1070 . 5)))                         ;
; =========================================================================================== ;
(defun cd:XDT_PutXData (Ename App Data)
  (regapp App)
  (entmod
    (append
      (entget Ename)
      (list (list -3 (cons App Data)))
    )
  )
)
; =========================================================================================== ;
; Usuwa dane dodatkowe XDATA / Removes additional data XDATA                                  ;
;  Ename [ENAME] - nazwa entycji / entity name                                                ;
;  App   [STR]   - nil = z wszystkich aplikacji / from all applications                       ;
;                  STR = z aplikacji App / from App application                               ;
; ------------------------------------------------------------------------------------------- ;
; (cd:XDT_RemoveXData (car (entsel)) "CADPL")                                                 ;
; =========================================================================================== ;
(defun cd:XDT_RemoveXData (Ename App)
  (if
    (and
      App
     (cd:XDT_GetXData Ename App)
    )
    (entmod (list (cons -1 Ename) (list -3 (list App))))
    (foreach %
      (mapcar
        (quote car)
        (cd:XDT_GetXData Ename nil)
      )
      (entmod (list (cons -1 Ename) (list -3 (list %))))
    )
  )
)
; =========================================================================================== ;
; (if
  ; (and
    ; (setq % (cd:SYS_ReadFile 2 "CADPL-Pack-v1.lsp"))
    ; (/= % -1)
  ; )
  ; (princ
    ; (strcat
      ; "\n-- CADPL-Pack-v1.lsp ("
      ; (substr % 6 10)
      ; ") - http://forum.cad.pl --"
    ; )
  ; )
  ; (princ "\n------- CADPL-Pack-v1.lsp - http://forum.cad.pl -------")
; )
; (setq % nil)
(princ)
