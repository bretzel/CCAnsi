
set ROOT="A:\"


echo Libraries:
if NOT EXIST %ROOT%Libraries\NUL ( mkdir %ROOT%Libraries )
copy /Y "$(outdir)$(Targetname).lib" %ROOT%Libraries
echo "dll subdirectory:"
if NOT EXIST %ROOT%Dll\NUL ( mkdir %ROOT%Dll )

echo "$(outdir)$(Targetname).dll %ROOT%Dll:"
copy /Y "$(outdir)$(Targetname).dll" %ROOT%Dll
echo "includes subdir specific to $(projectname):"
if NOT EXIST %ROOT%include\$(TargetName)\NUL ( mkdir "%ROOT%include\$(TargetName)" )
copy /Y "$(ProjectDir)"*.h "%ROOT%include\$(TargetName)"


REM (example:) set SubDirs=(text lexer interpreter interpreter\lang interpreter\rt journal)

REM for %%D in %SubDirs% do (
REM   echo " Processing directory:$(projectdir)%%D:"
REM   if EXIST "$(ProjectDir)%%D" (
REM         echo %%D
REM        if NOT EXIST %ROOT%include\$(TargetName)\%%D\NUL ( 
REM              echo " Create sub dir %ROOT%include\$(TargetName)\%%D" 
REM              mkdir "%ROOT%include\$(TargetName)\%%D" 
REM        )
REM       echo "copy /Y $(ProjectDir)%%D\*.h %ROOT%include\$(TargetName)\%%D"
REM       copy /Y "$(ProjectDir)%%D\"*.h "%ROOT%include\$(TargetName)\%%D"
REM )
REM )

REM echo "Binary Excutable Destination: %ROOT%Applications"
REM if NOT EXIST %ROOT%Applications\NUL ( mkdir %ROOT%Applications )
REM copy /Y "$(outdir)$(Targetname).exe" %ROOT%Applications
REM echo "Done"
