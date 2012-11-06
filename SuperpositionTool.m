function varargout = SuperpositionTool(varargin)
% SUPERPOSITIONTOOL M-file for SuperpositionTool.fig
%      SUPERPOSITIONTOOL, by itself, creates a new SUPERPOSITIONTOOL or raises the existing
%      singleton*.
%
%      H = SUPERPOSITIONTOOL returns the handle to a new SUPERPOSITIONTOOL or the handle to
%      the existing singleton*.
%
%      SUPERPOSITIONTOOL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SUPERPOSITIONTOOL.M with the given input arguments.
%
%      SUPERPOSITIONTOOL('Property','Value',...) creates a new SUPERPOSITIONTOOL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before SuperpositionTool_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to SuperpositionTool_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help SuperpositionTool

% Last Modified by GUIDE v2.5 13-Sep-2012 10:59:13

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @SuperpositionTool_OpeningFcn, ...
                   'gui_OutputFcn',  @SuperpositionTool_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before SuperpositionTool is made visible.
function SuperpositionTool_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to SuperpositionTool (see VARARGIN)

% Choose default command line output for SuperpositionTool
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% first plot
plotSomething(handles);

% UIWAIT makes SuperpositionTool wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = SuperpositionTool_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on slider movement.
function a1Slide_Callback(hObject, eventdata, handles)
% hObject    handle to a1Slide (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
a=get(handles.a1Slide,'Value');
ast=num2str(a);
set(handles.a1Txt,'String',ast);
plotSomething(handles);

% --- Executes during object creation, after setting all properties.
function a1Slide_CreateFcn(hObject, eventdata, handles)
% hObject    handle to a1Slide (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function a1Txt_Callback(hObject, eventdata, handles)
% hObject    handle to a1Txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of a1Txt as text
%        str2double(get(hObject,'String')) returns contents of a1Txt as a double
ast=get(handles.a1Txt,'String');
a=str2double(ast);
set(handles.a1Slide,'Value',a);
plotSomething(handles);

% --- Executes during object creation, after setting all properties.
function a1Txt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to a1Txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function a2Txt_Callback(hObject, eventdata, handles)
% hObject    handle to a2Txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of a2Txt as text
%        str2double(get(hObject,'String')) returns contents of a2Txt as a double
ast=get(handles.a2Txt,'String');
a=str2double(ast);
set(handles.a2Slide,'Value',a);
plotSomething(handles);

% --- Executes during object creation, after setting all properties.
function a2Txt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to a2Txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function a2Slide_Callback(hObject, eventdata, handles)
% hObject    handle to a2Slide (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
a=get(handles.a2Slide,'Value');
ast=num2str(a);
set(handles.a2Txt,'String',ast);
plotSomething(handles);

% --- Executes during object creation, after setting all properties.
function a2Slide_CreateFcn(hObject, eventdata, handles)
% hObject    handle to a2Slide (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function phiSlide_Callback(hObject, eventdata, handles)
% hObject    handle to phiSlide (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
a=get(handles.phiSlide,'Value');
ast=num2str(a);
set(handles.phiTxt,'String',ast);
plotSomething(handles);

% --- Executes during object creation, after setting all properties.
function phiSlide_CreateFcn(hObject, eventdata, handles)
% hObject    handle to phiSlide (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function phiTxt_Callback(hObject, eventdata, handles)
% hObject    handle to phiTxt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of phiTxt as text
%        str2double(get(hObject,'String')) returns contents of phiTxt as a double
ast=get(handles.phiTxt,'String');
a=str2double(ast);
set(handles.phiSlide,'Value',a);
plotSomething(handles);

% --- Executes during object creation, after setting all properties.
function phiTxt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to phiTxt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in plotMenu.
function plotMenu_Callback(hObject, eventdata, handles)
% hObject    handle to plotMenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns plotMenu contents as cell array
%        contents{get(hObject,'Value')} returns selected item from plotMenu
plotSomething(handles);

% --- Executes during object creation, after setting all properties.
function plotMenu_CreateFcn(hObject, eventdata, handles)
% hObject    handle to plotMenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
 
% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function pleftTxt_Callback(hObject, eventdata, handles)
% hObject    handle to pleftTxt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of pleftTxt as text
%        str2double(get(hObject,'String')) returns contents of pleftTxt as a double


% --- Executes during object creation, after setting all properties.
function pleftTxt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pleftTxt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
