% % the program is used to play Bingo as a single player with the computer.
% % a two player version will be coded later with number input from the
% % both users.
% % Debi Pattnaik, Uni of Nottingham
% clc;
% clear all;
% close all
% A=reshape(randperm(25),[5,5]) % random 5x5 matrix for the 1p
% C=reshape(randperm(25),[5,5]); % random 5x5 matrix for the Com
% ip=[];
% if (A==C)
%     disp('Same matrix: Rerun the code- Hit F5')
% end
% % Generate a  non repeating random number
% 
% 
% 
% % R=randperm(25);
% % % for i=1:25
% %     X=randi([1 25],1,1); % loaction variable
% %     disp(R(X))
% % %     pause(2);
% ch=input(' Do you wish to start the play? 1: Yes  2:No. Enter now: ');
% if ch==0
%     disp('Thanks and bye');
% else
%     UserMatrix=A; CompMatrix=C;
%     display_matrix(UserMatrix)
%     for p=1:16
%         disp(['Choice#',num2str(p)]);
%         X=input('Enter the number of your choice between 1 and 25:  ');
%         % storing the number to make sure they are not repeated during the play.
%         [ip]=[ip X];
%         close all;
%         [UserMatrix,CompMatrix]=playbingo(X,UserMatrix,CompMatrix);
%         %         disp(UserMatrix);
%         
%         display_matrix(UserMatrix);
%         R=randperm(25);
%         co=0;
%         while co>=0
%             Xc=randi([1 25],1,1); % loaction variable
%             if Xc~=ip
%                 [UserMatrix,CompMatrix]=playbingo(Xc,UserMatrix,CompMatrix);
%                 %                 disp(UserMatrix);
%                 close all;
%                 display_matrix(UserMatrix);
%                 break
%             else
%                 continue
%             end
%         end
%         % end
%         display_matrix(UserMatrix)
%         [BINGOcountsUser,BINGOCountsComputer]=  bingosets(UserMatrix,CompMatrix);
%         if (BINGOcountsUser>=5)
%             %             disp ('BINGO: YOU win...');
%             figure('Color','white', 'Menu','none')
%             text(0.5, 0.5, 'BINGO: YOU win..', 'Rotation',0, 'FontSize',50, 'Color','r', ...
%                 'HorizontalAlignment','Center', 'VerticalAlignment','Middle')
%             axis off
% %             ha =gca;
% %             uistack(ha,'bottom');
% %             [x, map]=imread('C:\Users\ppzdpp\Desktop\Blog\trophy.png');
% %             image(x)
% %             set(ha,'handlevisibility','off','visible','off')
%             break;
%         end
%         if (BINGOCountsComputer>=5)
%             % disp ('BINGO: Computer Wins this time.');
%             close all
%            
%             figure('Color','white', 'Menu','none')
%             text(0.5, 0.5, 'BINGO: Computer Wins this time.', 'Rotation',0, 'FontSize',50, 'Color','k', ...
%                 'HorizontalAlignment','Center', 'VerticalAlignment','Middle')
%             axis off
%             axis off
%              display_matrix(CompMatrix)
%             display_matrix(UserMatrix)
% %             ha =gca;
% %             uistack(ha,'bottom');
% %             [x, map]=imread('C:\Users\ppzdpp\Desktop\Blog\Loser_Sad.png');
% %             image(x)
% %             set(ha,'handlevisibility','off','visible','off')
% %             break;
%         end
%     end
%     display_matrix(CompMatrix)
% end
% 
% 
% 
% 
