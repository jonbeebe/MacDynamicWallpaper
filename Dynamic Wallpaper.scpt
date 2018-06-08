FasdUAS 1.101.10   ��   ��    k             l      ��  ��   RL

Mojave-style Dynamic Wallpapers in High Sierra

By Jonathan Beebe, June 2018,
Modified from original script by Philip Hutchison, April 2013

Jonathan Beebe
	https://jonbeebe.net
	MIT License
Philip Hutchison:
    http://pipwerks.com
    MIT license http://pipwerks.mit-license.org/

This script assumes:

1. You have a folder named "Wallpapers" in your Pictures folder
2. You have a subfolder named "Time of Day" in Wallpapers
3. You have sixteen subfolders inside "Time of Day", with names that match "mojave_dynamic_{1..16}"
   * If you decide to use different folder names, you must change the if statements below to match the new folder names
4. You have an image inside of each folder

For example:
/Users/YOUR_USER_NAME/Pictures/Wallpapers/Time of Day/mojave_dynamic_1/mojave_dynamic_1.jpeg

I recommend using Lingon by Peter Borg to execute this script every 15-30 minutes:
https://www.peterborgapps.com/lingon/

Alternatively, GeekTool can execute this script for you at specified intervals. Use this line in the command field:
osascript ~/Pictures/Wallpapers/Time\ of\ Day/wallpaper.scpt

     � 	 	� 
 
 M o j a v e - s t y l e   D y n a m i c   W a l l p a p e r s   i n   H i g h   S i e r r a 
 
 B y   J o n a t h a n   B e e b e ,   J u n e   2 0 1 8 , 
 M o d i f i e d   f r o m   o r i g i n a l   s c r i p t   b y   P h i l i p   H u t c h i s o n ,   A p r i l   2 0 1 3 
 
 J o n a t h a n   B e e b e 
 	 h t t p s : / / j o n b e e b e . n e t 
 	 M I T   L i c e n s e 
 P h i l i p   H u t c h i s o n : 
         h t t p : / / p i p w e r k s . c o m 
         M I T   l i c e n s e   h t t p : / / p i p w e r k s . m i t - l i c e n s e . o r g / 
 
 T h i s   s c r i p t   a s s u m e s : 
 
 1 .   Y o u   h a v e   a   f o l d e r   n a m e d   " W a l l p a p e r s "   i n   y o u r   P i c t u r e s   f o l d e r 
 2 .   Y o u   h a v e   a   s u b f o l d e r   n a m e d   " T i m e   o f   D a y "   i n   W a l l p a p e r s 
 3 .   Y o u   h a v e   s i x t e e n   s u b f o l d e r s   i n s i d e   " T i m e   o f   D a y " ,   w i t h   n a m e s   t h a t   m a t c h   " m o j a v e _ d y n a m i c _ { 1 . . 1 6 } " 
       *   I f   y o u   d e c i d e   t o   u s e   d i f f e r e n t   f o l d e r   n a m e s ,   y o u   m u s t   c h a n g e   t h e   i f   s t a t e m e n t s   b e l o w   t o   m a t c h   t h e   n e w   f o l d e r   n a m e s 
 4 .   Y o u   h a v e   a n   i m a g e   i n s i d e   o f   e a c h   f o l d e r 
 
 F o r   e x a m p l e : 
 / U s e r s / Y O U R _ U S E R _ N A M E / P i c t u r e s / W a l l p a p e r s / T i m e   o f   D a y / m o j a v e _ d y n a m i c _ 1 / m o j a v e _ d y n a m i c _ 1 . j p e g 
 
 I   r e c o m m e n d   u s i n g   L i n g o n   b y   P e t e r   B o r g   t o   e x e c u t e   t h i s   s c r i p t   e v e r y   1 5 - 3 0   m i n u t e s : 
 h t t p s : / / w w w . p e t e r b o r g a p p s . c o m / l i n g o n / 
 
 A l t e r n a t i v e l y ,   G e e k T o o l   c a n   e x e c u t e   t h i s   s c r i p t   f o r   y o u   a t   s p e c i f i e d   i n t e r v a l s .   U s e   t h i s   l i n e   i n   t h e   c o m m a n d   f i e l d : 
 o s a s c r i p t   ~ / P i c t u r e s / W a l l p a p e r s / T i m e \   o f \   D a y / w a l l p a p e r . s c p t 
 
   
  
 l     ��������  ��  ��        l     ��������  ��  ��        l     ��  ��      BEGIN USER CONFIGURATION     �   2   B E G I N   U S E R   C O N F I G U R A T I O N      l     ��������  ��  ��        l     ��  ��    $  for multiple monitor support.     �   <   f o r   m u l t i p l e   m o n i t o r   s u p p o r t .      l     ��  ��    i c set to true to display the same image on all desktops, false to show unique images on each desktop     �   �   s e t   t o   t r u e   t o   d i s p l a y   t h e   s a m e   i m a g e   o n   a l l   d e s k t o p s ,   f a l s e   t o   s h o w   u n i q u e   i m a g e s   o n   e a c h   d e s k t o p       l     !���� ! r      " # " m     ��
�� boovfals # o      ���� <0 usesamepictureacrossdisplays useSamePictureAcrossDisplays��  ��      $ % $ l     ��������  ��  ��   %  & ' & l     �� ( )��   (   END USER CONFIGURATION    ) � * * .   E N D   U S E R   C O N F I G U R A T I O N '  + , + l     ��������  ��  ��   ,  - . - l     ��������  ��  ��   .  / 0 / l     ��������  ��  ��   0  1 2 1 l     �� 3 4��   3   get current hour    4 � 5 5 "   g e t   c u r r e n t   h o u r 2  6 7 6 l    8���� 8 r     9 : 9 n     ; < ; 1   	 ��
�� 
hour < l   	 =���� = I   	������
�� .misccurdldt    ��� null��  ��  ��  ��   : o      ���� 0 h  ��  ��   7  > ? > l    @���� @ r     A B A n     C D C 1    ��
�� 
min  D l    E���� E I   ������
�� .misccurdldt    ��� null��  ��  ��  ��   B o      ���� 0 m  ��  ��   ?  F G F l     ��������  ��  ��   G  H I H l     �� J K��   J   set default imageName    K � L L ,   s e t   d e f a u l t   i m a g e N a m e I  M N M l    O���� O r     P Q P m     R R � S S   m o j a v e _ d y n a m i c _ 1 Q o      ���� 0 	imagename 	imageName��  ��   N  T U T l     ��������  ��  ��   U  V W V l     �� X Y��   X 6 0 change value of imageName based on current time    Y � Z Z `   c h a n g e   v a l u e   o f   i m a g e N a m e   b a s e d   o n   c u r r e n t   t i m e W  [ \ [ l  � ]���� ] Z   � ^ _ `�� ^ l   ' a���� a F    ' b c b @     d e d o    ���� 0 h   e m    ����  c A   " % f g f o   " #���� 0 h   g m   # $���� ��  ��   _ r   * - h i h m   * + j j � k k   m o j a v e _ d y n a m i c _ 1 i o      ���� 0 	imagename 	imageName `  l m l l  0 ; n���� n F   0 ; o p o @   0 3 q r q o   0 1���� 0 h   r m   1 2����  p A   6 9 s t s o   6 7���� 0 h   t m   7 8���� 	��  ��   m  u v u r   > A w x w m   > ? y y � z z   m o j a v e _ d y n a m i c _ 2 x o      ���� 0 	imagename 	imageName v  { | { l  D O }���� } F   D O ~  ~ @   D G � � � o   D E���� 0 h   � m   E F���� 	  A   J M � � � o   J K���� 0 h   � m   K L���� ��  ��   |  � � � r   R U � � � m   R S � � � � �   m o j a v e _ d y n a m i c _ 3 � o      ���� 0 	imagename 	imageName �  � � � l  X e ����� � F   X e � � � @   X [ � � � o   X Y���� 0 h   � m   Y Z����  � A   ^ c � � � o   ^ _���� 0 h   � m   _ b���� ��  ��   �  � � � r   h m � � � m   h k � � � � �   m o j a v e _ d y n a m i c _ 4 � o      ���� 0 	imagename 	imageName �  � � � l  p  ����� � F   p  � � � @   p u � � � o   p q���� 0 h   � m   q t����  � A   x } � � � o   x y���� 0 h   � m   y |���� ��  ��   �  � � � r   � � � � � m   � � � � � � �   m o j a v e _ d y n a m i c _ 5 � o      ���� 0 	imagename 	imageName �  � � � l  � � ����� � F   � � � � � @   � � � � � o   � ����� 0 h   � m   � �����  � A   � � � � � o   � ����� 0 h   � m   � ����� ��  ��   �  � � � r   � � � � � m   � � � � � � �   m o j a v e _ d y n a m i c _ 6 � o      ���� 0 	imagename 	imageName �  � � � l  � � ����� � F   � � � � � @   � � � � � o   � ����� 0 h   � m   � �����  � A   � � � � � o   � ����� 0 h   � m   � ����� ��  ��   �  � � � r   � � � � � m   � � � � � � �   m o j a v e _ d y n a m i c _ 7 � o      ���� 0 	imagename 	imageName �  � � � l  � � ����� � F   � � � � � @   � � � � � o   � ����� 0 h   � m   � �����  � A   � � � � � o   � ����� 0 h   � m   � ����� ��  ��   �  � � � r   � � � � � m   � � � � � � �   m o j a v e _ d y n a m i c _ 8 � o      ���� 0 	imagename 	imageName �  � � � l  � � ����� � F   � � � � � @   � � � � � o   � ����� 0 h   � m   � �����  � A   � � � � � o   � ����� 0 h   � m   � ����� ��  ��   �  � � � r   � � � � � m   � � � � � � �   m o j a v e _ d y n a m i c _ 9 � o      ���� 0 	imagename 	imageName �  � � � l  � ���� � F   � � � � @   � � � � � o   � ��~�~ 0 h   � m   � ��}�}  � A   � � � � � o   � ��|�| 0 h   � m   � ��{�{ ��  �   �  � � � r  	 � � � m   � � � � � " m o j a v e _ d y n a m i c _ 1 0 � o      �z�z 0 	imagename 	imageName �  � � � l  ��y�x � F   � � � @   � � � o  �w�w 0 h   � m  �v�v  � A   � � � o  �u�u 0 h   � m  �t�t �y  �x   �  � � � r  # � � � m  !   � " m o j a v e _ d y n a m i c _ 1 1 � o      �s�s 0 	imagename 	imageName �  l &5�r�q F  &5 @  &+ o  &'�p�p 0 h   m  '*�o�o  A  .3	
	 o  ./�n�n 0 h  
 m  /2�m�m �r  �q    r  8= m  8; � " m o j a v e _ d y n a m i c _ 1 2 o      �l�l 0 	imagename 	imageName  l @O�k�j F  @O @  @E o  @A�i�i 0 h   m  AD�h�h  A  HM o  HI�g�g 0 h   m  IL�f�f �k  �j    r  RW m  RU � " m o j a v e _ d y n a m i c _ 1 3 o      �e�e 0 	imagename 	imageName  !  l Zi"�d�c" F  Zi#$# @  Z_%&% o  Z[�b�b 0 h  & m  [^�a�a $ A  bg'(' o  bc�`�` 0 h  ( m  cf�_�_ �d  �c  ! )*) r  lq+,+ m  lo-- �.. " m o j a v e _ d y n a m i c _ 1 4, o      �^�^ 0 	imagename 	imageName* /0/ l t1�]�\1 F  t232 @  tw454 o  tu�[�[ 0 h  5 m  uv�Z�Z  3 A  z}676 o  z{�Y�Y 0 h  7 m  {|�X�X �]  �\  0 898 r  ��:;: m  ��<< �== " m o j a v e _ d y n a m i c _ 1 5; o      �W�W 0 	imagename 	imageName9 >?> l ��@�V�U@ F  ��ABA @  ��CDC o  ���T�T 0 h  D m  ���S�S B A  ��EFE o  ���R�R 0 h  F m  ���Q�Q �V  �U  ? G�PG r  ��HIH m  ��JJ �KK " m o j a v e _ d y n a m i c _ 1 6I o      �O�O 0 	imagename 	imageName�P  ��  ��  ��   \ LML l     �N�M�L�N  �M  �L  M NON l     �KPQ�K  P ; 5 helper function ("handler") for getting random image   Q �RR j   h e l p e r   f u n c t i o n   ( " h a n d l e r " )   f o r   g e t t i n g   r a n d o m   i m a g eO STS i     UVU I      �JW�I�J 0 getimage getImageW X�HX o      �G�G 0 
foldername 
folderName�H  �I  V k     YY Z[Z l     �F�E�D�F  �E  �D  [ \]\ O     ^_^ L    `` c    aba n    cdc 3    �C
�C 
filed n    efe 4    �Bg
�B 
cfolg l   h�A�@h b    iji m    	kk �ll @ P i c t u r e s : W a l l p a p e r s : T i m e   o f   D a y :j o   	 
�?�? 0 
foldername 
folderName�A  �@  f 1    �>
�> 
homeb m    �=
�= 
ctxt_ m     mm�                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ] n�<n l   �;�:�9�;  �:  �9  �<  T opo l     �8�7�6�8  �7  �6  p qrq l     �5�4�3�5  �4  �3  r sts l �8u�2�1u O  �8vwv k  �7xx yzy l ���0�/�.�0  �/  �.  z {|{ l ���-}~�-  } 3 - wrapped in a try block for error suppression   ~ � Z   w r a p p e d   i n   a   t r y   b l o c k   f o r   e r r o r   s u p p r e s s i o n| ��� Q  �5���,� k  �,�� ��� l ���+�*�)�+  �*  �)  � ��� l ���(���(  � 6 0 determine which picture to use for main display   � ��� `   d e t e r m i n e   w h i c h   p i c t u r e   t o   u s e   f o r   m a i n   d i s p l a y� ��� r  ����� n ����� I  ���'��&�' 0 getimage getImage� ��%� o  ���$�$ 0 	imagename 	imageName�%  �&  �  f  ��� o      �#�# (0 maindisplaypicture mainDisplayPicture� ��� l ���"�!� �"  �!  �   � ��� l ������  � = 7 set the picture for additional monitors, if applicable   � ��� n   s e t   t h e   p i c t u r e   f o r   a d d i t i o n a l   m o n i t o r s ,   i f   a p p l i c a b l e� ��� O  � ��� k  ��� ��� l ������  �  �  � ��� l ������  � &   get a reference to all desktops   � ��� @   g e t   a   r e f e r e n c e   t o   a l l   d e s k t o p s� ��� r  ����� N  ���� 2  ���
� 
dskp� o      �� 0 thedesktops theDesktops� ��� l ������  �  �  � ��� l ������  � !  handle additional desktops   � ��� 6   h a n d l e   a d d i t i o n a l   d e s k t o p s� ��� Z  ������ l ������ ?  ����� l ������ I �����
� .corecnte****       ****� o  ���� 0 thedesktops theDesktops�  �  �  � m  ���� �  �  � k  ��� ��� l ���
�	��
  �	  �  � ��� l ������  � D > loop through all desktops (beginning with the second desktop)   � ��� |   l o o p   t h r o u g h   a l l   d e s k t o p s   ( b e g i n n i n g   w i t h   t h e   s e c o n d   d e s k t o p )� ��� Y  ������� k  ��� ��� l ������  �  �  � ��� l ������  � #  determine which image to use   � ��� :   d e t e r m i n e   w h i c h   i m a g e   t o   u s e� ��� Z  ����� �� l �������� = ����� o  ������ <0 usesamepictureacrossdisplays useSamePictureAcrossDisplays� m  ����
�� boovfals��  ��  � r  ����� n ����� I  ��������� 0 getimage getImage� ���� o  ������ 0 	imagename 	imageName��  ��  �  f  ��� o      ���� 20 secondarydisplaypicture secondaryDisplayPicture�   � r  ����� n ����� o  ������ (0 maindisplaypicture mainDisplayPicture�  f  ��� o      ���� 20 secondarydisplaypicture secondaryDisplayPicture� ��� l   ��������  ��  ��  � ��� l   ������  �   apply image to desktop   � ��� .   a p p l y   i m a g e   t o   d e s k t o p� ��� r   ��� o   ���� 20 secondarydisplaypicture secondaryDisplayPicture� n      ��� 1  ��
�� 
picP� n  ��� 4  ���
�� 
cobj� o  	
���� 0 x  � l ������ o  ���� 0 thedesktops theDesktops��  ��  � ���� l ��������  ��  ��  ��  � 0 x  � m  ������ � l �������� I �������
�� .corecnte****       ****� o  ������ 0 thedesktops theDesktops��  ��  ��  �  � ���� l ��������  ��  ��  ��  �  �  � ���� l ��������  ��  ��  ��  � m  �����                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  � ��� l !!��������  ��  ��  � ��� l !!������  � ( " set the primary monitor's picture   � �   D   s e t   t h e   p r i m a r y   m o n i t o r ' s   p i c t u r e�  l !!����   R L due to a Finder quirk, this has to be done AFTER setting the other displays    � �   d u e   t o   a   F i n d e r   q u i r k ,   t h i s   h a s   t o   b e   d o n e   A F T E R   s e t t i n g   t h e   o t h e r   d i s p l a y s  r  !*	 o  !$���� (0 maindisplaypicture mainDisplayPicture	 1  $)��
�� 
dpic 
��
 l ++��������  ��  ��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  �,  � �� l 66��������  ��  ��  ��  w m  ���                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  �2  �1  t �� l     ��������  ��  ��  ��       ����   ������ 0 getimage getImage
�� .aevtoappnull  �   � **** ��V�������� 0 getimage getImage�� ����   ���� 0 
foldername 
folderName��   ���� 0 
foldername 
folderName m����k����
�� 
home
�� 
cfol
�� 
file
�� 
ctxt�� � *�,��%/�.�&UOP ��������
�� .aevtoappnull  �   � **** k    8    6  >  M  [ s����  ��  ��   ���� 0 x   5������������ R�������� j�� y�� ��� ��� ��� ��� ��� ��� ��� ��� ������-<J������������������������� <0 usesamepictureacrossdisplays useSamePictureAcrossDisplays
�� .misccurdldt    ��� null
�� 
hour�� 0 h  
�� 
min �� 0 m  �� 0 	imagename 	imageName�� �� 
�� 
bool�� 	�� �� �� �� �� �� �� �� �� �� �� �� �� 0 getimage getImage�� (0 maindisplaypicture mainDisplayPicture
�� 
dskp�� 0 thedesktops theDesktops
�� .corecnte****       ****�� 20 secondarydisplaypicture secondaryDisplayPicture
�� 
cobj
�� 
picP
�� 
dpic��  ��  ��9fE�O*j �,E�O*j �,E�O�E�O��	 ���& �E�Ys��	 ���& �E�Y_��	 ���& �E�YK��	 	�a �& 
a E�Y3�a 	 	�a �& 
a E�Y�a 	 	�a �& 
a E�Y ��a 	 	�a �& 
a E�Y ��a 	 	�a �& 
a E�Y ��a 	 	�a �& 
a E�Y ��a 	 	�a �& 
a E�Y ��a 	 	�a �& 
a E�Y }�a 	 	�a  �& 
a !E�Y c�a  	 	�a "�& 
a #E�Y I�a "	 	�a $�& 
a %E�Y /�j	 �k�& 
a &E�Y �k	 ���& 
a 'E�Y hOa ( � �)�k+ )E` *Oa + e*a ,-E` -O_ -j .k K Cl_ -j .kh  �f  )�k+ )E` /Y )a *,E` /O_ /_ -a 0�/a 1,FOP[OY��OPY hOPUO_ **a 2,FOPW X 3 4hOPU ascr  ��ޭ