   M S B A M L   `   `   `  ����N  JUnduplicated Random, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:Unduplicated_RandomUnduplicated_Random  5   	   $    Unduplicated_Random.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   3local!clr-namespace:Unduplicated_Random     5   	     � Title$  
MainWindow��5   	   $	��450��6   $	��800��6)   .��5	      � .+�5
   
   �� -   5         ��Name$ btn_Unduplicated_Random��5
      $��产生不重复随机数��62   $
��Left=�6E   $��
10,141,0,0q�6`   $	��Top=�6t   $	��154��6�   $��52��6�   6�   �� 5   
   $��主要参数设定��6   $
��Left=�6#   $��	10,10,0,0q�6>   $	��Top=�6Q   .��5      �� $
��Left=�6   $	��Top=�64   $��	0,0,-2,-2q�6L   .+�5      �� $��5q�6    �� Orientation$ 
Horizontal=�6(   $��26��6A   .+�5      �� $��上限(不包括)��6   $
��Left=�6.   $	��Top=�6I   �� 5      -   5         ��Name$ parameter_Upper��5      $
��Left=�67   $��26��6R    �� TextWrapping$
 Wrap=�6^   $	��Top=�6r   $��40��6�   $	��100��6�   5      �� 5      $��5q�6   $ 
Horizontal=�6(   $��25��6A   .+�5      �� $��下限(包括)��6   $
��Left=�6-   $	��Top=�6H   �� 5      -   5        $ parameter_Lower��5      $
��Left=�67   $��23��6R   $��0,2,0,0q�6^   $
 Wrap=�6o   $��1��6�   $	��Top=�6�   $��40��6�   5      �� 5      $��5q�6   $ 
Horizontal=�6(   $��25��6A   .+�5      �� $��生成随机数数量��6   $
��Left=�6.   $	��Top=�6I   �� 5      -   5        $ parameter_Number��5      $
��Left=�68   $��23��6S   $��0,2,0,0q�6_   $
 Wrap=�6p   $��10��6�   $	��Top=�6�   $��40��6�   5      5      5      �� 5   
   $
��Left=�6   $��
10,198,0,0q�6/   $
��Wrap=�6C   $	��Top=�6W   $	��211��6o   $	��154��6|   �� 6�   $�解决思想：��6�   �� 6�   �� 6�   $���用一个数组来保存索引号，先随机生成一个数组位置，然后把这个位置的索引号取出来，并把最后一个索引号复制到当前的数组位置，然后使随机数的上限减一，具体如：先把这100个数放在一个数组内，每次随机取一个位置（第一次是1-100，第二次是1-99，...），将该位置的数用最后的数代替。��6�   6B  �� 5   
   $��GroupBox��6   $
��Left=�6%   $	��399��6@   $��
169,10,0,0q�6M   $	��Top=�6a   .��5      �� -   5         ��Name$ lv_resultShow��5      $
��Left=�6.   $	��Top=�6I    �� View 5      �� 5      .P�5       �� $��序号��6)    �� DisplayMemberBinding 65   �� *ID+�� 5!      $��	题目号��6)    66   �� *Result+5"      5$      5%      &   System.Windows.Controls.DataGrid  5&   
   -   5          Name$ dataGrid_Compare��5&      $
��Left=�6-   $	��322��6H   $��
264,10,0,0q�6U   $	��Top=�6i   $	��327��6�   	   AutoGenerateColumns	 .  
   
IsReadOnly
 .    SelectionMode$ Single=�6�      SelectionUnit$
 Cell=�6�      Columns 5'      0  *System.Windows.Controls.DataGridTextColumn  5(      ,  &System.Windows.Controls.DataGridColumn   Header$ 序号��6d   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6%   ��  �� Path$ ID�   ClipboardContentBinding 6A   Z� 6d     5)      $ 	题目号��6h      Width5  /System.Windows.Controls.DataGridLengthConverter$ * 6u    6%   �� $ Result� 6E   Z� 6u   5+      �� 5,   
   $
��Left=�6   $
��Wrap=�6/   $	��Top=�6C   $��264,337,0,0q�6[   $��56��6p   $	��327��6|   �� 6�   $9�3怎么确定选择一行还是选择一个单元格��6�   �� 6�   �� 6�   $�DataGrid-->��6�   �� 6�   $	�行��6�   �� 6�   $	�-->��6�   �� 6�   $�SelectionUnit��6�   �� 6  $�--��6  �� 6  $�>��6"  �� 60  $1�+Cell单元格/FullRow整行/CellOrRowHeader��64  6`  �� 5-   
   -   5        $ 	tb_DGshow��5-      $
��Left=�6%   $��23��6@   $
 Wrap=�6L   $	��Top=�6�   $	��120��6�   $��
596,10,0,0q�6�   ��6`   �� *SelectedCells/Item+ �� ElementName$ dataGrid_Compare�� �� Mode$ OneWay=�6�   5/      50      