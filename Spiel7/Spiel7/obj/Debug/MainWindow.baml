   M S B A M L   `   `   `  ����A  =Spiel7, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:WpfApplication2WpfApplication2  5   	        WpfApplication2.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   /localclr-namespace:WpfApplication2     5   	   -   5          �Name$  
Start_Stop��5   	    � Title$ 
MainWindow��5   	   $	��350��6   $	��522��6)    � WindowStartupLocation$ CenterScreen=�65    � Cursor$ Arrow��6Z    J� IsHitTestVisible . $��Stretch=�6�   $	��500��6�   $	��300��6�    � 
ResizeMode$ CanResizeWithGrip=�6�   .��5	      �� -   5        $��	theCanvas��5	      $��	0,0,-2,-2q�6   $	��321��61   $	��Top=�6>   .+�5
   
   �� -   5         ��Name$ ButtonStartStop��5
   /   $��
Start/Stop��6H    J� RenderTransformOrigin$ 0.5,0.5&�6]    � IsSharedSizeScope . 	 � UseLayoutRounding	 .  
 �� Left$
 43.549��6�   
 �� Top$ 23.05��6�   �� 5   
   -   5         ��Name$ checkBoxFast��5      $��schnell��6)   $��
300,38,0,0q�6;    . 	 .  6m   	� 5   
   -   5         	�Name$ radioButtonRed��5   3   $	��Rot��6K    . $
 21��6w   $	 118��6�   	 .  6�   	� 5   
   -   5        $ radioButtonGreen��5   5   $��Grün��6O   $��
21,226,0,0q�6^   $ -2.281,-1.889&�6r    . 	 .  6�   	� 5   
   -   5        $ radioButtonBlue��5   4   $��Blaue��6M   $��
21,177,0,0q�6]    . 	 .  6�   A� 5   
   -   5         A�Name$
 ball��5   -   
���   �$��30��6H   $	
 220��6T   $	 162��6f   
���   �$��30��6�    . 	 .  6�   �� 5   
   -	   5         ��Name$ 
labelScore��5      $��--��6$   $	
 453��61   $ 16��6C   $��26.667(�6S   $
��Bold"�6e   
���   �$��Stretch=�6�   	 .  $��Stretch=�6�   $��Visible=�6�    . 6"  5      5      