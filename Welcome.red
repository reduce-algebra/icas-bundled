%%%%%%%%%%%%%%%%%%%%%%
%               WELCOME TO iCAS
%
% The core of iCAS is based on REDUCE, a
% powerful CAS system with comparable
% capabilities to Maple and Mathematica
% with a track record spanning over 40 years 
% in academic and research institutions.
% iCAS brings all the capabilities of 
% REDUCE and the embedded gnuplot
% plotting engine to your iPhone or iPod
% touch.
%
% Best of all, iCAS is entirely self-contained
% and runs natively on your iPhone or iPod
% touch so no internet connection is required
% to harness its power.
%
% This file is written as a short tutorial
% to walk you through some simple examples
% to become familiar with the app and help
% you get started.
%
%%%%%%%%%%%%%%%%%%%%%%
%                    BASIC USAGE
%
% Enter the desired command or operation
% and press return to execute the command or
% operation. Try it by tapping to the right of
% the semicolon on the line below and then
% tapping return.

6 * 7;

% If fancy output is enabled, the results can be
% viewed in a typeset format by tapping a 
% translucent button that appears on the upper
% right hand corner of this view when there is
% fancy output or when iCAS detects LaTeX
% content. The output view can be zoomed
% using the standard pinch gestures.
%
% Fancy output can be globally enabled with
% the "Create Fancy Output" setting or on a
% case by case basis using the fancy switch.
% If fancy output is enabled and the
% "Automatically Show" option is enabled,
% iCAS will automatically show the rendered
% fancy output when it is generated.
%
% Execute the following lines (i.e. place the
% cursor to the right of the semicolon and tap
% the return key) to see the difference
% between plain and fancy output.

df(x^x,x);
on fancy;
df(x^x,x);

% Notice the pseudo-LaTeX output format
% and the "TeX" translucent button that
% appeared on the top right of the window.
% Tapping the "TeX" button generates a 
% typeset version of the file that can be 
% optionally emailed as a LaTeX source file 
% for publishing, presentation, and/or sharing
% with colleagues.
%
% Fancy output works best with a line length
% of 80 or more.  iCAS sets the linelength to
% the optimal width for plain output when a
% CAS session is started based on the font
% style and size settings.  Therefore, we
% recommend setting the linelength to 80
% when using fancy output.  iCAS provides a
% convenience command called fancy_output
% that sets the fancy switch and sets the
% linelength to 80 characters.  Note that
% turning the fancy switch off does not
% affect the linelength so you may need to
% set the linelength to an appropriate value
% after using fancy output.  The linelength
% is reset when a new CAS session is
% initiated (e.g. by using either the "bye"
% or "quit" command).
%
%%%%%%%%%%%%%%%%%%%%%%
%                 KEYBOARD USAGE
%
% By default, iCAS uses the system keyboard.
% A user configurable macro keyboard and a
% numerical keyboard are also optionally
% available.  The enabled keyboards and the
% default keyboard can be configured in the
% app Settings.  The app Settings can be
% accessed either through the global Settings
% app or by tapping the Settings button on
% the top right corner of the screen.
%
% To switch between the enabled keyboards,
% use a horizontal swipe gesture in the text 
% area when a keyboard is active.
%
% To dismiss the keyboard, tap the center of 
% the top bar where "Welcome" is currently 
% displayed) or tap the "dismiss" keyboard
% button above the keyboard if the "Arrow
% Keys" setting is enabled.  This restores
% access to the toolbar butons.
%
% By default, tapping a button other than
% the "CLEAR" or "BATCH" buttons on the
% macro keyboard causes the active keyboard
% to automatically switch to the system
% keyboard to allow entry of variables,
% parameters, arguments, etc.  This behavior
% can be enabled/disabled using the "Auto 
% Hide Macros" setting.
% 
% Tap the clear line below to active the 
% keyboard and swipe from right to left to 
% reveal the macro keyboard.  Now tap the 
% "integral" button.



% Now double tap "function" and replace it
% with some function of x, say x, to keep it
% quick and simple.  Then execute the line.
% Unless you've disabled fancy output, iCAS
% will have output a pseudo-LaTeX output 
% that you can view by tapping the "TeX" 
% button at the top right. Go ahead and tap it
% to see the output in the LaTeX viewer.
%
% Tapping return on the system keyboard
% can be configured to automatically switch
% to the macro keyboard to enable the entry
% of other CAS commands.  This is controlled
% by the "Return Shows Macros" setting.
%
% To edit the contents of a macro button, tap
% and hold down the button for 1 second or
% longer.
%
% Instances of \n in macros get automatically
% converted into new lines.  This makes it
% possible to create macros with text
% spanning multiple lines.
%
% Assigning \r to a macro button turns that
% button into a silent return key.  That is,
% it inserts a new line character without
% processing the contents of the line.
%
% Assigning \b to a macro button turns that
% button into a backspace/delete key.
%
% Assigning \c to a macro button turns that
% button into a clear key.
%
% Assigning \cb to a macro button turns that
% button into a clear batch output key.  The
% macro has no effect if there is no batch
% output.
%
% The cursor placement within a macro can be
% optionally specified by including \^ in
% the macro where the cursor should be after
% the macro is inserted.  For example, the
% macro “(\^)” will cause the cursor to be
% placed between the two parentheses.
%
% The macro buttons can be optionally
% labelled by including the desired label 
% surrounded by the # character in the macro 
% text.  For example, if a macro contains 
% #LABEL# in its definition, the button will 
% display LABEL in a larger font instead of 
% the actual contents of the macro.
% 
% The following labels (in uppercase) are
% automatically displayed with the 
% mathematical symbol for the corresponding 
% CAS operator/constant: DF, E, I, 
% INFINITY, INT, PI, PROD, and SUM.
%
% The default integral, derivative, pi, and
% infinity buttons are examples that utilize
% these features.
%
%%%%%%%%%%%%%%%%%%%%%%
%                       PLOTTING
%
% iCAS includes a full implementation of
% gnuplot that can be accessed in CAS mode
% using the gnuplot package or directly in
% plot mode (more on modes later).  By 
% default, iCAS loads the gnuplot package so 
% unless you changed the "Always Load
% gnuplot" setting, it should already be
% loaded.
%
% By default, iCAS automatically shows
% newly generated or updated plots.  This
% behavior can be disabled in the global
% settings.
%
% Plots can be magnified using the standard 
% pinch gestures. iCAS supports landscape
% orientations in all its views so plots can be
% viewed in either portrait or landscape
% orientations. Execute the line below to
% see plotting in action and use the pinch
% gesture to zoom in/out and swipe gestures
% to pan around the plot while zoomed in.

plot(sin(x));

% Unless specified, iCAS uses the title "iCAS 
% Plot" and the file name "CASPlot" for plot
% files.  The default plot title can be changed
% in the app Settings and can also be set
% on a per plot basis.  Execute the below line
% to see an example.

plot(cos(x), title="cos(x)", output="cos(x)");

% Plot files can be accessed by tapping the
% "folder" button on the right side of the 
% bottom toolbar. Go ahead and dismiss the
% keyboard (tap "Welcome" above) and tap
% the button now.
%
% The files organizer picker has four wheels.
% One for text files such as this one, one for
% plot files, one for REDUCE inout files, and
% one for macro keyboard files.  Aim the left
% picker wheel to view the corresponding
% files.  Files can be deleted, emailed, or
% viewed/selected with the buttons above the
% picker wheels.
%
% The displayed contents can be emailed,
% copied, or printed by tapping the "send"
% button button on the right side of the bottom
% toolbar.  Text files are emailed using the
% active font style.  The ont style, font size,
% and colors can be configured using the styles
% panel revealed by tapping the "styles" button
% on the left of the bottom toolbar.  The
% available font styles are "Helvetica",
% "Times", and "Courier".  Although not the
% prettiest, Courier can be optimal as it is
% the closest to a monospace font on iOS
% devices.
%
% Plots can be emailed in SVG format which
% is a resolution independent format
% supported by major browsers including 
% Safari and FireFox.
%
%%%%%%%%%%%%%%%%%%%%%%
%             OPERATION MODES
%
% iCAS supports three operation modes.
%
% • CAS Mode
% • Plot Mode
% • Text Editor Mode
%
% By default, the application's color theme
% changes to indicate the active mode.  This
% color feedback behavior can be disabled in
% the app Settings, if desired.
%
% In CAS mode (the current mode unless
% you've changed the mode with the mode
% controls switch in the middle of the 
% toolbar), iCAS behaves as a terminal
% interface to the CAS engine.
%
% In Plot mode, iCAS behaves as a direct
% terminal interface to the gnuplot engine.
% Go ahead and dismiss the keyboard and tap
% the "plot" mode button (the button with a
% graph) to switch to Plot mode.  Then
% execute each of the following lines in
% sequence. This is an example straight from
% the gnuplot demonstration samples web
% page.

set output "3D Log"
set title "3D Log"
set samples 30; set isosamples 30
set hidden3d
set pm3d
set surface
set view 50,220
set xrange [-2:2]
set yrange [-2:2]
splot log(x*x*y*y)

% As you can see, iCAS accepts gnuplot
% commands directly.
% 
% In Text Editor mode, iCAS behaves as a
% plain text editor.  Pressing return does not
% invoke either CAS or plot operations.  This
% mode is useful for general-purpose text
% editing, to create input files for batch 
% execution (described below), to 
% create/preview LaTeX documents, etc.
%
% The active file is automatically saved when
% the application is quit/placed in the
% background or when a new file is opened.
%
% There may be times when you need to abort
% the active CAS session.  To abort a CAS
% session that is idle, simply use the
% REDUCE "bye" or "quit" command.  A
% new session will be automatically restarted.
% To abort a CAS session that is busy, tap
% the "Abort" button that replaces the
% "Settings" button while iCAS is busy.  Set
% the mode to CAS mode using the mode
% buttons and go ahead and abort the CAS
% session using the following example that
% intentionally invokes a very long for-loop.

for i:=0:10000000 do j:=i;

%%%%%%%%%%%%%%%%%%%%%%
%           BATCH OPERATION
%
% In addition to the interactive operation
% that we've just used, iCAS supports batch
% execution of entire file contents.  That
% is, iCAS can process the entire contents
% of the active file either in CAS mode or
% Plot mode.  To do so, use the special
% "BATCH" macro keyboard button.  Unlike
% interactive results which are output at the
% current cursor location, CAS mode batch
% execution results are appended to the end
% of the file surrounded by "%%% Begin Batch
% Results" and "%%% End Batch Results" so
% they can be easily located with a quick
% search.
%
% Plot mode results are of course the creation
% of plot files.  Note that plot files are
% not automatically shown when they are
% generated in batch mode.  To view batch
% generated plot files, please use the files
% picker.
%
% Now, this file contains interactive output
% from the examples that we've run so if you
% process this file in batch mode, it will
% result in errors.  Therefore, please try
% batch execution using one of the example
% files.
%
%%%%%%%%%%%%%%%%%%%%%%
%        FOR MORE INFORMATION
%
% We hope that you found this tutorial
% helpful.  You'll find more examples for
% various areas in the files picker.  You
% will also find more information in the
% iCAS FAQ at the following URL.
%
% http://alsoftiphone.com/iCAS/faq
%
% Last but not least, if you have any questions
% or feedback, please don't hesitate to contact
% us at support@alsoftiphone.com.  You can
% quickly do so by tapping the "Contact 
% Support"button at the bottom of the app
% Settings.
%
% We hope that you will find iCAS a useful
% companion for your computation needs.
%
% Best Regards,
% AL Software
%
%%%%%%%%%%%%%%%%%%%%%%