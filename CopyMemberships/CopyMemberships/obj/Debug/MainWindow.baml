   M S B A M L   `   `   `  ����J  FCopyMemberships, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:CopyMembershipsCopyMemberships  5   	        CopyMemberships.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   /localclr-namespace:CopyMemberships     5   	     � Title$  Memberof Copy��5   	   $	��200��6   $	��300��6,   .��5	      �  � ColumnDefinitions 5
   
   �� 5      $
��178* �6   �� 5      $	��27* �6   �� 5      $	��87* �6   .+�5   
   �� -   5         ��Name$ txtCopyFrom��5      $
��Left=�6'   $��20��6B   $��	10,46,0,0q�6N    �� TextWrapping$
 Wrap=�6a   $	��Top=�6u   $	��120��6�   �� 5   
   -   5        $ 	txtCopyTo��5      $
��Left=�6%   $��20��6@   $��
153,46,0,0q�6L   $
 Wrap=�6`   $	��Top=�6t   $	��120��6�   " �� VerticalScrollBarVisibility$
 Auto=�6�   $��3��6�   �� 5   
   -   5         ��Name$ 
btnExecute��5      $
��Copy��6%   $
��Left=�64   $��0,91,0,0q�6O   $	��Top=�6a   $	��292��6y   $��68��6�   $��36(�6�   $��Comic Sans MS)�6�   $��3��6�   �� 5   
   -   5         ��Name$ 
tbFromUser��5      $
��Left=�6(   $��	10,22,0,0q�6C   $
��Wrap=�6V   $��Copy From User��6j   $	��Top=�6�   $	��120��6�    �� TextAlignment$ Center=�6�   $��Italic$�6�   ��6�   Z� �� 5   
   -   5        $ tbToUser��5      $
��Left=�6&   $��
153,22,0,0q�6A   $
��Wrap=�6U   $��Copy To Users��6i   $	��Top=�6~   $	��120��6�   $ Center=�6�   $��Italic$�6�   $��3��6�   ��6�   Z� 6�   5      5      