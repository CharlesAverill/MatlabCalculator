function varargout = calculator(varargin)
% CALCULATOR MATLAB code for calculator.fig
%      CALCULATOR, by itself, creates a new CALCULATOR or raises the existing
%      singleton*.
%
%      H = CALCULATOR returns the handle to a new CALCULATOR or the handle to
%      the existing singleton*.
%
%      CALCULATOR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CALCULATOR.M with the given input arguments.
%
%      CALCULATOR('Property','Value',...) creates a new CALCULATOR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before calculator_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to calculator_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help calculator

% Last Modified by GUIDE v2.5 21-Nov-2020 23:06:12

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @calculator_OpeningFcn, ...
                   'gui_OutputFcn',  @calculator_OutputFcn, ...
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


% --- Executes just before calculator is made visible.
function calculator_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no outputField args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to calculator (see VARARGIN)

% Choose default command line outputField for calculator
handles.outputField = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes calculator wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = calculator_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning outputField args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line outputField from handles structure
varargout{1} = handles.outputField;



function xArg_Callback(hObject, eventdata, handles)
% hObject    handle to xArg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of xArg as text
%        str2double(get(hObject,'String')) returns contents of xArg as a double


% --- Executes during object creation, after setting all properties.
function xArg_CreateFcn(hObject, eventdata, handles)
% hObject    handle to xArg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function yArg_Callback(hObject, eventdata, handles)
% hObject    handle to yArg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of yArg as text
%        str2double(get(hObject,'String')) returns contents of yArg as a double


% --- Executes during object creation, after setting all properties.
function yArg_CreateFcn(hObject, eventdata, handles)
% hObject    handle to yArg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in addButton.
function addButton_Callback(hObject, eventdata, handles)
% hObject    handle to addButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
xArg = str2num(get(handles.xArg, "string"));
yArg = str2num(get(handles.yArg, "string"));
output = xArg + yArg;
set(handles.output, "string", output);

% --- Executes on button press in subtractButton.
function subtractButton_Callback(hObject, eventdata, handles)
% hObject    handle to subtractButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
xArg = str2num(get(handles.xArg, "string"));
yArg = str2num(get(handles.yArg, "string"));
output = xArg - yArg;
set(handles.output, "string", output);

% --- Executes on button press in multiplyButton.
function multiplyButton_Callback(hObject, eventdata, handles)
% hObject    handle to multiplyButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
xArg = str2num(get(handles.xArg, "string"));
yArg = str2num(get(handles.yArg, "string"));
output = xArg * yArg;
set(handles.output, "string", output);

% --- Executes on button press in divideButton.
function divideButton_Callback(hObject, eventdata, handles)
% hObject    handle to divideButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
xArg = str2num(get(handles.xArg, "string"));
yArg = str2num(get(handles.yArg, "string"));
if yArg == 0
    msgbox("ERROR: Divide by 0");
else
    output = xArg / yArg;
    set(handles.output, "string", output);
end
% --- Executes on button press in powerButton.
function powerButton_Callback(hObject, eventdata, handles)
% hObject    handle to powerButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
xArg = str2num(get(handles.xArg, "string"));
yArg = str2num(get(handles.yArg, "string"));
if xArg == 0 && yArg == 0
    msgbox("ERROR: Divide by 0");
else
    output = power(xArg, yArg);
    set(handles.output, "string", output);
end

% --- Executes on button press in moduloButton.
function moduloButton_Callback(hObject, eventdata, handles)
% hObject    handle to moduloButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
xArg = str2num(get(handles.xArg, "string"));
yArg = str2num(get(handles.yArg, "string"));
output = mod(xArg, yArg);
set(handles.output, "string", output);


% --- Executes on button press in output.
function output_Callback(hObject, eventdata, handles)
% hObject    handle to output (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ans = get(handles.output, "string");
set(handles.xArg, "string", ans);
set(handles.yArg, "string", "");
set(handles.output, "string", "");