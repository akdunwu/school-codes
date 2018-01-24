function varargout = AutoAVG(varargin)
% AutoAVG MATLAB code for AutoAVG.fig
%      AutoAVG, by itself, creates a new AutoAVG or raises the existing
%      singleton*.
%
%      H = AutoAVG returns the handle to a new AutoAVG or the handle to
%      the existing singleton*.
%
%      AutoAVG('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in AutoAVG.M with the given input arguments.
%
%      AutoAVG('Property','Value',...) creates a new AutoAVG or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before AutoAVG_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to AutoAVG_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help AutoAVG

% Last Modified by GUIDE v2.5 15-Mar-2016 23:00:14

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @AutoAVG_OpeningFcn, ...
                   'gui_OutputFcn',  @AutoAVG_OutputFcn, ...
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


% --- Executes just before AutoAVG is made visible.
function AutoAVG_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to AutoAVG (see VARARGIN)

% Choose default command line output for AutoAVG
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes AutoAVG wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = AutoAVG_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

% --- Executes during object creation, after setting all properties.
function text1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


function edit15_Callback(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit15 as text
%        str2double(get(hObject,'String')) returns contents of edit15 as a double


% --- Executes during object creation, after setting all properties.
function edit15_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit16_Callback(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit16 as text
%        str2double(get(hObject,'String')) returns contents of edit16 as a double


% --- Executes during object creation, after setting all properties.
function edit16_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit11_Callback(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit11 as text
%        str2double(get(hObject,'String')) returns contents of edit11 as a double


% --- Executes during object creation, after setting all properties.
function edit11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit12_Callback(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit12 as text
%        str2double(get(hObject,'String')) returns contents of edit12 as a double


% --- Executes during object creation, after setting all properties.
function edit12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit13_Callback(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit13 as text
%        str2double(get(hObject,'String')) returns contents of edit13 as a double


% --- Executes during object creation, after setting all properties.
function edit13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit14_Callback(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit14 as text
%        str2double(get(hObject,'String')) returns contents of edit14 as a double


% --- Executes during object creation, after setting all properties.
function edit14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global H numNew modSign numNewMax numMax pathName fileName r3 r4 r5 r6 r7;
option=0;
if get(handles.radiobutton1,'value'),
    option=1;
    %MA
end
if modSign==0,
    warndlg('No file input!','Warning!')
elseif modSign>=1,
switch option
    case 1
        nInput=str2num(get(handles.edit10,'String'));
        nLess=floor(nInput);
        if nLess~=nInput,
            warndlg('Number of points should be int. Reset to closest int.','Notice');
        elseif nInput>=H,
            warndlg('Number of points out of limit.','Error');
        else
            %elder script
            nSide=nInput;
            
            
            %n-smooth
            H=numel(numNew(:,1));
            

            for j=1:H,
                a=min(j-1,nSide);
                b=min(H-j,nSide);
                numSmoothed(j,1)=numNew(j,1);
                numSmoothed(j,2)=sum(numNew(j-a:j+b,2))./numel(numNew(j-a:j+b,2));
                
            end


            
            %1.5n-smooth
            for j=1:H,
                a=min(j-1,floor(1.5*nSide));
                b=min(H-j,floor(1.5*nSide));
                numSmoothedMore(j,1)=numNew(j,1);
                numSmoothedMore(j,2)=sum(numNew(j-a:j+b,2))./numel(numNew(j-a:j+b,2));
            end

            
            diffNum=diff(numSmoothed);
            diffMore=diff(numSmoothedMore);
                       
            %The next part differentiates smoothed num(num_smoothed, and num_1.5nsmoothed).
            for j=1:H,
                numDiff(j,1)=numNew(j,1);
                numDiffMore(j,1)=numNew(j,1);

                if j==1,
                    numDiff(j,2)=diffNum(j,2)/diffNum(j,1);
                    numDiffMore(j,2)=diffMore(j,2)/diffMore(j,1);
                elseif j==H,
                    numDiff(j,2)=diffNum(H-1,2)/diffNum(H-1,1);
                    numDiffMore(j,2)=diffMore(H-1,2)/diffMore(H-1,1);
                else
                    numDiff(j,2)=.5.*(diffNum(j-1,2)./diffNum(j-1,1)+diffNum(j,2)./diffNum(j,1));
                    numDiffMore(j,2)=.5.*(diffMore(j-1,2)./diffMore(j-1,1)+diffMore(j,2)./diffMore(j,1));
                end
            end
            %elder script ends.
            

            
                axes(handles.axes2);
                plot(numSmoothed(:,1),numSmoothed(:,2),'-b',numSmoothedMore(:,1),numSmoothedMore(:,2),'-r');
                xlabel('t/s');ylabel('p/MPa');
                legend('n','1.5n',0);
                title('MA smoothing on n points per side')
                
                axes(handles.axes3);
                plot(numDiff(:,1),numDiff(:,2),'-b',numDiffMore(:,1),numDiffMore(:,2),'-r');
                xlabel('t/s');ylabel('dp/dt,MPa/s');
                legend('n','1.5n',0);
                title('Differentiation according to smoothing results')
                

                
                [r3,d4]=max(numDiff(:,2));
                d3=max(numDiffMore(:,2));
                r5=abs(100*(d3-r3)/r3);
                r4=numDiff(d4,1);
                %test.
                %s=sprintf([...
                    %'r3=' num2str(r3) '\n'...
                %   'd4=' num2str(d4) 
                %'\nd3=' num2str(d3) ...
                %   '\nr5=' num2str(r5) '\nr4=' num2str(r4)
                %]);
                %msgbox(s,'Here!');


                
                set(handles.text43,'String',[num2str(r3) ' MPa/s']);
                set(handles.text51,'String',[num2str(r4) ' s']);
                set(handles.text45,'String',['±' num2str(r5) ' %']); 
                %SL
                r6=1./(numNewMax-0.1)./3.*(4/3*pi/20).^(-1/3).*(0.1./(numNewMax)).^(1/1.4).*r3;
                sLMore=1./(numNewMax-0.1)./3.*(4/3*pi/20).^(-1/3).*(0.1./(numNewMax)).^(1/1.4).*d3;
                
                %error
                r7=100*abs(r6-sLMore)/r6;
                
                set(handles.text47,'String',[num2str(r6) ' dm/s']);
                set(handles.text49,'String',['±' num2str(r7) ' %']); 
                modSign=2;
                
                set(handles.edit16,'String','maxima.xls');
                set(handles.edit15,'String',pathName);
                set(handles.edit17,'String',fileName);
        end
    case 2,
        %polynomial fitting, abandoned.
    case 3,
        
end
end

% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton1
set(handles.radiobutton1,'value',1);
%set(handles.radiobutton2,'value',0);
%set(handles.radiobutton3,'value',0);


% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton2
set(handles.radiobutton1,'value',0);
set(handles.radiobutton2,'value',1);
set(handles.radiobutton3,'value',0);

% --- Executes on button press in radiobutton3.
function radiobutton3_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton3
set(handles.radiobutton1,'value',0);
set(handles.radiobutton2,'value',0);
set(handles.radiobutton3,'value',1);


function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit10_Callback(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit10 as text
%        str2double(get(hObject,'String')) returns contents of edit10 as a double


% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global H num numNew modSign tMin tMax tNewMax numMax numNewMax pathName fileName fileCat;
[fileName,pathName,fileCat]=uigetfile({'*.xls';'*.xlsx'},'Open XLS File');

%clear axes
axes(handles.axes1);
cla reset;
axes(handles.axes2);
cla reset;
axes(handles.axes3);
cla reset;


if fileName~=0,
    addpath(pathName);
    readFiles=dir([pathName fileName]);
    set(handles.text1,'String',[pathName fileName]);
    
    numInput=xlsread(readFiles.name,1);
    num=numInput(:,2:3);
    H=numel(num(:,2));
    numDiff=diff(num);
    
    clearvars readFiles num_Input;
     %output vars: num_input, num, num_diff, H.
    
    %The next part gets the minimal tick in the sensor, which would be an
    %instructive threshold.
    tick=1;
    for j=1:(H-1),
        if numDiff(j,2)==0,
            continue,
        elseif tick>=abs(numDiff(j,2)),
            tick=abs(numDiff(j,2));
        else
        end;
    end;
    clearvars j;
    %Tick gotten.
    
    %The next part crops original data to what is sensible, the rising
    %curve.
    numMax=-10;numMin=10;
    for j=1:H,
        if j>=2&&j<=H-1,
            %The next 'if' body sorts out non-continuent points that do not
            %qualify.
            if max(abs(num(H-j+1,2)-num(H-j,2)),abs(num(H-j+1,2)-num(H-j+2,2)))>50*tick,
                continue,           
            elseif num(H-j+1,2)>numMax,
            numMax=num(H-j+1,2);
            jMax=H-j+1;
            elseif numMax-num(H-j+1,2)<=3*tick,
            continue
            else
            end
        elseif j==1||j==H,
            if num(H-j+1,2)>numMax,
            numMax=num(H-j+1,2);
            jMax=H-j+1;
            elseif numMax-num(H-j+1,2)<=3*tick,
            continue
            else
            end
        end
    end
    tMax=num(jMax,1);
    clearvars j;
    
    for j=1:H,
        if j>=2&&j<=H-1,
            %The next 'if' body sorts out non-continuent points that do not
            %qualify.
            if max(abs(num(j,2)-num(j+1,2)),abs(num(j,2)-num(j-1,2)))>50*tick,
                continue,
            elseif num(j,2)<numMin,
            numMin=num(j,2);
            jMin=j;
            elseif num(j,2)-numMin<=3*tick,
            continue
            else
            end
            elseif j==1||j==H,
                if num(j,2)<numMin,
                    numMin=num(j,2);
                    jMin=j;
                elseif numMin-num(j,2)<=3*tick,
                    continue
                else
                end
        end
    end
    
    tMin=num(jMin,1);
    clearvars j tick numDiff;
    
    if tMin>tMax,
        warndlg('t_min>t_max','Notice!');
    else
    end
    %raises basis to 0 MPa.
    num=num(jMin:jMax,:); %crop
    H=numel(num(:,2));
    for j=1:H,
        num(j,2)=num(j,2)+0.16;
    end
    numMax=numMax+.16;
    numMin=numMin+.16;
    numNewMax=numMax;
    tNewMax=tMax;

    set(handles.text25,'String',['≥' num2str(tMin)]);
    set(handles.text26,'String',[num2str(numMin)]);
    set(handles.text27,'String',['≤' num2str(tMax)]);
    set(handles.text28,'String',[num2str(numMax)]);
    set(handles.edit11,'String',num2str(tMin));
    set(handles.edit12,'String',num2str(tMax));
    set(handles.text36,'String',[num2str(numMax) ' MPa']);
    set(handles.text41,'String',[num2str(tMax) ' s']);

    
    %Be here a functional body that eliminates abnormal points.
    k=1;
    for j=1:H,
       if num(j,2)>numMax||num(j,2)<numMin,
           % make sure jMin, jMax moves accordingly.
           num=[num(1:j-1,:);num(j+1:end,:)];
       else
       end
    end

    numNew=num;
    H=numel(num(:,2));
    clearvars k j;
    
    nIni=floor(H/5);
    set(handles.text16,'String',['≤' num2str(nIni)]);
    set(handles.edit10,'String','20');
    
    %draw on axes1.
    axes(handles.axes1);
    plot(num(:,1),num(:,2),'b-',tMin, numMin,'+r',tMax,numMax,'+r');
    
    %var 'modify' controls how modification is carried out according to
    %crop and changing numbers in smoothing.

    modSign=1;
end





% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global modSign fileCat;
if modSign>=1,
    
    new_f_handle=figure('visible','off');
    new_axes=copyobj(handles.axes1,new_f_handle); %axes1是GUI界面绘图的坐标系
    set(new_axes,'units','default','position','default');
    picPath=get(handles.edit15,'String');
    picName=[get(handles.edit17,'String')];
    
    if fileCat==1,
        picName=picName(1:end-4);
    else picName=picName(1:end-5);
    end
    
    picName=[picName '_diff.jpeg'];
    
    if ~picName
        warndlg('File name not indicated.','Notice');
        return
    else
        file=strcat(picPath,picName);
        print(new_f_handle,'-djpeg',file);
    end
    delete(new_f_handle);
    
    clearvars new_axes picName picPath file
    
else warndlg('Not available.','Notice');
end

% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global modSign fileCat;
if modSign>=1,
    %quote
    new_f_handle=figure('visible','off');
    new_axes=copyobj(handles.axes1,new_f_handle); %axes1是GUI界面绘图的坐标系
    set(new_axes,'units','default','position','default');
    
    picName=[get(handles.edit17,'String')]
    
    if fileCat==1,
        picName=picName(1:end-4);
    else picName=picName(1:end-5);
    end
    
    defaultName=[picName '_diff.jpeg'];
    
    [picName,picPath]=uiputfile({'*.jpeg'},'save picture as',defaultName);
    
    if ~picName
        return
    else
        file=strcat(picPath,picName);
        print(new_f_handle,'-djpeg',file);
    end
    delete(new_f_handle);
    clearvars new_axes picName picPath file
    %quote end
    
else warndlg('Not available.','Notice');
end

% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global modSign fileCat;
if modSign>=1,
    
    new_f_handle=figure('visible','off');
    new_axes=copyobj(handles.axes1,new_f_handle); %axes1是GUI界面绘图的坐标系
    set(new_axes,'units','default','position','default');
    picPath=get(handles.edit15,'String');
    picName=[get(handles.edit17,'String')]
    
    if fileCat==1,
        picName=picName(1:end-4);
    else picName=picName(1:end-5);
    end
    
    picName=[picName '_orig.jpeg'];
    
    if ~picName
        warndlg('File name not indicated.','Notice');
        return
    else
        file=strcat(picPath,picName);
        print(new_f_handle,'-djpeg',file);
    end
    delete(new_f_handle);
    
    clearvars new_axes picName picPath file
    
else warndlg('Not available.','Notice');
end


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global modSign fileCat;
if modSign>=1,
    %quote
    new_f_handle=figure('visible','off');
    new_axes=copyobj(handles.axes1,new_f_handle); %axes1是GUI界面绘图的坐标系
    set(new_axes,'units','default','position','default');
    
    picName=[get(handles.edit17,'String')]
    
    if fileCat==1,
        picName=picName(1:end-4);
    else picName=picName(1:end-5);
    end
    
    defaultName=[picName '_orig.jpeg'];
    
    [picName,picPath]=uiputfile({'*.jpeg'},'save picture as',defaultName);
    
    if ~picName
        return
    else
        file=strcat(picPath,picName);
        print(new_f_handle,'-djpeg',file);
    end
    delete(new_f_handle);
    clearvars new_axes picName picPath file
    %quote end
    
else warndlg('Not available.','Notice');
end


% --- Executes on button press in pushbutton14.
function pushbutton14_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global modSign fileCat;
if modSign>=1,
    
    new_f_handle=figure('visible','off');
    new_axes=copyobj(handles.axes1,new_f_handle); %axes1是GUI界面绘图的坐标系
    set(new_axes,'units','default','position','default');
    picPath=get(handles.edit15,'String');
    picName=[get(handles.edit17,'String')]
    
    if fileCat==1,
        picName=picName(1:end-4);
    else picName=picName(1:end-5);
    end
    
    picName=[picName '_smoo.jpeg'];
    
    if ~picName
        warndlg('File name not indicated.','Notice');
        return
    else
        file=strcat(picPath,picName);
        print(new_f_handle,'-djpeg',file);
    end
    delete(new_f_handle);
    
    clearvars new_axes picName picPath file
    
else warndlg('Not available.','Notice');
end

% --- Executes on button press in pushbutton15.
function pushbutton15_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global modSign fileCat;
if modSign>=1,
    %quote
    new_f_handle=figure('visible','off');
    new_axes=copyobj(handles.axes1,new_f_handle); %axes1是GUI界面绘图的坐标系
    set(new_axes,'units','default','position','default');
    
    picName=[get(handles.edit17,'String')]
    
    if fileCat==1,
        picName=picName(1:end-4);
    else picName=picName(1:end-5);
    end
    
    defaultName=[picName '_smoo.jpeg'];
    
    [picName,picPath]=uiputfile({'*.jpeg'},'save picture as',defaultName);
    
    if ~picName
        return
    else
        file=strcat(picPath,picName);
        print(new_f_handle,'-djpeg',file);
    end
    delete(new_f_handle);
    clearvars new_axes picName picPath file
    %quote end
    
else warndlg('Not available.','Notice');
end


function edit17_Callback(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit17 as text
%        str2double(get(hObject,'String')) returns contents of edit17 as a double


% --- Executes during object creation, after setting all properties.
function edit17_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global H num numNew modSign tMin tMax tNewMax numNewMax;

axes(handles.axes2);
cla reset;
axes(handles.axes3);
cla reset;
set(handles.text43,'String',' ');
set(handles.text51,'String',' ');
set(handles.text45,'String',' '); 
set(handles.text47,'String',' ');
set(handles.text49,'String',' '); 

switch modSign,
    case 0
        warndlg('No file input.','Warning!');
    case {1,2}
        tDown=str2num(get(handles.edit11,'String'));
        tUp=str2num(get(handles.edit12,'String'));
        
        jDown=find(num(:,1)>=tDown,1,'first');
        jUp=find(num(:,1)<=tUp,1,'last');
        tDown=num(jDown,1);
        tUp=num(jUp,1);
        
        
        if tDown>=tUp,
            warndlg('Input makes t_min>=t_max','Notice!');
        elseif tDown<tMin||tUp>tMax,
            warndlg('Input out of limit','Notice!');
        else
            numNew=num(jDown:jUp,:);
            H=numel(numNew(:,1));
                        
            axes(handles.axes1);
            plot(numNew(:,1),numNew(:,2),'b-',tDown, numNew(1,2),'+r',tUp,numNew(end,2),'+r');
            
            numNewMin=min(numNew(:,2));
            [numNewMax,jNewMax]=max(numNew(:,2));
            tNewMax=numNew(jNewMax,1);
            clearvars jNewMax;
            
            nIni=floor(H/5);
            set(handles.text16,'String',['≤' num2str(nIni)]);
            set(handles.edit10,'String','20');
            
  
            set(handles.text36,'String',[num2str(numNewMax) ' MPa']);
            set(handles.text41,'String',[num2str(tNewMax) ' s']);
            
        end
        
        
end


% --- Executes on button press in pushbutton16.
function pushbutton16_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global fileName pathName numMax numNewMax tNewMax tMax r3 r4 r5 r6 r7 fileCat;
                %test
                %warndlg('Here!');
                %test ends

xlsName=get(handles.edit16,'String');
E=exist([pathName xlsName]);
warning off MATLAB:xlswrite:AddSheet;

if fileCat==1,
    fileCount=fileName(1:(end-4));
else fileCount=fileName(1:(end-5));
end

fileCount=str2num(fileCount);
paraCount=get(handles.edit10,'String');
paraCount=str2num(paraCount);

rangeLeft=get(handles.edit11,'String');
rangeRight=get(handles.edit12,'String');
rangeWhole=['[ ' rangeLeft ' , ' rangeRight ' ]'];

if E==0,
        A={'#','number of points','range','t@max(p)','max(p)','t@max(dp/dt)','max(dp/dt)','Error(dp/dt)','SL','Error(SL)';...
            ' ',' ','[ s , s ]','s','MPa','s','MPa/s','%','dm/s','%'};
        B={fileCount,paraCount,rangeWhole,tNewMax,numNewMax,r4,r3,r5,r6,r7};
        xlswrite([pathName xlsName(1:end-4)],A,1,'A1');
        xlswrite([pathName xlsName(1:end-4)],B,1,'A3');
        
else
        n=xlsread([pathName xlsName],1);
        n=numel(n(:,1));
        n=3+n;
        B={fileCount,paraCount,rangeWhole,tNewMax,numNewMax,r4,r3,r5,r6,r7};
        xlswrite([pathName xlsName],B,1,['A' num2str(n)]);
end




% --- Executes on button press in pushbutton17.
function pushbutton17_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global fileName pathName numNewMax tNewMax r3 r4 r5 r6 r7 fileCat;
[xlsName,xlsPath]=uiputfile({'*.xls','*.xlsx'},'save data into',get(handles.edit16,'String'));
E=exist(xlsName);

warning off MATLAB:xlswrite:AddSheet;
if fileCat==1,
    fileCount=fileName(1:(end-4));
else fileCount=fileName(1:(end-5));
end

fileCount=str2num(fileCount);
paraCount=get(handles.edit10,'String');
paraCount=str2num(paraCount);

rangeLeft=get(handles.edit11,'String');
rangeRight=get(handles.edit12,'String');
rangeWhole=['[ ' rangeLeft ' , ' rangeRight ' ]'];

if E==0,

        A={'#','number of points','range','t@max(p)','max(p)','t@max(dp/dt)','max(dp/dt)','Error(dp/dt)','SL','Error(SL)';...
            ' ',' ','[ s , s ]','s','MPa','s','MPa/s','%','dm/s','%'};
        B={fileCount,paraCount,rangeWhole,tNewMax,numNewMax,r4,r3,r5,r6,r7};
        xlswrite([xlsPath xlsName(1:end-4)],A,1,'A1');
        xlswrite([xlsPath xlsName(1:end-4)],B,1,'A3');
        
else
        n=xlsread([xlsPath xlsName],1);
        n=numel(n(:,1));
        n=3+n;
        B={fileCount,paraCount,rangeWhole,tNewMax,numNewMax,r4,r3,r5,r6,r7};
        xlswrite([xlsPath xlsName],B,1,['A' num2str(n)]);
end
