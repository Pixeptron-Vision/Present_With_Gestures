function varargout = Automatic_PPT(varargin)
% AUTOMATIC_PPT MATLAB code for Automatic_PPT.fig
%      AUTOMATIC_PPT, by itself, creates a new AUTOMATIC_PPT or raises the existing
%      singleton*.
%
%      H = AUTOMATIC_PPT returns the handle to a new AUTOMATIC_PPT or the handle to
%      the existing singleton*.
%
%      AUTOMATIC_PPT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in AUTOMATIC_PPT.M with the given input arguments.
%
%      AUTOMATIC_PPT('Property','Value',...) creates a new AUTOMATIC_PPT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Automatic_PPT_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Automatic_PPT_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Automatic_PPT

% Last Modified by GUIDE v2.5 26-Jul-2016 19:58:20

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Automatic_PPT_OpeningFcn, ...
                   'gui_OutputFcn',  @Automatic_PPT_OutputFcn, ...
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
 


% --- Executes just before Automatic_PPT is made visible.
function Automatic_PPT_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Automatic_PPT (see VARARGIN)

% Choose default command line output for Automatic_PPT
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Automatic_PPT wait for user response (see UIRESUME)
% uiwait(handles.figure1);
Init=imread('APP.bmp');
handles.video=0;
handles.camID=1;
handles.se=strel('square',3);
handles.se1=strel('rectangle',[3 6]);
handles.se2=strel('disk',3);
handles.sd=strel('rectangle',[9 5]);
handles.sd1=strel('square',5);
handles.sd2=strel('square',6);
guidata(hObject, handles);
imshow(Init,'Parent',handles.axes1);
imshow(Init,'Parent',handles.axes2);
% --- Outputs from this function are returned to the command line.
function varargout = Automatic_PPT_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
global Cr_min Cr_max V_min V_max BWT
Cr_min=170;V_min=0;BWT=0.4;
Cr_max=180;V_max=0;
% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[fileName,folderPath]=uigetfile({'*.ppt'},'File selector');
File_Path=fullfile(folderPath,fileName);
set(handles.text2,'String',File_Path);
h = actxserver('PowerPoint.Application');
%h.Visible = 1; % make the window show up
h.Presentations.Open(File_Path);
h.ActivePresentation.SlideShowSettings.Run; 
handles.h=h;
guidata(hObject,handles);
% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton1
set(handles.radiobutton2,'Value',0);
set(handles.edit1,'Enable','off');
set(handles.edit2,'Enable','off');
set(handles.edit6,'Enable','off');

% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton2
set(handles.radiobutton1,'Value',0);
set(handles.edit1,'Enable','on');
set(handles.edit2,'Enable','on');
set(handles.edit6,'Enable','on');
%set(handles.edit3,'Enable','on');
%set(handles.edit4,'Enable','on');
% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double
global Cr_min
    Cr_min=str2double(get(hObject,'String'));
    set(handles.edit1,'String',Cr_min);


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double
    global Cr_max
    Cr_max=str2double(get(hObject,'String'));    
    set(handles.edit2,'String',Cr_max);    

% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double
global V_min
set(handles.edit3,'String',V_min);

% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double
global V_max;
set(handles.edit4,'String',V_max);

% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
msgbox('Follow these instructions: 1. Browse and select your ppt. 2. Select the mode 3. Default mode takes CamID=1, BW=.04,Cr_min=140, Cr_max=170 4.Start the Preview 5.Minimize the app and go to the slideshow 5.If any error occurs Stop the preview and again start 6. Camera can be reset  ','Help','help');


% --- Executes during object creation, after setting all properties.
function text2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns call


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double
camID=str2double(get(hObject,'String'));
set(handles.edit5,'String',camID);
handles.camID=camID;
guidata(hObject,handles);
% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    global Cr_min Cr_max V_min V_max BWT
handles.video=1;
vid=videoinput('winvideo',handles.camID,'YUY2_640x480');
src = getselectedsource(vid);
set(vid,'ReturnedColorspace','rgb')
vid.FramesPerTrigger =1;
triggerconfig(vid,'manual');
vid.TriggerRepeat = Inf;
handles.vid=vid;
handles.src=src;
%x=0;name='sample_two';
start(vid);
    while(true(handles.video==1))
          guidata(hObject,handles);
          trigger(vid)
          pic=getsnapshot(vid);
          imshow(pic,'Parent',handles.axes1);    
          Cr=skin_ycbcr(pic,Cr_min,Cr_max);        
          [Vs,V_min,V_max]=skin_yuv(pic);
          set(handles.edit3,'String',V_min);
          set(handles.edit4,'String',V_max);
          or=(Vs | Cr);
          and=(Vs & Cr);
          Orm=bwmorph(or,'majority');%imtool(Orm)
          orm=medfilt2(Orm,[3 3]);%imtool(or1)
          Re=((and+orm)/2);%imtool(Re);
          Bw=im2bw(Re,BWT);
          cl=imclose(Bw,handles.se);
          cl=imdilate(cl,handles.sd); 
          cl=imdilate(cl,handles.sd); 
          cl=imfill(cl,'holes');
          new=cl;new(:,:)=0;
          new(50:430,50:590)=cl(50:430,50:590);                                       
          value=sum(sum(new));
          set(handles.text1,'String',value);
          if value > 20000 && value< 36500
             bob=BiggestBlob(new);
             imshow(bob,'Parent',handles.axes2);
             load Net_10f_hl_10_12;
             area=regionprops(bob,'Area');
             perimeter=regionprops(bob,'Perimeter');
             extent=regionprops(bob,'Extent');
             solidity=regionprops(bob,'Solidity');    
             majoraxis=regionprops(bob,'MajorAxisLength');
             minoraxis=regionprops(bob,'MinorAxisLength');
             orientation=regionprops(bob,'Orientation'); 
             boundingbox=regionprops(bob,'BoundingBox');
             ratio=majoraxis.MajorAxisLength/minoraxis.MinorAxisLength;
             result=Net_7features([area.Area,perimeter.Perimeter,extent.Extent,solidity.Solidity,majoraxis.MajorAxisLength,minoraxis.MinorAxisLength,orientation.Orientation,boundingbox.BoundingBox(3),boundingbox.BoundingBox(4),ratio]');
             if result > 0                
               stats = regionprops(bob,'Centroid');
               centers = stats.Centroid;
               diameters = mean([majoraxis.MajorAxisLength minoraxis.MinorAxisLength],2);
               radii = diameters/2;
               f=Count_SC(bob,centers(1),centers(2),radii);                  
               set(handles.text1,'String',strcat('F:',num2str(f),'::',num2str(result),';Val:',num2str(value)));                                         
               if f ==1 && true(handles.h)
                    handles.h.SlideShowWindows.Item(1).View.Next;  
                    beep
                    pause on
                    pause(2)
               end
             elseif result < 0                  
                  stats = regionprops(bob,'Centroid');
                  centers = stats.Centroid;
                  diameters = mean([majoraxis.MajorAxisLength minoraxis.MinorAxisLength],2);
                  radii = diameters/2;
                  f=Count_SC(bob,centers(1),centers(2),radii);
                  set(handles.text1,'String',strcat('F:',num2str(f),'::',num2str(result),';Val:',num2str(value)));                                         
                  if f==2
                    handles.h.SlideShowWindows.Item(1).View.Previous;  
                    beep
                    pause on
                    pause(2)
                  end
             end
          end              
    end

% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
imaqreset
clear all;
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

if handles.video==1
vid=handles.vid;
stop(vid);
delete(vid);
handles.video= 0;
guidata(hObject,handles);
end
if isfield(handles,'h')
handles.h.SlideShowWindows.Item(1).View.Exit;
handles.h.ActivePresentation.Close;
end
clear all;close all;


% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

    stop(handles.vid);
    delete(handles.vid);
    handles.video=0;
    guidata(hObject,handles);
   


% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double
global BWT
    BWT=str2double(get(hObject,'String'));
    set(handles.edit6,'String',BWT);

% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
