function varargout = arayuz(varargin)
% ARAYUZ MATLAB code for arayuz.fig
%      ARAYUZ, by itself, creates a new ARAYUZ or raises the existing
%      singleton*.
%
%      H = ARAYUZ returns the handle to a new ARAYUZ or the handle to
%      the existing singleton*.
%
%      ARAYUZ('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ARAYUZ.M with the given input arguments.
%
%      ARAYUZ('Property','Value',...) creates a new ARAYUZ or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before arayuz_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to arayuz_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help arayuz

% Last Modified by GUIDE v2.5 15-Apr-2014 14:44:39

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @arayuz_OpeningFcn, ...
                   'gui_OutputFcn',  @arayuz_OutputFcn, ...
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


% --- Executes just before arayuz is made visible.
function arayuz_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to arayuz (see VARARGIN)

% Choose default command line output for arayuz
handles.output = hObject;
handles.box = [0 0 0;0 0 0;0 0 0];

% Update handles structure
guidata(hObject, handles);



% UIWAIT makes arayuz wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = arayuz_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
handles.box = oyna(handles.box,1,1);
set(hObject,'String','X','enable','off');

%kullanýcý oynadýktan sonra oyun bitip bitmediðini kontrol ediyoruz
sonuc = kimkazandi(handles.box);
%eðer oyun bitmemiþse
if sonuc == 0 
   %matriste oynanmamýþ elemanlarý buluyoruz.
   rastgele = boselemanlar(handles.box);
   %bilgisayara random oynatýyoruz
   handles.box = oyna(handles.box,rastgele,2);
   
   %bilgisayarýn oynadýðý butonun yazýsýný deðiþtirip, disable ediyoruz
   butondegeri = sprintf('pushbutton%d',rastgele);
   set(handles.(butondegeri),'String','O','enable','off');
   %bilgisayar oynadýktan sonra tekrar oyunun bitip bitmediðini kontrol
   %ediyoruz
   kimkazandi(handles.box);
end
disp(handles.box);
%deðiþtirdiðimiz deðiþkenleri kaydediyoruz
guidata(hObject,handles);


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
handles.box = oyna(handles.box,2,1);
set(hObject,'String','X','enable','off');
sonuc = kimkazandi(handles.box);
if sonuc == 0 
   rastgele = boselemanlar(handles.box);
   handles.box = oyna(handles.box,rastgele,2);
   butondegeri = sprintf('pushbutton%d',rastgele);
   set(handles.(butondegeri),'String','O','enable','off');
   kimkazandi(handles.box);
end
disp(handles.box);
guidata(hObject,handles);

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
handles.box = oyna(handles.box,3,1);
set(hObject,'String','X','enable','off');
sonuc = kimkazandi(handles.box);
if sonuc == 0 
   rastgele = boselemanlar(handles.box);
   handles.box = oyna(handles.box,rastgele,2);
   butondegeri = sprintf('pushbutton%d',rastgele);
   set(handles.(butondegeri),'String','O','enable','off');
   kimkazandi(handles.box);
end
disp(handles.box);
guidata(hObject,handles);

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
handles.box = oyna(handles.box,4,1);
set(hObject,'String','X','enable','off');
sonuc = kimkazandi(handles.box);
if sonuc == 0 
   rastgele = boselemanlar(handles.box);
   handles.box = oyna(handles.box,rastgele,2);
   butondegeri = sprintf('pushbutton%d',rastgele);
   set(handles.(butondegeri),'String','O','enable','off');
   kimkazandi(handles.box);
end
disp(handles.box);
guidata(hObject,handles);

% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
handles.box = oyna(handles.box,5,1);
set(hObject,'String','X','enable','off');
sonuc = kimkazandi(handles.box);
if sonuc == 0 
   rastgele = boselemanlar(handles.box);
   handles.box = oyna(handles.box,rastgele,2);
   butondegeri = sprintf('pushbutton%d',rastgele);
   set(handles.(butondegeri),'String','O','enable','off');
   kimkazandi(handles.box);
end
disp(handles.box);
guidata(hObject,handles);

% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
handles.box = oyna(handles.box,6,1);
set(hObject,'String','X','enable','off');
sonuc = kimkazandi(handles.box);
if sonuc == 0 
   rastgele = boselemanlar(handles.box);
   handles.box = oyna(handles.box,rastgele,2);
   butondegeri = sprintf('pushbutton%d',rastgele);
   set(handles.(butondegeri),'String','O','enable','off');
   kimkazandi(handles.box);
end
disp(handles.box);
guidata(hObject,handles);

% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
handles.box = oyna(handles.box,7,1);
set(hObject,'String','X','enable','off');
sonuc = kimkazandi(handles.box);
if sonuc == 0 
   rastgele = boselemanlar(handles.box);
   handles.box = oyna(handles.box,rastgele,2);
   butondegeri = sprintf('pushbutton%d',rastgele);
   set(handles.(butondegeri),'String','O','enable','off');
   kimkazandi(handles.box);
end
disp(handles.box);
guidata(hObject,handles);

% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
handles.box = oyna(handles.box,8,1);
set(hObject,'String','X','enable','off');
sonuc = kimkazandi(handles.box);
if sonuc == 0 
   rastgele = boselemanlar(handles.box);
   handles.box = oyna(handles.box,rastgele,2);
   butondegeri = sprintf('pushbutton%d',rastgele);
   set(handles.(butondegeri),'String','O','enable','off');
   kimkazandi(handles.box);
end
disp(handles.box);
guidata(hObject,handles);

% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
handles.box = oyna(handles.box,9,1);
set(hObject,'String','X','enable','off');
sonuc = kimkazandi(handles.box);
if sonuc == 0 
   rastgele = boselemanlar(handles.box);
   handles.box = oyna(handles.box,rastgele,2);
   butondegeri = sprintf('pushbutton%d',rastgele);
   set(handles.(butondegeri),'String','O','enable','off');
   kimkazandi(handles.box);
end
disp(handles.box);
guidata(hObject,handles);


% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close all;

% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.pushbutton1,'String',' ','enable','on');
set(handles.pushbutton2,'String',' ','enable','on');
set(handles.pushbutton3,'String',' ','enable','on');
set(handles.pushbutton4,'String',' ','enable','on');
set(handles.pushbutton5,'String',' ','enable','on');
set(handles.pushbutton6,'String',' ','enable','on');
set(handles.pushbutton7,'String',' ','enable','on');
set(handles.pushbutton8,'String',' ','enable','on');
set(handles.pushbutton9,'String',' ','enable','on');
handles.box = [0 0 0;0 0 0;0 0 0];
guidata(hObject,handles);
