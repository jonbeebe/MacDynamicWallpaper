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
�� boovfals # o      ���� <0 usesamepictureacrossdisplays useSamePictureAcrossDisplays��  ��      $ % $ l     ��������  ��  ��   %  & ' & l     �� ( )��   (   END USER CONFIGURATION    ) � * * .   E N D   U S E R   C O N F I G U R A T I O N '  + , + l     ��������  ��  ��   ,  - . - l     �� / 0��   /   get current hour    0 � 1 1 "   g e t   c u r r e n t   h o u r .  2 3 2 l    4���� 4 r     5 6 5 n     7 8 7 1   	 ��
�� 
hour 8 l   	 9���� 9 I   	������
�� .misccurdldt    ��� null��  ��  ��  ��   6 o      ���� 0 h  ��  ��   3  : ; : l    <���� < r     = > = n     ? @ ? 1    ��
�� 
min  @ l    A���� A I   ������
�� .misccurdldt    ��� null��  ��  ��  ��   > o      ���� 0 m  ��  ��   ;  B C B l     ��������  ��  ��   C  D E D l    F���� F r     G H G m    ��
�� boovfals H o      ���� 0 
isdarkmode 
isDarkMode��  ��   E  I J I l     ��������  ��  ��   J  K L K l     �� M N��   M   set default imageName    N � O O ,   s e t   d e f a u l t   i m a g e N a m e L  P Q P l    R���� R r     S T S m     U U � V V   m o j a v e _ d y n a m i c _ 1 T o      ���� 0 	imagename 	imageName��  ��   Q  W X W l     ��������  ��  ��   X  Y Z Y l     �� [ \��   [ 6 0 change value of imageName based on current time    \ � ] ] `   c h a n g e   v a l u e   o f   i m a g e N a m e   b a s e d   o n   c u r r e n t   t i m e Z  ^ _ ^ l   � `���� ` Z    � a b c�� a l    + d���� d F     + e f e @     # g h g o     !���� 0 h   h m   ! "����  f A   & ) i j i o   & '���� 0 h   j m   ' (���� ��  ��   b k   . 5 k k  l m l r   . 1 n o n m   . / p p � q q   m o j a v e _ d y n a m i c _ 1 o o      ���� 0 	imagename 	imageName m  r�� r r   2 5 s t s m   2 3��
�� boovtrue t o      ���� 0 
isdarkmode 
isDarkMode��   c  u v u l  8 C w���� w F   8 C x y x @   8 ; z { z o   8 9���� 0 h   { m   9 :����  y A   > A | } | o   > ?���� 0 h   } m   ? @���� 	��  ��   v  ~  ~ k   F M � �  � � � r   F I � � � m   F G � � � � �   m o j a v e _ d y n a m i c _ 2 � o      ���� 0 	imagename 	imageName �  ��� � r   J M � � � m   J K��
�� boovfals � o      ���� 0 
isdarkmode 
isDarkMode��     � � � l  P [ ����� � F   P [ � � � @   P S � � � o   P Q���� 0 h   � m   Q R���� 	 � A   V Y � � � o   V W���� 0 h   � m   W X���� ��  ��   �  � � � k   ^ g � �  � � � r   ^ c � � � m   ^ a � � � � �   m o j a v e _ d y n a m i c _ 3 � o      ���� 0 	imagename 	imageName �  ��� � r   d g � � � m   d e��
�� boovfals � o      ���� 0 
isdarkmode 
isDarkMode��   �  � � � l  j w ����� � F   j w � � � @   j m � � � o   j k���� 0 h   � m   k l����  � A   p u � � � o   p q���� 0 h   � m   q t���� ��  ��   �  � � � k   z � � �  � � � r   z  � � � m   z } � � � � �   m o j a v e _ d y n a m i c _ 4 � o      ���� 0 	imagename 	imageName �  ��� � r   � � � � � m   � ���
�� boovfals � o      ���� 0 
isdarkmode 
isDarkMode��   �  � � � l  � � ����� � F   � � � � � @   � � � � � o   � ����� 0 h   � m   � �����  � A   � � � � � o   � ����� 0 h   � m   � ����� ��  ��   �  � � � k   � � � �  � � � r   � � � � � m   � � � � � � �   m o j a v e _ d y n a m i c _ 5 � o      ���� 0 	imagename 	imageName �  ��� � r   � � � � � m   � ���
�� boovfals � o      ���� 0 
isdarkmode 
isDarkMode��   �  � � � l  � � ����� � F   � � � � � @   � � � � � o   � ����� 0 h   � m   � �����  � A   � � � � � o   � ����� 0 h   � m   � ����� ��  ��   �  � � � k   � � � �  � � � r   � � � � � m   � � � � � � �   m o j a v e _ d y n a m i c _ 6 � o      ���� 0 	imagename 	imageName �  ��� � r   � � � � � m   � ���
�� boovfals � o      ���� 0 
isdarkmode 
isDarkMode��   �  � � � l  � � ����� � F   � � � � � @   � � � � � o   � ����� 0 h   � m   � ���  � A   � � � � � o   � ��~�~ 0 h   � m   � ��}�} ��  ��   �  � � � k   � � � �  � � � r   � � � � � m   � � � � � � �   m o j a v e _ d y n a m i c _ 7 � o      �|�| 0 	imagename 	imageName �  ��{ � r   � � � � � m   � ��z
�z boovfals � o      �y�y 0 
isdarkmode 
isDarkMode�{   �  � � � l  � � ��x�w � F   � � � � � @   � � � � � o   � ��v�v 0 h   � m   � ��u�u  � A   � � � � � o   � ��t�t 0 h   � m   � ��s�s �x  �w   �  � � � k   � � � �  �  � r   � � m   � � �   m o j a v e _ d y n a m i c _ 8 o      �r�r 0 	imagename 	imageName  �q r   � � m   � ��p
�p boovfals o      �o�o 0 
isdarkmode 
isDarkMode�q   � 	 l  �
�n�m
 F   � @   � o   � ��l�l 0 h   m   ��k�k  A   o  �j�j 0 h   m  
�i�i �n  �m  	  k    r   m   �   m o j a v e _ d y n a m i c _ 9 o      �h�h 0 	imagename 	imageName �g r   m  �f
�f boovfals o      �e�e 0 
isdarkmode 
isDarkMode�g    l +�d�c F  + !  @  !"#" o  �b�b 0 h  # m   �a�a ! A  $)$%$ o  $%�`�` 0 h  % m  %(�_�_ �d  �c   &'& k  .7(( )*) r  .3+,+ m  .1-- �.. " m o j a v e _ d y n a m i c _ 1 0, o      �^�^ 0 	imagename 	imageName* /�]/ r  47010 m  45�\
�\ boovtrue1 o      �[�[ 0 
isdarkmode 
isDarkMode�]  ' 232 l :I4�Z�Y4 F  :I565 @  :?787 o  :;�X�X 0 h  8 m  ;>�W�W 6 A  BG9:9 o  BC�V�V 0 h  : m  CF�U�U �Z  �Y  3 ;<; k  LU== >?> r  LQ@A@ m  LOBB �CC " m o j a v e _ d y n a m i c _ 1 1A o      �T�T 0 	imagename 	imageName? D�SD r  RUEFE m  RS�R
�R boovtrueF o      �Q�Q 0 
isdarkmode 
isDarkMode�S  < GHG l XgI�P�OI F  XgJKJ @  X]LML o  XY�N�N 0 h  M m  Y\�M�M K A  `eNON o  `a�L�L 0 h  O m  ad�K�K �P  �O  H PQP k  jsRR STS r  joUVU m  jmWW �XX " m o j a v e _ d y n a m i c _ 1 2V o      �J�J 0 	imagename 	imageNameT Y�IY r  psZ[Z m  pq�H
�H boovtrue[ o      �G�G 0 
isdarkmode 
isDarkMode�I  Q \]\ l v�^�F�E^ F  v�_`_ @  v{aba o  vw�D�D 0 h  b m  wz�C�C ` A  ~�cdc o  ~�B�B 0 h  d m  ��A�A �F  �E  ] efe k  ��gg hih r  ��jkj m  ��ll �mm " m o j a v e _ d y n a m i c _ 1 3k o      �@�@ 0 	imagename 	imageNamei n�?n r  ��opo m  ���>
�> boovtruep o      �=�= 0 
isdarkmode 
isDarkMode�?  f qrq l ��s�<�;s F  ��tut @  ��vwv o  ���:�: 0 h  w m  ���9�9 u A  ��xyx o  ���8�8 0 h  y m  ���7�7 �<  �;  r z{z k  ��|| }~} r  ��� m  ���� ��� " m o j a v e _ d y n a m i c _ 1 4� o      �6�6 0 	imagename 	imageName~ ��5� r  ����� m  ���4
�4 boovtrue� o      �3�3 0 
isdarkmode 
isDarkMode�5  { ��� l ����2�1� F  ����� @  ����� o  ���0�0 0 h  � m  ���/�/  � A  ����� o  ���.�. 0 h  � m  ���-�- �2  �1  � ��� k  ���� ��� r  ����� m  ���� ��� " m o j a v e _ d y n a m i c _ 1 5� o      �,�, 0 	imagename 	imageName� ��+� r  ����� m  ���*
�* boovtrue� o      �)�) 0 
isdarkmode 
isDarkMode�+  � ��� l ����(�'� F  ����� @  ����� o  ���&�& 0 h  � m  ���%�% � A  ����� o  ���$�$ 0 h  � m  ���#�# �(  �'  � ��"� k  ���� ��� r  ����� m  ���� ��� " m o j a v e _ d y n a m i c _ 1 6� o      �!�! 0 	imagename 	imageName� �� � r  ����� m  ���
� boovtrue� o      �� 0 
isdarkmode 
isDarkMode�   �"  ��  ��  ��   _ ��� l     ����  �  �  � ��� l     ����  � ; 5 helper function ("handler") for getting random image   � ��� j   h e l p e r   f u n c t i o n   ( " h a n d l e r " )   f o r   g e t t i n g   r a n d o m   i m a g e� ��� i     ��� I      ���� 0 getimage getImage� ��� o      �� 0 
foldername 
folderName�  �  � k     �� ��� l     ����  �  �  � ��� O     ��� L    �� c    ��� n    ��� 3    �
� 
file� n    ��� 4    ��
� 
cfol� l   ���� b    ��� m    	�� ��� @ P i c t u r e s : W a l l p a p e r s : T i m e   o f   D a y :� o   	 
�� 0 
foldername 
folderName�  �  � 1    �
� 
home� m    �
� 
ctxt� m     ���                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  � ��� l   �
�	��
  �	  �  �  � ��� l     ����  �  �  � ��� l     ����  �  �  � ��� l �~��� � O  �~��� k  �}�� ��� l ����������  ��  ��  � ��� l ��������  � 3 - wrapped in a try block for error suppression   � ��� Z   w r a p p e d   i n   a   t r y   b l o c k   f o r   e r r o r   s u p p r e s s i o n� ��� Q  �{����� k  �r�� ��� l ����������  ��  ��  � ��� l ��������  � 6 0 determine which picture to use for main display   � ��� `   d e t e r m i n e   w h i c h   p i c t u r e   t o   u s e   f o r   m a i n   d i s p l a y� ��� r  ����� n ����� I  ��������� 0 getimage getImage� ���� o  ������ 0 	imagename 	imageName��  ��  �  f  ��� o      ���� (0 maindisplaypicture mainDisplayPicture� ��� l ����������  ��  ��  � ��� l ��������  � = 7 set the picture for additional monitors, if applicable   � ��� n   s e t   t h e   p i c t u r e   f o r   a d d i t i o n a l   m o n i t o r s ,   i f   a p p l i c a b l e� ��� O  �f   k  e  l ��������  ��  ��    l ����   &   get a reference to all desktops    �		 @   g e t   a   r e f e r e n c e   t o   a l l   d e s k t o p s 

 r   N   2  ��
�� 
dskp o      ���� 0 thedesktops theDesktops  l ��������  ��  ��    l ����   !  handle additional desktops    � 6   h a n d l e   a d d i t i o n a l   d e s k t o p s  Z  c���� l ���� ?   l ���� I ����
�� .corecnte****       **** o  ���� 0 thedesktops theDesktops��  ��  ��   m  ���� ��  ��   k  _  !  l ��������  ��  ��  ! "#" l ��$%��  $ D > loop through all desktops (beginning with the second desktop)   % �&& |   l o o p   t h r o u g h   a l l   d e s k t o p s   ( b e g i n n i n g   w i t h   t h e   s e c o n d   d e s k t o p )# '(' Y  ])��*+��) k  )X,, -.- l ))��������  ��  ��  . /0/ l ))��12��  1 #  determine which image to use   2 �33 :   d e t e r m i n e   w h i c h   i m a g e   t o   u s e0 454 Z  )E67��86 l ),9����9 = ),:;: o  )*���� <0 usesamepictureacrossdisplays useSamePictureAcrossDisplays; m  *+��
�� boovfals��  ��  7 r  /9<=< n /5>?> I  05��@���� 0 getimage getImage@ A��A o  01���� 0 	imagename 	imageName��  ��  ?  f  /0= o      ���� 20 secondarydisplaypicture secondaryDisplayPicture��  8 r  <EBCB n <ADED o  =A���� (0 maindisplaypicture mainDisplayPictureE  f  <=C o      ���� 20 secondarydisplaypicture secondaryDisplayPicture5 FGF l FF��������  ��  ��  G HIH l FF��JK��  J   apply image to desktop   K �LL .   a p p l y   i m a g e   t o   d e s k t o pI MNM r  FVOPO o  FI���� 20 secondarydisplaypicture secondaryDisplayPictureP n      QRQ 1  QU��
�� 
picPR n  IQSTS 4  LQ��U
�� 
cobjU o  OP���� 0 x  T l ILV����V o  IL���� 0 thedesktops theDesktops��  ��  N W��W l WW��������  ��  ��  ��  �� 0 x  * m  ���� + l $X����X I $��Y��
�� .corecnte****       ****Y o   ���� 0 thedesktops theDesktops��  ��  ��  ��  ( Z��Z l ^^��������  ��  ��  ��  ��  ��   [��[ l dd��������  ��  ��  ��   m  ��\\�                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  � ]^] l gg��������  ��  ��  ^ _`_ l gg��ab��  a ( " set the primary monitor's picture   b �cc D   s e t   t h e   p r i m a r y   m o n i t o r ' s   p i c t u r e` ded l gg��fg��  f R L due to a Finder quirk, this has to be done AFTER setting the other displays   g �hh �   d u e   t o   a   F i n d e r   q u i r k ,   t h i s   h a s   t o   b e   d o n e   A F T E R   s e t t i n g   t h e   o t h e r   d i s p l a y se iji r  gpklk o  gj���� (0 maindisplaypicture mainDisplayPicturel 1  jo��
�� 
dpicj m��m l qq��������  ��  ��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  ��  � n��n l ||��������  ��  ��  ��  � m  ��oo�                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  �  �   � pqp l     ��������  ��  ��  q rsr l     ��tu��  t > 8 Set dark menu bar and dock based on isDarkMode variable   u �vv p   S e t   d a r k   m e n u   b a r   a n d   d o c k   b a s e d   o n   i s D a r k M o d e   v a r i a b l es w��w l �x����x O  �yzy O  ��{|{ Z  ��}~��} o  ������ 0 
isdarkmode 
isDarkMode~ r  ����� m  ����
�� boovtrue� 1  ����
�� 
thme��   r  ����� m  ����
�� boovfals� 1  ����
�� 
thme| 1  ����
�� 
aprpz m  ����                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  ��  ��  ��       �������  � ������ 0 getimage getImage
�� .aevtoappnull  �   � ****� ������������� 0 getimage getImage�� ��� �  �~�~ 0 
foldername 
folderName��  � �}�} 0 
foldername 
folderName� ��|�{��z�y
�| 
home
�{ 
cfol
�z 
file
�y 
ctxt�� � *�,��%/�.�&UOP� �x��w�v���u
�x .aevtoappnull  �   � ****� k    ���  ��  2��  :��  D��  P��  ^�� ��� w�t�t  �w  �v  � �s�s 0 x  � 8�r�q�p�o�n�m�l U�k�j�i�h p�g ��f ��e ��d ��c ��b ��a�`�_-�^B�]W�\l�[���o�Z�Y\�X�W�V�U�T�S�R�Q�P�O�N�r <0 usesamepictureacrossdisplays useSamePictureAcrossDisplays
�q .misccurdldt    ��� null
�p 
hour�o 0 h  
�n 
min �m 0 m  �l 0 
isdarkmode 
isDarkMode�k 0 	imagename 	imageName�j �i 
�h 
bool�g 	�f �e �d �c �b �a �` �_ �^ �] �\ �[ �Z 0 getimage getImage�Y (0 maindisplaypicture mainDisplayPicture
�X 
dskp�W 0 thedesktops theDesktops
�V .corecnte****       ****�U 20 secondarydisplaypicture secondaryDisplayPicture
�T 
cobj
�S 
picP
�R 
dpic�Q  �P  
�O 
aprp
�N 
thme�u�fE�O*j �,E�O*j �,E�OfE�O�E�O��	 ���& �E�OeE�Y���	 ���& �E�OfE�Y���	 ���& a E�OfE�Y��	 	�a �& a E�OfE�Yc�a 	 	�a �& a E�OfE�YE�a 	 	�a �& a E�OfE�Y'�a 	 	�a �& a E�OfE�Y	�a 	 	�a �& a E�OfE�Y ��a 	 	�a �& a E�OfE�Y ��a 	 	�a �& a E�OeE�Y ��a 	 	�a �& a  E�OeE�Y ��a 	 	�a !�& a "E�OeE�Y s�a !	 	�a #�& a $E�OeE�Y U�a #	 	�a %�& a &E�OeE�Y 7�j	 �k�& a 'E�OeE�Y �k	 ���& a (E�OeE�Y hOa ) � �)�k+ *E` +Oa , e*a --E` .O_ .j /k K Cl_ .j /kh  �f  )�k+ *E` 0Y )a +,E` 0O_ 0_ .a 1�/a 2,FOP[OY��OPY hOPUO_ +*a 3,FOPW X 4 5hOPUOa ,  *a 6, � e*a 7,FY 	f*a 7,FUUascr  ��ޭ